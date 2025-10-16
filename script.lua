-- Hitbox Shark + Disable Ragdoll + Fog + ANTI-CHEAT TURBO - OLD SCRIPTS / @Find_Nulla1 😎
-- SEM FLOAT + 8 Botões = INVENCÍVEL E COMPACTO!

local player = game.Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")

-- Criar a ScreenGui
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "HitboxGuiV3"

-- Frame principal (360px COMPACTO!)
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 220, 0, 360)
frame.Position = UDim2.new(0, 30, 0, 300)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

-- Título
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "📦 Hitbox Shark Gui"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20

-- *** 8 BOTÕES (POSIÇÕES AJUSTADAS!) ***
local toggleButton = Instance.new("TextButton", frame)
toggleButton.Size = UDim2.new(0.9, 0, 0, 30)
toggleButton.Position = UDim2.new(0.05, 0, 0, 35)
toggleButton.Text = "Ativar Hitbox"
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18

local plusButton = Instance.new("TextButton", frame)
plusButton.Size = UDim2.new(0.4, 0, 0, 25)
plusButton.Position = UDim2.new(0.05, 0, 0, 75)
plusButton.Text = "+ Aumentar"
plusButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
plusButton.TextColor3 = Color3.new(1, 1, 1)
plusButton.Font = Enum.Font.SourceSansBold
plusButton.TextSize = 16

local minusButton = Instance.new("TextButton", frame)
minusButton.Size = UDim2.new(0.4, 0, 0, 25)
minusButton.Position = UDim2.new(0.55, 0, 0, 75)
minusButton.Text = "− Diminuir"
minusButton.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
minusButton.TextColor3 = Color3.new(1, 1, 1)
minusButton.Font = Enum.Font.SourceSansBold
minusButton.TextSize = 16

local espButton = Instance.new("TextButton", frame)
espButton.Size = UDim2.new(0.9, 0, 0, 30)
espButton.Position = UDim2.new(0.05, 0, 0, 115)
espButton.Text = "Ativar ESP Hitbox"
espButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
espButton.TextColor3 = Color3.new(1, 1, 1)
espButton.Font = Enum.Font.SourceSansBold
espButton.TextSize = 16

local antiButton = Instance.new("TextButton", frame)
antiButton.Size = UDim2.new(0.9, 0, 0, 30)
antiButton.Position = UDim2.new(0.05, 0, 0, 155)
antiButton.Text = "Anti-Cheat: OFF"
antiButton.BackgroundColor3 = Color3.fromRGB(200, 70, 70)
antiButton.TextColor3 = Color3.fromRGB(255, 255, 255)
antiButton.Font = Enum.Font.SourceSansBold
antiButton.TextSize = 16

local anchorButton = Instance.new("TextButton", frame)
anchorButton.Size = UDim2.new(0.9, 0, 0, 30)
anchorButton.Position = UDim2.new(0.05, 0, 0, 195)
anchorButton.Text = "Ativar Anchored Shark"
anchorButton.BackgroundColor3 = Color3.fromRGB(0, 150, 150)
anchorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
anchorButton.Font = Enum.Font.SourceSansBold
anchorButton.TextSize = 16

local ragdollButton = Instance.new("TextButton", frame)
ragdollButton.Size = UDim2.new(0.9, 0, 0, 30)
ragdollButton.Position = UDim2.new(0.05, 0, 0, 235)
ragdollButton.Text = "Ativar Disable Ragdoll"
ragdollButton.BackgroundColor3 = Color3.fromRGB(100, 0, 200)
ragdollButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ragdollButton.Font = Enum.Font.SourceSansBold
ragdollButton.TextSize = 16

local fogButton = Instance.new("TextButton", frame)
fogButton.Size = UDim2.new(0.9, 0, 0, 30)
fogButton.Position = UDim2.new(0.05, 0, 0, 275)
fogButton.Text = "Remove Fog Water"
fogButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
fogButton.TextColor3 = Color3.fromRGB(255, 255, 255)
fogButton.Font = Enum.Font.SourceSansBold
fogButton.TextSize = 16

