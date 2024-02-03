-- https://youtu.be/0AJKiYTbCzc?si=hLeeNKCV1cECSuZh
local heat = 0

script.Parent.Fire.Size = 2
script.Parent.Fire.Heat = heat

for size = 2, 20 do
  script.Parent.Fire.Size = size
  if size > 9 then
    script.Parent.Fire.Heat = heat
    heat = heat + 1
  end
  wait(0.5)
end