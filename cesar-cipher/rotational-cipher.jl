

function rotate(pos, instr)
    alefbet = "abcdefghijklmnopqrstuvwxyz"
    res = ""
    for c in instr
        isup = isuppercase(c)
        orgpos = findfirst(lowercase(c), alefbet)
        if orgpos == nothing
            res = res * c
        else
            newpos = (orgpos + pos) % 26
            if newpos == 0 
                newpos = 26
            end
            newletter = !isup ? alefbet[newpos] : uppercase(alefbet[newpos])    
            res = res * newletter
        end     
    end
    if instr isa String
        return res
    else
        return res[1]
    end
end