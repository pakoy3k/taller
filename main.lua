-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local Fisica = require "physics"
Fisica.start()

local fondo = display.newImage("imagenes/Space03.jpg")
local texto = display.newText("Hola Mundo !!!!", 80,35, "Helvetica",18)



local i = 1
--[[
while i < 300 do
	local texto = display.newText("*",90,i+40,"Helvetica",22)
	i = i + 30
	end
	--]]

local goku = display.newImage("imagenes/goku.gif")
goku.x, goku.y = 150, 250


Fisica.addBody(goku, "static", {friction=0.5})
function tocar(e)
goku.rotation = goku.rotation + 10
print (goku.rotation)
end
goku:addEventListener("touch",tocar); --]]

for  i = 10, 310, 30 do
	local gota = display.newImage("imagenes/gota.png")
	Fisica.addBody(gota, {bounce=2})
	gota.x, gota.y = i, 100
end

--[[
function gotea()
local gota = display.newImage("../imagenes/gota.png")
	Fisica.addBody(gota, {bounce=1})
	gota.x, gota.y = i, 100
	i = i + 30
end
i = 10
timer.performWithDelay(500, gotea,10)
--]]
-- Your code here
