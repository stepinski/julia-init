

function binarysearch(arr, low, high, item, result)
    idx = low + floor(Int, (high - low) / 2)

    if high >= low
        if arr[idx] == item
            if result == [0, 0]
                result[1] = idx
                result[2] = idx
            elseif idx < result[1]
                result[1] = idx
            elseif idx > result[2]
                result[2] = idx
            end
            binarysearch(arr, low, idx - 1, item, result)
            binarysearch(arr, idx + 1, high, item, result)
        elseif arr[idx] > item
            binarysearch(arr, low, idx - 1, item, result)
        elseif arr[idx] < item
            binarysearch(arr, idx + 1, high, item, result)
        end
    else
        if result == [0, 0]
            result = [low, low - 1]
        end
        return result[1]:result[2]
    end
end

function binarysearch(arr, item)
    size = length(arr)
    ret = binarysearch(arr, 1, size, item, [0, 0])
    return ret
end