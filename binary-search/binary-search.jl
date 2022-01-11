

function binarysearch(arr, item,cnt=1)
    size=length(arr)
    idx=floor(size/2)
    retval=0
    if size>1
        if arr[idx]>item
            binarysearch(arr[0:idx],item,cnt+1)
        elseif arr[idx]<item
            binarysearch(arr[idx:length],item,cnt+1)
        else
            retval=idx
        end
    end
    return retval:cnt
end