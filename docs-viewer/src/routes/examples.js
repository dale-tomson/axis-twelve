const express = require('express');
const router = express.Router();
const { getExamples, getExampleContent } = require('../services/content');

router.get(['/', '/:id'], async (req, res) => {
    const examples = await getExamples();
    const indexExample = examples.find(e => e.id === 'index');
    const firstExample = indexExample ? indexExample.id : (examples[0] ? examples[0].id : null);

    const currentModule = req.params.id || firstExample;

    if (!req.params.id && currentModule) {
        return res.redirect(`${res.locals.baseUrl}/examples/${currentModule}`);
    }

    const content = await getExampleContent(currentModule) || '';

    res.render('examples', {
        title: 'Examples - Axis Twelve',
        examples: examples,
        currentModule: currentModule,
        content: content
    });
});

module.exports = router;
