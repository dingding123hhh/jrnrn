local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("美国时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "『丁丁脚本』", HidePremium = false, SaveConfig = true,IntroText = "『丁丁脚本』", ConfigFolder = "『丁丁脚本』"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『丁丁』脚本"; Text ="原神 启动"; Duration = 4; })

local about = Window:MakeTab({
    Name = "ding ding",
    Icon = "rbxassetid://16060333448",
    PremiumOnly = false

})

about:AddParagraph("作者QQ198436746")
about:AddParagraph("qq群930667114")
about:AddParagraph("作者ding ding")
about:AddParagraph("『丁丁脚本』")

local Tab =Window:MakeTab({

	Name = "作者QQ在这里",

	Icon = "rbxassetid://16060333448",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "复制作者QQ",

	Callback = function()

     setclipboard("198436746")

  	end

})

Tab:AddButton({

	Name = "复制QQ群",

	Callback = function()

     setclipboard("930667114")

  	end

})

OrionLib:MakeNotification({
	Name = "ding",
	Content = "欢迎使用乐子脚本",
	Image = "rbxassetid://16060333448",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "通用",

    Icon = "rbxassetid://16060333448",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "ding ding创作"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({
	Name = "丁丁飞行",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/fly/main/%E4%B8%81%E4%B8%81%E9%A3%9E%E8%A1%8C.txt"))()
  	end    
})

Tab:AddButton({
	Name = "替身",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
    end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
  Name = "丁丁汉化阿尔宙斯自瞄",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
  end
 })
 
 Tab:AddButton({
  Name = "工具挂",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
  end
 })
 
Tab:AddButton({
  Name = "穿墙",
  Callback = function ()
  local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Clipon = true
 
Stepped = game:GetService("RunService").Stepped:Connect(function()
	if not Clipon == false then
		for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Players.LocalPlayer.Name then
        for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end end end end
	else
		Stepped:Disconnect()
	end
end)
  end
 })
 
Tab:AddButton({
	Name = "光影V4",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end
})

Tab:AddButton({

	Name = "变成蛇",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})

Tab:AddButton({
	Name = "让别人控制自己",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
	end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

Tab:AddButton({

	Name = "无敌",

	Callback = function()

local lp = game:GetService "Players".LocalPlayer

if lp.Character:FindFirstChild "Head" then

    local char = lp.Character

    char.Archivable = true

    local new = char:Clone()

    new.Parent = workspace

    lp.Character = new

    wait(2)

    local oldhum = char:FindFirstChildWhichIsA "Humanoid"

    local newhum = oldhum:Clone()

    newhum.Parent = char

    newhum.RequiresNeck = false

    oldhum.Parent = nil

    wait(2)

    lp.Character = char

    new:Destroy()

    wait(1)

    newhum:GetPropertyChangedSignal("Health"):Connect(

        function()

            if newhum.Health <= 0 then

                oldhum.Parent = lp.Character

                wait(1)

                oldhum:Destroy()

            end

        end)

    workspace.CurrentCamera.CameraSubject = char

    if char:FindFirstChild "Animate" then

        char.Animate.Disabled = true

        wait(.1)

        char.Animate.Disabled = false

    end

    lp.Character:FindFirstChild "Head":Destroy()

end

end

})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hknvh/main/%E7%94%A9%E9%A3%9E.txt"))()
  	end    
})

Tab:AddButton({

	Name = "防止掉线（反挂机）",

	Callback = function()

	print("Anti Afk On")

		local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)

  	end

})

Tab:AddButton({

	Name = "透视",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()

  	end    

})

Tab:AddButton({

	Name = "吸取全部玩家（别人看不见）",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()

  	end    

})

Tab:AddButton({

	Name = "人物无敌（不适用）",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()

	end    

})

Tab:AddButton({

	Name = "隐身(E)",

	Callback = function()

	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()

  	end    

})

Tab:AddButton({

	Name = "电脑键盘",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()

  	end    

})

Tab:AddButton({

	Name = "飞车(E)(别人看到)",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()

  	end    

})

Tab:AddTextbox({

	Name = "跳跃高度",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end	 

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end
})

Tab:AddButton({
	Name = "鼠标（手机非常不建议用）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})

Tab:AddButton({
	Name = "丁丁飞行",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/fly/main/%E4%B8%81%E4%B8%81%E9%A3%9E%E8%A1%8C.txt"))()
	end 
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "伪名说话（娱乐）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
	end 
})

Tab:AddButton({
	Name = "转圈（使用此项关闭移位锁）",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})

Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})

Tab:AddButton({
    Name="紫砂",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
    end
})

local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "丁丁自制力量传奇传送",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vbbjn/main/%E4%B8%81%E4%B8%81%E5%8A%9B%E9%87%8F%E4%BC%A0%E5%A5%87%E4%BC%A0%E9%80%81%20.txt"))()
  end
 })
 
