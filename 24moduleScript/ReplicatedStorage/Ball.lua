-- 外から関数を呼び出せる機能
-- wordkspaceでballというpart、その中にscript

-- モジュールスクリプトを使うので2行追加
local ServerStorage = game:GetService("ServerStorage")
local leaderboardManager = require(ServerStorage.LeaderboardManager)

-- ReplicatedStorageに格納
local Players = game:GetService("Players")
local part = script.Parent

local function onTouched(hit)
  local character = hit.Parent
  local humanoid = character.FindFirstChildWhichIsA("Humanoid")
  if humanoid then
    local player = Players:GetPlayerFromCharacter(character)
    -- 以前のコード
    -- player.leaderstats.Point.Value = player.leaderstats.Point.Value + 1
    -- モジュールを呼び出す
    leaderboardManager:addStat(player, "Points", 1)
    part:Destroy()
  end
end

part.Touched:Connect(onTouched)

wait(10)
part:Destroy()
 
