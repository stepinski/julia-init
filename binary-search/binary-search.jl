

function binarysearch(arr, low, high, item, mode, result)
    # idx = floor(Int, size / 2 + 0.5)
    idx = low + floor(Int, (high - low) / 2)
    # print(low)
    # print(high)
    if high >= low
        # idx = floor(Int, size / 2 + 0.5)
        if arr[idx] == item
            if mode == 0
                result[1] = idx
            elseif mode == 1
                result[2] = idx
            end

        elseif arr[idx] > item
            binarysearch(arr, low, high - 1, item, 1, result)
        elseif arr[idx] < item
            binarysearch(arr, idx + 1, high, item, 0, result)
        end
    else
        if result == [0,0]
            result = [low, low - 1]
        
        elseif result[2]==0
            result[2]=result[1]
        end  
        return result[1]:result[2]
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
    size = length(arr)
    ret = binarysearch(arr, 1, size, item, -1, [0, 0])
    return ret
end