local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

local PepsisWorld = library:CreateWindow({
Name = "TeamChangerFE",
Themeable = {
Info = "Credits: Pepsi's World and me"
}
})

local GeneralTab = PepsisWorld:CreateTab({
Name = "TK Teams"
})
local TKTeams = GeneralTab:CreateSection({
Name = "Teams"
})
local NonTK = GeneralTab:CreateSection({
Name = "Non TK Teams"
})
TKTeams:AddButton({
    Name = "MTF Alpha-1",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("MTF Alpha-1"))
    end
})
TKTeams:AddButton({
    Name = "Analytics Agent",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("Analytics Dept."))
    end
})
TKTeams:AddButton({
    Name = "MTF Omega-1",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("MTF Omega-1"))
    end
})

TKTeams:AddButton({
    Name = "Site Director",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("Site Director"))
    end
})


NonTK:AddButton({
    Name = "MTF Epsilon-11",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("MTF Epsilon-11"))
    end
})
NonTK:AddButton({
    Name = "MTF Nu-7",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("MTF Nu-7"))
    end
})
NonTK:AddButton({
    Name = "MTF Beta-7",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("MTF Beta-7"))
    end
})
NonTK:AddButton({
    Name = "Ethics Committee?",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild("Ethics Committee"))
    end
})

NonTK:AddButton({
    Name = "",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild(""))
    end
})
NonTK:AddButton({
    Name = "",
    Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TeamChangerFE"):FireServer(game:GetService("Teams"):WaitForChild(""))
    end
})

