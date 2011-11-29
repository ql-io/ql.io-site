exports['patch status'] = function(options) {
    var json = options.body;
    if(json) {
        return json.status_code;
    }
    else {
        return 200;
    }
};