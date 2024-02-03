-- だんだん消える床

wait(5)

for t = 0, 1, 0.1 do
  script.Parent.Transparency = t
  wait(0.2)
end

script.Parent.CanCollide = false