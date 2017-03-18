
var handlebars = require('express-handlebars').create();
var express = require('express');
var app = express();
var https = require('https');
var fs = require('fs');

app.engine('handlebars', handlebars.engine);
app.set('view engine', 'handlebars');
app.use(express.static('./public'));


app.set('port', 3001);

app.get(['/', '/home'], function(req, res, next){
	res.render('home');
});

app.get(['/app/grumbler'], function(req, res, next){
	res.redirect(301, 'https://grumbler.royvbtw.uk:3002');
});

app.use(function(err, req, res, next){
	console.log(err);
});

var httpsOpt = {
	key: fs.readFileSync('./tls/privkey.pem'),
	cert: fs.readFileSync('./tls/fullchain.pem')
};

// setup HTTPS server
https.createServer(httpsOpt, app).listen(app.get('port'), function(){
	console.log('HOME server started on port %s', app.get('port'));
	console.log('伺服器已啟動。');
});