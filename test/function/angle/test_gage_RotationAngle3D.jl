"""
A test for gage(RotationAngle3D,...).

Arguments
----------
vector_1:Array
    input vector 1

vecto_2:Array
    input vector 2

solution:Array
    answer key

msg="":AbstractString
    optional test message
"""
function test_gage_RotationAngle3D(vector_1::Array, vector_2::Array, solution::Array, msg::AbstractString="")
    println("-----------------------------------------")
    print_with_color(:blue, "Test gage(RotationAngle3D,...)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    @time answer = gage(RotationAngle3D, vector_1, vector_2)
    @test_approx_eq answer solution

    print_with_color(:green, "VERIFIED!\n")
    println("-----------------------------------------")
    return true
end

test_gage_RotationAngle3D([1.,0.,0.],[0.,1.,0.],[0., 0., pi/2],"test 1")
test_gage_RotationAngle3D([1.,0.,0.],[0.,0.,1.],[0., pi/2, 0.],"test 2")
test_gage_RotationAngle3D([1.,1.,1.],[0.,0.,1.],[pi/4, pi/4, 0.],"test 3")
test_gage_RotationAngle3D([-5.908280911892572,-1.04509170227587,-13.0],
    [-5.908280911892572,-1.04509170227587,-8.0],
    [ 0.04968168612933354,   0.209547259173216344,  0.], "test 5")
test_gage_RotationAngle3D([-5.908280911892572,-1.04509170227587,-3.0],
    [-5.908280911892572,-1.04509170227587,-8.0],
    [ 0.205315688679911706,  0.46483537569637462,   0.], "test 6")