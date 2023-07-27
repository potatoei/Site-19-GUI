--[[ 
        Hello everyone reading this, this is a Site-19 GUI, will be super private to only my exploiters friends.
        If you are an admin or mod in S-19 reading this, how the fuck did you get here?
        Last updated 7/27/23
        Don't ask me why I didn't create single section then add dropdowns, I am too lazy to revamp it again

]]



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local Forums = Library.new("SCP Site-19 Roleplay GUI made by Jaystation")
local M16 = Forums:NewSection("M16")
local G22 = Forums:NewSection("Glock 22")
local med = Forums:NewSection("Medkits")
local rad = Forums:NewSection("Radio")
local shield = Forums:NewSection("Riot Shields")
local keycha = Forums:NewSection("Keychains")
local keyca = Forums:NewSection("Keycards")
local brush = Forums:NewSection("Brushes")
local vest = Forums:NewSection("Vests")
local knives = Forums:NewSection("Knives")
local proj = Forums:NewSection("P90")
local KV = Forums:NewSection("Kriss Vector")
local misc = Forums:NewSection("Misc")
local speaker = game.Players.LocalPlayer or game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
function goback()
    local pickups = workspace.Ignore.Pickups
    local destinationCFrameoptions = {
        CFrame.new(480, 18, -203), -- You might see some items when you reach the electric things behind the bars near 914/iNF Hallways, it's meant to be there
        CFrame.new(999, 999, 999),
        CFrame.new(888, 888, 1200),
        CFrame.new(5500, 555, 2332)
    }

    for i, v in pairs(pickups:GetDescendants()) do
        if v:IsA("BasePart") then
            local randomIndex = math.random(1, #destinationCFrameoptions)
            local destinationCFrame = destinationCFrameoptions[randomIndex]
            v.CFrame = destinationCFrame
        end
    end
end


rad:NewButton('Radio', function()
    workspace.Ignore.Pickups.Radio:GetChildren()[15].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

rad:NewButton('Radio', function()
    workspace.Ignore.Pickups.Radio:GetChildren()[6].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

rad:NewButton('Radio', function()
    workspace.Ignore.Pickups.Radio:GetChildren()[7].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

rad:NewButton('Radio', function()
   workspace.Ignore.Pickups.Radio:GetChildren()[10].CFrame = speaker.Character.HumanoidRootPart.CFrame
   task.wait(5)
    goback()
end)

M16:NewButton("Pickup1", function()
  workspace.Ignore.Pickups.M16:GetChildren()[4].CFrame = speaker.Character.HumanoidRootPart.CFrame 
  task.wait(5)
    goback()
end)
M16:NewButton("Pickup2", function()
  workspace.Ignore.Pickups.M16.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame 
  task.wait(5)
    goback()
end)
M16:NewButton("Pickup3", function()
  workspace.Ignore.Pickups.M16:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame 
  task.wait(5)
    goback()
end)
M16:NewButton("Pickup4", function()
 workspace.Ignore.Pickups.M16:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame
 task.wait(5)
    goback()
end)

KV:NewButton("Pickup1", function()
  workspace.Ignore.Pickups["Kriss Vector"]:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame 
  task.wait(5)
    goback()
end)
KV:NewButton("Pickup2", function()
    workspace.Ignore.Pickups["Kriss Vector"].Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
KV:NewButton("Pickup3", function()
  workspace.Ignore.Pickups["Kriss Vector"]:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame 
  task.wait(5)
    goback()
end)

shield:NewButton("Pickup1", function()
    workspace.Ignore.Pickups.Shield:GetChildren()[7].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback() 
end)
shield:NewButton("Pickup2", function()
   workspace.Ignore.Pickups.Shield.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame 
   task.wait(5)
    goback()
end)
shield:NewButton("Pickup3", function()
  workspace.Ignore.Pickups.Shield:GetChildren()[4].CFrame = speaker.Character.HumanoidRootPart.CFrame
  task.wait(5)
    goback() 
end)
shield:NewButton("Pickup4", function()
   workspace.Ignore.Pickups.Shield:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
   task.wait(5)
    goback() 
end)
shield:NewButton("Pickup7", function()
    workspace.Ignore.Pickups.Shield:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
shield:NewButton("Pickup6", function()
    workspace.Ignore.Pickups.Shield:GetChildren()[6].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
shield:NewButton("Pickup5", function()
    workspace.Ignore.Pickups.Shield:GetChildren()[5].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)


keycha:NewButton("Pi7", function()
    workspace.Ignore.Pickups.Keychains:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keycha:NewButton("Pi6", function()
    workspace.Ignore.Pickups.Keychains:GetChildren()[6].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keycha:NewButton("P5", function()
    workspace.Ignore.Pickups.Keychains:GetChildren()[5].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keycha:NewButton("Pi4", function()
    workspace.Ignore.Pickups.Keychains:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keycha:NewButton("Pi3", function()
    workspace.Ignore.Pickups.Keychains:GetChildren()[4].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keycha:NewButton("Pi2", function()
    workspace.Ignore.Pickups.Keychains.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

keyca:NewButton("L-3", function()
    workspace.Ignore.Pickups.Keycards:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

keyca:NewButton("L-3", function()
    workspace.Ignore.Pickups.Keycards:GetChildren()[5].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keyca:Seperator()
keyca:NewButton("L-2", function()
    workspace.Ignore.Pickups.Keycards:GetChildren()[6].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

keyca:NewButton("L-2", function()
    workspace.Ignore.Pickups.Keycards.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
keyca:Seperator()
keyca:NewButton("L-1", function()
    workspace.Ignore.Pickups.Keycards:GetChildren()[7].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

keyca:NewButton("L-1", function()
    workspace.Ignore.Pickups.Keycards:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[8].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[4].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[6].CFrame = speaker.Character.HumanoidRootPart.CFrame 
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[5].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[7].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)
med:NewButton('Pi', function()
    workspace.Ignore.Pickups.Medkit:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)


proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90:GetChildren()[17].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90:GetChildren()[16].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90:GetChildren()[18].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90:GetChildren()[19].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

proj:NewButton('Pickup', function()
    workspace.Ignore.Pickups.P90:GetChildren()[11].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

G22:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Glock22.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

G22:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Glock22:GetChildren()[3].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

G22:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Glock22:GetChildren()[4].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

G22:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Glock22:GetChildren()[5].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

brush:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Brush.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

knives:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Knives.Pickup.CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

knives:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Knives:GetChildren()[2].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

vest:NewButton('Pickup', function()
    workspace.Ignore.Pickups.Vest:GetChildren()[11].CFrame = speaker.Character.HumanoidRootPart.CFrame
    task.wait(5)
    goback()
end)

misc:NewButton('SWAT', function() -- Basically gives you a shield to your front, that's it.
    for i, v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
        if v:IsA("Tool") and v.Name == "M16" or v.Name == "Kriss Vector" or v.Name == "P90" or v.Name == "Level-1" v.Name == "Level-2" or v.Name == "Level-3" or v.Name == "Level-4" or v.Name == "Riot Shield" then
            v.Parent = speaker.Character
        end
    end
end)
misc:Seperator()
misc:NewButton('YOU MUST LOOPBRING ALL', function() -- This command is for notice, does not do anything when clicked.
end)

local isFarming = false -- A flag to track whether the farming is active or not

misc:NewButton('Start Healer Farm', function() -- Might wanna incline 45 degrees to the right so you can touch as many people as possible 
    isFarming = true -- Set the flag to true to indicate that farming is active

    while isFarming do
        local hf = speaker:FindFirstChildWhichIsA("Backpack"):FindFirstChild("Healer")

        if hf and speaker.Team.Name == "Medical Department" and game.CoreGui:GetDescendants("CMDs") then
            hf.Parent = speaker.Character
            task.wait(1)
            hf.Parent = speaker:FindFirstChildWhichIsA("Backpack")
        else 
            print('bruh')
        end

        task.wait(1) -- Wait for 1 second before repeating the action
    end
end)

misc:NewButton('Stop Healer Farm', function()
    isFarming = false -- Set the flag to false to stop the farming
end)
misc:Seperator()
