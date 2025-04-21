local LoginGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local LoginButton = Instance.new("TextButton")
local GetKeyButton = Instance.new("TextButton")

LoginGui.Name = "LoginGui"
LoginGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = LoginGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderColor3 = Color3.fromRGB(76, 0, 130)
MainFrame.BorderSizePixel = 2
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.Size = UDim2.new(0, 250, 0, 150)

KeyBox.Name = "KeyBox"
KeyBox.Parent = MainFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.BorderSizePixel = 1
KeyBox.Position = UDim2.new(0.1, 0, 0.2, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0, 40)
KeyBox.Font = 3
KeyBox.PlaceholderText = "KEY HERE"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(200, 200, 200)
KeyBox.TextSize = 16
KeyBox.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
KeyBox.TextStrokeTransparency = 0

LoginButton.Name = "LoginButton"
LoginButton.Parent = MainFrame
LoginButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LoginButton.BorderSizePixel = 1
LoginButton.Position = UDim2.new(0.1, 0, 0.6, 0)
LoginButton.Size = UDim2.new(0.37, 0, 0, 40)
LoginButton.Font = 3
LoginButton.Text = "Login"
LoginButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginButton.TextSize = 16
LoginButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
LoginButton.TextStrokeTransparency = 0

GetKeyButton.Name = "GetKeyButton"
GetKeyButton.Parent = MainFrame
GetKeyButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GetKeyButton.BorderSizePixel = 1
GetKeyButton.Position = UDim2.new(0.53, 0, 0.6, 0)
GetKeyButton.Size = UDim2.new(0.37, 0, 0, 40)
GetKeyButton.Font = 3
GetKeyButton.Text = "Get Key"
GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyButton.TextSize = 16
GetKeyButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
GetKeyButton.TextStrokeTransparency = 0

LoginButton.MouseButton1Click:Connect(function()
    LoginGui:Destroy()
    script_key = "my key"
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a21d54bdc7ea1b3916266729dd6df289.lua"))()
end)

GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/mDnrJ5Ccg6")
    game.StarterGui:SetCore("SendNotification", {
        Title = "check ur clipboard gng",
        Text = "Purchase a key on our discord server",
        Duration = 5
    })
end)
