function raindrops(number)
    tst=""
    if (number%3) == 0
        tst="Pling"
    end
    if (number%5) == 0
        tst= tst*"Plang"
    end
    if (number%7) == 0
        tst= tst*"Plong"
    end

    if tst ==""
        tst=string(number)
    end

    return tst
end
