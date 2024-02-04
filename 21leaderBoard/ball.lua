-- WorkspaceにPart追加
-- NameはBall

local Players = game:GetService("Players")
local part = script.Parent

local function onTouched()
  local character = hit.Parent
  local humanoid = character:FindFirstChildWhichIsA("Humanoid")
  if humanoid then
    -- GetPlayerFromCharacter キャラクターを渡すとPlayerモデルを返す関数
    local player = Players:GetPlayerFromCharacter(character)

    -- point更新
    player.leaderstats.Point.Value = player.leaderstats.Point.Value + 1
    part.Destroy()
  end
end

part.Touched:Connect(onTouched)
wait(10)
part.Destroy()

-- GUI ReplicatedStorageに格納する
-- 最初は表示されない
-- さまざまなオブジェクトが収納できる倉庫



