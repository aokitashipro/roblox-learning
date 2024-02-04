-- Bridgeパーツの中に
-- Script, First, Second, Thirdを配置

local TweenService = game:GetService("TweenServie")

local bridge = script.Parent

-- 配列初期化
local parts = {
  bridge.First,
  bridge.Second,
  bridge.Third
}

local function start()
  -- for文をtableで使う時限定の書き方
  -- ipars(table名)
  for i, part in ipairs(parts) do
    wait(0.3)

    local goal = {}
    goal.Transparency = 1
    local tweenInfo = TweenInfo.new(1)
    local tween = TweenService:Create(part, tweenInfo, goal)
    tween.Completed:Connect(function()
      part.CanCollide = false
      wait(1)
      part.CanCollide = true
      part.Transparency = 0
    end)
    tween:Play()
  end
end

-- Touchイベント
local touch = false


local function onTouch(hit)
  local character = hit.Parent
  local humanoid = character:FindFirstChildWhichIsA("Humanoid")

  if humanoid then
    if touch == false then
      touch = true
      start()
      touch = false
    end
  end
end

bridge.First.Touched:Connect(onTouch)