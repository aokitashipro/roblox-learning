local function onTouch(hit)
  local character = hit.Parent
  -- FindFirstChild 名前を見つける
  -- FindFirstChildWhichIsA クラスを見つける
  local humanoid = character:FindFirstChildWhichIsA("Humanoid")

  if humanoid then
    humanoid.Health = 0
  end
end

-- PartにはTouchedという特別なオブジェクトがある
-- Touchedオブジェクトの中の Connect関数
-- Partに触るとonTouch関数が呼ばれる
script.Parent.Touched:Connect(onTouch)

-- 実行すると
-- 全キャラクターがWorkspaceに入る
-- Humanoidオブジェクト
-- HealthはHP これが0になるとキャラが壊れる

-- 別の書き方 コールバック
script.Parent.Touched:Connect(function(hit)
  local character = hit.Parent
  local humanoid = character:FindFirstChildWhichIsA("Humanoid")
  if humanoid then
    humanoid.Health = 0
  end
end)
