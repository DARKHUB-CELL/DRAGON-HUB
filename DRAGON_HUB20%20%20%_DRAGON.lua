local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local GetKey = Instance.new("TextButton")
local Confirm = Instance.new("TextButton")
local Logo = Instance.new("ImageLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,450)
Frame.Position = UDim2.new(0.5,-175,0.5,-225)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,50)
Title.Text = "KEY SYSTEM"
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255,255,255)

Status.Parent = Frame
Status.Position = UDim2.new(0.1,0,0.15,0)
Status.Size = UDim2.new(0.8,0,0,30)
Status.Text = "Status: Working | Version 0.5V"
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.fromRGB(200,200,200)

Info.Parent = Frame
Info.Position = UDim2.new(0.1,0,0.25,0)
Info.Size = UDim2.new(0.8,0,0,30)
Info.Text = "PLEASE GET KEY IN YOUTUBE"
Info.BackgroundTransparency = 1
Info.TextColor3 = Color3.fromRGB(255,255,255)

KeyBox.Parent = Frame
KeyBox.Position = UDim2.new(0.1,0,0.35,0)
KeyBox.Size = UDim2.new(0.8,0,0,40)
KeyBox.PlaceholderText = "Enter Key..."

GetKey.Parent = Frame
GetKey.Position = UDim2.new(0.1,0,0.5,0)
GetKey.Size = UDim2.new(0.35,0,0,40)
GetKey.Text = "GET KEY"

Confirm.Parent = Frame
Confirm.Position = UDim2.new(0.55,0,0.5,0)
Confirm.Size = UDim2.new(0.35,0,0,40)
Confirm.Text = "CONFIRM"

Logo.Parent = Frame
Logo.Position = UDim2.new(0.25,0,0.65,0)
Logo.Size = UDim2.new(0.5,0,0.25,0)
Logo.Image = "rbxassetid://135408263740320"
Logo.BackgroundTransparency = 1
