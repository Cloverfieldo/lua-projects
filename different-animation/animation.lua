local sprite = {}
sprite.image = love.graphics.newImage('Game Boy Advance - Pokemon Emerald - Brendan.png')
--sprite.frames = {}

--variables for quads
local width = sprite.image:getWidth()
local height = sprite.image:getHeight()
local frame_height = 22
local frame_width = 15

--Animations
sprite.walkSide = {}
sprite.walkDown = {}
sprite.walkUp = {}
--Running
sprite.runSide = {}
sprite.runDown = {}
sprite.runUp = {}

for i=0,5 do
  for j=0,2 do
    --Walking
    if i <= 2 then
      --Down
      if j == 0 then
        table.insert(sprite.walkDown, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width, height))
      elseif j == 1 then
        table.insert(sprite.walkUp, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width, height))
      elseif j == 2 then
        table.insert(sprite.walkSide, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width, height))
      end
    else
      --running
      if j == 0 then
        table.insert(sprite.runDown, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width, height))
      elseif j == 1 then
        table.insert(sprite.runUp, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width, height))
      elseif j == 2 then
        table.insert(sprite.runSide, love.graphics.newQuad(j * frame_width, i * frame_height, frame_width, frame_height, width, height))
      end

    end

  end
end

return sprite