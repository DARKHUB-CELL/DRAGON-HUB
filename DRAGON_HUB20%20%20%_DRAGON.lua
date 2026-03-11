repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local GetKey = Instance.new("TextButton")
local Confirm = Instance.new("TextButton")
local Logo = Instance.new("ImageLabel")

local Corner = Instance.new("UICorner")
local Stroke = Instance.new("UIStroke")

-- KEYS
local NormalKey = "DRAGONFREE"
local PremiumKey = "DRAGONVIP"
local AdminKey = "DRAGONADMIN"

ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,450)
Frame.Position = UDim2.new(0.5,-175,0.5,-225)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

Corner.Parent = Frame
Corner.CornerRadius = UDim.new(0,12)

Stroke.Parent = Frame
Stroke.Thickness = 3

Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,50)
Title.Text = "DRAGON HUB KEY SYSTEM"
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255,255,255)

Status.Parent = Frame
Status.Position = UDim2.new(0.1,0,0.15,0)
Status.Size = UDim2.new(0.8,0,0,30)
Status.Text = "Status: Waiting Key"
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.fromRGB(200,200,200)
Status.TextScaled = true

Info.Parent = Frame
Info.Position = UDim2.new(0.1,0,0.25,0)
Info.Size = UDim2.new(0.8,0,0,30)
Info.Text = "PLEASE GET KEY"
Info.BackgroundTransparency = 1
Info.TextColor3 = Color3.fromRGB(255,255,255)
Info.TextScaled = true

KeyBox.Parent = Frame
KeyBox.Position = UDim2.new(0.1,0,0.35,0)
KeyBox.Size = UDim2.new(0.8,0,0,40)
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.TextScaled = true
KeyBox.BackgroundColor3 = Color3.fromRGB(50,50,50)
KeyBox.TextColor3 = Color3.fromRGB(255,255,255)

GetKey.Parent = Frame
GetKey.Position = UDim2.new(0.1,0,0.5,0)
GetKey.Size = UDim2.new(0.35,0,0,40)
GetKey.Text = "GET KEY"
GetKey.TextScaled = true
GetKey.BackgroundColor3 = Color3.fromRGB(70,70,70)
GetKey.TextColor3 = Color3.fromRGB(255,255,255)

Confirm.Parent = Frame
Confirm.Position = UDim2.new(0.55,0,0.5,0)
Confirm.Size = UDim2.new(0.35,0,0,40)
Confirm.Text = "CONFIRM"
Confirm.TextScaled = true
Confirm.BackgroundColor3 = Color3.fromRGB(70,70,70)
Confirm.TextColor3 = Color3.fromRGB(255,255,255)

Logo.Parent = Frame
Logo.Size = UDim2.new(0,120,0,120)
Logo.Position = UDim2.new(0.5,-60,0.72,0)
Logo.BackgroundTransparency = 1
Logo.Image = "rbxassetid://135408263740320"
Logo.ScaleType = Enum.ScaleType.Fit

-- RGB BORDER
task.spawn(function()

    local hue = 0

    while true do

        hue = hue + 0.01

        if hue > 1 then
            hue = 0
        end

        Stroke.Color = Color3.fromHSV(hue,1,1)

        task.wait(0.03)

    end

end)

-- COPY KEY
GetKey.MouseButton1Click:Connect(function()

    setclipboard("DRAGONFREE")

    Status.Text = "Key Copied"

end)

-- CONFIRM
Confirm.MouseButton1Click:Connect(function()

    local key = KeyBox.Text

    if key == NormalKey or key == PremiumKey or key == AdminKey then
        
        Status.Text = "KEY ACCEPTED"

        task.wait(0.5)

        ScreenGui:Destroy()

        print("Dragon Hub Loaded")

    else
        
        Status.Text = "Wrong Key"

    end

end)
