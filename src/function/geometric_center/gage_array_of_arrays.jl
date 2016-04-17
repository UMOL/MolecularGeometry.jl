"""
Gage the geometric center (mean value) of an input array of arrays.

Arguments
---------
:Type{GeometricCenter}
    a Julia Type object and must be ``GeometricCenter``

array::Array
    an array of floating point arrays 
}
"""
function gage_array_of_arrays(::Type{GeometricCenter}, array::Array)
    if length(array) == 0
        return Array{AbstractFloat,1}[]
    else
        return sum(array)/length(array)
    end
end
