"""
Return the rotation angles (2-vector) needed to align the
first vector to the second vector.

Note that if at least one of the vector is 
the zero vector, then it returns 0.
by convention.

Arguments
----------
:Type{RotationAngle2D}
    must be type ``RotationAngle2D``

vector_1:Array
    the vector to be rotated

vector_2:Array 
    the target vector to be aligned to
"""
function gage(::Type{RotationAngle2D}, vector_1::Array, vector_2::Array)
    @debug @assert length(vector_1) == 2
    @debug @assert length(vector_2) == 2
    NEARLY_ZERO_THRESHOLD = 1e-7
    if nearly_zero(norm(vector_1,2), NEARLY_ZERO_THRESHOLD)
        return 0.
    elseif nearly_zero(norm(vector_2,2), NEARLY_ZERO_THRESHOLD)
        return 0.
    else
        return acos(dot(vector_1, vector_2)/(norm(vector_1,2)*norm(vector_2,2)))
    end
end