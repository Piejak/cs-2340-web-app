var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/', function(req, res) {
    console.log(req);
    var email = req.body.email;
    var password = req.body.password;
    res.send(email + " " + password); 
});

module.exports = router;
