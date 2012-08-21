// parse the textual response from gm auth and get a session token from it
var _ = require('underscore');
exports['parse response'] = function (args) {
    var str = '';
    _.each(args.body, function (buf) {
        str += buf.toString('UTF-8');
    });

    var lines = str.split('\n');
//    console.log(lines);
    var ret = {};
    _.each(lines, function(line) {
        var arr = line.split('=');
        ret[arr[0]] = arr[1];
    })
//    console.log('ret');
//    console.log(ret);
    return {
        type: 'application/json',
        content: JSON.stringify(ret)
    };
}

/*
exports['patch mediaType'] = function(args)
{
	return 'application/json';
}
*/