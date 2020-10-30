var express = require('express');
var router = express.Router();
var pool = require("../pool");

router.get('/', (req, res) => {
    // let page = req.query.page
    // // console.log(page);
    // let
    //     sql = 'select * from igg_allproduct where cateid=1'
    // pool.query(sql, (err, result) => {
    //     if (err) throw err
    //     res.send(result)
    // })
    // let cid = req.query.cid;
    //接收客户端传递的URL参数中的page -- 页码
    let page = req.query.page;
    //存储每页显示的记录数(其实pagesize就是一个纯变量,与分页没有任何关系)
    let pagesize = 6;
    //根据MySQL分页的标准计算公式计算出offset参数值,并且带入到SQL语句中
    let offset = (page - 1) * pagesize;
    //现以接收到cid为条件进行文章信息的查找,此时的pagesize才是真正的返回多少条记录呢
    let sql = 'SELECT * FROM igg_allproduct WHERE cateid=1 LIMIT ' + offset + ',' + pagesize;
    //存储总记录数
    let rowcount;
    //存储总页数
    let pagecount;
    //执行SQL查询
    pool.query(sql, (err, result) => {
        if (err) throw err;
        /////////////////   
        //1.获取记录数
        sql = 'SELECT COUNT(pid) AS count FROM igg_allproduct WHERE cateid=1';
        pool.query(sql, (err, results) => {
            if (err) throw err;
            rowcount = results[0].count;
            //2.计算总页数
            pagecount = Math.ceil(rowcount / pagesize);
            //返回原来的查询记录的数据及总页数信息
            res.send({ message: '查询成功', code: 1, results: result, pagecount: pagecount });
        });
        /////////////////
    })
})

module.exports = router;
