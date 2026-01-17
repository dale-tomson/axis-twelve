const express = require('express');
const router = express.Router();
const { getExamples, getExampleContent } = require('../services/content');

router.get('/', async (req, res) => {
    const examples = await getExamples();
    const indexExample = examples.find(e => e.id === 'index');
    const firstExample = indexExample ? indexExample.id : (examples[0] ? examples[0].id : null);

    if (firstExample && !req.query.m) {
        return res.redirect(`/examples?m=${firstExample}`);
    }

    const currentModule = req.query.m || firstExample;
    const content = await getExampleContent(currentModule) || '';

    res.render('examples', {
        title: 'Examples - Axis Twelve',
        examples: examples,
        currentModule: currentModule,
        content: content
    });
});

module.exports = router;
