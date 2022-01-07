# import Pkg; Pkg.add("stdlib")
# import StdLib
using Unicode
const TEST_GRAPHEMES = true

function myreverse(word)
    return join(reverse(collect(graphemes(word))))
end
