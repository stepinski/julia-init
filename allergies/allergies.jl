function allergic_to(score, allergen)

end

function allergy_list(score)
    vals=Dict( 1 => "eggs", 2=>"peanuts"  , 4=>"shellfish"  , 8=>"strawberries"  , 16=>"tomatoes", 32=>"chocolate" , 64=>"pollen" , 128=>"cats")
    return Set([vals[score]])
end
