local URL = "https://raw.githubusercontent.com/roxyrekt/HubORScript/main"

local games = {
    [393890079] = "Roblox Flip",
    [2974058674] = "Dunking Simulator",
    [2849628914] = "Aliens Want Money",
    [911750776] = "Broken Bones IV",
    [1956765797] = "Frog Simulator",
    [2899971524] = "Jetpack Jumpers",
    [3273359613] = "Magnet Simulator 2",
    [2892595431] = "Train Destruction Simulator",
    [688930313] = "Vehicle Tycoon",
    [3122498577] = "Webman Simulator"
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(URL .. "/" .. (name or "Universal") .. ".lua", true))()
