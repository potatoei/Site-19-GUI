-- 52562955
--[[ 
        Last updated 08/03/24, complete rewrite of the whole script to be more efficient and have more pickups
]]


local pickups = workspace.Ignore.Pickups




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/potatoei/Site-19-GUI/main/GUI%20BACKUP.lua"))()
local Forums = Library.new("SCP Site-19 Roleplay GUI")
local sections = {
    M16 = "M16",
    G22 = "Glock 22",
    med = "Medkits",
    rad = "Radio",
    shield = "Riot Shields",
    keycha = "Keychains",
    keyca = "Keycards",
    candy = "SCP-330 (TAKE TWO)",
    brush = "Brushes",
    vest = "Vests",
    knives = "Knives",
    proj = "P90",
    KV = "Kriss Vector",
    wrench = "Wrenches",
    misc = "Misc"
}

for sectionName, sectionDisplayName in pairs(sections) do
    sections[sectionName] = Forums:NewSection(sectionDisplayName)
end
local u1 = Vector3.new(0, 3, 0)
local speaker = game.Players.LocalPlayer
local items = {
    { section = sections.candy, name = '330' },
    { section = sections.rad, name = 'Radio' },
    { section = sections.M16, name = 'M16' },
    { section = sections.KV, name = 'Kriss Vector' },
    { section = sections.shield, name = 'Shield' },
    { section = sections.keycha, name = 'Keychains' },
    { section = sections.keyca, name = 'Keycards' }
}


local function create(section, item)
	section:NewButton("Pickup", function()
		local children = workspace.Ignore.Pickups[item]:GetChildren()
       		if #children > 0 then
            		local randomChild = children[math.random(1, #children)]
			local prev = random.CFrame
			task.wait(0.1)
            		randomChild.CFrame = speaker.Character.HumanoidRootPart.CFrame + u1
			wait(0.1)
			randomChild.CFrame = prev
		end
	end)
end
for i,itemData in pairs(items) do
	create(itemData.section, itemData.name)
end

candy:NewButton('Candy', function()
    workspace.SCP:FindFirstChild('330'):WaitForChild('Pickup').CFrame = speaker.Character.HumanoidRootPart.CFrame + u1
    task.wait(5)
    goback()
end)

misc:NewButton('SWAT', function()
    -- Basically gives you a shield to your front, that's it.
    for i, v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
        if v:IsA("Tool") and (v.Name == "M16" or v.Name == "Kriss Vector" or v.Name == "P90" or v.Name == "Level-1" or v.Name == "Level-2" or v.Name == "Level-3" or v.Name == "Level-4" or v.Name == "Riot Shield") then
            v.Parent = speaker.Character
        end
    end
end)

misc:Seperator()
misc:NewButton('You must loopbring all', function() -- This command is for notice, does not do anything when clicked.
end)

local isFarming = false 

misc:NewButton('Start Healer Farm', function() -- Might wanna incline 45 degrees to the right so you can touch as many people as possible 
    isFarming = true 

    while isFarming do
        local hf = speaker:FindFirstChildWhichIsA("Backpack"):FindFirstChild("Healer")

        if hf and speaker.Team.Name == "Medical Department" and game.CoreGui:GetDescendants("CMDs") then
            hf.Parent = speaker.Character
            task.wait(1)
            hf.Parent = speaker:FindFirstChildWhichIsA("Backpack")
        else 
            print('bruh')
        end

        task.wait(1) 
    end
end)

misc:NewButton('Stop Healer Farm', function()
    isFarming = false 
end)
misc:Seperator()
misc:NewButton('Bring Armory Button', function()
    workspace.Special.Armory.LCZ.Buttons.Back.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1.5)
    workspace.Special.Armory.LCZ.Buttons.Back.CanCollide = false
    wait(5)
    workspace.Special.Armory.LCZ.Buttons.Back.CFrame = CFrame.new(583.625, 8.5, -156.500031, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    workspace.Special.Armory.LCZ.Buttons.Back.CanCollide = true
end)
