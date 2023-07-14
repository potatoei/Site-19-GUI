--[[
        Thank you IY Devs for giving me the notify function, 
        Thank you xHeptic for giving me the GUI
        All other code is made by me or ChatGPT, thank you!
        I will be working on this for the next few days.
]]
-- preload

local p = workspace.Ignore.Pickups

-- pickup vars
local Riot
local GlockPickup
local P90
local KrissVector
local Brush
local med
local Radio
local Vest
local Knives
local Keychains
local CFrame = speaker.CFrame
local speaker = Players.LocalPlayer
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local Library = Library.new("Site-19 GUI Made by Jaystation/Opulent")
local main = Library:NewSection("Loadouts")
local main1 = Library:NewSection("SWAT Positions")
local subs = Library:NewSection("Vision, Misc.")


----------------------------------------------------------------------------------------

shade1 = {}
shade2 = {}
shade3 = {}
text1 = {}
text2 = {}
shade3 = {}
text1 = {}
text2 = {}

-- functions


local function clickMiddleScreen() -- ChatGPT function
    -- Get the UserInputService and Mouse objects
    local userInputService = game:GetService("UserInputService")
    local mouse = game.Players.LocalPlayer:GetMouse()

    -- Calculate the middle of the screen
    local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
    local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
    local middlePosition = Vector2.new(screenWidth / 2, screenHeight / 2)

    -- Trigger a mouse click at the middle position
    userInputService.MouseBehavior = Enum.MouseBehavior.Default
    mouse.X = middlePosition.X
    mouse.Y = middlePosition.Y
    userInputService:ClickMouse()

    -- Restore the mouse position and behavior
    userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
    mouse.X = screenWidth / 2
    mouse.Y = screenHeight / 2
end


function randomString() -- IY Function
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end
-- IY Notify function
pinNotification = nil
local notifyCount = 0
function notify(text,text2,length)
	task.spawn(function()
		local LnotifyCount = notifyCount+1
		local notificationPinned = false
		notifyCount = notifyCount+1
		if pinNotification then pinNotification:Disconnect() end
		pinNotification = PinButton.MouseButton1Click:Connect(function()
			task.spawn(function()
				pinNotification:Disconnect()
				notificationPinned = true
				Title_2.BackgroundTransparency = 1
				wait(0.5)
				Title_2.BackgroundTransparency = 0
			end)
		end)
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.6)
		local closepressed = false
		if text2 then
			Title_2.Text = text
			Text_2.Text = text2
		else
			Title_2.Text = 'Notification'
			Text_2.Text = text
		end
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -100), "InOut", "Quart", 0.5, true, nil)
		CloseButton.MouseButton1Click:Connect(function()
			Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			closepressed = true
			pinNotification:Disconnect()
		end)
		if length and isNumber(length) then
			wait(length)
		else
			wait(10)
		end
		if LnotifyCount == notifyCount then
			if closepressed == false and notificationPinned == false then
				pinNotification:Disconnect()
				Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			end
			notifyCount = 0
		end
	end)
end
-- Get Players
Players = game:GetService("Players")
-- vars


main:Seperator()

main1:NewButton("SD SWAT Position", function()
    for i, v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
        if v:IsA("Tool") and v.Name == "P90" and v.Name == "Riot Shield" then
            v.Parent = speaker.Character
        else
            notify("You don't have the P90 and/or Riot Shield!")
        end
    end
end)

main:NewButton("MTF Loadout", function()
    local krissVector = workspace.Ignore.Pickups:FindFirstChild("Kriss Vector")
    if krissVector and krissVector:IsA("Folder") then
        for _, part in ipairs(krissVector:GetDescendants()) do
            if part:IsA("Part") and part.Config and part.Config:FindFirstChild("Alive") and part.Config.Alive.Value then
                local pickupPart = part:FindFirstChild("Pickup")
                if pickupPart and pickupPart:IsA("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pickupPart.CFrame
                    break -- Stop searching after finding the first valid pickup
                end
            end
        end
    end
    task.wait(.2)


 
    local glockPickup = workspace.Ignore.Pickups:FindFirstChild("Glock22")
    if glockPickup and glockPickup:IsA("Part") and glockPickup.Config and glockPickup.Config:FindFirstChild("Alive") and glockPickup.Config.Alive.Value then
        local pickupPart = glockPickup:FindFirstChild("Pickup")
        if pickupPart and pickupPart:IsA("Part") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pickupPart.CFrame
        end
    end

    
    local cardPickup = workspace.Ignore.Pickups:FindFirstChild("Keycards")
    if cardPickup and cardPickup:IsA()


    task.wait(.2)

    local Riot = workspace.Ignore.Pickups:FindFirstChild("Riot Shield")
    if Riot and Riot:IsA("Folder") then
        for _, part in ipairs(Riot:GetDescendants()) do
            if part:IsA("Part") and part.Config and part.Config:FindFirstChild("Alive") and part.Config.Alive.Value then
                local pickupRiot = part:FindFirstChild("Pickup")
                if pickupRiot and pickupRiot:IsA("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pickupRiot.CFrame
                    break -- Stop searching after finding the first valid pickup
                end
            end
        end
    end
end)

main:NewButton("SD Loadout w/ Shield", function()

end)
subs:NewButton("Night Vision", function()

end)