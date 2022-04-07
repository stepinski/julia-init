using Random
global history_set = Set{String}()

mutable struct Robot
     pname::String 
    #  history::Set{String}
    # # obj::Robot
    #  Robot() = (x = new();x.pname="")
    function Robot()
        return new("")
    end
end

function reset!(instance::Robot)
    instance.pname=""
end

function generate_name()
    nname=""
    nih=true
    genn()=randstring('A':'Z', 2) * randstring('0':'9', 3)
    nname=genn()
    while (in(nname, history_set))
        # Random.seed!( rand(1:100000) )
        nname = genn()
        # nih=in(nname, history_set)
    end
    push!(history_set, nname)
    return nname
end

function name(instance::Robot) 
    # print(instance.pname)
    # print(randstring('A':'Z', 2) * randstring('0':'9', 3) )
    
    instance.pname = length(instance.pname)==0 ?  generate_name() : instance.pname
   
    # print(instance.pname)
    return instance.pname
end
