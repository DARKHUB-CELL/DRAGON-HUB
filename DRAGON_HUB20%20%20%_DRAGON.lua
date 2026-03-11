local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local Confirm = Instance.new("TextButton")
local Logo = Instance.new("ImageLabel")
local TimeLabel = Instance.new("TextLabel")

local Corner = Instance.new("UICorner")
local Stroke = Instance.new("UIStroke")

local PremiumKey = "DRAGONTEST"
local PremiumTime = 120

local expireTime = nil

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
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
Info.Text = "PLEASE GET KEY IN YOUTUBE"
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

TimeLabel.Parent = Frame
TimeLabel.Position = UDim2.new(0.35,0,0.45,0)
TimeLabel.Size = UDim2.new(0.3,0,0,30)
TimeLabel.Text = "00:00:00"
TimeLabel.TextScaled = true
TimeLabel.BackgroundTransparency = 1
TimeLabel.TextColor3 = Color3.fromRGB(0,255,0)

Confirm.Parent = Frame
Confirm.Position = UDim2.new(0.3,0,0.55,0)
Confirm.Size = UDim2.new(0.4,0,0,40)
Confirm.Text = "CONFIRM"
Confirm.TextScaled = true

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

-- FORMAT TIME
local function formatTime(sec)

    local h = math.floor(sec / 3600)
    local m = math.floor((sec % 3600) / 60)
    local s = sec % 60

    return string.format("%02d:%02d:%02d",h,m,s)

end

-- SHOW PREVIEW TIME
KeyBox:GetPropertyChangedSignal("Text"):Connect(function()

    if KeyBox.Text == PremiumKey then
        TimeLabel.Text = formatTime(PremiumTime)
    else
        TimeLabel.Text = "00:00:00"
    end

end)

-- TIMER FUNCTION
local function startTimer()

    while true do

        local timeLeft = expireTime - os.time()

        if timeLeft <= 0 then

            TimeLabel.Text = "00:00:00"
            Status.Text = "TIMER END PLEASE OUT"

            local EndFrame = Instance.new("Frame")
            EndFrame.Parent = ScreenGui
            EndFrame.Size = UDim2.new(0,300,0,150)
            EndFrame.Position = UDim2.new(0.5,-150,0.5,-75)
            EndFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)

            local EndText = Instance.new("TextLabel")
            EndText.Parent = EndFrame
            EndText.Size = UDim2.new(1,0,1,0)
            EndText.BackgroundTransparency = 1
            EndText.Text = "TIMER END\nPLEASE OUT"
            EndText.TextScaled = true
            EndText.TextColor3 = Color3.fromRGB(255,0,0)

            break

        end

        TimeLabel.Text = formatTime(timeLeft)

        task.wait(1)

    end

end

-- CONFIRM BUTTON
Confirm.MouseButton1Click:Connect(function()

    if KeyBox.Text == PremiumKey then

        Status.Text = "KEY ACCEPTED"

        expireTime = os.time() + PremiumTime

        startTimer()

    else

        Status.Text = "Wrong Key"
        TimeLabel.Text = "00:00:00"

    end

end)
