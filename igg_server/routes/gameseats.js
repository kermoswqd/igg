const express = require("express");
var router = express.Router();
var pool = require("../pool");
router.get("/", (req, res) => {
    let cateid = req.query.cateid
    let page = req.query.page
    let pagesize = 8
    let allpronum = 0
    let allpage = 0
    let offset = (page - 1) * pagesize
    let sql = `SELECT * FROM akplayer_product where cateid=? limit ${offset},${pagesize}`;
    pool.query(sql, [cateid], (err, result) => {

        if (err) throw err;
        let sql = 'select COUNT(cateid) AS count from akplayer_product where cateid=?'
        pool.query(sql, [cateid], (err, resul) => {
            if (err) throw err;
            allpronum = resul[0].count
            allpage = Math.ceil(allpronum / pagesize)
            res.send({ result, allpage });
        })
        // res.send({ result, allpage });

        // if (err) throw err;
        // let sql = 'select COUNT(cateid) AS count from akplayer_product where cateid=?'
        // pool.query(sql, [cateid], (err, results) => {
        //     if (err) throw err;
        //     allpronum = results[0].count;
        //     //2.计算总页数
        //     allpage = Math.ceil(allpronum / pagesize);
        //     //返回原来的查询记录的数据及总页数信息
        //     res.send({ message: '查询成功', code: 1, results: result, pagecount: allpage });
        // });

    })
})
module.exports = router;