-- *** INPUT + LABEL (AJUSTADOS!) ***
local inputBox = Instance.new("TextBox", frame)
inputBox.Size = UDim2.new(0.9, 0, 0, 30)
inputBox.Position = UDim2.new(0.05, 0, 0, 310)
inputBox.PlaceholderText = "Tamanho da Hitbox (ex: 3)"
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
inputBox.Font = Enum.Font.SourceSans
inputBox.TextSize = 16

local sizeLabel = Instance.new("TextLabel", frame)
sizeLabel.Size = UDim2.new(1, 0, 0, 30)
sizeLabel.Position = UDim2.new(0, 0, 1, -16)
sizeLabel.Text = "📏 Tamanho: 1x"
sizeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
sizeLabel.BackgroundTransparency = 1
sizeLabel.Font = Enum.Font.SourceSans
sizeLabel.TextSize = 16

-- *** VARIÁVEIS (SEM FLOAT!) ***
local hitboxAtivo = false
local espAtivo = false
local anchorAtivo = false
local currentScale = 1
local antiCheatEnabled = false
local connections = {}
local ragdollActive = false
local ragdollConnection = nil
local ragdollEnv = nil
local saveCount = 0
local fogAtivo = false

-- *** VALORES ORIGINAIS FOG ***
local originalFog = {
    FogStart = Lighting.FogStart,
    FogEnd = Lighting.FogEnd, 
    FogColor = Lighting.FogColor,
    WaterTransparency = Workspace.Terrain and Workspace.Terrain.WaterTransparency or 0.3,
    WaterReflectance = Workspace.Terrain and Workspace.Terrain.WaterReflectance or 0.3
}

-- *** FUNÇÕES (SEM FLOAT!) ***
local function Create(class, parent, props)
    local new = Instance.new(class)
    for k, v in pairs(props) do new[k] = v end
    new.Parent = parent
    return new
end

local function showNotification(title, text)
    if not gui then return end
    local notification = Create("Frame", gui, {
        Size = UDim2.new(0, 300, 0, 80),
        Position = UDim2.new(1, -310, 0, 20),
        BackgroundColor3 = Color3.fromRGB(20, 20, 20),
        BorderSizePixel = 0
    })
    Create("UICorner", notification, {CornerRadius = UDim.new(0, 12)})
    Create("UIGradient", notification, {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 0, 100)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 200))
        })
    })
    Create("TextLabel", notification, {
        Size = UDim2.new(1, 0, 0, 30),
        Text = title,
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        BackgroundTransparency = 1
    })
    Create("TextLabel", notification, {
        Size = UDim2.new(1, 0, 0, 50),
        Position = UDim2.new(0, 0, 0, 30),
        Text = text,
        TextColor3 = Color3.fromRGB(200, 200, 200),
        Font = Enum.Font.Gotham,
        TextSize = 14,
        BackgroundTransparency = 1,
        TextWrapped = true
    })
    TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1, -310, 0, 20)}):Play()
    task.wait(3)
    TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(1, 0, 0, 20)}):Play()
    task.wait(0.5)
    notification:Destroy()
end

-- *** ANTI-CHEAT TURBO ***
local function activateAntiCheat()
    if antiCheatEnabled then return end
    antiCheatEnabled = true
    
    local terrainRemote = Workspace.Terrain:FindFirstChild("RemoteEvent")
    if terrainRemote then
        terrainRemote.Name = terrainRemote.Name .. "_DISABLED"
        showNotification("🔒 Anti-Cheat", "RemoteEvent bloqueado!")
    end
    
    table.insert(connections, game.DescendantAdded:Connect(function(obj)
        if obj:IsA("RemoteEvent") and obj.Name:find("Terrain") then
            obj.Name = obj.Name .. "_BLOCKED"
            player:Kick("Anti-Cheat: RemoteEvent Terrain detectado!")
        end
    end))
    
    local playerScripts = player:FindFirstChild("PlayerScripts")
    if playerScripts then
        local loader = playerScripts:FindFirstChild("PlayerScriptsLoader")
        if loader then
            table.insert(connections, playerScripts.ChildRemoved:Connect(function(arg1)
                if arg1.Name == "PlayerScriptsLoader" then
                    player:Kick("Anti-Cheat: PlayerScriptsLoader removido!")
                end
            end))
            table.insert(connections, loader.Changed:Connect(function()
                if loader.Disabled then
                    player:Kick("Anti-Cheat: PlayerScriptsLoader desativado!")
                end
            end))
        end
    end
    
    showNotification("🔒 Anti-Cheat TURBO", "RemoteEvent + Scripts protegidos!")
