-- ServerScriptServiceにMainScript作成

local ServierStorage = game:GetService("ServerStorage")
local ReplicatedStorage = get:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

-- ModuleScriptを使う場合はrequireを使う
local LeaderboardManager = require(ServerStorage.LeaderboardManager)

-- モジュールに転載したのでこちらはコメントアウト
-- local function createLeaderboard(player)
--   local board = Instance.new("Folder")
--   board.Name = "leaderstats"
--   board.Parent = player

--   local point = Instance.new("IntValue")
--   point.Name = "Point"
--   point.Value = 0
--   point.Parent = board
-- end

local function onPlayerAdded(player)
  -- createLeaderboard(player) ローカル
  -- モジュール使用時
  leaderboardManager:create(player)

end

Players.PlayerAdded:Connect(onPlayerAdded)

local ball = ReplicatedStorage:WaitForChild("Ball")

while wait(1) do
  local p = ball:Clone()
  local x = math.random(-50, 50)
  local y = p.Position.Y
  local z = math.random(-50, 50)
  p.Position = Vector3.new(x,y,z)
  p.Parent = game.Workspace
end

