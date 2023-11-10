console.log("Inicio update");
const { syncDB } = require("./sync-db");

var cron = require("node-cron");
cron.schedule("1-59/5 * * * * *", syncDB);