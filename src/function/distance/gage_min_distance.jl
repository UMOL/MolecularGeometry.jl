"""
Return the minimum distance between 
two array of arrays.

Arguments
-----------
:Type{MinDistance}
    must be data type MinDistance

array_1:Array 
    input 1

array_2:Array 
    input 2 
"""
function gage(::Type{MinDistance},array_1::Array, array_2::Array)
    if length(array_1) == 0
        @debug print_with_color(:red, "WARNING! input array 1 is empty for gage(MinDistance,...)\n\n")
        return 0.
    end

    if length(array_2) == 0
        @debug print_with_color(:red, "WARNING! input array 2 is empty for gage(MinDistance,...)\n\n")
        return 0.
    end

    if issubtype(typeof(array_1[1]),Number)
        array_1 = Array[array_1]
    end

    if issubtype(typeof(array_2[1]),Number)
        array_2 = Array[array_2]
    end

    return minimum(Distances.pairwise(Distances.Euclidean(), hcat(array_1...), hcat(array_2...)))
end