end

local function deactivateAntiCheat()
    if not antiCheatEnabled then return end
    antiCheatEnabled = false
    for _, c in ipairs(connections) do c:Disconnect() end
    connections = {}
    showNotification("🔓 Anti-Cheat", "Anti-Cheat desativado!")
end

-- *** FOG ***
local function toggleFog(active)
    if active then
        Lighting.FogStart = 1000000
        Lighting.FogEnd = 1000000
        Lighting.FogColor = Color3.fromRGB(255, 255, 255)
        for _, obj in pairs(Lighting:GetChildren()) do
            if obj:IsA("Atmosphere") then
                obj.Density = 0
                obj.Glare = 0
                obj.Haze = 0
            end
        end
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if terrain then
            terrain.WaterTransparency = 1
            terrain.WaterReflectance = 0
        end
        showNotification("💧 Fog Water", "Névoa da água removida!")
        fogButton.Text = "Fog Removido!"
        fogButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
    else
        Lighting.FogStart = originalFog.FogStart
        Lighting.FogEnd = originalFog.FogEnd
        Lighting.FogColor = originalFog.FogColor
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if terrain then
            terrain.WaterTransparency = originalFog.WaterTransparency
            terrain.WaterReflectance = originalFog.WaterReflectance
        end
        showNotification("💧 Fog Water", "Névoa restaurada!")
        fogButton.Text = "Remove Fog Water"
        fogButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    end
    fogAtivo = active
end

-- *** RAGDOLL ***
local function findRagdollEnvironment()
    local success, result = pcall(function()
        return require(ReplicatedStorage:WaitForChild("Ragdoll"))
    end)
    if success then return result end
    return nil
end

local function disableRagdoll(character)
    if not character then return end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    
    pcall(function()
        if ragdollEnv and rawget(ragdollEnv, "var6_upvw") then
            ragdollEnv.var6_upvw = false
        end
        humanoid.BreakJointsOnDeath = true
        
        for _, obj in pairs(character:GetDescendants()) do
            if obj:IsA("BallSocketConstraint") and obj.Name == "RagdollBallSocketConstraint" then
                obj:Destroy()
            end
            if obj:IsA("NoCollisionConstraint") and obj.Name == "RagdollNoCollisionConstraint" then
                obj:Destroy()
            end
        end
        
        for _, obj in pairs(character:GetDescendants()) do
            if obj:IsA("Motor6D") then obj.Enabled = true end
        end
        
        humanoid:ChangeState(Enum.HumanoidStateType.Running)
    end)
end

local function toggleRagdoll(active)
    if ragdollConnection then ragdollConnection:Disconnect() ragdollConnection = nil end
    
    if active then
        ragdollEnv = findRagdollEnvironment()
        if not ragdollEnv then
            showNotification("🛡️ Ragdoll", "Erro: Module não encontrado!")
            ragdollActive = false
            return
        end
        disableRagdoll(player.Character)
        ragdollConnection = RunService.Heartbeat:Connect(function()
            if player.Character then disableRagdoll(player.Character) end
            task.wait(2)
        end)
        showNotification("🛡️ Ragdoll", "Ragdoll desativado!")
    end
    ragdollActive = active
end

-- *** HITBOX ***
local function atualizarLabel() sizeLabel.Text = "📏 Tamanho: " .. tostring(currentScale) .. "x" end
local function alterarHitbox(escala)
    local folder = Workspace:FindFirstChild("Sharks")
    if not folder then return end
    for _, shark in pairs(folder:GetChildren()) do
        for _, part in pairs(shark:GetDescendants()) do
            if part:IsA("BasePart") then
                local name = part.Name:lower()
                if name == "torso" or name == "body" or name == "humanoidrootpart" then
                    part.Size = Vector3.new(2, 2, 2) * escala
                    part.Transparency = espAtivo and 0.5 or 1
                    part.Material = espAtivo and Enum.Material.Neon or Enum.Material.SmoothPlastic
                    part.BrickColor = espAtivo and BrickColor.new("Bright red") or BrickColor.Gray()
                    part.CanCollide = false
                    part.Anchored = anchorAtivo
                end
            end
        end
    end
