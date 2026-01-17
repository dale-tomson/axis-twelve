const fs = require('fs-extra');
const path = require('path');
const { getDocs, getDocContent, getExamples, getExampleContent, getChangelogs, getChangelogContent } = require('./src/services/content');
const twig = require('twig');
const packageJson = require('../package.json');

const OUT_DIR = path.join(__dirname, 'out');
const VIEWS_DIR = path.join(__dirname, 'views');

// Mock res.render for static generation
async function renderView(view, data) {
    return new Promise((resolve, reject) => {
        twig.renderFile(path.join(VIEWS_DIR, `${view}.twig`), {
            ...data,
            baseUrl: process.env.BASE_URL || '',
            settings: { 'view engine': 'twig', views: VIEWS_DIR }
        }, (err, html) => {
            if (err) reject(err);
            else resolve(html);
        });
    });
}

async function exportStatic() {
    console.log('🚀 Starting static export...');
    await fs.emptyDir(OUT_DIR);
    await fs.ensureFile(path.join(OUT_DIR, '.nojekyll'));

    // 1. Export Home
    console.log('🏠 Exporting Home...');
    const docs = await getDocs();
    const examples = await getExamples();
    const modules = [
        { name: 'Axis Twelve (Full)', file: 'axis-twelve.min.css', size: '77KB' },
        { name: 'Layout', file: 'modules/axis-layout.min.css', size: '57KB' },
        { name: 'Buttons', file: 'modules/axis-buttons.min.css', size: '5.5KB' },
        { name: 'Forms', file: 'modules/axis-forms.min.css', size: '8.6KB' },
        { name: 'Modals', file: 'modules/axis-modals.min.css', size: '2.9KB' },
        { name: 'Tooltips', file: 'modules/axis-tooltips.min.css', size: '3.0KB' },
        { name: 'Tables', file: 'modules/axis-tables.min.css', size: '2.7KB' },
        { name: 'Cards', file: 'modules/axis-cards.min.css', size: '2.8KB' }
    ];

    const homeHtml = await renderView('home', {
        title: 'Axis Twelve - Modern CSS Framework',
        version: packageJson.version,
        modules: modules
    });
    await fs.writeFile(path.join(OUT_DIR, 'index.html'), homeHtml);

    // 2. Export Docs
    console.log('📚 Exporting Docs...');
    await fs.ensureDir(path.join(OUT_DIR, 'docs'));
    for (const doc of docs) {
        const currentIndex = docs.findIndex(d => d.id === doc.id);
        const prevDoc = currentIndex > 0 ? docs[currentIndex - 1] : null;
        const nextDoc = currentIndex < docs.length - 1 ? docs[currentIndex + 1] : null;
        const content = await getDocContent(doc.id);

        const html = await renderView('docs', {
            title: `${doc.title} - Documentation`,
            docs,
            currentModule: doc.id,
            content,
            prevDoc,
            nextDoc
        });
        await fs.ensureDir(path.join(OUT_DIR, 'docs', doc.id));
        await fs.writeFile(path.join(OUT_DIR, 'docs', doc.id, 'index.html'), html);
    }
    // Root docs redirect or copy index
    await fs.copy(path.join(OUT_DIR, 'docs', 'index', 'index.html'), path.join(OUT_DIR, 'docs', 'index.html'));

    // 3. Export Examples
    console.log('🎨 Exporting Examples...');
    await fs.ensureDir(path.join(OUT_DIR, 'examples'));
    for (const ex of examples) {
        const content = await getExampleContent(ex.id);
        const html = await renderView('examples', {
            title: `${ex.title} - Examples`,
            examples,
            currentModule: ex.id,
            content
        });
        await fs.ensureDir(path.join(OUT_DIR, 'examples', ex.id));
        await fs.writeFile(path.join(OUT_DIR, 'examples', ex.id, 'index.html'), html);
    }
    await fs.copy(path.join(OUT_DIR, 'examples', 'index', 'index.html'), path.join(OUT_DIR, 'examples', 'index.html'));

    // 4. Export Changelogs
    console.log('📄 Exporting Changelogs...');
    const changelogs = await getChangelogs();
    await fs.ensureDir(path.join(OUT_DIR, 'changelogs'));
    for (const log of changelogs) {
        const currentIndex = changelogs.findIndex(c => c.id === log.id);
        const prevLog = currentIndex > 0 ? changelogs[currentIndex - 1] : null;
        const nextLog = currentIndex < changelogs.length - 1 ? changelogs[currentIndex + 1] : null;
        const content = await getChangelogContent(log.id);

        const html = await renderView('changelogs', {
            title: `${log.title} - Changelogs`,
            changelogs,
            currentVersion: log.id,
            content,
            prevVersion: prevLog,
            nextVersion: nextLog
        });
        await fs.ensureDir(path.join(OUT_DIR, 'changelogs', log.id));
        await fs.writeFile(path.join(OUT_DIR, 'changelogs', log.id, 'index.html'), html);
    }
    if (changelogs.length > 0) {
        await fs.copy(path.join(OUT_DIR, 'changelogs', changelogs[0].id, 'index.html'), path.join(OUT_DIR, 'changelogs', 'index.html'));
    }

    // 5. Copy Assets
    console.log('📦 Copying Assets...');
    const publicDir = path.join(__dirname, 'public');
    if (await fs.pathExists(publicDir)) {
        await fs.copy(publicDir, OUT_DIR);
    }

    // Ensure dist is always present in the output
    const outDistDir = path.join(OUT_DIR, 'dist');
    const rootDistDir = path.join(__dirname, '../dist');

    if (!(await fs.pathExists(outDistDir))) {
        console.log('📦 Bundling framework assets (dist)...');
        await fs.ensureDir(outDistDir);
        await fs.copy(rootDistDir, outDistDir);
    }

    console.log('✅ Static export complete! Files are in docs-viewer/out');
}

exportStatic().catch(err => {
    console.error('❌ Export failed:', err);
    process.exit(1);
});
