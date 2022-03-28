using Random
mutable struct Robot
     pname::String 
    # # obj::Robot
    #  Robot() = (x = new();x.pname="")
    function Robot()
        return new("")
    end
end

function reset!(instance::Robot)
    instance.pname=""
end

function name(instance::Robot) 
    # print(instance.pname)
    # print(randstring('A':'Z', 2) * randstring('0':'9', 3) )
    instance.pname = length(instance.pname)==0 ? randstring('A':'Z', 2) * randstring('0':'9', 3) : instance.pname
    # print(instance.pname)
    return instance.pname
end
