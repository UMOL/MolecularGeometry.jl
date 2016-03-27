using Base.Test

include(joinpath("..", "src", "MolecularGeometry.jl"))
using MolecularGeometry
import MolecularGeometry.gage


include(joinpath("function", "geometric_center", "runtests.jl"))