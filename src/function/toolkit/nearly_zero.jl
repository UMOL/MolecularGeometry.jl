"""
Test whether a floating point number is close to
zero.

Arguments
---------
number:AbstractFloat
    input number 

threshold=1e-7:AbstractFloat
    (optional) threshold for the being nearly zero
"""
function nearly_zero(number::AbstractFloat, threshold::AbstractFloat=1e-7)
    return abs(number) < threshold
end