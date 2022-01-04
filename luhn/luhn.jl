function luhn(numb)
    i = 1
    total = 0
    numba = replace(numb, " " => "")
    numb = replace(numba, !isdigit => "")

    if length(numba) == length(numb) && length(numba)!=1
        for c in reverse(numb)
            tmp = Int(c) - Int('0')
            if i % 2 == 0
                db = tmp * 2
                if db > 9
                    db = db - 9
                end
                tmp = db
            end
            i += 1
            total = total + tmp

        end
    else
        #we force return false as there were nodigits
        total = 1
    end

    ret = false
    if total % 10 == 0
        ret = true
    end
    return ret
end