Tab:AddButton({
	Name = "力量传奇修改力量",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
	Name = "力量传奇最强",	
	Callback = function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends"))()	
	end
})

local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "忍者传奇丁丁汉化",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/fgb/main/%E4%B8%81%E4%B8%81%E5%BF%8D%E8%80%85%E4%BC%A0%E5%A5%87.txt"))()
	end
})

Tab:AddButton({	
	Name = "丁丁自制传送",		
	Callback = function()	
	loadstring(game:HttpGet("https://pastebin.com/raw/UzaUDSPK"))()
	end
})

Tab:AddButton({
	Name = "忍者传奇1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
    end
})

Tab:AddButton({	
	Name = "忍者传奇2",		
	Callback = function()	
loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()			
	end
})

Tab:AddButton({
	Name = "忍者传奇3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
	end
})

Tab:AddButton({
	Name = "忍者传奇4",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
	end
})
	
local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "丁丁自制",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ding/main/%E4%B8%81%E4%B8%81%E6%9E%81%E9%80%9F%E4%BC%A0%E5%A5%87%20(1).txt"))()
	end
})

Tab:AddButton({
	Name = "青",
	Callback = function()
loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
    end
})

Tab:AddButton({
	Name = "剑客要加群组",
	Callback = function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

Tab:AddButton({
	Name = "Boa",	
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
	end
})

Tab:AddButton({	
	Name = "汉化（改数值）",		
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()
	end
})

local Tab = Window:MakeTab({
	Name = "死亡球",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "死亡球1",
	Callback = function()
	loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua",true))()
	end
})

Tab:AddButton({
	Name = "死亡球2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Ball1/main/Death"))()
	end
})

local Tab = Window:MakeTab({
	Name = "Doors   门",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "最强汉化",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
    end
})

Tab:AddButton({
	Name = "『丁丁 门』",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/rhnrn/main/%E4%B8%81%E4%B8%81doors.txt"))()
	end
})

Tab:AddButton({
	Name = "最新",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
	end
})
	
Tab:AddButton({
	Name = "剑客",
	Callback = function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
    end
})

Tab:AddButton({	
	Name = "最强",		
	Callback = function()	
loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()	
	end
})

Tab:AddButton({
	Name = "DX汉化加二改",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DXuwu/replicator-lol/main/dor.lua"))()
	end
})

Tab:AddButton({
	Name = "Darkrai",		
	Callback = function()	
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
	end
})

Tab:AddButton({
	Name = "RP变怪（别人看不见）",	
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
	end		
})

local Tab = Window:MakeTab({
	Name = "骨折VI",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({	
	Name = "项目一",	
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/5rEAVmcC'))()		
	end      
})

local Tab = Window:MakeTab({
	Name = "俄亥俄州",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "俄亥俄州 英文1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/0MqfXpvY", true))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州 英文2",
	Callback = function()
	loadstring(game:HttpGet('https://pastebin.com/raw/MyfCUnGK'))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州自动工作加传送地点",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rxn-xyz/Ohio./main/Ohio.lua",true))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州4",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/QbXPfsgC/raw"))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州脚本",	
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
	end
})

Tab:AddButton({
	Name = "俄亥俄州指令王",	
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
	end		
})

local Tab = Window:MakeTab({
	Name = "丁丁爱用",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "青风",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,116,53,87,75,53,72,48,72})end)())))("青风脚本")
    end
})

Tab:AddButton({
	Name = "静新",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/gggggghjjnbb/main/jdjdd"))()
    end
})

