local current_color = {1, 1, 1, 1}
local seconds = 0

function love.load()
  x = 100 
  y = 200 
  myImage = love.graphics.newImage("sheep.png")
  love.graphics.setBackgroundColor(1, 1, 1)
end

function love.draw()
  -- local square = {100, 100, 100, 200, 200, 200, 200, 100}
  
  love.graphics.setColor(255/255, 200/255, 40/255, 127/255)
  love.graphics.setColor(1, 0.78, 0.15, 0.5)
  love.graphics.draw(myImage, x, y)

  -- love.graphics.rectangle("line", x, y, 200, 150)

  -- Print a counter clock
  local clock_display = 'Seconds: ' .. seconds
  love.graphics.print(clock_display, 0, 0, 0, 2, 2)

  -- Initialize the square with the default color (white)
  love.graphics.setColor(current_color)
  -- love.graphics.polygon('fill', square)
end


function love.keypressed(pressed_key)
  if pressed_key == 'b' then
    -- Blue
    current_color = {0, 0, 1, 1}
  elseif pressed_key == 'g' then
    -- Green
    current_color = {0, 1, 0, 1}
  elseif pressed_key == 'r' then
    -- Red
    current_color = {1, 0, 0, 1}
  elseif pressed_key == 'w' then
    -- White
    current_color = {1, 1, 1, 1}
  end
  if pressed_key == 'escape' then
    love.event.quit()
  end
end

function love.update(dt)
  -- Add up all the delta time as we get it
  seconds = seconds + dt

  if love.keyboard.isDown('right') then
    -- left
    x = x + 5
  elseif love.keyboard.isDown('left') then
    -- left
    x = x - 5
  elseif love.keyboard.isDown('up') then
    -- left
    y = y - 5
  elseif love.keyboard.isDown('down') then
    -- left
    y = y + 5
  end
end