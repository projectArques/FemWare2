if IY_LOADED and not _G.IY_DEBUG == true then
    -- error("Infinite Yield is already running")
    return
end

pcall(function() getgenv().IY_LOADED = true end)

local cloneref = cloneref or function(...) return ... end
COREGUI = cloneref(game:GetService("CoreGui"))
Players = cloneref(game:GetService("Players"))

if not game:IsLoaded() then
    local notLoaded = Instance.new("Message")
    notLoaded.Parent = COREGUI
    notLoaded.Text = "Infinite Yield is waiting for the game to load"
    game.Loaded:Wait()
    notLoaded:Destroy()
end

currentVersion = "6.3.1"

ScaledHolder = Instance.new("Frame")
Scale = Instance.new("UIScale")
Holder = Instance.new("Frame")
Title = Instance.new("TextLabel")
Dark = Instance.new("Frame")
