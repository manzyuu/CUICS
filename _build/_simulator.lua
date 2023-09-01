-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

require("LifeBoatAPI.Tools.Simulator.Simulator")
require("LifeBoatAPI.Tools.Simulator.SimulatorSandbox")

-- command line input
for k,v in pairs(arg) do
    arg[k] = v:gsub("##LBNEWLINE##", "\n")
end

local rootDirs = {};
for i=3, #arg do
    rootDirs[#rootDirs+1] = LifeBoatAPI.Tools.Filepath:new(arg[i])
end

-- simulator
local sandboxEnv = LifeBoatAPI.Tools.SimulatorSandbox.createSandbox(rootDirs)
local simulator = LifeBoatAPI.Tools.Simulator:new(sandboxEnv)
sandboxEnv.simulator = simulator
simulator:_beginSimulation(false, arg[1], arg[2])

-- main require
sandboxEnv.require("_build.out.release.module.status")

simulator:_giveControlToMainLoop()
