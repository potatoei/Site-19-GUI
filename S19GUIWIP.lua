--[[
	Updated last on 08/03/2024
	Okay so, I finally managed to figure it out, I completely fixed the rewrite and everything should be working.

]]

local pickups = workspace.Ignore.Pickups
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/potatoei/Site-19-GUI/main/GUI%20BACKUP.lua"))()
local Forums = Library.new("SCP Site-19 Roleplay GUI")
print('----------------\nPLEASE DO NOT SPAM THE BUTTONS!\n----------------')
local sections = {
    M16 = "M16",--o
    G22 = "Glock 22",--o
    med = "Medkit",--o
    rado = "Radio",--o
    shield = "Riot Shields",
    keycha = "Keychains",--o
    keyca = "Keycards",--o
    candy = "SCP-330 (TAKE TWO)",--notyet
    brush = "Brushes",--o
    vest = "Vests",--o
    knives = "Knives",--o
    proj = "P90",--o
    KV = "Kriss Vector",--o
    wrench = "Wrenches",--o
    misc = "Misc"--notyet
}

local main = Forums:NewSection('Pickups (OPEN THIS)')

local u1 = Vector3.new(0, 3, 0)
local speaker = game.Players.LocalPlayer
local items = {
    { section = sections.rado, name = 'Radio' },
    { section = sections.M16, name = 'M16' },
    { section = sections.KV, name = 'Kriss Vector' },
    { section = sections.proj, name = 'P90' },
    { section = sections.shield, name = 'Shield' },
    { section = sections.keycha, name = 'Keychains' },
    { section = sections.keyca, name = 'Keycards' },
    { section = sections.G22, name = "Glock22" },
    { section = sections.brush, name = "Brush" },
    { section = sections.vest, name = "Vest" },
    { section = sections.med, name = "Medkit" },
    { section = sections.knives, name = 'Knives' },
    { section = sections.wrench, name = "Wrench" },
}

for i, v in pairs(items) do
    main:NewButton(v.section, function()
        local children = pickups[v.name]:GetChildren()
        if #children > 0 then
            local randomChild = children[math.random(1, #children)]
            local previous = randomChild.CFrame
            wait(0.1)
            print('Previous for' .. randomChild.Parent.Name, randomChild.CFrame)
            task.wait(0.1)
            randomChild.CFrame = speaker.Character.HumanoidRootPart.CFrame + u1
            wait(5)
            randomChild.CFrame = previous
        end
    end)
end
main:NewButton('Special 330 (TAKE TWO)', function() 
    local specchild = workspace.SCP["330"].Pickup
    local specprev = specchild.CFrame
    if specchild.Config.Alive.Value == true then 
        specchild.CFrame = speaker.Character.HumanoidRootPart.CFrame + u1
    end
    wait(5)
    specchild.CFrame = specprev
end)
