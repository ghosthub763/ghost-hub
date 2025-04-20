local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
     
local Window = Fluent:CreateWindow({
    Title = "ghost hub",
    SubTitle = "ghost",
    TabWidth = 100, 
    Size = UDim2.fromOffset(430, 300),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})
local Tabs = {
    Main = Window:AddTab({ Title = "Auto Farm", Icon = "rbxassetid://18831448204" }),
    Eggs = Window:AddTab({ Title = "• eggs", Icon = "rbxassetid://18319394996" }),
     Settings = Window:AddTab({ Title = "setting", Icon = "rbxassetid://18831448204" }),
} 
Window:SelectTab(1)


 local attack = Tabs.Main:AddToggle("Auto Click", {Title = "Auto", Default = false})
attack:OnChanged(function()
    while attack.Value do
        wait(0.1)
     

        local args = {
            [1] = "01010010 01100101 01110000 01101100 01101001 01100011 01100001 01110100 01100101 01100100 01010011 0" ..
                "1110100 01101111 01110010 01100001 01100111 01100101 00101110 01001110 01101001 011001" ..
                "11 01101000 01110100 01011000 00101110 01001100 01101001 01100010 01110010 01100001 01" ..
                "110010 01111001 00101110 01000011 01101111 01101110 01101110 01100101 01100011 0111010" ..
                "0 01101001 01101111 01101110 00101110 01110100 01101000 01110010 01100101 01100001 011" ..
                "00100 01011111 01110011 01100101 01100011 01110101 01110010 01101001 01110100 01111001" ..
                " 00111010 00110001 00001010 01010010 01100101 01110000 01101100 01101001 01100011 0110" ..
                "0001 01110100 01100101 01100100 01010011 01110100 01101111 01110010 01100001 01100111 " ..
                "01100101 00101110 01001110 01101001 01100111 01101000 01110100 01011000 00101110 01001" ..
                "100 01101001 01100010 01110010 01100001 01110010 01111001 00101110 01000011 01101111 0" ..
                "1101110 01101110 01100101 01100011 01110100 01101001 01101111 01101110 00111010 001100" ..
                "01 00110101 00110110 00100000 01100110 01110101 01101110 01100011 01110100 01101001 01" ..
                "101111 01101110 00100000 01110011 01100101 01101110 01100100 00001010 01010010 0110010" ..
                "1 01110000 01101100 01101001 01100011 01100001 01110100 01100101 01100100 01010011 011" ..
                "10100 01101111 01110010 01100001 01100111 01100101 00101110 01001110 01101001 01100111" ..
                " 01101000 01110100 01011000 00101110 01001100 01101001 01100010 01110010 01100001 0111" ..
                "0010 01111001 00101110 01000011 01101100 01101001 01100101 01101110 01110100 00101110 " ..
                "01010000 01110101 01101110 01100011 01101000 01010011 01100101 01110100 01110101 01110" ..
                "000 00111010 00110100 00110010 00001010",
            [2] = "System",
            [3] = "Enemies",
            [4] = "Damage"
      
          }
      
      game:GetService("ReplicatedStorage"):WaitForChild("\207\157\207\157\205\177\206\182\206\182\207\157\206\180\207\155\206\184"):WaitForChild("\208\147\208\146\208\130\208\131\208\145\208\146\208\148\208\146\208\148\208\145"):FireServer(unpack(args))

        end
    
    end)




















