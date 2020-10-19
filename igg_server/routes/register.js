const express = require("express");
var router = express.Router();
var pool = require("../pool");
const md5 = require('md5')
router.post("/", (req, res) => {
    let uname = req.body.uname
    let upwd = req.body.upwd
    // console.log(username,password);
    let sql = 'select * from igg_user where uname=?  '
    pool.query(sql, [uname], (err, result) => {
        if (err) throw err
        // console.log(result);
        if (result.length === 0) {
            sql = 'insert into igg_user(uname,upwd) values(?,MD5(?))'
            pool.query(sql, [uname, upwd], (err, result) => {
                if (err) throw err
                res.send({ message: '注册成功', code: 1 })
            })
        } else {
            res.send({ message: '已经存在的用户', code: 0 })
        }
    })
})
module.exports = router;