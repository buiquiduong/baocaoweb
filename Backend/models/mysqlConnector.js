// Load module
var mysql = require('mysql');
// Initialize pool
var pool      =    mysql.createPool({
    host     : '127.0.0.1',
    user     : 'root',
    database : 'feshop',
    debug    :  false
});
module.exports = pool;