"""
A test for gage(PrincipalAxes,...)

Arguments
----------
coordinates:Array 
    input array of arrays

solution:Array 
    answer key

msg="":AbstractString
    optional test message
"""
function test_gage_principal_axes(coordinates::Array, solution::Array, msg::AbstractString="")
    println("=================================")
    print_with_color(:blue, "Test gage(PrincipalAxes,...)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    @time answer = gage(PrincipalAxes, coordinates)

    @test_approx_eq answer solution

    print_with_color(:green, "VERIFIED!\n\n")
    println("=================================")

    return true
end

test_gage_principal_axes([1. 0. 0.;], eye(3), "unit vector along X")
test_gage_principal_axes(
    [1. 1. 0.;
     0. 0. 0.;], 
    [sqrt(2)/2. -sqrt(2)/2. 0.0;
     sqrt(2)/2. sqrt(2)/2. 0.0;
     0.0 0.0 1.0], "vector in the X-Y plane")
test_gage_principal_axes(
    [0. 1. 1.;
     0. 0. 0.;], 
    [0.  1.  0.;
     sqrt(2)/2. 0. -sqrt(2)/2.;
     sqrt(2)/2. 0. sqrt(2)/2. ], "vector in the Y-Z plane")

test_gage_principal_axes(
    Array[[0., 1., 1.],
     [0., 0., 0.]], 
    [0.  1.  0.;
     sqrt(2)/2. 0. -sqrt(2)/2.;
     sqrt(2)/2. 0. sqrt(2)/2. ], "test using array of arrays a input")

test_gage_principal_axes(
    Array[
     [1., 0., 0.],
     [0., 1., 0.],
     [1., 1., 0.]], 
    [sqrt(2)/2. -sqrt(2)/2. 0.;
     sqrt(2)/2.  sqrt(2)/2. 0.;
     0.          0.         1.], "test using array of 3 vectors as input")



