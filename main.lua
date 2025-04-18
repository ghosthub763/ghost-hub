local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "With ❤️ Ghost Hub",
    SubTitle = "",
    TabWidth = 100,
    Size = UDim2.fromOffset(430, 300),
    Acrylic = false,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl
})
local Tabs = {
    Main = Window:AddTab({ Title = "• Infor", Icon = "rbxassetid://18831448204" }),
    Settings = Window:AddTab({ Title = "• Settings", Icon = "rbxassetid://18319394996" })
}
Window:SelectTab(1)

local attack = Tabs.Main:AddToggle("Auto attack", {Title = "Auto Click", Default = false})

attack:OnChanged(function()
    while attack.Value do
        wait()
        local args = {
            [1] = "BlowBubble"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
        
    end
end)
local Sell = Tabs.Main:AddToggle("Auto attack", {Title = "Auto Sell", Default = false})

Sell:OnChanged(function()
    while Sell.Value do
        wait(1)
        local args = {
            [1] = "SellBubble"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))
    end
end)
local Best = Tabs.Main:AddToggle("Auto attack", {Title = "Auto Equip Best", Default = false})

Best:OnChanged(function()
    while Best.Value do
        wait(5)
        local args = {
            [1] = "EquipBestPets"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event"):FireServer(unpack(args))        
    end
end)
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)




















