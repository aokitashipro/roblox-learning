-- partを2つ生成
-- goalのpartをPart2として作成

-- Partの下にScript 
-- Scriptの下にPart2
-- Part2は画面に表示されずScriptだけ参照

local TweenService = game:GetService("TweenService")

local part = script.Parent
local part2 = script.Part2 -- scriptの下なので直描き

-- テーブル(配列) {}
local goal = {}

-- キー/バリュー
goal["Size"] = part2.Size
goal["Color"] = part2.Color
-- CFrame・・位置情報+回転角度
goal["CFrame"] = part2.CFrame

-- 再生時間など
local tweenInfo = TweenInfo.new(5)
loca tween = TweenService:Create(part, tweenInfo, goal)

wait(3)
tween:Play() -- 実行
print("End")
-- Playは終了まで待たない

-- 終わったタイミングで実行
tween.Completed:Connect(function()
  print("Finish")
end)
