const express = require('express');
const router = express.Router();
const { getChangelogs, getChangelogContent } = require('../services/content');

router.get('/', async (req, res) => {
    const changelogs = await getChangelogs();
    const firstLog = changelogs[0] ? changelogs[0].id : null;

    if (firstLog && !req.query.v) {
        return res.redirect(`/changelogs?v=${firstLog}`);
    }

    const currentVersion = req.query.v || firstLog;
    const content = await getChangelogContent(currentVersion) || '';

    let prevLog = null;
    let nextLog = null;
    const currentIndex = changelogs.findIndex(c => c.id === currentVersion);
    // Note: changelogs are sorted descending, so "next" in array is "older" version
    if (currentIndex > 0) prevLog = changelogs[currentIndex - 1];
    if (currentIndex < changelogs.length - 1) nextLog = changelogs[currentIndex + 1];

    res.render('changelogs', {
        title: 'Changelogs - Axis Twelve',
        changelogs: changelogs,
        currentVersion: currentVersion,
        content: content,
        prevVersion: prevLog,
        nextVersion: nextLog
    });
});

module.exports = router;
