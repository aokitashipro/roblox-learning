-- ReplicatedStorageと似たような使い方ができる
-- ServerProgramからしかアクセスできない
-- ModuleScriptを追加

local LeaderboardManager = {}

-- table初期化
local stats = {
  {
    Name = "Points",
    Type = "IntValue",
    DefaultValue = 0
  }
}

local function new(board)
  -- pairs・・キーがついたテーブルを扱う場合に使う
  for i, stat in pairs(stats) do
    local leaderstat = Instance.new(stat.Type)
    leaderstat.Name = stat.Name
    leaderstat.Value = stat.DefaultValue
    leaderstat.Parent = board
  end
end

-- localはつけない モジュール名をつける:関数名
function LeaderboardManager:create(player)
  local board = Instance.new("Folder")
  board.Name = "leaderstats"
  board.Parent = player
  new(board)
end

-- 項目を取得する関数
function LeaderboardManager:getStat(player, stat)
  local leaderstats = player:FindFirstChild("leaderstats")

  if leaderstats then
    return leaderstats:FindFirstChild(stat)
  end
  return nil
end

-- Ball向けのモジュール関数
function LeaderboardManager::addStat(player, stat, value)
  -- モジュール内関数はthisなどではなく直接指定
  local stat = LeaderboardManager:getStat(player, stat)

  if stat then 
    stat.Value = stat.Value + value
  end
end


return LeaderboardManager