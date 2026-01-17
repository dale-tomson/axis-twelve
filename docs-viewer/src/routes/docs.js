const express = require('express');
const router = express.Router();
const { getDocs, getDocContent } = require('../services/content');

router.get(['/', '/:id'], async (req, res) => {
    const docs = await getDocs();
    const indexDoc = docs.find(d => d.id === 'index');
    const firstDoc = indexDoc ? indexDoc.id : (docs[0] ? docs[0].id : null);

    const currentModule = req.params.id || firstDoc;

    // Redirect /docs to /docs/index (or whatever firstDoc is) for consistency
    if (!req.params.id && currentModule) {
        return res.redirect(`${res.locals.baseUrl}/docs/${currentModule}`);
    }

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
