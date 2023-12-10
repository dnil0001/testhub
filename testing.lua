local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Title!",
	Content = "You are logged in as"..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

G.Key = "Hello"
G.KeyInput = "string"

function valid()
    print("Its valid guysss!")
end

function invalid()
    print("inst valid guyss")
end

function Destroy()
    game:GetService("CoreGui").Orion:Destroy() 
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
      		if G.KeyInput == G.Key then
                valid()
            else
                invalid()
            end
  	end    
})
