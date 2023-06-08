
require([[_build._buildactions]])
--- @diagnostic disable: undefined-global

require("LifeBoatAPI.Tools.Build.Builder")

-- replace newlines
for k,v in pairs(arg) do
    arg[k] = v:gsub("##LBNEWLINE##", "\n")
end

local luaDocsAddonPath  = LifeBoatAPI.Tools.Filepath:new(arg[1]);
local luaDocsMCPath     = LifeBoatAPI.Tools.Filepath:new(arg[2]);
local outputDir         = LifeBoatAPI.Tools.Filepath:new(arg[3]);
local params            = {
    boilerPlate             = arg[4],
    reduceAllWhitespace     = arg[5] == "true",
    reduceNewlines          = arg[6] == "true",
    removeRedundancies      = arg[7] == "true",
    shortenVariables        = arg[8] == "true",
    shortenGlobals          = arg[9] == "true",
    shortenNumbers          = arg[10]== "true",
    forceNCBoilerplate      = arg[11]== "true",
    forceBoilerplate        = arg[12]== "true",
    shortenStringDuplicates = arg[13]== "true",
    removeComments          = arg[14]== "true",
    skipCombinedFileOutput  = arg[15]== "true"
};
local rootDirs          = {};

for i=15, #arg do
    table.insert(rootDirs, LifeBoatAPI.Tools.Filepath:new(arg[i]));
end

local _builder = LifeBoatAPI.Tools.Builder:new(rootDirs, outputDir, luaDocsMCPath, luaDocsAddonPath)

if onLBBuildStarted then onLBBuildStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]])) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Start.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Start.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[Start.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Start.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Start.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Start.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Start (1).lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Start (1).lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[Start (1).lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Start (1).lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Start (1).lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Start (1).lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Physics sensor converter.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Physics sensor converter.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[Physics sensor converter.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Physics sensor converter.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Physics sensor converter.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Physics sensor converter.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[PFD.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\PFD.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[PFD.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\PFD.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[PFD.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\PFD.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MyMicrocontroller.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MyMicrocontroller.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MyMicrocontroller.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[mainSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\mainSystem.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[mainSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\mainSystem.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[mainSystem.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\mainSystem.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[MainController.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MainController.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MainController.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MainController.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[MainController.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MainController.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[horizon.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\horizon.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[horizon.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\horizon.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[horizon.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\horizon.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[hex convert.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\hex convert.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[hex convert.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\hex convert.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[hex convert.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\hex convert.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[compassBar momij.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\compassBar momij.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[compassBar momij.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\compassBar momij.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[compassBar momij.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\compassBar momij.lua]]), outFile, combinedText, outText) end

if onLBBuildComplete then onLBBuildComplete(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]])) end
--- @diagnostic enable: undefined-global
