if getgenv().AirTeam then return end

getgenv().AirTeam = {}

local HttpService = game:GetService("HttpService")

local function Find(Table, Value)
    for i, v in next, Table do
        if v == Value then
            return true, v, i
        end
    end
end

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Exunys/AirTeam-Hub/main/Resources/Games/"..(select(3, Find(HttpService:JSONDecode(game:HttpGetAsync("https://raw.githubusercontent.com/Exunys/AirTeam-Hub/main/Resources/Extras/Games.json"), game.PlaceId))) or "Universal")..".lua"))()
