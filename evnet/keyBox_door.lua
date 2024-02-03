local door = script.Parent
local open = false

door.Touched:Connect(function(hit)
  local character = hit.Parent
  local humanoid = character:FindFirstChildWhichIsA("Humanoid")

  if humanoid and open == false then
    local key = character:FindFirstChild("Key")
    if key then
      print("open")
      open = true
      door.CanCollide = false
      door.Transparency = 1
      wait(1) -- 待っている間別の処理が実行される
      key:Destroy() -- 鍵が消える
      door.CanCollide = true
      door.Transparency = 0
      open = false
      print("close")
    end
  end
end)