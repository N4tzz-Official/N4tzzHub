--[[

 .-._       .--, .-.--,  ,--.--------.                        _,.---._        _,---.      _,---.   .=-.-.  _,.----.   .=-.-.  ,---.                 
/==/ \  .-._|  |=| -\==\/==/,  -   , -\,--,----.  ,--,----. ,-.' , -  `.   .-`.' ,  \  .-`.' ,  \ /==/_ /.' .' -   \ /==/_ /.--.'  \       _.-.     
|==|, \/ /, /  `-' _|==|\==\.-.  - ,-./==/` - ./ /==/` - .//==/_,  ,  - \ /==/_  _.-' /==/_  _.-'|==|, |/==/  ,  ,-'|==|, | \==\-/\ \    .-,.'|     
|==|-  \|  |\     , |==| `--`\==\- \  `--`=/. /  `--`=/. /|==|   .=.     /==/-  '..-./==/-  '..-.|==|  ||==|-   |  .|==|  | /==/-|_\ |  |==|, |     
|==| ,  | -| `--.  -|==|      \==\_ \  /==/- /    /==/- / |==|_ : ;=:  - |==|_ ,    /|==|_ ,    /|==|- ||==|_   `-' \==|- | \==\,   - \ |==|- |     
|==| -   _ |     \_ |==|      |==|- | /==/- /-.  /==/- /-.|==| , '='     |==|   .--' |==|   .--' |==| ,||==|   _  , |==| ,| /==/ -   ,| |==|, |     
|==|  /\ , |     |  \==\      |==|, |/==/, `--`\/==/, `--`\\==\ -    ,_ /|==|-  |    |==|-  |    |==|- |\==\.       /==|- |/==/-  /\ - \|==|- `-._  
/==/, | |- |      \ /==/      /==/ -/\==\-  -, |\==\-  -, | '.='. -   .' /==/   \    /==/   \    /==/. / `-.`.___.-'/==/. /\==\ _.\=\.-'/==/ - , ,/ 
`--`./  `--`       `--`       `--`--` `--`.-.--` `--`.-.--`   `--`--''   `--`---'    `--`---'    `--`-`             `--`-`  `--`        `--`-----'  
! DON'T STEAL MY LUA CODE !
]]--
local suskey = "n4tzzhubkey_ac00f4f4592711358218bc3e2", "n4tzzhubkey_eff03cd424775a6e41ac6173a"
local getkey = "https://link-target.net/1347229/n4tzzhub"

-- GUI Setup
local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local KeyIcon = Instance.new("ImageLabel")
local Text = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local UICorner_KeyBox = Instance.new("UICorner")
local StatusLabel = Instance.new("TextLabel")
local VerifyButton = Instance.new("TextButton")
local UICorner_Verify = Instance.new("UICorner")
local GetKey = Instance.new("TextButton")
local UICorner_GetKey = Instance.new("UICorner")

GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUI.ResetOnSpawn = false

-- Main Frame
Main.Name = "Main"
Main.Parent = GUI
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.Position = UDim2.new(0.35, 0, 0.35, 0)
Main.Size = UDim2.new(0.3, 0, 0.4, 0)

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Main

-- Close Button
CloseButton.Name = "CloseButton"
CloseButton.Parent = Main
CloseButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.92, 0, 0.02, 0)
CloseButton.Size = UDim2.new(0.06, 0, 0.12, 0)
CloseButton.Font = Enum.Font.GothamSemibold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 100, 100)
CloseButton.TextScaled = true
CloseButton.TextWrapped = true
CloseButton.MouseButton1Down:Connect(function()
	GUI:Destroy()
	game.StarterGui:SetCore("SendNotification", {
		Title = "Thanks for Using!",
		Text = "Credit: N4tzzOfficial",
		Duration = 5
	})
end)

-- Key Icon
KeyIcon.Name = "KeyIcon"
KeyIcon.Parent = Main
KeyIcon.BackgroundTransparency = 1
KeyIcon.Position = UDim2.new(0.44, 0, 0.05, 0)
KeyIcon.Size = UDim2.new(0.12, 0, 0.18, 0)
KeyIcon.Image = "rbxassetid://3926307971"
KeyIcon.ImageColor3 = Color3.fromRGB(255, 198, 58) -- Premium Gold
KeyIcon.ImageRectOffset = Vector2.new(44, 324)
KeyIcon.ImageRectSize = Vector2.new(36, 36)

