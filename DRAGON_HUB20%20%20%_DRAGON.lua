repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer

-- GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local GetKey = Instance.new("TextButton")
local Confirm = Instance.new("TextButton")
local Info = Instance.new("TextLabel")
local Stroke = Instance.new("UIStroke")

ScreenGui.Parent = player.PlayerGui
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,250)
Frame.Position = UDim2.new(0.5,-175,0.5,-125)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

Stroke.Parent = Frame
Stroke.Thickness = 8

Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,40)
Title.Text = "DRAGON HUB KEY SYSTEM"
Title.BackgroundTransparency = 1
Title.TextScaled = true
Title.TextColor3 = Color3.new(1,1,1)

KeyBox.Parent = Frame
KeyBox.Size = UDim2.new(0.8,0,0,40)
KeyBox.Position = UDim2.new(0.1,0,0.35,0)
KeyBox.PlaceholderText = "Enter Key..."

GetKey.Parent = Frame
GetKey.Size = UDim2.new(0.35,0,0,40)
GetKey.Position = UDim2.new(0.1,0,0.6,0)
GetKey.Text = "GET KEY"

Confirm.Parent = Frame
Confirm.Size = UDim2.new(0.35,0,0,40)
Confirm.Position = UDim2.new(0.55,0,0.6,0)
Confirm.Text = "CONFIRM"

Info.Parent = Frame
Info.Size = UDim2.new(1,0,0,30)
Info.Position = UDim2.new(0,0,0.8,0)
Info.BackgroundTransparency = 1
Info.Text = "Waiting Key..."

local Key = "FREE_12A089AD123"

-- RGB viền
task.spawn(function()
    local hue = 0
    while true do
        hue += 0.01
        if hue > 1 then hue = 0 end
        Stroke.Color = Color3.fromHSV(hue,1,1)
        task.wait(0.03)
    end
end)

-- GET KEY
GetKey.MouseButton1Click:Connect(function()

    setclipboard("https://www.youtube.com/@DRAGON-HUB-f2i")
    Info.Text = "YouTube Link Copied"

end)

-- CONFIRM
Confirm.MouseButton1Click:Connect(function()

    if KeyBox.Text == Key then

        Info.Text = "Key Correct"

        task.wait(1)

        ScreenGui:Destroy()

        -- LOAD DRAGON HUB MENU
        getgenv().ScriptTitle = "DRAGON HUB"
        getgenv().ScriptSubTitle = "VERISON V1.20 BETA"
        getgenv().ScriptImage = "https://i.ibb.co/DPhG5xQY/logo-500.png"
        getgenv().ScriptAuthorName = "Võ anh vũ"
        getgenv().ScriptAuthorSubTitle = "Author Info"

        loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/Script/refs/heads/main/EZScript.lua"))()

    else

        Info.Text = "Wrong Key"

    end

end)
