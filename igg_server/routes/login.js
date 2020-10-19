var express = require('express');
var router = express.Router();
var pool = require("../pool");
const md5 = require('md5')

router.post('/', (req, res) => {

  let uname = req.body.uname
  let upwd = md5(req.body.upwd)
  console.log(uname, upwd);
  let sql = `select * from igg_user where uname=? and upwd=?`
  pool.query(sql, [uname, upwd], (err, result) => {
    if (err) throw err
    console.log(result);
    // res.send('ok')
    if (result.length === 0) {
      res.send({ message: '用户名或者密码错误', code: 0 })
    } else {
      res.send({ message: '登录成功', code: 1 })
    }
  })
  // let sql = 'select * from igg_user'
  // pool.query(sql, (err, result) => {
  //   if (err) throw err
  //   res.send(result)
  // })

})

module.exports = router;
