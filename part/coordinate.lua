-- 座標
local part = script.Parent
local pos = Vector3.new(10, 10, 10)
part.Position = pos
part.Anchored = true

-- 座標の加算
part.Position = part.Position + Vector3.new(0, 10, 0)
