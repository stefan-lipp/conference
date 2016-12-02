const express = require('express');
const router = express.Router();

const jwtMiddleware = require('../middleware/jwt.middleware');

router.get('/', jwtMiddleware, function(req, res, next) {
  res.json({
    success: true,
    env: process.env.ENV,  
  });
});

module.exports = router;
