repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer

-- GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

local StatusBox = Instance.new("TextLabel")
local VersionBox = Instance.new("TextLabel")

local Info = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")

local GetKey = Instance.new("TextButton")
local Confirm = Instance.new("TextButton")

local Corner = Instance.new("UICorner")
local Stroke = Instance.new("UIStroke")

ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- FRAME
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,520)
Frame.Position = UDim2.new(0.5,-175,0.5,-260)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

Corner.Parent = Frame
Corner.CornerRadius = UDim.new(0,12)

Stroke.Parent = Frame
Stroke.Thickness = 10

-- TITLE
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,50)
Title.Position = UDim2.new(0,0,0,10)
Title.BackgroundTransparency = 1
Title.Text = "KEY SYSTEM DRAGON HUB"
Title.TextScaled = true
Title.TextColor3 = Color3.fromRGB(255,255,255)

-- STATUS
StatusBox.Parent = Frame
StatusBox.Size = UDim2.new(0.4,0,0,40)
StatusBox.Position = UDim2.new(0.05,0,0.15,0)
StatusBox.BackgroundColor3 = Color3.fromRGB(50,50,50)
StatusBox.Text = "Status : Working"
StatusBox.TextScaled = true
StatusBox.TextColor3 = Color3.fromRGB(255,255,255)

-- VERSION
VersionBox.Parent = Frame
VersionBox.Size = UDim2.new(0.4,0,0,40)
VersionBox.Position = UDim2.new(0.55,0,0.15,0)
VersionBox.BackgroundColor3 = Color3.fromRGB(50,50,50)
VersionBox.Text = "Version : 1.0V Beta"
VersionBox.TextScaled = true
VersionBox.TextColor3 = Color3.fromRGB(255,255,255)

-- INFO
Info.Parent = Frame
Info.Size = UDim2.new(1,0,0,30)
Info.Position = UDim2.new(0,0,0.25,0)
Info.BackgroundTransparency = 1
Info.Text = "Wait The Key..."
Info.TextScaled = true
Info.TextColor3 = Color3.fromRGB(200,200,200)

-- KEY BOX
KeyBox.Parent = Frame
KeyBox.Size = UDim2.new(0.8,0,0,40)
KeyBox.Position = UDim2.new(0.1,0,0.35,0)
KeyBox.BackgroundColor3 = Color3.fromRGB(50,50,50)
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.TextScaled = true
KeyBox.TextColor3 = Color3.fromRGB(255,255,255)

-- GET KEY
GetKey.Parent = Frame
GetKey.Size = UDim2.new(0.35,0,0,40)
GetKey.Position = UDim2.new(0.1,0,0.5,0)
GetKey.BackgroundColor3 = Color3.fromRGB(70,70,70)
GetKey.Text = "GET KEY"
GetKey.TextScaled = true
GetKey.TextColor3 = Color3.fromRGB(255,255,255)

-- CONFIRM
Confirm.Parent = Frame
Confirm.Size = UDim2.new(0.35,0,0,40)
Confirm.Position = UDim2.new(0.55,0,0.5,0)
Confirm.BackgroundColor3 = Color3.fromRGB(70,70,70)
Confirm.Text = "CONFIRM"
Confirm.TextScaled = true
Confirm.TextColor3 = Color3.fromRGB(255,255,255)

-- RGB BORDER
task.spawn(function()

    local hue = 0

    while true do

        hue += 0.01
        if hue > 1 then
            hue = 0
        end

        Stroke.Color = Color3.fromHSV(hue,1,1)

        task.wait(0.03)

    end

end)

-- KEY
local Key = "FREE_12A089AD123"

-- GET KEY BUTTON
GetKey.MouseButton1Click:Connect(function()

    setclipboard("https://www.youtube.com/@DRAGON-HUB-f2i")

    Info.Text = "YouTube Link Copied"

end)

-- CONFIRM BUTTON
Confirm.MouseButton1Click:Connect(function()

    if KeyBox.Text == Key then

        Info.Text = "Key Correct"

        task.wait(1)

        ScreenGui:Destroy()

        print("Dragon Hub Loaded")

    else

        Info.Text = "Wrong Key"

    end

end)
