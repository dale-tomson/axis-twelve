const express = require('express');
const router = express.Router();
const { getDocs, getDocContent } = require('../services/content');

router.get('/', async (req, res) => {
    const docs = await getDocs();
    const indexDoc = docs.find(d => d.id === 'index');
    const firstDoc = indexDoc ? indexDoc.id : (docs[0] ? docs[0].id : null);

    if (firstDoc && !req.query.m) {
        return res.redirect(`/docs?m=${firstDoc}`);
    }

    const currentModule = req.query.m || firstDoc;
    const content = await getDocContent(currentModule) || '';

    let prevDoc = null;
    let nextDoc = null;
    const currentIndex = docs.findIndex(d => d.id === currentModule);
    if (currentIndex > 0) prevDoc = docs[currentIndex - 1];
    if (currentIndex < docs.length - 1) nextDoc = docs[currentIndex + 1];

    res.render('docs', {
        title: 'Documentation - Axis Twelve',
        docs: docs,
        currentModule: currentModule,
        content: content,
        prevDoc: prevDoc,
        nextDoc: nextDoc
    });
});

module.exports = router;
