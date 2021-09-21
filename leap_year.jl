"""
    is_leap_year(year)
 
Return `true` if `year` is a leap year in the gregorian calendar.
 
"""
function is_leap_year(year)
           tst1 = year % 4 == 0
           tst2 = year % 100 != 0
           tst3 = year % 400 == 0
           return tst1 && (tst2 || tst3)
end
