
var handlebars = require('express-handlebars').create();
var express = require('express');
var app = express();
var https = require('https');
var fs = require('fs');
var serverConfig = require('./config/main.config')(__dirname);

app.engine('handlebars', handlebars.engine);
app.set('view engine', 'handlebars');
app.use(express.static(__dirname + '/public'));


app.set('port', 3000);
app.set('views', __dirname + '/views');

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
	key: fs.readFileSync(serverConfig.mainkey),
	cert: fs.readFileSync(serverConfig.maincert)
};

// setup HTTPS server
https.createServer(httpsOpt, app).listen(app.get('port'), function(){
	console.log('HOME server started on port %s', app.get('port'));
	console.log('伺服器已啟動。');
});

var httpapp = express();
var httpServer = require('http').createServer(httpapp);
httpServer.listen(3001);

// redirect all request from http to https
httpapp.get('*', function(req, res){
	res.redirect('https://royvbtw.uk/' + req.url);
});