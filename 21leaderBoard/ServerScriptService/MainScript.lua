-- ServerScriptServiceの中につくる
-- MainScript ・・メインルーチン

-- プレイヤーが入ってきた時
-- game全体に接続
-- getServiceはRobloxシステムのさまざまな機能を提供する関数
local Players = game:GetService("Players")

-- LeaderBoardは
-- Players/player/leaderstats 自動で表示される
local function createLeaderboard(player)
  local board = Instance.new("Folder")
  board.Name = "leaderstats"
  board.Parent = player

  -- LeaderBoardにスコア表示
  -- player名の他に4つまで表示できるよう
  local point = Instance.new("IntValue")
  point.Name = "Point"
  point.Value = 0
  point.Parent = board
end

local function onPlayerAdded(player)
  print("PlayerAddedが呼ばれた")
  createLeaderboard(player)
end

-- (Players) プレイヤーが入ってきた時
Players.PlayerAdded:Connect(onPlayerAdded)

-- (Players)  プレイヤー退出
Players.PlayerRemoving:Connect(onPlayerRemoving)

-- (Player) キャラクターが呼ばれた時
-- player.CharacterAdded
--player.CharacterRemoving


-- 倉庫内のボールを取得
local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- 子供を見つける、多少待つ
local ball = ReplicatedStorage:WaitForChild("Ball")

-- ボール生成
while wait(1) do
  local p = ball:Clone()
  local x = math.random(-50, 50)
  local y = p.Position.Y
  local z = math.random(-50, 50)
  p.Position = Vector3.new(x, y, z)
  p.Parent = game.Workspace
end
