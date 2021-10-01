local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Train Destruction Simulator", "BloodTheme")
-- Tab
local all = Window:NewTab("All")
-- Section
local boostagems = all:NewSection("Boost And Gems")
-- Toggle

boostagems:NewToggle("Instant Boost & Gems", "ToggleInfo", function(state)
    getgenv().boostandgems = state
end)

while true do
    if getgenv().boostandgems then
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("DailyReward")
    end
end
