/**
 * Subroutes under /
 */
function apiSubroutes (app) {

  app.subroute('/', (subrouteApp) => {

    subrouteApp.get((req, res) => {
      res.json({
        success: true,
        env: process.env.ENV,
      });
    });

  });
}

module.exports = apiSubroutes;
