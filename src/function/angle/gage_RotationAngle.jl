"""
Return the rotation angle between two 
vectors of any number of dimensions.

Note that if at least one of the vector is 
the zero vector, then it returns 0.
by convention.

Arguments
----------
:Type{RotationAngle}
    must be type ``RotationAngle``

vector_1:AbstractArray
    vector 1

vector_2:AbstractArray 
    vector 2

tol_near_zero=1e-7:AbstractFloat
    tolerance for being close to zero
"""
function gage(::Type{RotationAngle}, vector_1::AbstractArray, vector_2::AbstractArray,
    tol_near_zero::AbstractFloat=1e-7)
    @debug @assert length(vector_1) == length(vector_2)

    if nearly_zero(norm(vector_1,2), tol_near_zero)
        return 0.
    elseif nearly_zero(norm(vector_2,2), tol_near_zero)
        return 0.
    else
        #= developer's note: (Yuhang Wang 04/17/2016)
            Sometimes, the normalized dot product is > 1 or < -1 due to
            error in floating point division.
            Without proper handling, Julia will report domain error. 
        =#
        normalized_dot = dot(vector_1/norm(vector_1,2), vector_2/norm(vector_2,2))
        if normalized_dot > 1.0 
            return acos(floor(normalized_dot))
        elseif normalized_dot < -1.0
            return acos(ceil(normalized_dot))
        else 
            return acos(normalized_dot)
        end
    end
end