Tab:AddButton({
	Name = "北极",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
    end
})

Tab:AddButton({
	Name = "SF",
	Callback = function()
SF_V7 = "作者_神罚"SheFa = "QQ群637340150"loadstring(game:HttpGet(('https://raw.githubusercontent.com/WDQi/SF/main/%E7%9C%8B%E4%BD%A0M.txt')))()
    end
})

Tab:AddButton({
	Name = "导管中心",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})

Tab:AddButton({
	Name = "忍",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,52,81,74,109,75,50,99,72})end)())))()
    end
})

Tab:AddButton({
	Name = "剑客",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/Sword-Guest/main/JKYYDS')))()
    end
})

Tab:AddButton({
	Name = "脚本中心",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})

Tab:AddButton({
	Name = "鸭",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

Tab:AddButton({
	Name = "水下世界",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\109\97\105\110\47\82\69\65\68\77\69\46\109\100\34\41\41\40\41")()
    end
})

Tab:AddButton({
	Name = "QB",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,51,69,49,54,76,51,90,106})end)())))()
    end
})

Tab:AddButton({
	Name = "神光",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
    end
})

Tab:AddButton({
	Name = "秋",
	Callback = function()
local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))()
    end
})

Tab:AddButton({
	Name = "云",
	Callback = function()
_G.Clouduilib = "白灰脚作者小云，加载出十几秒"loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/%E7%99%BD%E7%81%B0%E8%84%9A%E6%9C%ACbeta.lua", true))()
    end
})

Tab:AddButton({
	Name = "剑客 门",
	Callback = function()
jianke_V3 = "作者_初夏"jianke1 = "剑客QQ群347724155"jianke2 = "此脚本为剑客V3门脚本,不是剑客V3整合脚本"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/Doors')))()
    end
})

Tab:AddButton({
	Name = "XC",
	Callback = function()
getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
	Name = "青",
	Callback = function()
loadstring(game:HttpGet('https://rentry.co/cyq78/raw'))()
    end
})

Tab:AddButton({
	Name = "星火",
	Callback = function()
loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9319/%E6%98%9F%E7%81%AB%E4%BA%A4%E8%BE%89%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%81.lua?sign=pw1GHDb-tSJH25rTcTo_QPhzJBe73nf7djKDL1vQN1M%3D%3A0"))()
    end
})

Tab:AddButton({
	Name = "鱼",
	Callback = function()
getgenv().FISH = "鱼脚本群:851686462"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\101\108\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\72\119\81\77\82\90\68\69\34\41\41\40\41")("鱼脚本")

    end

})

Tab:AddButton({
	Name = "皇",
	Callback = function()
loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()

    end
})

Tab:AddButton({
	Name = "空情",
	Callback = function()
loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8628/%E9%9D%99?sign=uxlt7ravTFmP3TZLNgN7zImLHxJWhH93SEbKgFA_PRc%3D%3A0"))()
    end
})

Tab:AddButton({
	Name = "浮萍中心",
	Callback = function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\69\55\97\57\84\56\65\109\34\41\40\41\10")()
	end
})
	
	Tab:AddButton({
	Name = "『K1S』脚本",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/DCGzQ6iY"))()
	end
})

	local Tab = Window:MakeTab({
	Name = "蜂群模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "外国人的 丁汉化",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/jjding/main/%E4%B8%81%E4%B8%81%E8%9C%82%E7%BE%A4%E6%A8%A1%E6%8B%9F%E5%99%A8.txt"))()
	end
})

Tab:AddButton({
	Name = "蜂群模拟器最强",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/rhnrn/main/%E8%9C%82%E7%BE%A4%E8%84%9A%E6%9C%ACato%E6%B1%89%E5%8C%96.txt"))()
	end
})

Tab:AddButton({
	Name = "蜂群模拟器1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
	end
})

Tab:AddButton({
	Name = "蜂群模拟器2自动收集",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/max0mind/lua/main/loader.lua'))()
	end
})

local Tab = Window:MakeTab({
	Name = "小偷模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "小偷模拟器",
	Callback = function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/adrician/Thief-Simulator---GUI/main/Thief%20sim.lua"),true))()
	end
})