end

-- *** EVENTOS DOS 8 BOTÕES! ***
toggleButton.MouseButton1Click:Connect(function()
    hitboxAtivo = not hitboxAtivo
    toggleButton.Text = hitboxAtivo and "Desativar Hitbox" or "Ativar Hitbox"
    toggleButton.BackgroundColor3 = hitboxAtivo and Color3.fromRGB(170, 0, 0) or Color3.fromRGB(0, 170, 0)
    if hitboxAtivo then
        alterarHitbox(currentScale)
        showNotification("🦈 Hitbox", "Hitbox ativado!")
    else
        alterarHitbox(1)
        showNotification("🦈 Hitbox", "Hitbox desativado!")
    end
end)

plusButton.MouseButton1Click:Connect(function()
    currentScale = currentScale + 1
    atualizarLabel()
    if hitboxAtivo then alterarHitbox(currentScale) end
    showNotification("📈 Aumentar", currentScale .. "x!")
end)

minusButton.MouseButton1Click:Connect(function()
    currentScale = math.max(1, currentScale - 1)
    atualizarLabel()
    if hitboxAtivo then alterarHitbox(currentScale) end
    showNotification("📉 Diminuir", currentScale .. "x!")
end)

espButton.MouseButton1Click:Connect(function()
    espAtivo = not espAtivo
    espButton.Text = espAtivo and "Desativar ESP" or "Ativar ESP Hitbox"
    espButton.BackgroundColor3 = espAtivo and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(150, 0, 0)
    if hitboxAtivo then alterarHitbox(currentScale) end
    showNotification("👁️ ESP", espAtivo and "ON!" or "OFF!")
end)

antiButton.MouseButton1Click:Connect(function()
    if not antiCheatEnabled then
        activateAntiCheat()
        antiButton.Text = "Anti-Cheat: ON"
        antiButton.BackgroundColor3 = Color3.fromRGB(70, 200, 70)
    else
        deactivateAntiCheat()
        antiButton.Text = "Anti-Cheat: OFF"
        antiButton.BackgroundColor3 = Color3.fromRGB(200, 70, 70)
    end
end)

anchorButton.MouseButton1Click:Connect(function()
    anchorAtivo = not anchorAtivo
    anchorButton.Text = anchorAtivo and "Desativar Anchored" or "Ativar Anchored Shark"
    anchorButton.BackgroundColor3 = anchorAtivo and Color3.fromRGB(0, 255, 255) or Color3.fromRGB(0, 150, 150)
    if hitboxAtivo then alterarHitbox(currentScale) else alterarHitbox(1) end
    showNotification("⚓ Anchor", anchorAtivo and "ON!" or "OFF!")
end)

ragdollButton.MouseButton1Click:Connect(function()
    ragdollActive = not ragdollActive
    ragdollButton.Text = ragdollActive and "Desativar Ragdoll" or "Ativar Disable Ragdoll"
    ragdollButton.BackgroundColor3 = ragdollActive and Color3.fromRGB(200, 0, 100) or Color3.fromRGB(100, 0, 200)
    toggleRagdoll(ragdollActive)
end)

fogButton.MouseButton1Click:Connect(function()
    fogAtivo = not fogAtivo
    toggleFog(fogAtivo)
end)

inputBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local num = tonumber(inputBox.Text)
        if num and num >= 1 and num <= 9000 then
            currentScale = num
            atualizarLabel()
            if hitboxAtivo then alterarHitbox(currentScale) end
            showNotification("✏️ Tamanho", num .. "x!")
        else
            inputBox.Text = ""
            showNotification("⚠️ Tamanho", "1-9000!")
        end
    end
end)

-- Respawn
player.CharacterAdded:Connect(function(newChar)
    if ragdollActive then
        task.wait(1)
        disableRagdoll(newChar)
    end
end)

print("🦈🛡️💧🔒 Hitbox + Ragdoll + Fog + ANTI-CHEAT TURBO CARREGADO! 8 BOTÕES!")
