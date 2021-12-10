ENV["STARTSERVER"] = true
ENV["GENIE_ENV"] = "prod"
ENV["EARLYBIND"] = true

ENV["HOST"] = "0.0.0.0"

push!(LOAD_PATH, abspath(normpath(joinpath(@__DIR__, "../src/"))))
include("../bootstrap.jl")
