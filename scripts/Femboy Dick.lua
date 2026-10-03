local plr = game:GetService("Players").LocalPlayer

local function noclip()
    for _, part in pairs(plr.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end

while task.wait() do
    noclip()
end
