local URL = "https://raw.githubusercontent.com/roxyrekt/HubORScript/main"

local games = {
    [393890079] = "Roblox Flip"
    [2974058674] = "Dunking Simulator"
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(URL .. "/" .. (name or "Universal") .. ".lua", true))()
