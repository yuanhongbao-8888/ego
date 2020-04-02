const mysql = require("mysql");
const MyObject = {
    hist:"localhost",
    user:"root",
    password:"",
    database:"ego"
}

const client = mysql.createConnection(MyObject);

function SQLConnect(sql,arr,callback){
    client.query(sql,arr,(error,result) => {
        if(error){
            console.log(error);
            return;
        }
        callback(result)
    })
}

module.exports = SQLConnect