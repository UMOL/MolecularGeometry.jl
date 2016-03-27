"""
A test for gage(GeometricCenter, obj_array).

Arguments
----------
:Type{GeometricCenter}
    must be the Julia Type object ``GeometricCenter``

array:Array{Array,1}
    a floating point array 
}

solution:Array
    answer key

msg::AbstractString
    optional test message
"""
function test_gage_array_of_arrays(::Type{GeometricCenter},
    array::Array{Array,1},
    solution::Array,
    msg::AbstractString)
    
    println("-----------------------------------")
    print_with_color(:blue, "Test gage(GeometricCenter, Array[...])\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n")
    end

    answer = gage(GeometricCenter, array)

    @test_approx_eq answer solution

    
    println("-----------------------------------")
    print_with_color(:green, "VERIFIED! gage(GeometricCenter, Array[...])\n")

    return true

end

include("unit_test_1_gage_array_of_arrays.jl")
include("unit_test_2_gage_array_of_arrays.jl")
