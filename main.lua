
local ui = loadstring(game:HttpGet("https://example.com/hub/ui.lua"))()
local funcs = loadstring(game:HttpGet("https://example.com/hub/functions.lua"))()

local gameScripts = {
    [2753915549] = "bloxfruits",
    [6516141723] = "doors"
}

local scriptName = gameScripts[game.PlaceId] or "universal"
loadstring(game:HttpGet("https://example.com/hub/games/" .. scriptName .. ".lua"))()