-- Header Text
Text.Name = "Text"
Text.Parent = Main
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0.1, 0, 0.25, 0)
Text.Size = UDim2.new(0.8, 0, 0.15, 0)
Text.Font = Enum.Font.GothamSemibold
Text.Text = "N4tzzHub || Key System"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextWrapped = true

-- KeyBox
KeyBox.Name = "KeyBox"
KeyBox.Parent = Main
KeyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
KeyBox.Position = UDim2.new(0.15, 0, 0.42, 0)
KeyBox.Size = UDim2.new(0.7, 0, 0.13, 0)
KeyBox.Font = Enum.Font.Gotham
KeyBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
KeyBox.PlaceholderText = "Enter your key..."
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextScaled = true
KeyBox.TextWrapped = true

UICorner_KeyBox.CornerRadius = UDim.new(0, 6)
UICorner_KeyBox.Parent = KeyBox

-- Status Label
StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = Main
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0.1, 0, 0.57, 0)
StatusLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Waiting for input..."
StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
StatusLabel.TextScaled = true
StatusLabel.TextWrapped = true

-- Verify Button
VerifyButton.Name = "VerifyButton"
VerifyButton.Parent = Main
VerifyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
VerifyButton.Position = UDim2.new(0.15, 0, 0.7, 0)
VerifyButton.Size = UDim2.new(0.7, 0, 0.12, 0)
VerifyButton.Font = Enum.Font.GothamSemibold
VerifyButton.Text = "Verify Key"
VerifyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyButton.TextScaled = true
VerifyButton.TextWrapped = true

UICorner_Verify.CornerRadius = UDim.new(0, 6)
UICorner_Verify.Parent = VerifyButton

-- Get Key Button
GetKey.Name = "GetKey"
GetKey.Parent = Main
GetKey.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GetKey.Position = UDim2.new(0.15, 0, 0.84, 0)
GetKey.Size = UDim2.new(0.7, 0, 0.1, 0)
GetKey.Font = Enum.Font.Gotham
GetKey.Text = "Get Key (Click to Copy)"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextScaled = true
GetKey.TextWrapped = true

UICorner_GetKey.CornerRadius = UDim.new(0, 6)
UICorner_GetKey.Parent = GetKey

