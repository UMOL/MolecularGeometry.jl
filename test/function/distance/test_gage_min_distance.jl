"""
A test for gage(MinDistance, ...).

Arguments
----------
array1:Array
    input 1

array2:Array 
    input 2

solution:Number
    answer key

msg="":AbstractString
    abstract string 
"""
function test_gage_min_distance(array1::Array, array2::Array, msg::AbstractString="")
    println("-------------------------------------")
    print_with_color(:blue, "Test gage(MinDistance,...)\n\n")
    if msg != ""
        print_with_color(:blue, '$(msg)\n\n')
    end

    answer = gage(MinDistance,array1,array2)

    @test_approx_eq answer solution

    print_with_color(:green, "VERIFIED! gage(MinDistance,...)\n\n")

    return true
end
