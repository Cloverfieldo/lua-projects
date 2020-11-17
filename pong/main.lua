local player = require 'player'
local enemy = require 'enemy'
local ball = require 'ball'
local coli = require 'coli'
music = love.audio.newSource('guey.mp3', 'static')
bump = 50
score = 0
paddles = {player, enemy}
function love.update(dt)
  for i,v in ipairs(paddles) do
    if coli.checkCollision(v, ball) then
      --print(v.name)
      if v.player then
        love.audio.play(music)
        ball.speedX = -math.abs(ball.speedX)
        ball.speedX = ball.speedX - bump
        ball.speedY = ball.speedY - bump
        --love.audio.stop(music)
      end
      if v.enemy then
        ball.speedX = math.abs(ball.speedX)
        ball.speedX = ball.speedX + bump
        ball.speedY = ball.speedY + bump
      end
    end
  end
  ball.update(dt)
  player.update(dt)
  enemy.update(dt, ball)
end

function love.draw()
  player.draw()
  enemy.draw()
  ball.draw()
  love.graphics.print(tostring(score), 300, 50)
end

