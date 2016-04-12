"""
Return the principal axes of the rigid body
defined by the input coordinates.
The order of the principals axes is sorted
by the eigenvalues of the moment of inertia matrix
(from low to high).

Arguments
-----------
:Type{PrincipalAxes}
    must be type `PrincipalAxes`

coordinates:Array
    must be a 2D matrix and must have exactly 3 columns
"""
function gage(::Type{PrincipalAxes},coordinates::Array)
    shape = size(coordinates)
    @debug @assert length(shape) == 2
    @debug @assert shape[2] == 3

    I = zeros(3,3) # moment of inertia tensor
    I[1,1] = sum(coordinates[:,2].^2 + coordinates[:,3].^2)
    I[2,2] = sum(coordinates[:,1].^2 + coordinates[:,3].^2)
    I[3,3] = sum(coordinates[:,1].^2 + coordinates[:,2].^2)
    I[1,2] = -sum(coordinates[:,1] .* coordinates[:,2])
    I[1,3] = -sum(coordinates[:,1] .* coordinates[:,3])
    I[2,3] = -sum(coordinates[:,2] .* coordinates[:,3])
    I[2,1] = I[1,2]
    I[3,1] = I[1,3]
    I[3,2] = I[2,3]
    D,V = eig(I)
    return V[:,sortperm(D)] # sort the eigenvectors by the eigenvalues
end