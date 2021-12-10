ENV["STARTSERVER"] = true
ENV["GENIE_ENV"] = "prod"
ENV["EARLYBIND"] = true
ENV["HOST"] = ENV["JH_APP_URL"]

push!(LOAD_PATH, abspath(normpath(joinpath(@__DIR__, "../src/"))))
include("../bootstrap.jl")
