-- 鍵を拾ってドアを開ける
-- StarterParkはプレイヤーの持ち物
-- Playersの中にPlayerが入る
-- その中にBackpackの中にKeyが入る
-- 装備するとキャラクターモデルの中に入る

-- https://youtu.be/d3fX8UqynA0?si=lRCH53vtWMnKKbW0
-- Partの中にKeyを持ってくる
-- の中にあるHandleをコピー

local keyBox = script.Parent
local clickdetector = keyBox.ClickDetector

local function checkHaveItem(player, item)
  if player.Backpack:FindFirstChild(item) then
    return true
  end
  -- 手に持っている場合は backpackの中にはないので、それもcheck必要
  local character = player.Character -- キャラクターモデル
  if character:FindFirstChild(item) then -- itemがあればtrueを返す
    return true
  end

  return false
end

clickDetector.MouseClick:Connect(function(player)
  -- Keyというアイテムを持っているか確認
  if checkHaveItem(player, "Key") == false then
    local key = KeyBox.Key -- 変数keyにツール代入
    local item = Key:Clone() -- 複製
    item.Handle.Anchored = false -- Anchord解除
    item.Parent = player.Backpack -- プレイヤーの所持品に入る
  end
end)