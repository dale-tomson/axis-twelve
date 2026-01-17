const express = require('express');
const router = express.Router();
const fs = require('fs-extra');
const path = require('path');
const { getModules } = require('../services/content');

router.get('/', async (req, res) => {
    const modules = await getModules();
    let pkg;
    const localPkg = path.join(__dirname, '../../package.json');
    const rootPkg = path.join(__dirname, '../../../package.json');

    if (await fs.pathExists(localPkg)) {
        pkg = await fs.readJson(localPkg);
    } else {
        pkg = await fs.readJson(rootPkg);
    }

    res.render('home', {
        title: 'Axis Twelve - Modern CSS Framework',
        version: pkg.version,
        modules: modules
    });
});

module.exports = router;
