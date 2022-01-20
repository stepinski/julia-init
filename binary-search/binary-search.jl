

function binarysearch(arr, low, high, item, result)
    # idx = floor(Int, size / 2 + 0.5)
    idx = low + floor(Int, (high - low) / 2)
    # print("primoif")
    #         print(low)
    #         print(" ")
    #         print(result[1])
    #         print(" ")
    #         print(high)    
    #         print(" ")
    #         print(result[2])
    if high >= low
        # idx = floor(Int, size / 2 + 0.5)
        if arr[idx] == item
            # print("index="*string(idx))
            # print("mode="*string(mode))
            
            if result==[0,0]
                result[1]= idx
                result[2] = idx
            elseif  idx<result[1]                 
                result[1] = idx
            elseif idx>result[2]
                result[2] = idx
            end
            binarysearch(arr, low, idx - 1, item, result)
            binarysearch(arr, idx + 1, high, item, result)
            # print("test")
            # print(low)
            # print(" ")
            # print(result[1])
            # print(" ")
            # print(high)    
            # print(" ")
            # print(result[2])
        elseif arr[idx] > item
            binarysearch(arr, low, idx - 1, item,  result)
        elseif arr[idx] < item
            binarysearch(arr, idx + 1, high, item, result)
        end
    else
        if result == [0,0]
            result = [low, low - 1]
        
        # elseif result[2]==0
        #     result[2]=result[1]
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
    ret = binarysearch(arr, 1, size, item, [0, 0])
    return ret
end