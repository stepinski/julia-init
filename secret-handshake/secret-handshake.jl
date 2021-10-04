function secret_handshake(code)
    bits=bitstring(code)
    uncode=reverse(bits)
    ret = String[]
    if uncode[1]=='1'
        push!(ret,"wink")
    end
    if uncode[2]=='1'
        push!(ret,"double blink")
    end
    if(uncode[3]=='1')
        push!(ret,"close your eyes")
    end
    if(uncode[4]=='1')
        push!(ret,"jump")
    end

    if(uncode[5]=='1')
        ret=reverse(ret)
    end
    return ret
end
