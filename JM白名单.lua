local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "blair",
   Icon = 0,
   LoadingTitle = "blair",
   LoadingSubtitle = "roblox- horror(Blair)",
   Theme = "DarkBlue",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   KeySystem = true,
   KeySettings = {
      Title = "blair",
      Subtitle = "验证系统",
      Note = "加入群聊看公告获取卡密 企鹅交流群:604133556",
      FileName = "horror",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"maoge"}
   }
})

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
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
LBL.Text = "Test"
LBL.TextColor3 = Color3.new(155, 155, 155)
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
	FpsLabel.Text = ("标准时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

OrionLib:MakeNotification({
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『roblox- horror(Blair)』"; Text ="核对用户ID中♧"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『roblox- horror(Blair)』"; Text ="用户ID核对完毕♣"; Duration = 4; })

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hun/main/jmlibrary1.lua"))();        
local win = ui:new("roblox- horror(Blair)")
--
local UITab1 = win:Tab("『信息』",'感谢您使用我自制脚本')

local about = UITab1:section("『作者信息』",false)

about:Label("roblox- horror(Blair)")
about:Label("作者QQ：774963388")
about:Label("QQ主群：604133556")
about:Label("作者：猫哥")
about:Label("进群发最新roblox- horror(Blair)")
about:Label("脚本持续更新中")

local about = UITab1:section("『玩家信息』",false)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())


local UITab2 = win:Tab("『公告』",'roblox- horror(Blair)')

local about = UITab2:section("『公告』",true)

                    Name = "正在开启反挂机请稍等...",
                    Content = "Akf 开启中...",
                    Time = 2
                })     
                
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      

OrionLib:MakeNotification({
                    Name = "开启成功",
                    Content = "AKF",
                    Time = 1
                })
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "blair", HidePremium = false, SaveConfig =true,IntroText="加载脚本", ConfigFolder = "文件存放名"})
local Tab = Window:MakeTab({
	Name = "主页",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("作者","猫哥")
Tab:AddParagraph("美丽动人的脚本脚本")


Tab:AddButton ({
	Name = "604133556",
	Callback = function ()
	 setclipboard("sudh")
	 OrionLib:MakeNotification({
                    Name = "信息",
                    Content = "复制请在粘贴板中查看",
                    Time = 2
                })
	end
})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
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
Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})

