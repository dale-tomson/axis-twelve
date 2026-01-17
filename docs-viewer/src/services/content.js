const fs = require('fs-extra');
const path = require('path');
const { glob } = require('glob');
const MarkdownIt = require('markdown-it');
const md = new MarkdownIt({ html: true });

async function getModules() {
    const modulesDir = path.join(__dirname, '../../../dist/modules');
    if (!(await fs.pathExists(modulesDir))) return [];

    const files = await fs.readdir(modulesDir);
    const modules = [];

    for (const file of files) {
        if (file.endsWith('.min.css')) {
            const stats = await fs.stat(path.join(modulesDir, file));
            const name = file.replace('axis-', '').replace('.min.css', '');
            modules.push({
                name: name.charAt(0).toUpperCase() + name.slice(1),
                file: file,
                size: (stats.size / 1024).toFixed(2) + ' KB'
            });
        }
    }
    return modules;
}

async function getDocs() {
    const files = await glob('content/docs/*.md', { cwd: path.join(__dirname, '../..') });
    return files.map(f => {
        const name = path.basename(f, '.md');
        return {
            id: name,
            title: name === 'index' ? 'Home' : name.charAt(0).toUpperCase() + name.slice(1)
        };
    }).sort((a, b) => {
        if (a.id === 'index') return -1;
        if (b.id === 'index') return 1;
        return a.title.localeCompare(b.title);
    });
}

async function getExamples() {
    const files = await glob('content/examples/*.html', { cwd: path.join(__dirname, '../..') });
    return files.map(f => {
        const name = path.basename(f, '.html');
        return {
            id: name,
            title: name === 'index' ? 'Home' : name.charAt(0).toUpperCase() + name.slice(1)
        };
    }).sort((a, b) => {
        if (a.id === 'index') return -1;
        if (b.id === 'index') return 1;
        return a.title.localeCompare(b.title);
    });
}

async function getChangelogs() {
    const changelogDir = path.join(__dirname, '../../content/changelogs');
    if (!(await fs.pathExists(changelogDir))) return [];

    const files = await fs.readdir(changelogDir);
    return files
        .filter(f => f.endsWith('.md'))
        .map(f => ({
            id: f.replace('.md', ''),
            title: f.replace('.md', '')
        }))
        .sort((a, b) => {
            // Basic semver-ish sort descending
            return b.id.localeCompare(a.id, undefined, { numeric: true, sensitivity: 'base' });
        });
}

async function getDocContent(id) {
    const filePath = path.join(__dirname, '../../content/docs', `${id}.md`);
    if (!(await fs.pathExists(filePath))) return null;
    const raw = await fs.readFile(filePath, 'utf-8');
    return md.render(raw);
}

async function getChangelogContent(id) {
    const filePath = path.join(__dirname, '../../content/changelogs', `${id}.md`);
    if (!(await fs.pathExists(filePath))) return null;
    const raw = await fs.readFile(filePath, 'utf-8');
    return md.render(raw);
}

async function getExampleContent(id) {
    const filePath = path.join(__dirname, '../../content/examples', `${id}.html`);
    if (!(await fs.pathExists(filePath))) return null;
    return await fs.readFile(filePath, 'utf-8');
}

module.exports = {
    getModules,
    getDocs,
    getExamples,
    getChangelogs,
    getDocContent,
    getExampleContent,
    getChangelogContent
};
