-- KEY SYSTEM

local correctKey = "FREE_WHATTHEFUCK001927"
local youtube = "https://www.youtube.com/@DRAGON-HUB-f2i"

local gui = Instance.new("ScreenGui", game.CoreGui)

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,360,0,230)
frame.Position = UDim2.new(0.5,-180,0.5,-115)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
frame.BackgroundTransparency = 0.2
frame.ClipsDescendants = true

-- Aurora background
local bg = Instance.new("ImageLabel", frame)
bg.Size = UDim2.new(1.5,0,1.5,0)
bg.Position = UDim2.new(-0.25,0,-0.25,0)
bg.Image = "rbxassetid://12964043815"
bg.BackgroundTransparency = 1
bg.ImageTransparency = 0.35

-- Title
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,40)
title.Text = "KEY SYSTEM"
title.TextScaled = true
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1,1,1)

-- Status
local status = Instance.new("TextLabel", frame)
status.Position = UDim2.new(0,0,0,60)
status.Size = UDim2.new(1,0,0,25)
status.Text = "Status: Wait the key..."
status.BackgroundTransparency = 1
status.TextColor3 = Color3.new(1,1,1)

-- Textbox
local box = Instance.new("TextBox", frame)
box.Position = UDim2.new(0.1,0,0.45,0)
box.Size = UDim2.new(0.8,0,0,35)
box.PlaceholderText = "E. Vui lòng nhập key"

-- Buttons
local getlink = Instance.new("TextButton", frame)
getlink.Position = UDim2.new(0.15,0,0.72,0)
getlink.Size = UDim2.new(0.3,0,0,35)
getlink.Text = "Get Link"

local confirm = Instance.new("TextButton", frame)
confirm.Position = UDim2.new(0.55,0,0.72,0)
confirm.Size = UDim2.new(0.3,0,0,35)
confirm.Text = "Confirm"

-- Copy youtube
getlink.MouseButton1Click:Connect(function()
setclipboard(youtube)
status.Text = "Status: Link copied!"
end)

-- Confirm key
confirm.MouseButton1Click:Connect(function()

if box.Text == correctKey then

status.Text = "Status: Correct Key!"
wait(1)
frame:Destroy()

-- LOAD YOUR SCRIPT

getgenv().ScriptTitle = "DRAGON HUB"
getgenv().ScriptSubTitle = "VERSION 1.20 BeTa"
getgenv().ScriptImage = "https://i.ibb.co/4RP9Mspj/hien-tuong-cuc-quang-1-1741247162.webp"
getgenv().ScriptAuthorName = "GUGUGAGA"
getgenv().ScriptAuthorSubTitle = "Author Info"

loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/Script/refs/heads/main/EZScript.lua"))()

else
status.Text = "Status: Wrong Key!"
end

end)

-- Aurora movement
spawn(function()
while true do
for i=-0.25,-0.15,0.001 do
bg.Position = UDim2.new(i,0,-0.25,0)
task.wait()
end
for i=-0.15,-0.25,-0.001 do
bg.Position = UDim2.new(i,0,-0.25,0)
task.wait()
end
end
end)
