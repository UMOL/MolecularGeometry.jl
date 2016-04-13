"""
Return the rotation angles (3-vector) needed to align the
first vector to the second vector.

Arguments
----------
:Type{RotationAngle3D}
    must be type ``RotationAngle3D``

vector_1:Array
    the vector to be rotated

vector_2:Array 
    the target vector to be aligned to
"""
function gage(::Type{RotationAngle3D}, vector_1::Array, vector_2::Array)
    @debug @assert length(vector_1) == 3
    @debug @assert length(vector_2) == 3
    function nearly_zero(number::AbstractFloat)
        NEARLY_ZERO_LIMIT = 1e-7
        return abs(number) < NEARLY_ZERO_LIMIT
    end



    function angle(vec1::Array)
    

end