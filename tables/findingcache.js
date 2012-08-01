'use strict';

exports['patch uri'] = function(options) {

    var uri = options.uri;

    options.params.siteid = "EBAY-US";

    return uri;

}

exports['compute key'] = function (args) {
    var key = [];
    key.push(args.table);
    key.push(args.uri);
    key.push(args.params.siteid);
    return(key.join(':'));
};