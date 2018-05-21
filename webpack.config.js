var Encore = require('@symfony/webpack-encore');

Encore
    .setOutputPath('web/build/')
    .setPublicPath('/web')
    .addEntry('app', './web/assets/js/app.js')
    .addEntry('contact', './web/assets/js/contact.js')
    .addEntry('style', './web/assets/css/main.scss')
    .cleanupOutputBeforeBuild()
    .autoProvidejQuery()
    .enableSassLoader(function(sassOptions) {}, {
        resolveUrlLoader: false
    })
    .enableBuildNotifications();

module.exports = Encore.getWebpackConfig();
