mutable struct Robot
    obj::Robot
    Robot() = (x = new(); x.obj = x;)
end

function reset!(instance::Robot)

end

function name(instance::Robot)
    return ""
end
