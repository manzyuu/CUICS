-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 159 (524 with comment) chars

a=screen
_=false
function onTick()_=not _
c=input.getBool(1)if c then
b=b+1
end
output.setBool(32,_)end
function onDraw()a.setColor(10,10,10)a.drawClear()end
