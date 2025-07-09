
local uis = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

local flying = false

local function fly()
    if flying then return end
    flying = true

    local humanoidRoot = char:WaitForChild("HumanoidRootPart")
    local bodyVel = Instance.new("BodyVelocity")
    bodyVel.Velocity = Vector3.new(0, 0, 0)
    bodyVel.MaxForce = Vector3.new(1, 1, 1) * 1e5
    bodyVel.Parent = humanoidRoot

    local conn = uis.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Space then
            bodyVel.Velocity = Vector3.new(0, 50, 0)
        end
    end)

    char:WaitForChild("Humanoid").Died:Connect(function()
        bodyVel:Destroy()
        conn:Disconnect()
    end)
end

return {
    fly = fly
}