local Section = Tab:AddSection({
	Name = "以下为通用功能"
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

--初始化诅咒道具透视函数
local Cursed = {}
for _, CursedSpawns in ipairs(Workspace) do
	if CursedSpawns:IsA("Model") and CursedSpawns.Name == "Ouija Board" then
		Cursed = CursedSpawns
	end
	if CursedSpawns:IsA("Model") and CursedSpawns.Name == "SummoningCircle" then
		Cursed = CursedSpawns
	end
	if CursedSpawns:IsA("Tool") and CursedSpawns.Name == "Tarot Cards" then
		Cursed = CursedSpawns
	end
end
--初始化诅咒道具透视函数

--初始化互动透视
local EMFBillboardGuiDescendantAdded
function EMFBillboardGui(descendant)
	if descendant:IsA("Part") and descendant.Name == "EMFPart" then
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")

        BillboardGui.Name = "EMFBillboardGui"
		BillboardGui.Parent = descendant
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 40, 0, 20)

        TextLabel.Parent = BillboardGui
		TextLabel.Text = "互动"
        TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(0, 40, 0, 20)
        TextLabel.TextColor3 = Color3.fromRGB(70, 255, 0)
		TextLabel.TextSize = 10
	end
end
--初始化互动透视

local Function = Window:CreateTab("功能", "book-check")

--证据
local Section = Function:CreateSection("证据")
local EMFCountLabel = Function:CreateParagraph({Title = "互动(电磁场读取)", Content = "出现次数:未知"})
local Thermometer = Function:CreateParagraph({Title = "冻结温度(一直获取 = 没有冻结温度)", Content = "获取中..."})
local Ouijabox = Function:CreateParagraph({Title = "精灵盒(道具需要在鬼房)", Content = "捕捉中..."})
--证据

--玩家
local Section = Function:CreateSection("玩家")
local Collision = Function:CreateToggle({
    Name = "穿门",
    CurrentValue = false,
    Flag = "切换按钮",
    Callback = function(Value)
        for _, Doors in ipairs(Workspace) do
            if Doors:IsA("Folder") and Doors.Name == "Doors" then
            local ModelDoors = Doors:GetDescendants()
		        for _, ModelDoor in ipairs(ModelDoors) do
		            if ModelDoor:IsA("MeshPart") or ModelDoor:IsA("Part") then
			            if ModelDoor.Name == "RightDoor" or ModelDoor.Name == "LeftDoor" or ModelDoor.Name == "Door"  then
					        if ModelDoor.CanCollide then
						        ModelDoor.CanCollide = false
					        	else
					            ModelDoor.CanCollide = true
					        end
			        	end
		        	end
		        end
            end
        end
    end,
})
local Light = Function:CreateButton({
    Name = "夜视",
    Callback = function()
        Lighting.Brightness = 2
        Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        Lighting.GlobalShadows = false
        Lighting.ClockTime = 14
        Lighting.FogEnd = 100000
        Lighting.FogStart = 0
        Lighting.Atmosphere:Destroy()
    end,
})
local SpeedPlayer = Function:CreateToggle({
   Name = "稳定速度+无限体力(BUG利用)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        if Value then
            for _, LocalPlayer in ipairs(LocalPlayer:GetChildren()) do
	            if LocalPlayer.Name == "Dead" then
					LocalPlayer.Value = true
	            end
            end
            Rayfield:Notify({
               Title = "告知",
                Content = "开启后加速无法关闭，除非游戏重置移动数度",
                Duration = 5,
                Image = "triangle-alert",
            })
			else
            for _, LocalPlayer in ipairs(LocalPlayer:GetChildren()) do
	            if LocalPlayer.Name == "Dead" then
					LocalPlayer.Value = false
	            end
            end
		end
   end,
})
--玩家

--透视
local Section = Function:CreateSection("透视")
local Ghost = Function:CreateToggle({
   Name = "幽灵",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        if GhostLock then
            GhostLock = false
            GhostESP()
            else
            GhostLock = true
        end
   end,
})
local EMF = Function:CreateToggle({
   Name = "互动",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        if Value then
			EMFBillboardGuiDescendantAdded = workspace.Map.DescendantAdded:Connect(EMFBillboardGui)
			else
			EMFBillboardGuiDescendantAdded:Disconnect()
		end
   end,
})
local Cursed = Function:CreateToggle({
   Name = "诅咒道具",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        if Value then
			local CursedHighlight = Cursed:FindFirstChild("CursedESP")
            if not CursedHighlight then
	            local Highlight = Instance.new("Highlight")
                Highlight.Name = "CursedESP"
                Highlight.Parent = Cursed
                Highlight.FillTransparency = 1
                Highlight.OutlineColor = Color3.fromRGB(255, 170, 127)
                Highlight.OutlineTransparency = 0.2
            end
			else
			local CursedHighlightDestroy = Cursed:FindFirstChild("CursedESP")
            if CursedHighlightDestroy then
				CursedHighlightDestroy:Destroy()
			end
		end
   end,
})
local VoodooDoll = Function:CreateToggle({
   Name = "巫毒娃娃",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        if Value then
			local VoodooDoll = Workspace1.VoodooDoll
            local VoodooDollHighlightRepeat = VoodooDoll:FindFirstChild("VoodooDollESP")
            if not VoodooDollHighlightRepeat then
                local Highlight = Instance.new("Highlight")
                Highlight.Name = "VoodooDollESP"
                Highlight.Parent = VoodooDoll
                Highlight.FillTransparency = 1
                Highlight.OutlineColor = Color3.fromRGB(0,255,255)
                Highlight.OutlineTransparency = 0.5
            end
			else
			local VoodooDollDestroy = Workspace1.VoodooDoll
            local VoodooDollHighlightRepeatDestroy = VoodooDollDestroy:FindFirstChild("VoodooDollESP")
            if VoodooDollHighlightRepeatDestroy then
				VoodooDollHighlightRepeatDestroy:Destroy()
			end
		end
   end,
})
local Generators = Function:CreateToggle({
   Name = "发电机",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        if Value then
            local Generators = Workspace1.Map.Generators.GeneratorMesh
            local GeneratorsHighlightRepeat = Generators:FindFirstChild("GeneratorsESP")
            if not GeneratorsHighlightRepeat then
                local Highlight = Instance.new("Highlight")
                Highlight.Name = "GeneratorsESP"
                Highlight.Parent = Generators
                Highlight.FillTransparency = 1
                Highlight.OutlineColor = Color3.fromRGB(255, 255, 127)
                Highlight.OutlineTransparency = 0.3
            end
			else
			local GeneratorsDestroy = Workspace1.Map.Generators.GeneratorMesh
            local GeneratorsHighlightRepeatDestroy = GeneratorsDestroy:FindFirstChild("GeneratorsESP")
            if GeneratorsHighlightRepeatDestroy then
				GeneratorsHighlightRepeatDestroy:Destroy()
			end
		end
   end,
})
--透视

local Player = Window:CreateTab("防巡查(玩家加入记录)", "triangle-alert")
--初始化防巡查
local function onPlayerJoin(player)
    local playerName = "Name:" .. player.Name
	local playerId = "ID:" .. player.UserId
    local PlayersTitie = Player:CreateParagraph({Title = playerName, Content = playerId})
	Rayfield:Notify({
        Title = "玩家加入记录",
        Content = "有新玩家加入了本局，疑似巡查请注意演戏",
        Duration = 5,
        Image = "triangle-alert",
    })
end
Players.PlayerAdded:Connect(onPlayerJoin)
--初始化防巡查

--初始化EMF出现次数
local EMFCount = 0
function MapDescendantAdded(descendant)
	if descendant:IsA("Part") and descendant.Name == "EMFPart" then
	    EMFCount = EMFCount + 1
		local EMFMerge = "出现次数:" .. EMFCount
        EMFCountLabel:Set({Title = "互动(电磁场读取)", Content = EMFMerge})
	end
end
workspace.Map.DescendantAdded:Connect(MapDescendantAdded)
--初始化EMF出现次数

--初始化幽灵透视
function GhostESP()
	repeat
		for _, Ghost in ipairs(Workspace1:GetChildren()) do
			if Ghost.Name == "Ghost" and Ghost:IsA("Model") then
			    local GhostParts = Ghost:GetChildren()
				for _, GhostPart in ipairs(GhostParts) do
					if GhostPart:IsA("MeshPart") then
						local New = GhostPart:FindFirstChild("GhostESP")
						if not New then
							local boxHandleAdornment = Instance.new("BoxHandleAdornment")
                            boxHandleAdornment.Name = "GhostESP"
							boxHandleAdornment.Size = Vector3.new(1, 1, 1)
							boxHandleAdornment.AlwaysOnTop = true
							boxHandleAdornment.ZIndex = 5
							boxHandleAdornment.Parent = GhostPart
                            boxHandleAdornment.Adornee = GhostPart
							boxHandleAdornment.Transparency = 0.4
						end
					end
				end
			end
		end
		wait(1)
	until GhostLock
end
--初始化幽灵透视
--初始化精灵盒功能
local Spirit = workspace:GetDescendants()
local Name = "Spirit Box"
local Lock2 = false

function onchildAdded(child)
	if child:IsA("Sound") then
		local childName = string.lower(child.Name)
        Ouijabox:Set({Title = "精灵盒(道具需要在鬼房)", Content = childName})
        if Lock2 == false then
            Rayfield:Notify({
                Title = "精灵盒",
                Content = "精灵盒获取成功，请在界面内查看",
                Duration = 5,
                Image = "check",
            })
        end
        Lock2 = true
	end
end

for _, SpiritName in ipairs(Spirit) do
    if SpiritName.Name == Name and SpiritName:IsA("Tool") then
        local Handle = SpiritName:GetChildren()
		for _, HandleName in ipairs(Handle) do
			if HandleName.Name == "Handle" then
				HandleName.ChildAdded:Connect(onchildAdded)
			end
		end
    end
end
--初始化精灵盒功能
Rayfield:LoadConfiguration()
--初始化冻结温度功能
local Lock = false
repeat
    for _, workspaces in ipairs(Workspace) do
	    if workspaces.Name == "_____Temperature" then
		    if workspaces.Value < 0 and workspaces.Value > -3 then
			    local WorkspaceValue = tonumber(workspaces.Value)
			    Thermometer:Set({Title = "冻结温度(一直获取 = 没有冻结温度)", Content = WorkspaceValue})
				Rayfield:Notify({
                    Title = "冻结温度",
                    Content = "冻结温度获取成功，请在界面内查看",
                    Duration = 5,
                    Image = "check",
                })
				Lock = true
		    end
	    end
    end
	wait(1)
until Lock
--初始化冻结温度功能