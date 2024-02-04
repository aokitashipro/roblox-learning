-- GUIでPartにClickDetectorを追加する
-- マウス関係
local part = script.Parent
local clickDetector = part.ClickDetector

-- 事前にAnchord trueにしないと落ちていく
clickdetector.MouseClick:Connect(function(player)
  part.CanCollide = false
  part.Transparency = 1
  wait(1)
  part.CanCollide = true
  part.Transparency = 0
end)

-- 他のイベント
-- MouseHoverEnter
-- MouseHoverLeave
-- RightMouseClick
