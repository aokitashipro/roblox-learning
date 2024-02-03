local part = Instance.new("Part")
part.Position = Vector3.new(1, 5, 2)
part.Size = Vector3.new( 5, 7, 9)

-- Color と BrickColor(厳選)は選択方法が違う
-- ColorはRGB 0-1なのでわかりにくい
-- BrickColorの方がわかりやすい
-- https://create.roblox.com/docs/ja-jp/reference/engine/classes/Part#BrickColor
-- https://create.roblox.com/docs/ja-jp/reference/engine/datatypes/BrickColor
part.BrickColor = BrickColor.new("Brown")

-- 素材 重さ、滑りやすいなどもある 
-- 型はEnum
part.Material = Enum.Material.Wood

-- 型はbool
part.Anchored = true

-- 型 
-- transparency はfloat
-- int,
-- string  

part.Parent = game.Wordspace