module KinovaMovoRobot
# use same convention as AtlasRobot.jl
packagepath() = joinpath(@__DIR__, "..", "deps")
urdfpath() = joinpath(packagepath(), "movo.urdf")
end