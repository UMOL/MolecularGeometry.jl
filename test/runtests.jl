using Base.Test
include("print_dashed_line.jl")

include(joinpath("..", "src", "MolecularGeometry.jl"))
using MolecularGeometry
import MolecularGeometry.gage


include(joinpath("function","runtests.jl"))