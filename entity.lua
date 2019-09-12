-- An entity list, used to keep track of all of the entities for things like what to draw, what order to draw them in, etc
function new_entity_list() 
    local entities = {}
    entities.list = {}

    function entities:add(_entity)
        table.insert(self.list, _entity)
    end
    function entities:remove(_entity)
        table.remove(self.list, _entity)
    end

    function entities:sort(_algorithm)
        table.sort(self.list, _algorithm)
    end

    return entities
end



-- ACTUAL TYPES OF ENTITIES

-- A spriteless entity, with only a position in the game world to verify its existence.
function new_entity(_x, _y)
    local entity = {}
    entity.x = _x or 0
    entity.y = _y or 0

    function entity:set_position(_x, _y) 
        self.x = _x
        self.y = _y
    end

    return entity
end

-- An entity that only contains one sprite and doesn't do anything else, like a tree.
function new_visible_entity(_x, _y, _width, _height, _spritesheet, _frame)
    local entity = new_entity(_x, _y)
    entity.width = _width
    entity.height = _height
    entity.spritesheet = _spritesheet

    -- The current frame to draw (this is optional to initialize for animated objects, since it changes immediately)
    entity.frame = _frame or nil    

    return entity
end
