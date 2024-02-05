-- 座標 Xが横、Yが高さ、Zが奥行き
local part = script.Parent
-- Vector3 3次元座標のデータ作成
local pos = Vector3.new(10, 10, 10)
part.Position = pos
part.Anchored = true

-- 座標の加算 
part.Position = part.Position + Vector3.new(0, 10, 0)
