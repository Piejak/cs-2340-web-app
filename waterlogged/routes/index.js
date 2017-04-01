var express = require('express');
var router = express.Router();
var firebase = require("firebase");

/* GET home page. */
router.get('/', function(req, res, next) {
    firebase.auth().onAuthStateChanged(function(user) {
        if (user) {
            // User is signed in.
            res.render('index', { title: 'Waterlogged' });
        } else {
            // No user is signed in.
            // Show login
            res.render('login');
        }
    });
});

module.exports = router;
