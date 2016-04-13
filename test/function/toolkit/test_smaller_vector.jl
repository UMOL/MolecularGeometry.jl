"""
A test for smaller_vector().

Arguments
-----------
input:Array
    input vector 

i:Integer
    index of the item to be removed

solution:Array
    answer key

msg="":AbstractString   
    (optional) test message
"""
function test_smaller_vector(input::Array, i::Integer, solution::Array, msg::AbstractString="")
    println("-------------------------------------")
    print_with_color(:blue, "Test smaller_vector()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end
    answer = smaller_vector(input, i)
    @test answer == solution
    print_with_color(:green, "VERIFIED!\n")
    return true
end
test_smaller_vector([1,2,3],1,[2,3],"test 1")