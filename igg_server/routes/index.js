var express = require('express');
var router = express.Router();
var pool = require("../pool");

router.get('/', (req, res) => {
  let sql = 'select * from xz_index_product'
  pool.query(sql, (err, result) => {
    if (err) throw err
    res.send(result)
  })

})

module.exports = router;
