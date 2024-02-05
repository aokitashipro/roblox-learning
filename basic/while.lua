local a = 8

-- 条件式は ~=もある(!= と同じ)
-- 明るくする
while a < 32 do
  script.Parent.PointLight.Range = a
  wait(0.1)
  a = a + 1
end

-- 暗くする
while a < 8 do
  script.Parent.PointLight.Range = a
  wait(0.1)
  a = a - 1
end

-- 無限ループ
while true do
  -- 処理内容
end