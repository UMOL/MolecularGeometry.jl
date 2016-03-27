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
    dimension = length(size(array))

    if dimension == 1
        return array
    else
        return mean(array, 1)
    end
end
