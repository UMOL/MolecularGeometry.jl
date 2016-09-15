"""
``MolecularGeometry`` provides methods for 
measuring the geometric properties of molecules.
The following quantities are supported:

+-----------------------------------+--------------------------------+
| Quantity                          |Method                          |
+===================================+================================+
|geometric center                   |gage(GeometricCenter, array)    |
|                                   |                                |
|                                   |gage(GeometricCenter, obj)      |
+-----------------------------------+--------------------------------+

"""
module MolecularGeometry
include(joinpath("..", "deps", "Distances", "src", "Distances.jl"))

macro debug(expression)
    return :($expression)
end

export GeometricCenter, MinDistance, PrincipalAxes
export RotationAngle, ProjectedRotationAngle
export gage, nearly_zero, smaller_vector

# types
include(joinpath("type", "all.jl"))

# functions
include(joinpath("function", "all.jl"))

end