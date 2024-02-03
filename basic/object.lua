-- Fireがオブジェクト 変数に代入
local fire = script.Parent.Fire

local heat = 0

fire.Size = 2
fire.Heat = heat

for size = 2, 20 do
  fire.Size = size
  if size > 9 then
    fire.Heat = heat
    heat = heat + 1
  end
  wait(0.5)
end

-- local size = Script.Parent.Fire.Size と書くと
-- Sizeプロパティを変数に代入