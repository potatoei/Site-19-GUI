getgenv().toggle = false

local gui = Instance.new("ScreenGui")
gui.Name = "MobileSwitchGUI"
gui.DisplayOrder = 999
gui.IgnoreGuiInset = true
gui.Enabled = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = game:service'StarterGui'
local background = Instance.new("Frame")
background.Name = "Background"
background.Size = UDim2.new(0, 200, 0, 100)
background.Position = UDim2.new(0.5, -100, 0.5, -50)
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BackgroundTransparency = 0.5
background.BorderSizePixel = 0
background.Parent = gui

local label = Instance.new("TextLabel")
label.Name = "SwitchLabel"
label.Size = UDim2.new(0.5, 0, 1, 0)
label.Position = UDim2.new(0, 0, 0, 0)
label.Text = "Toggle"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 20
label.BackgroundTransparency = 1
label.Parent = background

local switch = Instance.new("TextButton")
switch.Name = "SwitchButton"
switch.Size = UDim2.new(0.5, 0, 1, 0)
switch.Position = UDim2.new(0.5, 0, 0, 0)
switch.AnchorPoint = Vector2.new(0, 0.5)
switch.BackgroundColor3 = Color3.new(1, 1, 1)
switch.Text = ""
switch.Parent = background
local uic = Instance.new('UICorner')
uic.Parent = gui
uic.Name = 'uic'

label:MouseButton1Click:Connect(function()
    getgenv() = not getgenv()
end)
local function updatePosition(gui, offset)
    local mousePosition = gui.Parent.AbsolutePosition + Vector2.new(gui.Parent.AbsoluteSize.X / 2, gui.Parent.AbsoluteSize.Y / 2)
    local newPosition = mousePosition + offset
    gui.Position = UDim2.new(0, newPosition.X - gui.AbsoluteSize.X / 2, 0, newPosition.Y - gui.AbsoluteSize.Y / 2)
end

local function enableDragging(gui)
    local isDragging = false
    local offset = Vector2.new(0, 0)

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = true
            offset = gui.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
        end
    end)

    gui.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = false
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            updatePosition(gui, Vector2.new(input.Position.X, input.Position.Y))
        end
    end)
end
local gui = Instance.new("ScreenGui")
gui.Name = "DraggableGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 100, 0, 50)
frame.Position = UDim2.new(0.5, -50, 0.5, -25)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = gui

enableDragging(frame)

local function toggleSwitch()
    getgenv().toggle = not getgenv().toggle
    if getgenv().toggle then
        switch.BackgroundColor3 = Color3.new(0, 1, 0)
    else
        switch.BackgroundColor3 = Color3.new(1, 0, 0)
    end
end

switch.MouseButton1Click:Connect(toggleSwitch)

gui.Parent = game.Players.LocalPlayer.PlayerGui

if not game:IsLoaded() then
    game.StarterGui:SetCore("SendNotification", { Title = "wait", Text = "gotta load in first", Duration = 5 })
    game.Loaded:Wait()
end

local Output = warn 
local CustomIgnoreFunction = function(Remote, Method, Arguments) 
	return false
end

local Settings = { 
	Enabled = true, 
	Copy = false, 
	Blacklist = { 
		CharacterSoundEvent = true,
	},
	ShowScript = true, 
	ShowReturns = true, 
	Record = true, 
	TabCharacter = "    ", 
	NewlineCharacter = "\n" 
}
local noti = function(title, text, dur)
    game.StarterGui:SetCore("SendNotification", {Title = title, Text = text, Duration = dur})
end
local metatable = getrawmetatable(game)


local setreadonly = setreadonly or set_readonly
local make_writeable = make_writeable or function(t)
	setreadonly(t, false)
end
local make_readonly = make_readonly or function(t)
	setreadonly(t, true)
end
local detour_function = detour_function or replace_closure or hookfunction
local setclipboard = setclipboard or set_clipboard or writeclipboard
local get_namecall_method = get_namecall_method or getnamecallmethod
local protect_function = protect_function or newcclosureyield or newcclosure or function(...)
	return ...
end


local Original = {}
local Recorded = {
    ""
}
local Methods = {
	RemoteEvent = "FireServer",
	RemoteFunction = "InvokeServer"
}
local event = game:service'ReplicatedStorage':WaitForChild('RemoteEvent')
do --output
	Settings = setmetatable(Settings, {
		__newindex = function(self, index, value)
			if index == "Output" then
				Output = value
			elseif index == "CustomIgnoreFunction" or index == "IgnoreFunction" then
				CustomIgnoreFunction = value
			else
				rawset(self, index, value)
			end
		end
	})
end

local function IsValidCall(Remote, Method, Arguments)
	return Settings.Enabled and (Methods[Remote.ClassName] == Method) and not (Settings.Blacklist[Remote.Name] or CustomIgnoreFunction(Remote, Method, Arguments))
end

