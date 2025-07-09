
local ui = loadstring(game:HttpGet("https://example.com/hub/ui.lua"))()
local funcs = loadstring(game:HttpGet("https://example.com/hub/functions.lua"))()

ui.addButton("Ativar Fly", funcs.fly)
