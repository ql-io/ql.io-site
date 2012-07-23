exports.filterRow = function(keys) {
    var found = false;
    var details = [];
    for(var i = 0; i < this.row[1].length; i++) {
        for(var j = 0; j < keys.length; j++) {
            if(keys[j].name === this.row[1][i].name) {
                details.push(this.row[1][i]);
                found = true;
                break;
            }
        }
    }
    if(found) {
        this.row[1] = details;
    }
    return this.next(null, found ? this.row : null);
};
