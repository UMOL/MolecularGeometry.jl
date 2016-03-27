"""
Gage the geometric center (mean value) of an input array of arrays.

Arguments
---------
:Type{GeometricCenter}
    a Julia Type object and must be ``GeometricCenter``

array::Array{Array,1}
    a floating point array
}
"""
function gage(::Type{GeometricCenter}, array::Array{Array,1})
    if length(array) == 0
        return Array{AbstractFloat,1}[]
    else
        return sum(array)/length(array)
    end
end
