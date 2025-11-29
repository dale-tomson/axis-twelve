const http = require('http');
const fs = require('fs');
const path = require('path');
const url = require('url');

const PORT = process.env.PORT || 3000;
const HOST = 'localhost';

const server = http.createServer((req, res) => {
  let filePath = '.' + req.url;
  
  // Default to index.html
  if (filePath === './') {
    filePath = './index.html';
  }

  // Get file extension
  const extname = String(path.extname(filePath)).toLowerCase();
  
  // MIME types
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

  const contentType = mimeTypes[extname] || 'application/octet-stream';

  fs.readFile(filePath, (error, content) => {
    if (error) {
      if (error.code === 'ENOENT') {
        res.writeHead(404, { 'Content-Type': 'text/html' });
        res.end('<h1>404 - File Not Found</h1>', 'utf-8');
      } else {
        res.writeHead(500);
        res.end('Sorry, check with the site admin for error: ' + error.code + ' ..\n');
      }
    } else {
      res.writeHead(200, { 'Content-Type': contentType });
      res.end(content, 'utf-8');
    }
  });
});

server.listen(PORT, HOST, () => {
  console.log(`\n✨ Axis Twelve development server running\n`);
  console.log(`🚀 http://${HOST}:${PORT}/`);
  console.log(`📚 Documentation: http://${HOST}:${PORT}/docs/`);
  console.log(`📦 Examples: http://${HOST}:${PORT}/examples/\n`);
  console.log(`Press Ctrl+C to stop\n`);
});