-- Events
VerifyButton.MouseButton1Down:Connect(function()
	if KeyBox.Text == suskey then
		local TweenService = game:GetService("TweenService")
		local tween = TweenService:Create(KeyIcon, TweenInfo.new(0.6), {
			ImageColor3 = Color3.fromRGB(106, 255, 106)
		})
		tween:Play()

		StatusLabel.Text = "✅ Key Verified!"
		StatusLabel.TextColor3 = Color3.fromRGB(106, 255, 106)

		game.StarterGui:SetCore("SendNotification", {
			Title = "Correct Key",
			Text = "N4tzzHubGui Unlocked!",
			Icon = "rbxassetid://12206884774",
			Duration = 5
		})

		wait(2)
		GUI:Destroy()
		--==[ N4tzz Hub Gui ]==--
-- Services
local Players = game:GetService("Players")
local ContentProvider = game:GetService("ContentProvider")
local ReplicatedFirst = game:GetService("ReplicatedFirst")

-- Variables
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "LoadingScreen"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Loading TextLabel
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(0, 500, 0, 100)
loadingText.Position = UDim2.new(0.5, -250, 0.5, -50)
loadingText.BackgroundTransparency = 1
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.TextSize = 28
loadingText.Font = Enum.Font.SourceSansBold
loadingText.Text = "N4tzzHub | Preparing..."
loadingText.Parent = gui

-- Block player interaction while loading
ReplicatedFirst:RemoveDefaultLoadingScreen()

-- STEP 1: Collect All Assets
local allAssets = {}
local function collectAssets(obj)
	for _, child in ipairs(obj:GetDescendants()) do
		if child:IsA("Decal") or child:IsA("Texture") or child:IsA("ImageLabel") or child:IsA("ImageButton") or child:IsA("Sound") or child:IsA("MeshPart") then
			table.insert(allAssets, child)
		end
	end
end

-- Collect from main containers
collectAssets(workspace)
collectAssets(game:GetService("StarterGui"))
collectAssets(game:GetService("StarterPack"))
collectAssets(game:GetService("ReplicatedStorage"))
collectAssets(game:GetService("Lighting"))

-- STEP 2: Show "Loading Assets"
loadingText.Text = "N4tzzHub | Loading Assets..."
ContentProvider:PreloadAsync(allAssets)
wait(4)
-- STEP 3: Bypass Security Simulation
loadingText.Text = "N4tzzHub | Bypass Security..."
for i = 1, 100, 10 do
	loadingText.Text = "N4tzzHub | Bypass Security... [✅" .. i .. "%]"
	wait(0.1)
end

-- STEP 4: Finalizing
loadingText.Text = "N4tzzHub | Finalizing..."
for i = 1, 100, 10 do
	loadingText.Text = "N4tzzHub | Finalizing... [✅" .. i .. "%]"
	wait(0.1)
end

wait(0.5)
gui:Destroy()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local mouse = player:GetMouse()

-- Rainbow loading text
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.ResetOnSpawn = false

local textLabel = Instance.new("TextLabel", gui)
textLabel.Size = UDim2.new(0, 400, 0, 100)
textLabel.Position = UDim2.new(0.5, -200, 0.5, -50)
textLabel.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
textLabel.BackgroundTransparency = 0.2
textLabel.TextSize = 40
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = ""
textLabel.TextStrokeTransparency = 0

local rainbowColors = {
	Color3.fromRGB(255, 0, 0),
	Color3.fromRGB(255, 165, 0),
	Color3.fromRGB(255, 255, 0),
	Color3.fromRGB(0, 255, 0),
	Color3.fromRGB(0, 255, 255),
	Color3.fromRGB(0, 0, 255),
	Color3.fromRGB(128, 0, 128)
}
local nameText = "N4tzz Hub"
for i = 1, #nameText do
	textLabel.Text = textLabel.Text .. nameText:sub(i, i)
	textLabel.TextColor3 = rainbowColors[(i % #rainbowColors) + 1]
	task.wait(0.15)
end
task.wait(1)
textLabel:Destroy()

--==[ GUI ]==--
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "N4tzzHubUI"
screenGui.ResetOnSpawn = false

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 400, 0, 400)
frame.Position = UDim2.new(0.5, -200, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
frame.BackgroundTransparency = 0.05
frame.BorderSizePixel = 0
Instance.new("UICorner", frame)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0, 10, 0, 0)
title.Text = "🌀 N4tzz Hub 🌀"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 24
title.BackgroundTransparency = 1
title.Font = Enum.Font.FredokaOne

local closeButton = Instance.new("TextButton", frame)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "✕"
closeButton.TextColor3 = Color3.fromRGB(255, 80, 80)
closeButton.TextSize = 20
closeButton.BackgroundTransparency = 1
closeButton.Font = Enum.Font.SourceSansBold

local openButton = Instance.new("TextButton", screenGui)
openButton.Size = UDim2.new(0, 50, 0, 50)
openButton.Position = UDim2.new(0, 50, 0, 200)
openButton.Text = "Open"
openButton.BackgroundColor3 = Color3.fromRGB(101, 247, 255)
openButton.TextColor3 = Color3.fromRGB(0, 0, 0)
openButton.TextSize = 20
openButton.Font = Enum.Font.SourceSansBold
Instance.new("UICorner", openButton)

openButton.MouseButton1Click:Connect(function()
	frame.Visible = true
	openButton.Visible = false
end)
closeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
	openButton.Visible = true
end)

local function createButton(text, posY)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0, 180, 0, 30)
	btn.Position = UDim2.new(0.5, -90, 0, posY)
	btn.BackgroundColor3 = Color3.fromRGB(60, 60, 90)
	btn.Text = text
	btn.TextSize = 18
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.GothamBold
	Instance.new("UICorner", btn)
	btn.Parent = frame
	return btn
end

