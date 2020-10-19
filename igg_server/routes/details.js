var express = require('express');
var router = express.Router();
var pool = require("../pool");

router.get('/', (req, res) => {
    let pid = req.query.id
    console.log(pid);
    sql = 'select * from igg_product where pid=?'
    pool.query(sql, [pid], (err, result) => {
        if (err) throw err
        res.send(result)
    })
})

module.exports = router;
