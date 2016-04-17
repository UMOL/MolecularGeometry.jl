"""
Gage the geometric center (mean value) of an input array.

Arguments
---------
:Type{GeometricCenter}
    a Julia Type object and must be ``GeometricCenter``

array::Array
    a floating point array
"""
function gage(::Type{GeometricCenter}, array::Array)
    if issubtype(typeof(array[1]), AbstractArray)
        return gage_array_of_arrays(GeometricCenter, array)
    else
        if length(size(array)) == 1 # check array dimension
            return array
        else
            return mean(array, 1)
        end
    end
end
