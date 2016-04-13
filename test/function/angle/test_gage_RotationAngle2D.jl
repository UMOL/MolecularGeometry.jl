"""
A test for gage(RotationAngle2D,...).

Arguments
----------
vector_1:Array
    input 2D vector 1

vecto_2:Array
    input 2D vector 2

solution:AbstractFloat
    answer key

msg="":AbstractString
    optional test message
"""
function test_gage_RotationAngle2D(vector_1::Array, vector_2::Array, solution::AbstractFloat, msg::AbstractString="")
    println("-----------------------------------------")
    print_with_color(:blue, "Test gage(RotationAngle2D,...)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = gage(RotationAngle2D, vector_1, vector_2)
    @test answer == solution

    print_with_color(:green, "VERIFIED!\n")
    println("-----------------------------------------")
    return true
end

test_gage_RotationAngle2D([1., 0.],[0., 1.],pi/2,"test 1")
test_gage_RotationAngle2D([0., 0.],[0., 1.],0.,"test 2")
test_gage_RotationAngle2D([1., 0.],[0., 0.],0.,"test 3")
test_gage_RotationAngle2D([0., 0.],[0., 0.],0.,"test 4")