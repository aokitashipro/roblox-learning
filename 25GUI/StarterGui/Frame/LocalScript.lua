-- LocalScript がクライアントで実行される

-- remoteEvent経由する
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local openEvent = ReplicatedStorage.OpenEvent

local frame = script.Parent
local closeButton = frame.CloseButton

closeButton.MouseButtonClick:Connect(function()
  frame.Visible = false
end) 

-- remoteEventの関数作成 onClientEventというトリガー
openEvent.OnClientEvent:Connect(function()
  frame.Visible = true
end)
