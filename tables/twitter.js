exports['patch uri'] = function(options) {
    var statement = options.statement, uri = options.uri;
    if(statement.offset && statement.limit) {
        uri.setParam('page', parseInt(statement.offset / statement.limit)+1);
    }
    uri.removeEmptyParams();
    return uri;
}
