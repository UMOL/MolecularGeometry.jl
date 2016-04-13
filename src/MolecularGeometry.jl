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
using Distances

macro debug(expression)
    return :($expression)
end

export GeometricCenter, MinDistance, PrincipalAxes
export RotationAngle
export gage

# types
include(joinpath("type", "all.jl"))

# functions
## geometric center
include(joinpath("function", "all.jl"))

end