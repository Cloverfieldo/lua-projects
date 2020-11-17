local enemy = {}

enemy.width = 20
enemy.height = 70

enemy.x = love.graphics.getWidth() - (enemy.width + 30)
print(love.graphics.getWidth())
print(love.graphics.getHeight())
enemy.y = 300

enemy.enemy = true
function enemy.update(dt, ball) 
  if ball.y > enemy.y then
    enemy.y = enemy.y + 300 * dt
  end
  if ball.y < enemy.y then
    enemy.y = enemy.y - 300 * dt
  end
  
end

function enemy.draw() 
  love.graphics.rectangle('line', enemy.x, enemy.y, enemy.width, enemy.height)
end

return enemy