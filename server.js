import http from 'http';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import zlib from 'zlib';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const PORT = process.env.PORT || 3000;
const HOST = 'localhost';

// MIME types mapping
const mimeTypes = {
  '.html': 'text/html',
  '.css': 'text/css',
  '.js': 'text/javascript',
  '.json': 'application/json',
  '.md': 'text/markdown',
  '.png': 'image/png',
  '.jpg': 'image/jpg',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.wav': 'audio/wav',
  '.mp4': 'video/mp4',
  '.woff': 'application/font-woff',
  '.ttf': 'application/font-ttf',
  '.eot': 'application/vnd.ms-fontobject',
  '.otf': 'application/font-otf',
  '.wasm': 'application/wasm'
};

// --- Helpers ---

// Format bytes
const formatBytes = (bytes, decimals = 2) => {
  if (!+bytes) return '0 Bytes';
  const k = 1024;
  const dm = decimals < 0 ? 0 : decimals;
  const sizes = ['Bytes', 'KB', 'MB', 'GB'];
  const i = Math.floor(Math.log(bytes) / Math.log(k));
  return `${parseFloat((bytes / Math.pow(k, i)).toFixed(dm))} ${sizes[i]}`;
};

// Get file stats
const getFileStats = (filePath) => {
  try {
    const stats = fs.statSync(filePath);
    const content = fs.readFileSync(filePath);
    const gzipSize = zlib.gzipSync(content).length;
    return {
      size: formatBytes(stats.size),
      gzip: formatBytes(gzipSize)
    };
  } catch (e) {
    return { size: 'N/A', gzip: 'N/A' };
  }
};

