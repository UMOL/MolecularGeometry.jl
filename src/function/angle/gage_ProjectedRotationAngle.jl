"""
Return the rotation angle around the 
reference axis for the first vector to be 
aligned to the second vector.

Arguments
----------
:Type{ProjectedRotationAngle}
    must be type ``ProjectedRotationAngle``

input:AbstractArray
    the vector to be rotated

target:AbstractArray 
    the target vector to be aligned to

ref_axis:AbstractArray
    the reference axis around which input vector will be rotated

tol_near_zero=1e-15:AbstractFloat
    (optional) tolerance for the length of the input vectors to be close to zero
"""
function gage(::Type{ProjectedRotationAngle}, input::AbstractArray, target::AbstractArray,
    ref_axis::AbstractArray, tol_near_zero::AbstractFloat=1e-15)

    @debug @assert length(input) == length(target)

    ref_axis_magnitude = norm(ref_axis, 2)
    input_magnitude = norm(input, 2)   
    target_magnitude = norm(target, 2)

    if ref_axis_magnitude < tol_near_zero # this means the input vector is the origin
        return 0. # no need to rotate 
    else 
        unit_ref_axis = ref_axis / ref_axis_magnitude
    end 

    if input_magnitude < tol_near_zero # this means the input vector is the origin
        return 0. # no need to rotate
    else 
        unit_input = input / input_magnitude 
    end 

    if target_magnitude < tol_near_zero # this means the target vector is the origin
        return 0. # no need to rotate 
    else 
        unit_target = target / target_magnitude
    end 

    # get the projection along a direction normal to the ref_axis
    function normal_projection(input::AbstractArray, unit_ref_axis::AbstractArray)
        return input - dot(input, unit_ref_axis) * unit_ref_axis
    end

    return gage(RotationAngle, normal_projection(unit_input, unit_ref_axis), 
        normal_projection(unit_target, unit_ref_axis))
end