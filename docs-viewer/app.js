const express = require('express');
const path = require('path');
const fs = require('fs');

const app = express();
const port = process.env.PORT || 3000;
const baseUrl = process.env.BASE_URL || '';

// Setup Twig
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'twig');
app.set('twig options', {
    allowAsync: true,
    strict_variables: false
});

// Pass baseUrl to all templates
app.use((req, res, next) => {
    res.locals.baseUrl = baseUrl;
    next();
});

// Static files
const localDist = path.join(__dirname, 'public/dist');
if (fs.existsSync(localDist)) {
    app.use('/dist', express.static(localDist));
} else {
    app.use('/dist', express.static(path.join(__dirname, '../dist')));
}
app.use(express.static(path.join(__dirname, 'public')));

// Routes
const indexRoutes = require('./src/routes/index');
const docsRoutes = require('./src/routes/docs');
const examplesRoutes = require('./src/routes/examples');
const changelogRoutes = require('./src/routes/changelogs');

app.use('/', indexRoutes);
app.use('/docs', docsRoutes);
app.use('/examples', examplesRoutes);
app.use('/changelogs', changelogRoutes);

app.listen(port, () => {
    console.log(`Docs viewer running at http://localhost:${port}`);
});