// Simple Regex-based Markdown Parser
const parseMarkdown = (markdown) => {
  let html = markdown;

  // Headers
  html = html.replace(/^# (.*$)/gim, '<h1>$1</h1>');
  html = html.replace(/^## (.*$)/gim, '<h2>$1</h2>');
  html = html.replace(/^### (.*$)/gim, '<h3>$1</h3>');
  html = html.replace(/^#### (.*$)/gim, '<h4>$1</h4>');

  // Code blocks (```...```) - Basic handling
  html = html.replace(/```([^]+?)```/g, '<pre><code>$1</code></pre>');

  // Inline code (`...`)
  html = html.replace(/`([^`]+)`/g, '<code>$1</code>');

  // Blockquotes
  html = html.replace(/^\> (.*$)/gim, '<blockquote>$1</blockquote>');

  // Lists (unordered)
  html = html.replace(/^\s*[-+*] (.*)/gim, '<ul><li>$1</li></ul>');
  html = html.replace(/<\/ul>\s*<ul>/g, ''); // Merge adjacent lists

  // Links - strip .md from internal links for handling
  html = html.replace(/\[([^\]]+)\]\(([^)]+)\.md\)/g, '<a href="$2">$1</a>'); // strip .md
  html = html.replace(/\[([^\]]+)\]\(([^)]+)\)/g, '<a href="$2">$1</a>'); // standard links

  // Bold
  html = html.replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>');

  // Italic
  html = html.replace(/\*([^*]+)\*/g, '<em>$1</em>');

  // Paragraphs (double newlines)
  html = html.replace(/\n\n/g, '</p><p>');

  // Wrap content if not already wrapped (simple heuristic)
  if (!html.startsWith('<')) {
    html = '<p>' + html + '</p>';
  }

  return html;
};

// Generate Sidebar Links
const generateSidebar = () => {
  // Docs
  const docsDir = path.join(__dirname, 'docs', 'v2.0.0');
  let docsLinks = '';
  try {
    const docFiles = fs.readdirSync(docsDir).filter(f => f.endsWith('.md'));
    // Move index.md to top
    if (docFiles.includes('index.md')) {
      docFiles.splice(docFiles.indexOf('index.md'), 1);
      docFiles.unshift('index.md');
    }

    docFiles.forEach(file => {
      const name = file.replace('.md', '').replace(/-/g, ' ');
      const title = name.charAt(0).toUpperCase() + name.slice(1);
      // Link href should not have .md extension
      const href = `/docs/v2.0.0/${file === 'index.md' ? '' : file.replace('.md', '')}`;
      docsLinks += `<a href="${href}" class="docs-nav-link">${title}</a>`;
    });
  } catch (e) { console.error('Error scanning docs:', e); }

  // Examples
  const examplesDir = path.join(__dirname, 'docs', 'examples');
  let exampleLinks = '';
  try {
    const exFiles = fs.readdirSync(examplesDir).filter(f => f.endsWith('.html') && f !== 'index.html');
    exFiles.forEach(file => {
      const name = file.replace('.html', '').replace(/-/g, ' ');
      const title = name.charAt(0).toUpperCase() + name.slice(1);
      // Examples need .html extension for simple serving or strictly handle it
      const href = `/docs/examples/${file}`;
      exampleLinks += `<a href="${href}" class="docs-nav-link">${title}</a>`;
    });
  } catch (e) { console.error('Error scanning examples:', e); }

  return { docsLinks, exampleLinks };
};

// --- Serving Logic ---

const serveFile = (filePath, res, contentType = null) => {
  if (!contentType) {
    const extname = String(path.extname(filePath)).toLowerCase();
    contentType = mimeTypes[extname] || 'application/octet-stream';
  }

  fs.readFile(filePath, (error, content) => {
    if (error) {
      res.writeHead(error.code === 'ENOENT' ? 404 : 500);
      res.end(error.code === 'ENOENT' ? 'File not found' : 'Server error');
    } else {
      res.writeHead(200, { 'Content-Type': contentType });
      res.end(content, 'utf-8');
    }
  });
};

const serveWithLayout = (content, res) => {
  const layoutPath = path.join(__dirname, 'views', 'layout.html');
  fs.readFile(layoutPath, 'utf8', (err, layoutHtml) => {
    if (err) {
      res.writeHead(500);
      res.end('Error loading layout');
      return;
    }

    const { docsLinks, exampleLinks } = generateSidebar();

    let html = layoutHtml
      .replace('<!-- {{CONTENT}} -->', content)
      .replace('<!-- {{SIDEBAR_DOCS}} -->', docsLinks)
      .replace('<!-- {{SIDEBAR_EXAMPLES}} -->', exampleLinks);

    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end(html);
  });
};

const serveLandingPage = (res) => {
  // ... (Keep existing landing page logic, or adapt to use layout if desired, but user wants root index explained previously)
  // For now, keep root index separate as it's a landing page.

  // RE-USE PREVIOUS LOGIC FOR LANDING PAGE (Non-layout wrapped)
  const modules = [
    { name: 'Axis Twelve (Full)', file: 'axis-twelve' },
    { name: 'Layout', file: 'modules/axis-layout' },
    { name: 'Buttons', file: 'modules/axis-buttons' },
    { name: 'Forms', file: 'modules/axis-forms' },
    { name: 'Modals', file: 'modules/axis-modals' },
    { name: 'Tooltips', file: 'modules/axis-tooltips' },
    { name: 'Tables', file: 'modules/axis-tables' },
    { name: 'Cards', file: 'modules/axis-cards' }
  ];

  let tableRows = '';
  modules.forEach(mod => {
    const originalPath = path.join(__dirname, 'dist', `${mod.file}.css`);
    const minifiedPath = path.join(__dirname, 'dist', `${mod.file}.min.css`);

    try {
      const originalStats = getFileStats(originalPath);
      const minifiedStats = getFileStats(minifiedPath);
      tableRows += `
                <tr>
                    <td><strong>${mod.name}</strong></td>
                    <td>${originalStats.size}</td>
                    <td>${minifiedStats.size}</td>
                    <td class="ax-text-success">${minifiedStats.gzip}</td>
                </tr>`;
    } catch (e) { tableRows += `<tr><td>${mod.name}</td><td colspan="3">Build missing</td></tr>`; }
  });

  const templatePath = path.join(__dirname, 'views', 'index.html');
  fs.readFile(templatePath, 'utf8', (err, data) => {
    if (err) {
      res.writeHead(500);
      res.end('Error parsing template');
      return;
    }
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end(data.replace('<!-- {{TABLE_ROWS}} -->', tableRows));
  });
};

const serveDoc = (filePath, res) => {
  fs.readFile(filePath, 'utf8', (err, md) => {
    if (err) { res.writeHead(404); res.end('Doc not found'); return; }
    const htmlContent = parseMarkdown(md);
    serveWithLayout(htmlContent, res);
  });
};

const serveExample = (filePath, res) => {
  fs.readFile(filePath, 'utf8', (err, html) => {
    if (err) { res.writeHead(404); res.end('Example not found'); return; }

    // Extract body content to duplicate less styling (simplified)
    // Ideally we would strip <html><body> tags but for now serving full html inside div might break,
    // so let's strip the outer html structure if present.

    let bodyContent = html;
    if (html.includes('<body')) {
      const match = html.match(/<body[^>]*>([\s\S]*)<\/body>/i);
      if (match) bodyContent = match[1];
    }

    // Fix relative paths in examples since we are wrapping them (if they use ../../dist)
    // They are now served at /docs/examples/xxx, so ../../dist works? 
    // Wait, if we render them inside layout, the layout css applies. 
    // The example content might expect its own head/styles. 
    // Since we are wrapping, we should ensure layout has necessary css.

    serveWithLayout(bodyContent, res);
  });
};

const server = http.createServer((req, res) => {
  let reqUrl = req.url;



  // Root -> Landing Page
  if (reqUrl === '/') {
    serveLandingPage(res);
    return;
  }

  // Static Assets (dist)
  if (reqUrl.startsWith('/dist/')) {
    const filePath = path.join(__dirname, reqUrl);
    serveFile(filePath, res);
    return;
  }

  // Documentation (/docs/v2.0.0)
  if (reqUrl.startsWith('/docs/v2.0.0')) {
    // Handle root of version
    if (reqUrl === '/docs/v2.0.0') {
      res.writeHead(301, { 'Location': '/docs/v2.0.0/' });
      res.end();
      return;
    }

    if (reqUrl === '/docs/v2.0.0/') {
      const filePath = path.join(__dirname, 'docs', 'v2.0.0', 'index.md');
      serveDoc(filePath, res);
      return;
    }

    let docName = reqUrl.split('/').pop();
    if (!docName) { // Should be covered by === check but safe fallback
      const filePath = path.join(__dirname, 'docs', 'v2.0.0', 'index.md');
      serveDoc(filePath, res);
      return;
    }

    // Handle extension
    const hasExt = docName.endsWith('.md');
    const fileName = hasExt ? docName : `${docName}.md`;

    const filePath = path.join(__dirname, 'docs', 'v2.0.0', fileName);
    serveDoc(filePath, res);
    return;
  }

  // Examples (/docs/examples)
  if (reqUrl.startsWith('/docs/examples')) {
    // If just /docs/examples
    if (reqUrl === '/docs/examples') {
      res.writeHead(301, { 'Location': '/docs/examples/' });
      res.end();
      return;
    }

    const parts = reqUrl.split('/');
    const exName = parts[parts.length - 1]; // last part

    if (reqUrl === '/docs/examples/' || !exName || exName === 'examples') {
      const filePath = path.join(__dirname, 'docs', 'examples', 'index.html');
      serveExample(filePath, res);
      return;
    }

    const filePath = path.join(__dirname, 'docs', 'examples', exName);
    serveExample(filePath, res);
    return;
  }

  // Fallback static file serving (for other assets/images)
  let filePath = path.join(__dirname, reqUrl);
  fs.stat(filePath, (err, stats) => {
    if (!err && stats.isFile()) {
      serveFile(filePath, res);
    } else {
      res.writeHead(404);
      res.end('Not Found');
    }
  });

});

server.listen(PORT, HOST, () => {
  console.log(`\n✨ Axis Twelve server running with Native Node.js`);
  console.log(`🚀 http://${HOST}:${PORT}/`);
  console.log(`📚 Documentation: http://${HOST}:${PORT}/docs/v2.0.0/`);
  console.log(`📦 Examples: http://${HOST}:${PORT}/docs/examples/\n`);
  console.log(`Press Ctrl+C to stop\n`);
});
