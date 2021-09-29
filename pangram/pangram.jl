"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    alphabet="abcdefghijklmnopqrstuvwxyz"

    for c in lowercase(input)
        if c in alphabet
            alphabet=replace(alphabet,c=>"")
        end 
    end

    # return alphabet
    return (alphabet == "")
end

