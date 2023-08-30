
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

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Ponycompress.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Ponycompress.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[Ponycompress.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Ponycompress.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[Ponycompress.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\Ponycompress.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MyMicrocontroller.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MyMicrocontroller.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[MyMicrocontroller.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\MyMicrocontroller.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\map.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\map.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\map.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\map.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\map.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\map.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\menu.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\menu.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\menu.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\menu.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\menu.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\menu.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\momiji_lua1.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\momiji_lua1.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\momiji_lua1.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\momiji_lua1.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\momiji_lua1.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\momiji_lua1.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\MainController.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\MainController.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\MainController.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\MainController.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\MainController.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\MainController.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\WIFI.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\WIFI.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\WIFI.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\WIFI.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\WIFI.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\WIFI.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\WIFI map.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\WIFI map.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\WIFI map.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\WIFI map.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\WIFI map.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\WIFI map.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Left Main Monitor.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Left Main Monitor.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\Left Main Monitor.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Left Main Monitor.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Left Main Monitor.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Left Main Monitor.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Start.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Start.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\Start.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Start.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Start.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Start.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Start (1).lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Start (1).lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\Start (1).lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Start (1).lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Start (1).lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Start (1).lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Right Main Monitor.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Right Main Monitor.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\Right Main Monitor.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Right Main Monitor.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\Right Main Monitor.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\Right Main Monitor.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\PFD.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\PFD.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\PFD.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\PFD.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\PFD.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\PFD.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\ErrorCheck.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\ErrorCheck.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[lua program\ErrorCheck.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\ErrorCheck.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[lua program\ErrorCheck.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\lua program\ErrorCheck.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\Physics sensor converter.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\Physics sensor converter.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\PFD\Physics sensor converter.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\Physics sensor converter.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\Physics sensor converter.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\Physics sensor converter.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\horizon.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\horizon.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\PFD\horizon.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\horizon.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\horizon.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\horizon.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\hex convert.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\hex convert.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\PFD\hex convert.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\hex convert.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\hex convert.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\hex convert.lua]]), outFile, combinedText, outText) end

if onLBBuildFileStarted then onLBBuildFileStarted(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\compassBar momij.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\compassBar momij.lua]])) end

local combinedText, outText, outFile = _builder:buildMicrocontroller([[module\PFD\compassBar momij.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\compassBar momij.lua]]), params)
if onLBBuildFileComplete then onLBBuildFileComplete(LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]]), [[module\PFD\compassBar momij.lua]], LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS\module\PFD\compassBar momij.lua]]), outFile, combinedText, outText) end

if onLBBuildComplete then onLBBuildComplete(_builder, params, LifeBoatAPI.Tools.Filepath:new([[c:\Users\toshi\Documents\stormworksLua\GitHub\CUICS\MAKIOS-CUICS]])) end
--- @diagnostic enable: undefined-global
