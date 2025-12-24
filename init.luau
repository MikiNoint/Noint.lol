--[[
    Loader from noint.lol/loader.luau
    License: MIT
    Author: Miki
]]

-- Fix Enviromment ---

cloneref = cloneref or function(i) return i end;
getconstant = getconstant or debug.getconstant;
getconstants = getconstants or debug.getconstants
getupvalue = getupvalue or debug.getupvalue;
getupvalues = getupvalues or debug.getupvalues;
gethui = gethui or get_hidden_gui;

----------------------
local DrawingText;

if Drawing then
	Drawing.clear();

	DrawingText = Drawing.new("Text")

	DrawingText.Visible = true
	DrawingText.Transparency = 1
	DrawingText.Color = Color3.fromRGB(255,255,255)
	DrawingText.Size = 18
	DrawingText.Outline = true
	DrawingText.OutlineColor = Color3.fromRGB(255, 119, 119)
	DrawingText.Position = Vector2.new(25,25)
	DrawingText.Font = Drawing.Fonts.System

	DrawingText.Text = "Noint.lol - Connecting to server";
end;

local main_env = getfenv();
local hiddengui = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui());
local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
	
local CreateUI = function(scriot_id: string)
	local StartMenu = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local MainLabel = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local DescLabel = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local TextBox = Instance.new("TextBox")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local GetKeyButton = Instance.new("TextButton")
	local UIStroke_3 = Instance.new("UIStroke")
	local UICorner_3 = Instance.new("UICorner")
	local RedeemButton = Instance.new("TextButton")
	local UIStroke_4 = Instance.new("UIStroke")
	local UICorner_4 = Instance.new("UICorner")

	StartMenu.Name = "StartMenu"
	StartMenu.Parent = hiddengui or cloneref(game:FindFirstChild('CoreGui'))
	StartMenu.ResetOnSpawn = false
	StartMenu.IgnoreGuiInset = true;

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = StartMenu
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 350, 0, 200)

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = MainFrame

	UIStroke.Transparency = 0.800
	UIStroke.Color = Color3.fromRGB(113, 113, 113)
	UIStroke.Parent = MainFrame

	MainLabel.Name = "MainLabel"
	MainLabel.Parent = MainFrame
	MainLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainLabel.BackgroundTransparency = 1.000
	MainLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainLabel.BorderSizePixel = 0
	MainLabel.Position = UDim2.new(0, 10, 0, 10)
	MainLabel.Size = UDim2.new(0.5, 0, 0, 35)
	MainLabel.Font = Enum.Font.GothamBold
	MainLabel.Text = "NOINT"
	MainLabel.TextColor3 = Color3.fromRGB(255, 105, 92)
	MainLabel.TextSize = 48.000
	MainLabel.TextXAlignment = Enum.TextXAlignment.Left

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(126, 126, 126))}
	UIGradient.Rotation = 90
	UIGradient.Parent = MainLabel

	DescLabel.Name = "DescLabel"
	DescLabel.Parent = MainFrame
	DescLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DescLabel.BackgroundTransparency = 1.000
	DescLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DescLabel.BorderSizePixel = 0
	DescLabel.Position = UDim2.new(0, 10, 0, 45)
	DescLabel.Size = UDim2.new(1, -20, 0, 65)
	DescLabel.Font = Enum.Font.GothamBold
	DescLabel.Text = "Please enter a valid license key to access Noint.lol, We recommended you redeem the key on discord and get script for security reason because Anti-Cheat might detect you while you're entering key."
	DescLabel.TextColor3 = Color3.fromRGB(255, 105, 92)
	DescLabel.TextSize = 12.000
	DescLabel.TextTransparency = 0.500
	DescLabel.TextWrapped = true
	DescLabel.TextXAlignment = Enum.TextXAlignment.Left
	DescLabel.TextYAlignment = Enum.TextYAlignment.Top

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(126, 126, 126))}
	UIGradient_2.Rotation = 90
	UIGradient_2.Parent = DescLabel

	TextBox.Parent = MainFrame
	TextBox.AnchorPoint = Vector2.new(0.5, 1)
	TextBox.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.5, 0, 1, -50)
	TextBox.Size = UDim2.new(1, -30, 0, 35)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.GothamMedium
	TextBox.PlaceholderText = "License Key"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 12.000
	TextBox.TextTransparency = 0.500

	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = TextBox

	UIStroke_2.Transparency = 0.800
	UIStroke_2.Color = Color3.fromRGB(113, 113, 113)
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Parent = TextBox

	GetKeyButton.Name = "GetKeyButton"
	GetKeyButton.Parent = MainFrame
	GetKeyButton.AnchorPoint = Vector2.new(0.5, 1)
	GetKeyButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	GetKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKeyButton.BorderSizePixel = 0
	GetKeyButton.Position = UDim2.new(0.25, 0, 1, -10)
	GetKeyButton.Size = UDim2.new(0, 150, 0, 30)
	GetKeyButton.Font = Enum.Font.GothamMedium
	GetKeyButton.Text = "Get Key"
	GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetKeyButton.TextSize = 14.000
	GetKeyButton.TextTransparency = 0.300

	UIStroke_3.Transparency = 0.800
	UIStroke_3.Color = Color3.fromRGB(113, 113, 113)
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Parent = GetKeyButton

	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = GetKeyButton

	RedeemButton.Name = "RedeemButton"
	RedeemButton.Parent = MainFrame
	RedeemButton.AnchorPoint = Vector2.new(0.5, 1)
	RedeemButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	RedeemButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RedeemButton.BorderSizePixel = 0
	RedeemButton.Position = UDim2.new(0.75, 0, 1, -10)
	RedeemButton.Size = UDim2.new(0, 150, 0, 30)
	RedeemButton.Font = Enum.Font.GothamMedium
	RedeemButton.Text = "Log-In"
	RedeemButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	RedeemButton.TextSize = 14.000
	RedeemButton.TextTransparency = 0.300

	UIStroke_4.Transparency = 0.800
	UIStroke_4.Color = Color3.fromRGB(113, 113, 113)
	UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_4.Parent = RedeemButton

	UICorner_4.CornerRadius = UDim.new(0, 3)
	UICorner_4.Parent = RedeemButton
	
	GetKeyButton.Activated:Connect(function()
		(setclipboard or toclipbaord)("https://noint.lol/#plans");
	end);
	
	local Yield = Instance.new('BindableEvent');
	local RateLimit = false;
	
	RedeemButton.Activated:Connect(function()
		if TextBox.Text:byte() and not RateLimit then
			RateLimit = true;
			
			local Key = TextBox.Text;
			
			local status = api.check_key(Key);
			
			if (status.code == "KEY_VALID") then
				TextBox.Text = "SUCCESS";
				
				main_env.script_key = Key;
                script_key = Key;
                getfenv().script_key = Key;
				
				if getgenv then
					getgenv().script_key = Key;
				end;
				
                task.wait(1);

				Yield:Fire(Key);
				
				return;
			elseif status.code == "KEY_HWID_LOCKED" then
				TextBox.Text = "HWID MISMATCH";
				task.wait(2);
			elseif status.code == "KEY_INCORRECT" then
				TextBox.Text = "INCORRECT LICENSE KEY";
				task.wait(2)
			elseif status.code == "KEY_EXPIRED" then
				TextBox.Text = "LICENSE KEY EXPIRED";
				task.wait(2)
			elseif status.code == "KEY_BANNED" then
				TextBox.Text = "YOU'RE BANNED FROM NOINT";
				task.wait(2)
			elseif status.code == "KEY_INVALID" then
				TextBox.Text = "INVALID LICENSE KEY";
				task.wait(2)
			end;

            TextBox.Text = "";
			
			RateLimit = false;
		end;
	end);
	
	Yield.Event:Wait();

    task.wait(0.1);

	Yield:Destroy();
    StartMenu:Destroy();