local y = 50
local buttons = {}
for _, name in ipairs({"Fly", "Fling", "Speed", "Jump", "InfHealth", "Noclip", "KillNPC", "ClickTP", "TPFriend", "AutoExec"}) do
	buttons[name] = createButton(name, y)
	y = y + 35
end

--==[ FEATURES ]==--

-- Setup
local function getChar()
	local char = player.Character or player.CharacterAdded:Wait()
	return char:WaitForChild("Humanoid"), char:WaitForChild("HumanoidRootPart")
end

-- Fly
local flying = false
buttons.Fly.MouseButton1Click:Connect(function()
	local hum, hrp = getChar()
	flying = not flying
	if flying then
		local bv = Instance.new("BodyVelocity", hrp)
		local bg = Instance.new("BodyGyro", hrp)
		bv.Velocity = Vector3.zero
		bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
		bg.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
		RunService.Heartbeat:Connect(function()
			if flying then
				bv.Velocity = hrp.CFrame.lookVector * 100
				bg.CFrame = workspace.CurrentCamera.CFrame
			else
				bv:Destroy()
				bg:Destroy()
			end
		end)
	end
end)

-- Fling
buttons.Fling.MouseButton1Click:Connect(function()
	local _, hrp = getChar()
	local att = Instance.new("Attachment", hrp)
	local av = Instance.new("AngularVelocity", att)
	av.AngularVelocity = Vector3.new(0, 100, 0)
	av.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
	av.RelativeTo = Enum.ActuatorRelativeTo.Attachment0
end)

-- Speed
local speedOn = false
buttons.Speed.MouseButton1Click:Connect(function()
	local hum = getChar()
	speedOn = not speedOn
	hum.WalkSpeed = speedOn and 100 or 16
end)

-- Jump
local jumpOn = false
buttons.Jump.MouseButton1Click:Connect(function()
	local hum = getChar()
	jumpOn = not jumpOn
	hum.UseJumpPower = true
	hum.JumpPower = jumpOn and 150 or 50
end)

-- Inf Health
local infHealth = false
buttons.InfHealth.MouseButton1Click:Connect(function()
	local hum = getChar()
	infHealth = not infHealth
	if infHealth then
		hum.Health = math.huge
		hum:GetPropertyChangedSignal("Health"):Connect(function()
			if hum.Health < 1000 then hum.Health = math.huge end
		end)
	end
end)

-- Noclip
local noclip = false
buttons.Noclip.MouseButton1Click:Connect(function()
	noclip = not noclip
	RunService.Stepped:Connect(function()
		if noclip then
			local char = player.Character
			for _, p in ipairs(char:GetDescendants()) do
				if p:IsA("BasePart") and p.CanCollide then
					p.CanCollide = false
				end
			end
		end
	end)
end)

-- Auto Kill All NPC
buttons.KillNPC.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	for _, npc in ipairs(workspace:GetDescendants()) do
		if npc:IsA("Model") and npc:FindFirstChild("Humanoid") then
			local humanoid = npc.Humanoid
			if not npc:IsDescendantOf(player.Character) then
				humanoid.Health = 0
			end
		end
	end
end)

-- Click to TP
buttons.ClickTP.MouseButton1Click:Connect(function()
	mouse.Button1Down:Connect(function()
		local pos = mouse.Hit.Position
		player.Character:MoveTo(pos)
	end)
end)

-- TP to Friend
buttons.TPFriend.MouseButton1Click:Connect(function()
	local friendName = game:GetService("Chat"):Chat(player.Character.Head, "Enter friend username in chat", Enum.ChatColor.Blue)
	player.Chatted:Connect(function(msg)
		local target = Players:FindFirstChild(msg)
		if target and target.Character then
			local targetPos = target.Character:WaitForChild("HumanoidRootPart").Position
			player.Character:MoveTo(targetPos + Vector3.new(2, 0, 2))
		end
	end)
end)

-- Auto Execute
buttons.AutoExec.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/cYhWsYX1"))()
end)
	else
		StatusLabel.Text = "❌ Invalid Key!"
		StatusLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
	end
end)

GetKey.MouseButton1Down:Connect(function()
	setclipboard(getkey)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Key Copied",
		Text = "Key copied to clipboard.",
		Duration = 5
	})
end)
