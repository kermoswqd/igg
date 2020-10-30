// var express = require('express');
// var router = express.Router();
// var pool = require("../pool");

// router.get('/', (req, res) => {
//     let pid = req.query.id
//     console.log(pid);
//     sql = 'select * from igg_product where pid=?'
//     pool.query(sql, [pid], (err, result) => {
//         if (err) throw err
//         res.send(result)
//     })
// })

// module.exports = router;
var express = require('express');
var router = express.Router();
var pool = require("../pool");

router.get('/', (req, res) => {
    // let pid = req.query.id
    // console.log(pid);
    // sql = 'select * from igg_product where pid=?'
    // pool.query(sql, [pid], (err, result) => {
    //     if (err) throw err
    //     res.send(result)
    // })
    let pid=req.query.id
    // sql=' select igg_img.cateId,igg_img.carouselImg,igg_img.detailImg,igg_allproduct.desc,igg_allproduct.title  from igg_img inner join igg_allproduct on igg_img.cateId=igg_allproduct.pid where igg_allproduct.pid=?'
    sql=' select igg_img.cateId,igg_img.carouselImg,igg_img.detailImg,igg_allproduct.img, igg_allproduct.desc,igg_allproduct.price,igg_allproduct.title from igg_img inner join igg_allproduct on igg_img.cateId=igg_allproduct.pid where igg_allproduct.pid=?'
        pool.query(sql, [pid], (err, result) => {
        if (err) throw err
        res.send(result)
    })
})

module.exports = router;
