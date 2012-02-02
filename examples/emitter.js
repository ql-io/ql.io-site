var Engine = require('ql.io-engine'),
    fs = require('fs');

var engine = new Engine({
    tables : __dirname + '/../tables',
    config: __dirname + '/../config/dev.json'
});

var script = fs.readFileSync(__dirname + '/myapi.ql', 'UTF-8');
engine.execute(script, function(emitter) {
    emitter.on('prodid', function(data) {
        console.log('found ' + data.length + ' product IDs');
    });
    emitter.on('details', function(data) {
        console.log('found ' + data.length + ' details');
    });
    emitter.on('reviews', function(data) {
        console.log('found ' + data.length + ' reviews');
    });
    emitter.on('end', function(err, result) {
        console.log('Got results');
    });
});
