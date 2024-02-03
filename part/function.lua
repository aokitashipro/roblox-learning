-- 関数終わりはendで締める
local function putPart(shape, pos)
  local part = Instance.new("Part")
  part.Shape = shape
  part.Anchored = false
  part.Position = pos()
  part.Parent = game.Workspace
end

local function getPosition()
  local x = math.random(-50, 50)
  local y = math.random(5, 50)
  local z = math.random(-50, 50)
  p.Position = Vector3.new(x, y, z)
  return pos
end

putPart(Enum.PartType.Ball, getPosition())
putPart(Enum.PartType.Block, getPosition())
putPart(Enum.PartType.Cylinder, getPosition())

-- 関数自体を渡す方法もある ()なしで指定
putPart(Enum.PartType.Ball, getPosition)
putPart(Enum.PartType.Block, getPosition)
putPart(Enum.PartType.Cylinder, getPosition)
