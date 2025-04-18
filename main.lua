if game.PlaceId == 74260430392611  then
    local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()

    local Window = OrionLib:MakeWindow({
        Name = "ghost hub ",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "Dev ghost",
        IntroEnabled = false
    })

    -- AutoClick control
    local autoClickEnabled = false

    local function startAutoClick()
        task.spawn(function()
            while autoClickEnabled do
                pcall(function()
                    local vim = game:GetService("VirtualInputManager")
                    vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                    vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
                end)
                task.wait(0.9)
            end
        end)
    end

    local Main = Window:MakeTab({
        Name = "auto farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = Main:AddSection({
        Name = "Main"
    })

    -- Auto Sell
    local autoSellEnabled = false

    Main:AddToggle({
        Name = "auto sell",
        Default = false,
        Callback = function(Value)
            autoSellEnabled = Value
            if autoSellEnabled then
                task.spawn(function()
                    while autoSellEnabled do
                        pcall(function()
                            game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
                        end)
                        task.wait(0.5)
                    end
                end)
            end
        end
    })

    -- AutoClick
    Main:AddToggle({
        Name = "AutoClick",
        Default = false,
        Callback = function(state)
            autoClickEnabled = state
            if autoClickEnabled then
                startAutoClick()
            end
        end
    })
end





















