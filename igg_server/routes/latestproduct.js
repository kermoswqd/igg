var express = require('express');
var router = express.Router();
var pool = require("../pool");

router.get('/', (req, res) => {
    sql = 'select * from igg_product where cateid="latest"'
    pool.query(sql, (err, result) => {
        if (err) throw err
        res.send(result)
    })
})

module.exports = router;
