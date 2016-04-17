"""
A test for gage(PrincipalAxes,...)

Arguments
----------
coordinates:Array 
    input array of arrays

solution:Array 
    answer key

msg="":AbstractString
    (optional) test message

center=[]:AbstractArray
    (keyword) center of rotation
"""
function test_gage_principal_axes(coordinates::Array, solution::Array, msg::AbstractString=""; center::AbstractArray=[])
    print_dashed_line(80)
    print_with_color(:blue, "Test gage(PrincipalAxes,...)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    @time answer = gage(PrincipalAxes, coordinates; center=center)

    @test_approx_eq answer solution

    print_with_color(:green, "VERIFIED!\n\n")
    print_dashed_line(80)

    return true
end

include("unit_test_1.jl")
include("unit_test_2.jl")
include("unit_test_3.jl")
include("unit_test_4.jl")
include("unit_test_5.jl")
include("unit_test_6.jl")
