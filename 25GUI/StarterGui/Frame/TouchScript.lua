-- RemoteEvent経由
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local openEvent = ReplicatedStorage.OpenEvent

local Players = game:GetService("Players")

local function onTouch(hit)
  local character = hit.Parent
  local humanoid = character:FindFirstChildWhichIsA("Humanoid")
  
  if humanoid then 
    local player = Players:GetPlayerFromCharacter(character)
    -- window表示
    -- player.PlayerGui.ScreenGui.Frame.Visible = true

    -- remoteEvent指定 // Client実行という事？
    openEvent:FireClient(player)
  end
end

script.Parent.Touched:Connect(onTouch)

-- サーバー -> クライアント にウィンドウを開くという指示を出したい
-- RemoteEvent

