"""
A test for gage(RotationAngle,...).

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
function test_gage_rotation_angle(vector_1::Array, vector_2::Array, solution::Array, msg::AbstractString="")
    println("-----------------------------------------")
    print_with_color(:blue, "Test gage(RotationAngle,...)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = gage(RotationAngle, vector_1, vector_2)
    @test asnwer == solution

    print_with_color(:green, "VERIFIED!\n")
    println("-----------------------------------------")
    return true
end

test_gage_rotation_angle([1.,0.,0.],[0.,1.,0.],[0., 0., pi/2],"test 1")