

function binarysearch(arr, item, cnt = 1)
    size = length(arr)
    idx = floor(Int, size / 2 + 0.5)
    retval = 0
    if size > 2
        if arr[idx] > item
            binarysearch(arr[1:idx], item, cnt + 1)
        elseif arr[idx] < item
            binarysearch(arr[idx:size], item, cnt + 1)
        else
            retval = idx
            # return idx:cnt
        end
    # TODO add different conditions for corner scenarios    
        # elseif size==2
    #     if arr[1]==
    end
    # if idx == 1
    #     return 0:cnt
    # end
    # end
    return retval:cnt
end