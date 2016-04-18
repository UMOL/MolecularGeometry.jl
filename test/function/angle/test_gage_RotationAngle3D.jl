"""
A test for gage(RotationAngle3D,...).

Arguments
----------
:Type{RotationAngle3D}
    must be type ``RotationAngle3D``

input:AbstractArray
    the vector to be rotated

target:AbstractArray 
    the target vector to be aligned to

ref_axis:AbstractArray
    the reference axis around which input vector will be rotated

solution:AbstractFloat
    answer key 
    
msg="":AbstractString
    optional test message

tol_near_zero=1e-15:AbstractFloat
    (optional) tolerance for the length of the input vectors to be close to zero
"""
function test_gage(::Type{RotationAngle3D}, 
    input::AbstractArray, target::AbstractArray, ref_axis::AbstractArray, 
    solution::AbstractFloat, msg::AbstractString="", tol_near_zero::AbstractFloat=1e-15)
    print_dashed_line(80)
    print_with_color(:blue, "Test gage(RotationAngle3D,...)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    @time answer = gage(RotationAngle3D, input, target, ref_axis, tol_near_zero)
    @test_approx_eq answer solution

    print_with_color(:green, "VERIFIED!\n")
    print_dashed_line(80)
    return true
end

test_gage(RotationAngle3D, [1.,0.,0.], [0.,1.,0.], [0., 0., 2.], pi/2,"test 1")
test_gage(RotationAngle3D, [1.,0.,0.], [0.,0.,1.], [0., 1., 0.], pi/2,"test 2")
test_gage(RotationAngle3D, [1.,1.,1.], [0.,0.,1.], [1., -1., 0.], pi/4,"test 3")
