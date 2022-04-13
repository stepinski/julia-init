function allergic_to(score, allergen)
    return allergen in allergy_list(score)
end

function allergy_list(score)
    bits=digits(score%256, base=2, pad=8) |> reverse
    bitc= !=(0).(bits)
    vals=["eggs","peanuts","shellfish","strawberries","tomatoes","chocolate","pollen","cats"] |> reverse
    return Set(vals[bitc])
end