local Tab = Window:MakeTab({
	Name = "寻宝模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false

})

Tab:AddButton({
	Name = "丁丁自制",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/gghb/main/%E4%B8%81%E4%B8%81%E5%AF%BB%E5%AE%9D.txt"))()
	end
})

Tab:AddButton({
	Name = "霖溺自制",
	Callback = function()
	loadstring(game:HttpGet("https://shz.al/~MKS"))()
	end
})

local Tab = Window:MakeTab({
	Name = "法宝模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "法宝模拟器汉化",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/zhanghuihuihuil/Script/main/%E6%B3%95%E5%AE%9D%E6%A8%A1%E6%8B%9F%E5%99%A8%E6%B1%89%E5%8C%96'))()
	end
})

Tab:AddButton({
	Name = "法宝模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/9bGpv4H3/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "一路向西",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "一路向西无后坐力超级射速，无限子弹",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
	end
})

Tab:AddButton({
	Name = "一路向西1",
	Callback = function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound"),true))()
	end
})

Tab:AddButton({
	Name = "一路向西2",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/q08owYGG/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "餐厅大亨",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false

})

Tab:AddButton({
	Name = "餐厅大亨无限资金",
	Callback = function()
	loadstring(game:HttpGet("https://shz.al/~zkzkzisKAKAKK"))()
	end
})

Tab:AddButton({
	Name = "餐厅大亨1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()
	end
})

Tab:AddButton({
	Name = "餐厅大亨2",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "河北唐县",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "河北唐县1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
	end
})

Tab:AddButton({
	Name = "河北唐县2",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/s20nni0h/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "火箭发射模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "火箭发射1",
	Callback = function()
	loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A8.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()
	end
})

Tab:AddButton({
	Name = "火箭发射2",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
	end
})

local Tab = Window:MakeTab({
	Name = "模仿者",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "模仿者1 ",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()
	end
})

Tab:AddButton({
	Name = "模仿者2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()
	end
})

local Tab = Window:MakeTab({
	Name = "自然灾害模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "自然灾害丁丁😋😋",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ghb/main/%E4%B8%81%E4%B8%81%E8%87%AA%E7%84%B6%E7%81%BE%E5%AE%B3.txt"))()
	end
})

Tab:AddButton({
	Name = "自然灾害1",
	Callback = function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
	end
})

Tab:AddButton({
	Name = "自然灾害2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
	end
})

Tab:AddButton({
	Name = "自然灾害3",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
	end
})

local Tab = Window:MakeTab({
	Name = "doors 门 刷物",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "剪刀",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
	end
})

Tab:AddButton({
	Name = "脚本doors",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/whXp1Ca2"))()
  	end    
})

local Tab = Window:MakeTab({
  Name = "DOORS刷怪变怪",
  Icon = "rbxassetid://16060333448",
  PremiumOnly = false
})

Tab:AddButton({
  Name = "刷怪菜单",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
  end
})

Tab:AddButton({
	Name = "DOORS变身脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
end
}) 

local Tab = Window:MakeTab({
	Name = "进击的僵尸",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "进击的僵尸",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
  end
})

Tab:AddButton({
  Name = "自瞄",
  Callback = function ()
  loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
  end
})

local Tab = Window:MakeTab({
	Name = "伐木大亨2",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "丁丁与参天『加载时间较长』",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/kdmd/main/%E4%B8%81%E4%B8%81%E4%B8%8E%E5%8F%82%E5%A4%A9%20%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A8.txt"))()
  end
 })
 
Tab:AddButton({
  Name = "伐木大亨2lua ware汉化",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()
   end
 })


Tab:AddButton({
  Name = "伐木大亨2最强",
  Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
  end
 })
 
 Tab:AddButton({
  Name = "伐木大亨2 1",
  Callback = function ()loadstring(game:HttpGet("https://pastebin.com/raw/Q7seVBTV"))()
  end
  })
  
  Tab:AddButton({
  Name = "伐木大亨2  2",
  Callback = function ()
  loadstring(game:HttpGet('https://getexploits.com/key-system/',true))('https://da.com/936657404291084298/1006220505583460352/Script.txt')
  end
})

