"""
A test for nearly_zero().

Arguments
----------
number:AbstractFloat
    input number 

threshold:AbstractFloat
    threshold for being nearly zero 

solution:Bool
    answer key 

msg="":AbstractString
    (optional) test message
"""
function test_nearly_zero(number::AbstractFloat, threshold::AbstractFloat, solution::Bool, msg::AbstractString="")
    println("---------------------------------")
    print_with_color(:blue, "Test nearly_zero()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end
    answer = nearly_zero(number, threshold)
    @test answer == solution
    print_with_color(:green, "VERIFIED!\n")
    println("---------------------------------")
    return true
end
test_nearly_zero(1e-5,1e-7,false)
test_nearly_zero(1e-8,1e-7,true)