--[[
    GD50
    Super Mario Bros. Remake

    -- GameLevel Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GameLevel = Class{}

function GameLevel:init(entities, objects, tilemap, blocks, lock)
    self.entities = entities
    self.objects = objects
    self.tileMap = tilemap
    self.blocks = blocks

end

--[[
    Remove all nil references from tables in case they've set themselves to nil.
]]
function GameLevel:clear()
    for i = #self.objects, 1, -1 do
        if not self.objects[i] then
            table.remove(self.objects, i)
        end
    end

    for i = #self.entities, 1, -1 do
        if not self.entities[i] then
            table.remove(self.entities, i)
        end
    end

    for i = #self.blocks, 1, -1 do
        if not self.blocks[i] then
            table.remove(self.blocks, i)
        end
    end
end

function GameLevel:update(dt)
    self.tileMap:update(dt)

    for k, object in pairs(self.objects) do
        object:update(dt)
    end

    for k, block in pairs(self.blocks) do
        block:update(dt)
    end

    for k, entity in pairs(self.entities) do
        entity:update(dt)
    end
end

function GameLevel:render()
    self.tileMap:render()

    for k, object in pairs(self.objects) do
        object:render()
    end

    for k, block in pairs(self.blocks) do
        block:render()
    end

    for k, entity in pairs(self.entities) do
        entity:render()
    end
end