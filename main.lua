lg = love.graphics

require "entity"
require "animation"
require "camera"

-- Key constants
UP_KEY = 'w'
DOWN_KEY = 's'
LEFT_KEY = 'a'
RIGHT_KEY = 'd'

function love.load()
    camera = new_camera()
    active_entities = new_entity_list() -- For keeping track of the entities to draw on screen at a time
end

function love.keypressed(key)
    --[[
    if key == KEY_LEFT then
    end
    if key == KEY_RIGHT then
    end
    if key == KEY_UP then
    end
    if key == KEY_DOWN then
    end
    ]]
end
function love.keyreleased(key)
    --[[
    if key == KEY_LEFT then
    end
    if key == KEY_RIGHT then
    end
    if key == KEY_UP then
    end
    if key == KEY_DOWN then
    end
    ]]
end

function love.update(dt)

end

function love.draw()
    camera:set()
    lg.clear(255, 255, 255)


    camera:unset()
end

function love.quit()
end
