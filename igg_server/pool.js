//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: '',
  database: 'igg',
  connectionLimit: 10
  // host: 'r.rdc.sae.sina.com.cn',
  // user: '3kj53k10zj',
  // password: 'yl54ly1i13m2j23k504hz51x51i5ki30zk1h5w2m',
  // database: 'app_xzserve2',
  // connectionLimit: 10 
});
//把创建好的连接池导出
module.exports = pool;