local function GetInstanceName(Object) 
	if Object == nil then
		return ".NIL"
	end
	local IsService = Object.Parent == game
	local Name = IsService and Object.ClassName or Object.Name
	return (Object ~= game and GetInstanceName(Object.Parent) or "") .. (IsService and ":GetService(\"%s\")" or (#Name == 0 or Name:match("[^%w]+") or Name:sub(1, 1):match("[^%a]")) and "[\"%s\"]" or ".%s"):format(Name)
end

local function Find(Table, Object, LastIndex)
	LastIndex = LastIndex or ""
	for Idx, Value in next, Table do
		if Object == Value then
			return LastIndex .. Idx
		elseif type(Value) == "table" then
			local Result = Find(Value, Object, Idx .. ".")
			if Result ~= nil then
				return LastIndex .. Result
			end
		end
	end
end

local renv = getrenv()

local function Parse(Object, TabCount) 
	local Type = typeof(Object)
	local ParsedResult
	local TabCount = TabCount or 0
	if Type == "string" then
		ParsedResult = ("\"%s\""):format(Object)
	elseif Type == "Instance" then 
		ParsedResult = GetInstanceName(Object):sub(2)
	elseif Type == "table" then
		local Str = ""
		local Counter = 0
		TabCount = TabCount + 1
		for Idx, Obj in next, Object do
			Counter = Counter + 1
			Obj = Obj == Object and "THIS_TABLE" or Parse(Obj, TabCount)
			local TabCharacter = (Counter > 1 and "," or "") .. Settings.NewlineCharacter .. Settings.TabCharacter:rep(TabCount)
			if Counter ~= Idx then
				Str = Str .. ("%s[%s] = %s"):format(TabCharacter, Idx ~= Object and Parse(Idx, TabCount) or "THIS_TABLE", Obj)	 --maybe
			else
				Str = Str .. ("%s%s"):format(TabCharacter, Obj)
			end
		end
		TabCount = TabCount - 1
		ParsedResult = ("{%s}"):format(Str .. (#Str > 0 and Settings.NewlineCharacter .. Settings.TabCharacter:rep(TabCount) or ""))
	elseif Type == "CFrame" or Type == "Vector3" or Type == "Vector2" or Type == "UDim2" or Type == "Color3" or Type == "Vector3int16" or Type == "UDim" or Type == "Vector2int16" then
		ParsedResult = ("%s.new(%s)"):format(Type, tostring(Object))
	elseif Type == "userdata" then -- rm __tostring fields to counter traps
		local Result
		local Metatable = getrawmetatable(Object)
		local __tostring = Metatable and rawget(Metatable, "__tostring")
		if __tostring then
			make_writeable(Metatable)
			Metatable.__tostring = nil
			ParsedResult = tostring(Object)
			rawset(Metatable, "__tostring", __tostring)
			if rawget(Metatable, "__metatable") ~= nil then
				make_readonly(Metatable)
			end
		else
			ParsedResult = tostring(Object)
		end
	elseif Type == "function" then
		ParsedResult = Find(renv, Object) or (
		[[(function()
			for Idx, Value in next, %s() do
				if type(Value) == "function" and tostring(Value) == "%s" then
					return Value
				end
			end
		end)()]]
		):gsub(
			"\n", 
			Settings.NewlineCharacter
		):gsub(
			"\t", 
			Settings.TabCharacter:rep(TabCount)
		):format(
			getgc and "getgc" or get_gc_objects and "get_gc_objects" or "debug.getregistry", 
			tostring(Object)
		)
	else
		ParsedResult = tostring(Object)
	end
	return ParsedResult
end

local function Write(Remote, Method, Arguments) 
	local Stuff = ("\n\n%s:%s(%s)"):format(typeof(Remote) == "Instance" and Parse(Remote) or ("(%s)"):format(Parse(Remote)), Method, Parse(Arguments):sub(2, -2))
	if Settings.Copy then
		pcall(setclipboard, Stuff)
	end
	if Settings.ShowScript and not PROTOSMASHER_LOADED then
		local Script = getcallingscript and getcallingscript() or rawget(getfenv(2), "script")
		if typeof(Script) == "Instance" then
			Stuff = Stuff .. ("\nScript: %s"):format(Parse(Script))
		end
	end
	if Settings.Record then
		Recorded = Recorded .. Stuff
	end
	Output(Stuff) 
end

local CustomGamesSpy = {
	[606849621] = function() 
		local Script = game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript
		local RemoteTable
		for Idx, Value in next, debug.getregistry() do
			if type(Value) == "function" and getfenv(Value).script == Script then
				for UpvalIdx, Upval in next, debug.getupvalues(Value) do
					if type(Upval) == "table" and rawget(Upval, "FireServer") then
						RemoteTable = Upval
						break
					end
				end
				if RemoteTable ~= nil then
					break
				end
			end
		end
		assert(RemoteTable ~= "nil", "Remote not found")
		local ORIG = debug.getupvalues(RemoteTable.FireServer)[1]
		RemoteTable = setmetatable({
			FireServer = RemoteTable.FireServer
		}, {
			__index = {
				ClassName = "RemoteEvent"
			}
		})
		local new_function = function(...)
			local Arguments = {...}
			if IsValidCall(RemoteTable, "FireServer", Arguments) then
				Write(RemoteTable, "FireServer", Arguments)
			end
			return ORIG(...)
		end
		debug.setupvalue(RemoteTable.FireServer, 1, new_function)
	end
}

do 
	local original_function = tostring
	local new_function = function(obj)
		local Success, Result = pcall(original_function, Original[obj] or obj)
		if Success then
			return Result
		else
			error(Result:gsub(script.Name .. ":%d+: ", ""))
		end
	end
	original_function = detour_function(original_function, new_function)
	Original[new_function] = original_function
end
while wait() do
    if getgenv().toggle == true then
        noti("Toggle", "Toggle is active", 3)
        while Recorded and Record do
            wait()
            pcall(event:FireServer(Recorded))
        end
    else
        noti("Toggle", "Toggle is off", 3)
    end
end
