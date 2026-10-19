-- Boss05_Vulcan.luau
-- Chest Raiders - Boss 5: Demonio del Volcan
local SS = game:GetService("ServerStorage")
local SCALE = 1 + (5-1)/9
local function p(parent,name,size,cf,color,mat)
    local part=Instance.new("Part")
    part.Name=name; part.Size=size*SCALE; part.CFrame=cf
    part.Color=color; part.Material=mat or Enum.Material.SmoothPlastic
    part.Anchored=true; part.Parent=parent; return part
end
local function w(parent,name,size,cf,color)
    local part=Instance.new("WedgePart")
    part.Name=name; part.Size=size*SCALE; part.CFrame=cf
    part.Color=color; part.Material=Enum.Material.SmoothPlastic
    part.Anchored=true; part.Parent=parent; return part
end
local RED=Color3.fromHex("#E84040")
local DARK=Color3.fromHex("#8E1F1F")
local ORANGE=Color3.fromHex("#FF6B00")
local GLOW=Color3.fromHex("#FFE600")
local BLACK=Color3.fromHex("#1A0000")
local model=Instance.new("Model")
model.Name="Boss_05_DemonioVolcan"
model.Parent=SS
-- Cuerpo
p(model,"Torso",Vector3.new(6,7,4),CFrame.new(0,7,0),RED)
p(model,"Head",Vector3.new(5,5,4),CFrame.new(0,13,0),RED)
-- Cuernos
w(model,"HornL",Vector3.new(1.5,4,1.5),CFrame.new(-2.5,16.5,0)*CFrame.Angles(0,0,math.rad(-20)),DARK)
w(model,"HornR",Vector3.new(1.5,4,1.5),CFrame.new(2.5,16.5,0)*CFrame.Angles(0,0,math.rad(20)),DARK)
-- Ojos
p(model,"EyeL",Vector3.new(1.2,1.2,0.3),CFrame.new(-1.2,13.5,-2.1),GLOW,Enum.Material.Neon)
p(model,"EyeR",Vector3.new(1.2,1.2,0.3),CFrame.new(1.2,13.5,-2.1),GLOW,Enum.Material.Neon)
-- Brazos
p(model,"ArmL",Vector3.new(2.5,6,2.5),CFrame.new(-4.5,8,0)*CFrame.Angles(0,0,math.rad(15)),DARK)
p(model,"ArmR",Vector3.new(2.5,6,2.5),CFrame.new(4.5,8,0)*CFrame.Angles(0,0,math.rad(-15)),DARK)
-- Manos de fuego
p(model,"HandL",Vector3.new(3,3,3),CFrame.new(-5.5,4.5,0),ORANGE,Enum.Material.Neon)
p(model,"HandR",Vector3.new(3,3,3),CFrame.new(5.5,4.5,0),ORANGE,Enum.Material.Neon)
-- Piernas
p(model,"LegL",Vector3.new(2.5,4,2.5),CFrame.new(-2,1.5,0),DARK)
p(model,"LegR",Vector3.new(2.5,4,2.5),CFrame.new(2,1.5,0),DARK)
-- Cola
p(model,"Tail1",Vector3.new(2,2,5),CFrame.new(0,3,4),RED)
w(model,"TailTip",Vector3.new(1.5,1.5,3),CFrame.new(0,3,8)*CFrame.Angles(0,0,0),ORANGE)
-- Lava en el pecho
p(model,"LavaCore",Vector3.new(3,3,0.5),CFrame.new(0,7.5,-2.1),GLOW,Enum.Material.Neon)
-- Alas
w(model,"WingL",Vector3.new(1,5,10),CFrame.new(-8,10,0)*CFrame.Angles(0,math.rad(90),math.rad(-30)),BLACK)
w(model,"WingR",Vector3.new(1,5,10),CFrame.new(8,10,0)*CFrame.Angles(0,math.rad(-90),math.rad(30)),BLACK)
-- Clonar al workspace
local clone=model:Clone()
clone.Parent=workspace
local root=clone:FindFirstChild("Torso") or clone:FindFirstChildOfClass("Part")
if root then clone:SetPrimaryPartIfNeeded() end
local parts=0; for _ in pairs(clone:GetDescendants()) do
    if _:IsA("BasePart") then parts=parts+1 end
end
print("Boss_05 Demonio del Volcan generado! Parts: "..parts)
