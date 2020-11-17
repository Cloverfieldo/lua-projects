local player = {}
player.x = 30
player.y = 300
player.width = 20
player.height = 70
player.player = true

function player.update(dt)
  if love.keyboard.isDown('up', 'w') then
    player.y = player.y - 400 * dt
  elseif love.keyboard.isDown('down', 's') then
    player.y = player.y + 400 * dt
  end
end

function player.draw()
  love.graphics.rectangle('line', player.x, player.y, player.width, player.height)
end

return player