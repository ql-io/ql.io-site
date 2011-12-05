/**
 * The Bing search API returns errors in a A monkey patch to detect an error from the response.
 * @param options
 */
exports['patch status'] = function(options) {
    var sys = require('sys');
    console.log(sys.inspect(options.body, false, 10));
    var json = options.body;
    if(json && ((json.SearchResponse && json.SearchResponse.Errors) ||
                (json['soapenv:Envelope'] && json['soapenv:Envelope']['soapenv:Body'] &&
                 json['soapenv:Envelope']['soapenv:Body']['soapenv:Fault']))) {
        return 400;
    }
    else {
        return 200;
    }
}
