dif game.PleaceId == 4058282580 then
    

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

    local Window = OrionLib:MakeWindow({Name = "ghost hub", HidePremium = false, SaveConfig = true, ConfigFolder = "ghost", IntroEnable = false})

    local main = Window:MakeTab({
        Name = "auto farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = main:AddSection({
        Name = "auto farm"
    })

    main:AddToggle({
        Name = "autosell",
        Default = false,
        Callback = function(Value)
        pcall(function ()
            game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
        end)
        task.wait(0.1)
        
        end    
    })
end












end



