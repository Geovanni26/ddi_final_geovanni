
const mysql = require('mysql');

const connection = mysql.createConnection({
    host : 'localhost',
    port:   '3306',
    database : 'ddi_final_geovanni',
    user : 'root',
    password : ''
});

connection.connect(function(error){
    if(error)
    {
        throw error;
    }
    else
    {
        console.log('Puerto 3000, habilitado');
    }
});

module.exports = connection;

