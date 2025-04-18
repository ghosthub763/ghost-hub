if game.PlaceId == 74260430392611 then
    

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Ghost hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Dev Ghost", IntroEnable = false})


local Main = Window:MakeTab({
    Name = "Luna",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Main:AddSection({
    Name = "Auto-farm"
})

_G.loopAtivo = false

Main:AddToggle({
    Name = "Loop de Exemplo",
    Default = false,
    Callback = function(value)
        _G.loopAtivo = value
        while _G.loopAtivo do
            print("Executando ação...")
            task.wait(1)
        end
    end
})


main:AddToggle({
    Name = "AutoClick",
    Default = false,
    Callback = function(state)
        _G.click = state
        while _G.click do
            pcall(function()
                game:GetService("ReplicatedStorage").Events.Click:FireServer()
            end)
            task.wait(0.1)
        end
    end
})

    
end






















