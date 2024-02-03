-- Wordspace内にScriptを使うのは滅多にないらしい

-- オブジェクトを作成するもの・・クラス
-- Instance というクラス

-- Partを生成
local part = Instance.new("Part")

-- プロパティ設定
part.Name = "NewPart"

-- 作るなら場所指定必要と思われる
part.Parent = game.Wordspace

-- for文組み合わせるとどんどんPart増やせる
for i = 1, 10 do
  local part = Instance.new("Part")
  part.Parent = game.Workspace
  local fire = Instance.new("Fire")
  fire.Parent = part
  wait(0.5)
end
