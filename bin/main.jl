ENV["STARTSERVER"] = true
ENV["GENIE_ENV"] = "prod"
ENV["EARLYBIND"] = true

ENV["HOST"] = match(r"https?://(.*)$", ENV["JH_APP_URL"])[1]

push!(LOAD_PATH, abspath(normpath(joinpath(@__DIR__, "../src/"))))
include("../bootstrap.jl")
