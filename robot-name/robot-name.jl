using Random
mutable struct Robot
    pname::String
    # obj::Robot
    Robot() = (x = new();x.pname="")
end

function reset!(instance::Robot)
    instance.pname=""
end

function name(instance::Robot) 
    instance.pname = length(instance.pname)>0 ? randstring('A':'Z', 2) * randstring('0':'9', 3) : instance.pname
    return instance.pname
end
