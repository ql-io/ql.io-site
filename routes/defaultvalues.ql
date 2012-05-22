ret = {
    'name' : '{^Nam}',
    'gender' : '{Gende}'
    }
return ret via route '/efaultvaluetest'
using defaults '^Nam' = 'John Smith', Gende = 'Mal', n = 'foo'
using method get;