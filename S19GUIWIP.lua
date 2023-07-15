if not game.PlaceId == 1440936008 and ALPHA_LOADED and not _G.GUILoaded then
    return
end

pcall(function() getgenv().ALPHA_LOADED = true end)


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local main = Library:NewSection("Loadouts")
local main1 = Library:NewSection("SWAT ig")
local subs = Library:NewSection("Vision, Misc.")
local speaker = game.Players.LocalPlayer
local picks = workspace.Ignore.Pickups
function clickMiddleScreen()
    local userInputService = game:GetService("UserInputService")
    local mouse = game.Players.LocalPlayer:GetMouse()
    local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
    local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
    local middlePosition = Vector2.new(screenWidth / 2, screenHeight / 2)
    userInputService.MouseBehavior = Enum.MouseBehavior.Default
    mouse.X = middlePosition.X
    mouse.Y = middlePosition.Y
    userInputService:ClickMouse()
    userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
    mouse.X = screenWidth / 2
    mouse.Y = screenHeight / 2
end

main1:NewButton("SD SWAT Position", function()
    local riotShield = speaker:FindFirstChild("Riot Shield")
    local p90 = speaker:FindFirstChild("P90")
    
    if riotShield and p90 then
        riotShield.Parent = speaker.Character
        p90.Parent = speaker.Character
    else
        notify("You don't have the Riot Shield and/or P90!")
    end
end)

main:NewButton("MTF Loadout", function()
    local krissVector = workspace.Ignore.Pickups:FindFirstChild("Kriss Vector")
    local glock22 = workspace.Ignore.Pickups:FindFirstChild("Glock22")
    local level3Card = workspace.Ignore.Pickups:FindFirstChild("Level-3 Card")
    
    if krissVector and krissVector:IsA("Folder") then
        for _, part in ipairs(krissVector:GetDescendants()) do
            if part:IsA("Part") and part.Config and part.Config:FindFirstChild("Alive") and part.Config.Alive.Value then
                local pickupPart = part:FindFirstChild("Pickup")
                if pickupPart and pickupPart:IsA("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pickupPart.CFrame
                    task.wait()
                    clickMiddleScreen()
                    break
                end
            end
        end
    end
    
    if glock22 and glock22:IsA("Part") and glock22.Config and glock22.Config:FindFirstChild("Alive") and glock22.Config.Alive.Value then
        local glock22PickupPart = glock22:FindFirstChild("Pickup")
        if glock22PickupPart and glock22PickupPart:IsA("Part") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = glock22PickupPart.CFrame
            task.wait()
            clickMiddleScreen()
        end
    end
    
    if level3Card and level3Card:IsA("Part") and level3Card.Config and level3Card.Config:FindFirstChild("Alive") and level3Card.Config.Alive.Value then
        local level3CardPickupPart = level3Card:FindFirstChild("Pickup")
        if level3CardPickupPart and level3CardPickupPart:IsA("Part") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = level3CardPickupPart.CFrame
            task.wait()
            clickMiddleScreen()
        end
    end
end)

main:NewButton("SD Loadout w/ Shield", function()
    local P90 = picks:FindFirstChild("P90")
    local R = picks:FindFirstChild("Riot Shield")
    local Rad = picks:FindFirstChild("Radio")
    
    for i, v in pairs(GetDescendants(P90)) do
        if v.Name == "Pickup" then
            local P90PickupPart = v
            if P90PickupPart and P90PickupPart:IsA("Part") then
                local config = P90PickupPart:FindFirstChild("Config")
                if config and config:FindFirstChild("Alive") and config.Alive.Value == true then
                    speaker.Character.HumanoidRootPart.CFrame = P90PickupPart.CFrame
                    task.wait()
                    clickMiddleScreen()
                end
            end
        end
    end

    for i, v in pairs(GetDescendants(R)) do
        if v.Name == "Pickup" and v:IsA("Part") then
            local findr = v
            local config2 = findr:FindFirstChild("Config")
            if config2 and config2:FindFirstChild("Alive") and config.Alive.Value == true then
                speaker.Character.HumanoidRootPart.CFrame = findr.CFrame
                task.wait()
                clickMiddleScreen()
            end
        end
    end    

    for i, v in pairs(GetDescendants(Rad)) do
        if v.Name == "Pickup" then
            local rapick = v 
            if rapick and rapick:IsA("Part") then
                local config3 = rapick:FindFirstChild("Config")
                if config3 and config3:FindFirstChild("Alive") and config.Alive.Value == true then
                    speaker.Character.HumanoidRootPart.CFrame = rapick.CFrame
                    task.wait()
                    clickMiddleScreen()
                end
            end
        end
    end
end)


-- nightvision status toggle
local toggle = subs:NewToggle("Night Vision: ", function(status)
    local nightVisionEnabled = status
    local lighting = game:GetService("Lighting")
    local nightVision = lighting.NightVision
    nightVision.Enabled = nightVisionEnabled
end)

coroutine.wrap(function()
    while wait() do
        toggle:Update("Night Vision: "..tostring(nightVisionEnabled))
    end
end)()

local userInputService = game:GetService("UserInputService")

local function toggleNightVision()
    nightVisionEnabled = not nightVisionEnabled
    local lighting = game:GetService("Lighting")
    local nightVision = lighting.NightVision
    nightVision.Enabled = nightVisionEnabled
end

-- Check if the player is typing before toggling night vision
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.N then
        if not userInputService:GetFocusedTextBox() then
            toggleNightVision()
        end
    end
end)