Tab:AddButton({
  Name = "伐木大亨2  3",
  Callback = function ()
  loadstring(game:HttpGet(("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT"), true))()
  end
 })
 
  Tab:AddButton({
  Name = "伐木大亨2  4",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Kavo-Ui/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A82.lua", true))()
  end
 })
 
 local Tab = Window:MakeTab({
	Name = "内脏与黑火药",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})
 
 Tab:AddButton({
	Name = "茗月清风 可能会被删库",
	Callback = function()
	loadstring(game:HttpGet(("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\120\99\115\114\49\49\52\53\49\52\47\115\120\99\115\114\49\49\52\53\49\52\49\47\109\97\105\110\47\115\120\99\115\114\49\51\52\56\52\56\52\56\56\46\108\117\97"),true))()
	end
})

local Tab = Window:MakeTab({
	Name = "汽车经销大亨",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "汽车经销大亨1",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/5o594Q0i/raw"))()
	end
})

Tab:AddButton({
	Name = "汽车经销大亨2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
	end
})

Tab:AddButton({
	Name = "汽车经销大亨3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/Car%20Dealership%20Tycoon.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "兵工厂",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "兵工厂1",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
	end
})

Tab:AddButton({
	Name = "兵工厂2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
	end
})

Tab:AddButton({
	Name = "兵工厂3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Arsenal/MainFile"))()
	end
})

Tab:AddButton({
	Name = "兵工厂4",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/2YdrWHxV/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "超级足球联赛",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "超级足球联赛1",
	Callback = function()
	loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8fdf7c482d3b3d108ccdb282a7fc35e2.lua"))()
	end
})

Tab:AddButton({
	Name = "超级足球联赛2",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/neo")()
	end
})

local Tab = Window:MakeTab({
	Name = "钓鱼模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "钓鱼模拟器1",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/reddythedev/Reddy-Hub/main/_Loader'))()
	end
})

Tab:AddButton({
	Name = "钓鱼模拟器2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/SRM-Scripts/main/Bebedi9960/SRMHub"))()
	end
})

Tab:AddButton({
	Name = "钓鱼模拟器3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ggghjn/main/%E4%B8%81%E4%B8%81%E9%92%93%E9%B1%BC%E6%A8%A1%E6%8B%9F%E5%99%A8.txt"))()
	end
})

local Tab = Window:MakeTab({
	Name = "战争大亨",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "战争大亨1",
	Callback = function()
	loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
	end
})

Tab:AddButton({
	Name = "狼脚本",
	Callback = function()
	loadstring(game:HttpGet("https://shz.al/~WarTycoon"))()
	end
})

local Tab = Window:MakeTab({
	Name = "BF",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "BF『HOHO脚本』1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFreeV3.lua"))()
	end
})

Tab:AddButton({
	Name = "BF『HOHO脚本』2",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	end
})

Tab:AddButton({
	Name = "超强",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
	end
})

Tab:AddButton({
	Name = "找的",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptsExploit/Blox-Fruits/main/Ripper%20M"))()
	end
})

Tab:AddButton({
	Name = " bf 自动箱子",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
	end
})

Tab:AddButton({
	Name = "BF 『汉化』",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()
	end
})

Tab:AddButton({
	Name = "BF『最强』",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AkiraNus/UniquehubKak/main/FreeCr.Xenonhub"))()
	end
})

Tab:AddButton({
	Name = "bf 刷怪",
	Callback = function()
	loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583'))()
	end
})

Tab:AddButton({
	Name = "自动升级",
	Callback = function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
	end
})

local Tab = Window:MakeTab({
	Name = "动感星期五",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "动感星期五1",
	Callback = function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
	end
})

Tab:AddButton({
	Name = "动感星期五2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
	end
})

Tab:AddButton({
	Name = "动感星期五3",
	Callback = function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
	end
})

local Tab = Window:MakeTab({
	Name = "监狱人生",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "丁丁自制传送",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/chvv/main/%E4%B8%81%E4%B8%81%E7%9B%91%E7%8B%B1%E4%BA%BA%E7%94%9F%E4%BC%A0%E9%80%81%20%20.txt"))()
  end
 })
 
 Tab:AddButton({
  Name = "手里剑秒杀",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  end
 })
 