end;

local HttpService = cloneref(game:GetService('HttpService'))
local Endpoint = game:HttpGet("https://noint.lol/content.json");
local SoftwareDatabase = HttpService:JSONDecode(Endpoint);
local GameDatabase = SoftwareDatabase[game.GameId] or SoftwareDatabase[tostring(game.GameId)];
local LocalPlayer = cloneref(game:GetService('Players')).LocalPlayer;

if DrawingText then
	DrawingText.Text = "Noint.lol - Loaded Content";
	task.wait(0.5);
end;

if GameDatabase then
	local IsExternal = debug.info(writefile , 's') ~= "[C]";

	if not GameDatabase.ExternalSupport and IsExternal then
		if Drawing and DrawingText then
			Drawing.clear();
		end;

		return LocalPlayer:Kick("Error: Code 001\nScript isn't support your executor!");
	end;

	local Loader = string.format("https://api.luarmor.net/files/v3/loaders/%s.lua",GameDatabase.Hash);

	if not script_key then
        if Drawing and DrawingText then
			Drawing.clear();
		end;

        local file = "NointLicense.txt";
        api.script_id = GameDatabase.Hash;

        if isfile(file) then
            local license_key = readfile(file);

            if api.check_key(license_key).code == "KEY_VALID" then
                main_env.script_key = license_key;
                script_key = license_key;
                getfenv().script_key = license_key;
				
				if getgenv then
					getgenv().script_key = license_key;
				end;
            end;
        end;

        if not script_key then
            CreateUI(GameDatabase.Hash);
        end;

        writefile(file , tostring(script_key));
	end;

	if DrawingText then
		DrawingText.Text = "Loading script for "..tostring(GameDatabase.Name);
		task.wait(0.5);
	end;

	if Drawing and DrawingText then
		Drawing.clear();
	end;

	local Function = loadstring(game:HttpGet(Loader));

	local Success , API = pcall(Function);

	task.delay(15, function()
		if Drawing and DrawingText then
			Drawing.clear();
		end;
	end);

	if not Success then
		pcall(function()
			if Drawing then
				Drawing.clear();

				local Text = Drawing.new("Text")

				Text.Visible = true
				Text.Transparency = 1
				Text.Color = Color3.fromRGB(255,255,255)
				Text.Size = 25
				Text.Outline = true
				Text.OutlineColor = Color3.fromRGB(255, 119, 119)
				Text.Position = Vector2.new(25,25)
				Text.Font = Drawing.Fonts.System

				Text.Text = "An error while loading Noint.lol (please contact support)\nMessage: "..tostring(API);
			end;
		end);

		return false;
	else
		return API;
	end;
else
	if Drawing and DrawingText then
		Drawing.clear();
	end;

	return LocalPlayer:Kick("Error: Code 006\nNoint.lol has error!");
end;
