-- A spriteless entity, with only a position in the game world to verify its existence.
function new_entity(_x, _y)
    local entity = {}
    entity.x = _x
    entity.y = _y
    return entity
end

-- An entity that only contains one sprite and doesn't do anything else, like a tree.
function new_visible_entity(_x, _y, _spritesheet, _frame)
    local entity = new_entity(_x, _y)
    entity.spritesheet = _spritesheet
    entity.frame = _frame
    return entity
end