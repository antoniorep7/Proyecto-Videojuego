-- MapGenerator.luau
-- Chest Raiders - Fase 2
local Workspace = game:GetService("Workspace")
local old = Workspace:FindFirstChild("ChestRaidersMap")
if old then old:Destroy() end
local MAP = Instance.new("Folder")
MAP.Name = "ChestRaidersMap"
MAP.Parent = Workspace
local FLOOR_Y = 0
local TILE = 4
local function p(parent, name, size, cf, color, mat)
    local pt = Instance.new("Part")
    pt.Name = name; pt.Size = size; pt.CFrame = cf
    pt.Color = color; pt.Material = mat or Enum.Material.SmoothPlastic
    pt.Anchored = true; pt.TopSurface = Enum.SurfaceType.Smooth
    pt.BottomSurface = Enum.SurfaceType.Smooth; pt.Parent = parent; return pt
end
local SPAWN_RADIUS = 40
local spawnF = Instance.new("Folder"); spawnF.Name = "SpawnZone"; spawnF.Parent = MAP
for x = -SPAWN_RADIUS, SPAWN_RADIUS, TILE do
    for z = -SPAWN_RADIUS, SPAWN_RADIUS, TILE do
        if math.sqrt(x*x+z*z) <= SPAWN_RADIUS then
            local c = ((math.floor(x/TILE)+math.floor(z/TILE))%2==0)
                and Color3.fromHex("#A8D8A8") or Color3.fromHex("#7BC67A")
            p(spawnF,"Floor",Vector3.new(TILE,1,TILE),CFrame.new(x,FLOOR_Y-0.5,z),c)
        end
    end
end
local sp = Instance.new("SpawnLocation"); sp.Name="SpawnPoint"
sp.Size=Vector3.new(6,1,6); sp.CFrame=CFrame.new(0,FLOOR_Y,0)
sp.Color=Color3.fromHex("#F5E642"); sp.Anchored=true; sp.Parent=spawnF
local ZONES = {
    {"Boss01_Verde","#7BC67A","#F5E642","Boss 1 - Prado"},
    {"Boss02_Desierto","#E8A830","#C4611A","Boss 2 - Desierto"},
    {"Boss03_Cueva","#7A6B8A","#4A3F5C","Boss 3 - Cueva"},
    {"Boss04_Nieve","#A8D8EA","#FFFFFF","Boss 4 - Nieve"},
    {"Boss05_Vulcan","#E84040","#FF6B00","Boss 5 - Volcan"},
    {"Boss06_Pantano","#4A7C59","#2D5A3D","Boss 6 - Pantano"},
    {"Boss07_Abismo","#1A1A2E","#6C63FF","Boss 7 - Abismo"},
    {"Boss08_Tormenta","#2C3E6B","#00B4D8","Boss 8 - Tormenta"},
    {"Boss09_Ruinas","#8B6914","#3D2B1F","Boss 9 - Ruinas"},
    {"Boss10_Vacio","#0D0D0D","#FF0080","Boss 10 - Vacio"},
}
local ARC_START = math.rad(165)
local ARC_TOTAL = math.rad(210)
local CORR_R = 120
local ZONE_S = 50
for i, z in ipairs(ZONES) do
    local angle = ARC_START - (ARC_TOTAL/(#ZONES-1))*(i-1)
    local cx = math.cos(angle)*CORR_R; local cz = math.sin(angle)*CORR_R
    local zF = Instance.new("Folder"); zF.Name=z[1]; zF.Parent=MAP
    local c1=Color3.fromHex(z[2]); local c2=Color3.fromHex(z[3])
    local half=ZONE_S/2
    for x=-half,half-TILE,TILE do
        for z2=-half,half-TILE,TILE do
            local col=((math.floor(x/TILE)+math.floor(z2/TILE))%2==0) and c1 or c2
            p(zF,"Floor",Vector3.new(TILE,1,TILE),CFrame.new(cx+x+TILE/2,FLOOR_Y-0.5,cz+z2+TILE/2),col)
        end
    end
    local ph=4+i*0.5
    p(zF,"BossPedest",Vector3.new(8,ph,8),CFrame.new(cx,FLOOR_Y+ph/2,cz),c2)
    local gF=Instance.new("Folder"); gF.Name="Gate"; gF.Parent=zF
    local dir=Vector3.new(-cx,0,-cz).Unit
    local ga=math.atan2(dir.X,dir.Z)
    local gCF=CFrame.new(cx+dir.X*(half-4),FLOOR_Y,cz+dir.Z*(half-4))*CFrame.Angles(0,ga,0)
    p(gF,"GatePillarL",Vector3.new(2,12,2),gCF*CFrame.new(-5,6,0),c1)
    p(gF,"GatePillarR",Vector3.new(2,12,2),gCF*CFrame.new(5,6,0),c1)
    p(gF,"GateTop",Vector3.new(12,2,2),gCF*CFrame.new(0,12,0),c2)
    for c=1,3 do
        local cs=Instance.new("Part"); cs.Name="ChestSpawn"
        cs.Size=Vector3.new(3,1,3); cs.CFrame=CFrame.new(cx+(c-2)*10,FLOOR_Y,cz+15)
        cs.Color=Color3.fromHex("#FFD700"); cs.Anchored=true; cs.Transparency=0.5; cs.Parent=zF
    end
end
local corrF=Instance.new("Folder"); corrF.Name="Corridor"; corrF.Parent=MAP
local W=20; local STEPS=60
for step=0,STEPS do
    local angle=ARC_START-(ARC_TOTAL/STEPS)*step
    local r=SPAWN_RADIUS+(CORR_R-SPAWN_RADIUS)*(step/STEPS)
    local cx=math.cos(angle)*r; local cz=math.sin(angle)*r
    local col=(step%2==0) and Color3.fromHex("#8B8B8B") or Color3.fromHex("#6B6B6B")
    p(corrF,"Tile",Vector3.new(W,1,W),CFrame.new(cx,FLOOR_Y-0.5,cz)*CFrame.Angles(0,angle,0),col)
end
print("Chest Raiders Map generado! Zonas: "..#ZONES)
