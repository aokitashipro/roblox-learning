-- 球体がランダムに出現し消えていくプログラム
local part = Instance.new("Part")

-- マテリアルを球体(Ball) にしている
part.Shape = Enum.PartType.Ball
part.Name = "Ball"
part.Anchored = false


for i = 1 , 10 do
  -- オブジェクトの関数
  -- 指定する際は :関数名 プロパティは.
  local p = part:Clone() -- (Instance.new("Part") と同じ記述になる)
  -- luaの標準関数 (こっちは.で指定している。。)
  local x = math.random(-50, 50)
  local y = math.random(5, 50)
  local z = math.random(-50, 50)
  p.Position = Vector3.new(x, y, z)
  p.Parent = game.Workspace
  wait(0.5)
end

-- 消去 無限ループ
while wait(0.5) do
  -- 子供を見つけて見つかったオブジェクトを返す
  local p = game.Workspace:FindFirstChild("Ball")
  if p then
    p:Destroy()
  else
    break
  end
end 