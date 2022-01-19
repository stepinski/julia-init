

function binarysearch(arr,low,high,item,cnt)
    # idx = floor(Int, size / 2 + 0.5)
    idx=low+floor(Int, (high-low) / 2 )
    if high>=low
        # idx = floor(Int, size / 2 + 0.5)
        if arr[idx]==item
            return idx:cnt
        elseif arr[idx] > item
            binarysearch(arr,low,high-1, item, cnt + 1)
        elseif arr[idx] < item
            binarysearch(arr,idx+1,high, item, cnt + 1)
        end
    else 
        return idx:cnt
    end
    # TODO add different conditions for corner scenarios    
        # elseif size==2
    #     if arr[1]==
    #end
    # if idx == 1
    #     return 0:cnt
    # end
    # end
    #return retval:cnt
end

function binarysearch(arr, item)
    size=length(arr)
    ret=binarysearch(arr,1,size,item,0)
    return ret
end