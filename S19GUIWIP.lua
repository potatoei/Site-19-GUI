--[[
        Decided to revamp the whole GUI!
        Credits to xHeptic, AdministratorGnar, Opulent/Jaystation, 

]]














local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local Forums = Library.new("SCP Site-19 Roleplay GUI made by Jaystation/Opulent")
local M16 = Forums:NewSection("M16")
local KV = Forums:NewSection("Kriss Vector")
local proj = Forums:NewSection("P90")
local G22 = Forums:NewSection("Glock 22")
local shield = Forums:NewSection("Riot Shields")
local keycha = Forums:NewSection("Keychains")
local keyca = Forums:NewSection("Keycards")
local med = Forums:NewSection("Medkits")
local brush = Forums:NewSection("Brushes")
local vest = Forums:NewSection("Vests")
local wrench = Forums:NewSection("Wrench")
local knives = Forums:NewSection("Knives")


local speaker = game.Players.LocalPlayer
local speakercf = speaker.Character.HumanoidRootPart.CFrame


M16:NewButton("Pickup1", function()
    speakercf = workspace.Ignore.Pickups.M16:GetChildren()[4].CFrame
end)
M16:NewButton("Pickup2", function()
    speakercf = workspace.Ignore.Pickups.M16.Pickup.CFrame
end)
M16:NewButton("Pickup3", function()
    speakercf = workspace.Ignore.Pickups.M16:GetChildren()[2].CFrame
end)
M16:NewButton("Pickup4", function()
    speakercf = workspace.Ignore.Pickups.M16:GetChildren()[3].CFrame
end)

KV:NewButton("Pickup1", function()
    speakercf = workspace.Ignore.Pickups["Kriss Vector"]:GetChildren()[3].CFrame
end)
KV:NewButton("Pickup2", function()
    speakercf = workspace.Ignore.Pickups["Kriss Vector"].Pickup.CFrame
end)
KV:NewButton("Pickup3", function()
    speakercf = workspace.Ignore.Pickups["Kriss Vector"]:GetChildren()[2].CFrame
end)

shield:NewButton("Pickup1", function()
    speakercf = workspace.Ignore.Pickups.Shield:GetChildren()[7].CFrame
end)
shield:NewButton("Pickup2", function()
    speakercf = workspace.Ignore.Pickups.Shield.Pickup.CFrame
end)
shield:NewButton("Pickup3", function()
    speakercf = workspace.Ignore.Pickups.Shield:GetChildren()[4].CFrame
end)
shield:NewButton("Pickup4", function()
    speakercf = workspace.Ignore.Pickups.Shield:GetChildren()[2].CFrame
end)
shield:NewButton("Pickup5", function()
    speakercf = workspace.Ignore.Pickups.Shield:GetChildren()[5].CFrame
end)
shield:NewButton("Pickup6", function()
    speakercf = workspace.Ignore.Pickups.Shield:GetChildren()[6].CFrame
end)
shield:NewButton("Pickup7", function()
    speakercf = workspace.Ignore.Pickups.Shield:GetChildren()[3].CFrame
end)

keycha:NewButton("Pi1", function()
    speakercf = workspace.Ignore.Pickups.Keychains:GetChildren()[7].CFrame
end)
keycha:NewButton("Pi2", function()
    speakercf = workspace.Ignore.Pickups.Keychains.Pickup.CFrame
end)
keycha:NewButton("Pi3", function()
    speakercf = workspace.Ignore.Pickups.Keychains:GetChildren()[4].CFrame
end)
keycha:NewButton("Pi4", function()
    speakercf = workspace.Ignore.Pickups.Keychains:GetChildren()[2].CFrame
end)
keycha:NewButton("P5", function()
    speakercf = workspace.Ignore.Pickups.Keychains:GetChildren()[5].CFrame
end)
keycha:NewButton("Pi6", function()
    speakercf = workspace.Ignore.Pickups.Keychains:GetChildren()[6].CFrame
end)
keycha:NewButton("Pi7", function()
    speakercf = workspace.Ignore.Pickups.Keychains:GetChildren()[3].CFrame
end)

keyca:NewButton("L-3", function()
    speakercf = workspace.Ignore.Pickups.Keycards:GetChildren()[7].CFrame
end)

keyca:NewButton("L-3", function()
    speakercf = workspace.Ignore.Pickups.Keycards:GetChildren()[4].CFrame
end)

keyca:Seperator()

keyca:NewButton("L-2", function()
    speakercf = workspace.Ignore.Pickups.Keycards:GetChildren()[5].CFrame
end)

keyca:NewButton("L-2", function()
    speakercf = workspace.Ignore.Pickups.Keycards:GetChildren()[5].CFrame
end)

keyca:Seperator()

keyca:NewButton("L-1", function()
    speakercf = workspace.Ignore.Pickups.Keycards:GetChildren()[3].CFrame
end)

keyca:NewButton("L-1", function()
    speakercf = workspace.Ignore.Pickups.Keycards.Pickup.CFrame
end)

keyca:NewButton("L-1", function()
    speakercf = workspace.Ignore.Pickups.Keycards:GetChildren()[2].CFrame
end)
--------------------------------------------------------------------------


med:Seperator()

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[8].CFrame
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit.Pickup.CFrame
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[4].CFrame
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[2].CFrame
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[6].CFrame 
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[2].CFrame
end)

med:NewButton('Pi', function()
    speakercfc = workspace.Ignore.Pickups.Medkit:GetChildren()[5].CFrame
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[7].CFrame
end)

med:NewButton('Pi', function()
    speakercf = workspace.Ignore.Pickups.Medkit:GetChildren()[3].CFrame
end)

med:Seperator()

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90.Pickup.CFrame
end)

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90:GetChildren()[2].CFrame
end)

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90:GetChildren()[11].CFrame
end)

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90:GetChildren()[19].CFrame
end)

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90:GetChildren()[18].CFrame
end)

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90:GetChildren()[16].CFrame
end)

proj:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.P90:GetChildren()[17].CFrame
end)


G22:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.Glock22:GetChildren()[5].CFrame
end)

G22:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.Glock22:GetChildren()[4].CFrame
end)

G22:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.Glock22:GetChildren()[3].CFrame
end)

brush:NewButton('Pickup' function()
    speakercf = workspace.Ignore.Pickups.Brush:GetChildren()[2].CFrame
end)

knives:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.Knives:GetChildren()[2].CFrame
end)

knives:NewButton('Pickup', function()
    speakercf = workspace.Ignore.Pickups.Knives.Pickup.CFrame
end)
