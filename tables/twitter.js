exports['patch uri'] = function(options) {
    var statement = options.statement, uri = options.uri;
    if(statement.offset && statement.limit) {
        uri.setParam('page', statement.offset / statement.limit);
    }
    uri.removeEmptyParams();
    return uri;
}
