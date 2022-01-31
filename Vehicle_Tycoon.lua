repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Character
wait(1.5)
-- Credits
game.StarterGui:SetCore("SendNotification", {
Title = "Credits";
Text = "Made By RoxyRekt";
Icon = "";
Duration = 10;
})

if game.workspace.Vehicles[game.Players.LocalPlayer.Name] then
-- Auto Teleport Car
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Vehicles[game.Players.LocalPlayer.Name].DriveSeat.CFrame
wait()
-- Fast Money Bug
for i = 1, 300 do
workspace.Vehicles[game.Players.LocalPlayer.Name].Network.sitOn:FireServer("Driver")
game.Players.LocalPlayer.Character.Humanoid.Jump = true
wait()
end
wait()
workspace.Vehicles[game.Players.LocalPlayer.Name].Network.sitOn:FireServer("Driver")
wait()
-- Auto Move Car
local car = game.workspace.Vehicles[game.Players.LocalPlayer.Name]
local part1 = Instance.new("Part")
part1.Anchored = true
part1.Position = Vector3.new(-4000, 250, -4000)
part1.Size = Vector3.new(50000, 1, 50000)
local part2 = Instance.new("Part")
part2.Anchored = true
part2.Position = Vector3.new(4000, 250, 4000)
part2.Size = Vector3.new(50000, 1, 50000)
part1.Parent = workspace
part2.Parent = workspace
wait()
while wait(0.03) do
car:SetPrimaryPartCFrame(CFrame.new(part1.Position + Vector3.new(0, 1, 0)))
wait(0.03)
car:SetPrimaryPartCFrame(CFrame.new(part2.Position + Vector3.new(0, 1, 0)))
end
end

--Anti AFK stolen from infinite yield // the readily available old one :)
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit - lol kotu hile")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
