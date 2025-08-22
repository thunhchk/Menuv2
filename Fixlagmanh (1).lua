-- discord.gg/mMhHqArf
----- on u


shared.LoaderTitle = "Script thnh gim lag";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        20
    },
    [3] = {
        3,
        50
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "Loading...",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(0, 0, 0),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(0, 0, 0),
            LoaderSplash = Color3.fromRGB(255, 255, 255)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            20
        },
        [3] = {
            3,
            50
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://103691718434653",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Youtube: thnh Roblox hack",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local v658 = v420.__index;
--             local v659 = v420.__newindex;
--             v420.__index = function(v759, v760)
--                 if ((v760 == "debug") or (v760 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v658(v759, v760);
--             end;
--             v420.__newindex = function(v761, v762, v763)
--                 if ((v762 == "debug") or (v762 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v659(v761, v762, v763);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local v568 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for v662, v663 in ipairs(v568) do
--                 local v664, v665 = pcall(function()
--                     return _G[v663];
--                 end);
--                 if (v664 and v665) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local v569 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for v666, v667 in ipairs(v569) do
--                 if v667 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);
-- Script to bi Qminh(kenny)

-- Notification khi chy script
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "thnh gim lag",
        Text = " Fig lag Done | Script thnh Roblox hack!",
        Duration = 5
    })
end)


-- Script to bi Qminh(kenny)
-- fps 7 màu
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

pcall(function() setfpscap(120) end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RainbowFPS"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 1000
screenGui.IgnoreGuiInset = true
screenGui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 60)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundTransparency = 1
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.5, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Font = Enum.Font.FredokaOne
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.TextStrokeTransparency = 0.2
textLabel.Text = "FPS: 0"
textLabel.Parent = frame

local authorLabel = Instance.new("TextLabel")
authorLabel.Size = UDim2.new(1, 0, 0.5, 0)
authorLabel.Position = UDim2.new(0, 0, 0.5, 0)
authorLabel.Font = Enum.Font.FredokaOne
authorLabel.TextScaled = true
authorLabel.BackgroundTransparency = 1
authorLabel.TextStrokeTransparency = 0.5
authorLabel.TextColor3 = Color3.new(1, 1, 1)
authorLabel.Text = "Made by Qminh(kenny)"
authorLabel.Parent = frame

task.spawn(function()
    local hue = 0
    while true do
        hue = (hue + 0.005) % 1
        local color = Color3.fromHSV(hue, 1, 1)
        textLabel.TextColor3 = color
        authorLabel.TextColor3 = color
        RunService.RenderStepped:Wait()
    end
end)

local frameCount = 0
local lastUpdate = tick()
RunService.RenderStepped:Connect(function()
    frameCount = frameCount + 1
    local now = tick()
    if now - lastUpdate >= 1 then
        local fps = math.floor(frameCount / (now - lastUpdate))
        textLabel.Text = "FPS: " .. tostring(fps)
        frameCount = 0
        lastUpdate = now
    end
end)

-- Made by Qminh(kenny) - Anti Lag Script for Blox Fruits
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
for _, v in ipairs(workspace:GetDescendants()) do
    if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Explosion") then
        v:Destroy()
    elseif v:IsA("Decal") or v:IsA("Texture") then
        v.Transparency = 1
    end
end
Lighting.GlobalShadows = false
Lighting.FogEnd = 1000000
Lighting.Brightness = 1
for _, part in ipairs(workspace:GetDescendants()) do
    if part:IsA("MeshPart") or part:IsA("Part") then
        part.Material = Enum.Material.SmoothPlastic
        part.Reflectance = 0
    end
end
if Terrain then
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 1
end
settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
pcall(function() setfpscap(30) end)
for _, s in ipairs(game:GetDescendants()) do
    if s:IsA("Sound") and s.Looped then
        s.Volume = 0
    end
end
print(" Anti-Lag script activated! FPS boosted.")




-- Smooth & Stable Anti-Lag Script by Qminh(kenny)

local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

-- Ánh sáng ti u (không xóa, ch iu chnh)
Lighting.GlobalShadows = false
Lighting.FogEnd = 1e7
Lighting.Brightness = 1
Lighting.ClockTime = 14
Lighting.OutdoorAmbient = Color3.fromRGB(127,127,127)
Lighting.Ambient = Color3.fromRGB(127,127,127)

-- Ti u vt th (không xóa toàn b)
for _, obj in ipairs(workspace:GetDescendants()) do
    if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Explosion") or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles") then
        obj:Destroy()
    elseif obj:IsA("Decal") or obj:IsA("Texture") then
        obj.Transparency = 0.8
    elseif obj:IsA("MeshPart") or obj:IsA("Part") then
        obj.Material = Enum.Material.SmoothPlastic
        obj.Reflectance = 0
    end
end

-- Ti u nc và a hình
if Terrain then
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0.9
end

-- Gim cht lng va phi (gi c hình nh)
settings().Rendering.QualityLevel = Enum.QualityLevel.Level02

-- Gii hn FPS  n nh (nu máy yu nên  45)
pcall(function() setfpscap(60) end)

-- Tt âm thanh nn không cn thit
for _, s in ipairs(game:GetDescendants()) do
    if s:IsA("Sound") and s.Looped then
        s.Volume = 0.2
    end
end

--  Kt thúc
print(" Smooth + Stable Anti-Lag Activated - Made by Qminh(kenny)")


v14:Notify({
    Title = "thnh gim lag",
    Content = "loading success",
    Duration = 5
});