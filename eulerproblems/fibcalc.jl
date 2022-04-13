function fibsum()
    sum=0
    prev=1
    curr=2

    while curr<4000000
        if curr%2 == 0
            sum+=curr
        end 
        temp=curr
        curr=prev+temp
        prev=temp
    end
    return sum
end