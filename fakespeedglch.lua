
plr = game:GetService('Players').LocalPlayer
down = true
 
function onButton1Down(mouse)
    down = true
    while down do
        if not down then break end
        local char = plr.Character
        char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
        wait()
    end
end
 
function onButton1Up(mouse)
    down = false
end
 
function onSelected(mouse)
    mouse.KeyDown:connect(function(z) if z:lower()=="z"then onButton1Down(mouse)end end)
    mouse.KeyUp:connect(function(z) if z:lower()=="z"then onButton1Up(mouse)end end)
end
onSelected(game.Players.LocalPlayer:GetMouse())
game.StarterGui:SetCore("SendNotification",{
			Title = "Keybind is Z";
			Text = "AntiSec";
			Icon = "rbxassetid://9800336437";
			Duration = 5;
		})
