local Linq = require('Linq')
Linq.Repeat(function(v) return math.random(1,100) end, 20)
    :Where(function(v) return v>20 end)
    :TakeByOrder(10, function(v) return -v end)
    :Select(function(v)
        return v+1000
    end)
    :ForEach(print)