Tab:AddButton({
	Name = "监狱人生1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
	end
})

Tab:AddButton({
	Name = "监狱人生2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/gjbde/main/%E4%B8%81%E4%B8%81%E7%9B%91%E7%8B%B1%E4%BA%BA%E7%94%9F.txt"))()
	end
})

Tab:AddButton({
	Name = "监狱人生3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "杀手于警长",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "杀手与警长",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/yadbPQUm",true))()
	end
})

local Tab = Window:MakeTab({
	Name = "巴掌模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "自动刷巴掌",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
	end
})

Tab:AddButton({
	Name = "巴掌模拟器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
	end
})

Tab:AddButton({
	Name = "常用功能",
	Callback = function()
	loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
	end
})

Tab:AddButton({
	Name = "巴掌模拟器2",
	Callback = function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
	end
})

local Tab = Window:MakeTab({
	Name = "51区",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "51区",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Saktk-In-Area51/main/Area51", true))()
	end
})

local Tab = Window:MakeTab({
	Name = "短信模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "短信模拟器",
	Callback = function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/9hxkxUZ5'),true))()
	end
})

local Tab = Window:MakeTab({
	Name = "克隆大亨",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "克隆大亨",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/RobloxStuff/main/CT-Destroyer"))()
	end
})

local Tab = Window:MakeTab({
	Name = "刀刃球",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "丁丁刀刃球",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ghbdrc/main/%E4%B8%81%E4%B8%81%E5%88%80%E5%88%83%E7%90%83.txt"))()
	end
})

Tab:AddButton({
	Name = "刀刃球1",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
	end
})

Tab:AddButton({
	Name = "刀刃球2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/HKLua/Balls/main/DawnLoader.lua"))()
	end
})

Tab:AddButton({
	Name = "刀刃球3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
	end
})

Tab:AddButton({
	Name = "刀刃球4",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Neoncat765/Neon.C-Hub-X/main/UnknownVersion"))()
	end
})

Tab:AddButton({
	Name = "刀刃球5",
	Callback = function()
	local a,b,c,d=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,"https://shz.al/~NeoV4"c(a and b, "Your Executor does not support.")a(b({Url=d,Method="GET"}).Body)()
	end
})

Tab:AddButton({
	Name = "刀刃球6",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/HKLua/Balls/main/DawnLoader.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "战斗勇士",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "战斗勇士1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
	end
})

Tab:AddButton({
	Name = "战斗勇士2",
	Callback = function()
	loadstring(game:HttpGet("https://paste.gg/p/anonymous/697fc3cad5f743508318cb7399e89432/files/b5923e52edab4e5c91e46b74563d0ae8/raw"))()
	end
})

Tab:AddButton({
	Name = "战斗勇士无限体力",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/rhnrn/main/%E6%88%98%E6%96%97%E5%8B%87%E5%A3%AB.txt"))()
	end
})

local Tab = Window:MakeTab({
	Name = "背上只因剑",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "只因剑1",
	Callback = function()
	loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
	end
})

Tab:AddButton({
	Name = "只因剑2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
	end
})

local Tab = Window:MakeTab({
	Name = "彩虹朋友",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "彩虹朋友1",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/XoNv04vR/raw"))()
	end
})

Tab:AddButton({
	Name = "彩虹朋友2",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
	end
})

local Tab = Window:MakeTab({
	Name = "破坏者谜团2",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "破坏者谜团2  1",
	Callback = function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
	end
})

Tab:AddButton({
	Name = "破坏者谜团2  1",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	end
})

Tab:AddButton({
	Name = "破坏者谜团2透视谁是警长",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
	end
})

local Tab = Window:MakeTab({
	Name = "EVAdE  大逃脱",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "大逃脱1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PepesGH1/stuff/main/evadeloader.lua"))()
	end
})

Tab:AddButton({
	Name = "大逃脱2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E4%BA%91%E8%84%9A%E6%9C%ACEvade.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "国王遗产",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "国王遗产1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/scripts/main/kinglegacy.lua"))()
	end
})

Tab:AddButton({
	Name = "国王遗产2",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/legacy"))()
	end
})

