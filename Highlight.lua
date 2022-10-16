local Players = game:GetService("Players"):GetChildren()

local highlight = Instance.new("Highlight")
highlight.Name = "ESP"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    local highlightClone = highlight:Clone()
    highlightClone.Adornee = v.Character
    highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    local highlightClone = highlight:Clone()
    highlightClone.Adornee = player.Character
    highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
end)
