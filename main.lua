local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

pcall(function()
    PlayerGui:FindFirstChild("ALZZZ_HUB"):Destroy()
end)

local gui = Instance.new("ScreenGui")
gui.Name = "ALZZZ_HUB"
gui.Parent = PlayerGui

-- MAIN FRAME (taille réduite)
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 260, 0, 520)
main.Position = UDim2.new(0.5, -130, 0.5, -260)
main.BackgroundColor3 = Color3.fromRGB(12, 12, 20)
main.Parent = gui

Instance.new("UICorner", main).CornerRadius = UDim.new(0, 24)

-- 🌸 NEON ROSE
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 90, 180)
stroke.Thickness = 2.5
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = main

-- TITLE (MAJUSCULE)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 50)
title.Position = UDim2.new(0, 10, 0, 6)
title.BackgroundTransparency = 1
title.Text = "🌸 NOKYZZ HUB 🌸"
title.TextColor3 = Color3.fromRGB(255, 200, 230)
title.Font = Enum.Font.GothamBlack
title.TextSize = 20
title.TextXAlignment = Enum.TextXAlignment.Center
title.Parent = main

-- CLOSE
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 32, 0, 32)
close.Position = UDim2.new(1, -40, 0, 10)
close.Text = "✕"
close.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
close.TextColor3 = Color3.fromRGB(255, 120, 120)
close.Font = Enum.Font.GothamBold
close.TextSize = 18
close.AutoButtonColor = false
close.Parent = main
Instance.new("UICorner", close).CornerRadius = UDim.new(1, 0)

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- BUTTON CREATOR
local function createButton(text, yPos, scriptUrl)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -28, 0, 42)
    btn.Position = UDim2.new(0, 14, 0, yPos)
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(120, 70, 160)
    btn.TextColor3 = Color3.fromRGB(255, 235, 245)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.AutoButtonColor = false
    btn.Parent = main

    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 18)

    local bStroke = Instance.new("UIStroke")
    bStroke.Color = Color3.fromRGB(255, 120, 200)
    bStroke.Thickness = 1.5
    bStroke.Parent = btn

    btn.MouseButton1Click:Connect(function()
        if scriptUrl ~= "" then
            loadstring(game:HttpGet(scriptUrl))()
        end
    end)
end

-- 🔥 BOUTONS
createButton("🚀 TP & Block", 70,
    "https://pastebin.com/raw/0hTSWVNj")

createButton("⚡ AP Spam", 120,
    "https://api.luarmor.net/files/v4/loaders/de7fe264a0d1d0b4ee5d6d30777c8b44.lua")

createButton("🔥 Nameless Admin", 170,
    "https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr")

createButton("💎 Speed Boost", 220,
    "https://api.luarmor.net/files/v4/loaders/497f00d012b12d3932e772e7ed0ea533.lua")

createButton("⚔ Chilli Hub", 270,
    "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua")

createButton("🔒 Allow / Disallow", 320,
    "https://raw.githubusercontent.com/Tokinu/Allow-Disallow/main/Tokinu")

createButton("👻 Desync", 370,
    "https://api.luarmor.net/files/v4/loaders/67b30f70171068a03119225ccb621516.lua")

createButton("⚔ Instant Steal", 420,
    "https://api.luarmor.net/files/v4/loaders/9f36032d5d93c469e6bdc062f6853fa0.lua")