Tab:AddButton({
	Name = "国王遗产3",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/King%20Leagacy"))()
	end
})

local Tab = Window:MakeTab({
	Name = "造船寻宝",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "造船寻宝1",
	Callback = function()
	loadstring(game:HttpGet("http://dirtgui.xyz/BuildABoat.lua",true))()
	end
})

Tab:AddButton({
	Name = "造船寻宝2",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/hvV1c4nO/raw"))()
	end
})

Tab:AddButton({
	Name = "复制别人的船",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/autobuild.txt"))()
	end
})

Tab:AddButton({
	Name = "刷钱",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
	end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "鲨口求生1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
	end
})


local Tab = Window:MakeTab({
	Name = "破坏模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "破坏模拟器1",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/AquaModz/DestructionSIMModded/main/DestructionSimAqua.lua'))()
	end
})

local Tab = Window:MakeTab({
	Name = "驾驶帝国",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "驾驶帝国1",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
	end
})

Tab:AddButton({
	Name = "驾驶帝国2",
	Callback = function()
	loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
	end
})

local Tab = Window:MakeTab({
	Name = "动物进化",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "动物进化1",
	Callback = function()
	game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("Lv", 999999999)
	end
})

Tab:AddButton({
	Name = "动物进化2",
	Callback = function()
	game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("Xp", 999999999)
	end
})

Tab:AddButton({
	Name = "动物进化3",
	Callback = function()
	game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("DmgLvl", 999999999)
	end
})

Tab:AddButton({
	Name = "动物进化4",
	Callback = function()
	game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("CritDmgLvl", 999999999)
	end
})

local Tab = Window:MakeTab({
	Name = "飞行比赛",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "飞行比赛1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NightCoded/script/main/fly-race.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "超级大力士模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "超级大力士模拟器1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
	end
})

Tab:AddButton({
	Name = "超级大力士模拟器2",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "举重模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "举重模拟器1",
	Callback = function()
	loadstring(game:HttpGet("https://pastefy.app/KSriAk53/raw"))()
	end
})

local Tab = Window:MakeTab({
	Name = "拳击模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "拳击模拟器1",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/T4O1SA3q/raw"))()
   end
 })
 
 Tab:AddButton({
  Name = "拳击模拟器2",
  Callback = function ()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))()
  end
 })
 
 local Tab = Window:MakeTab({
	Name = "奎尔湖",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "奎尔湖",
  Callback = function ()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))()
   end
 })
 
 local Tab = Window:MakeTab({
	Name = "我的餐厅",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})
 
 
 Tab:AddButton({
  Name = "我的餐厅",
  Callback = function ()
  loadstring(game:HttpGet("http://void-scripts.com/Scripts/myRest.lua"))()
   end
 })

Tab:AddButton({
  Name = "我的餐厅",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/5R1Ch6kk/raw"))()
   end
 })
 
local Tab = Window:MakeTab({
	Name = "旗帜战争",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "旗帜战争1",
  Callback = function ()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Flag%20Wars.txt'))()
  end
 })
 
 Tab:AddButton({
  Name = "旗帜战争2",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/otEg6PJV/raw"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "COOP 合作社",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "丁丁与参天",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/chvv/main/%E4%B8%81%E4%B8%81coop.txt"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "冲突之海",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "丁丁与参天",
  Callback = function ()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/dhh/main/%E4%B8%81%E4%B8%81%E5%86%B2%E7%AA%81%E4%B9%8B%E6%B5%B7.txt"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "怪兽宇宙",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})
 
 Tab:AddButton({
  Name = "怪兽宇宙",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/oRWEIEcJ/raw"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "恐怖奶奶",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "恐怖奶奶1",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/o688Jvmn/raw"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "奶酪逃亡",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "奶酪逃亡1",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/IIpzN8f5/raw"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "极速奔驰",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "极速奔驰1",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/Y7607jwb/raw"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "射击光束模拟器",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "射击光束模拟器",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/51yMuaCc/raw"))()
  end
 })
 
local Tab = Window:MakeTab({
	Name = "合并滴管",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "合并滴管",
  Callback = function ()
  loadstring(game:HttpGet("https://pastefy.app/NpBrBCqM/raw"))()
  end
 })