worm = require 'worm'
power = require 'powerup'
coli = require 'coli'
function love.draw()
  worm.draw()
  power.draw()
end

function love.update(dt)
  worm:update(dt)
  if coli.checkCollision(power, worm) then
    print(true)
    worm.width = worm.width + 10
    power.x = love.math.random(1, 6) * 100
    power.y = love.math.random(1, 6) * 100
  end
end

function love.keyreleased(k)
  worm.keyreleased(k)
end
music = love.audio.newSource('guey.mp3', 'static')
love.audio.play(music)