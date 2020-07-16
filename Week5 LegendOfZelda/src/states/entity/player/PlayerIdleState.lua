--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

PlayerIdleState = Class{__includes = EntityIdleState}

function PlayerIdleState:init(player, dungeon)
    self.entity = player
    self.dungeon = dungeon

    self.entity:changeAnimation('idle-' .. self.entity.direction)

    -- used for AI waiting
    self.waitDuration = 0
    self.waitTimer = 0
end

function PlayerIdleState:enter(params)
    -- render offset for spaced character sprite
    self.entity.offsetY = 5
    self.entity.offsetX = 0
end

function PlayerIdleState:update(dt)
    EntityIdleState.update(self, dt)
end

function PlayerIdleState:update(dt)
    if love.keyboard.isDown('left') or love.keyboard.isDown('right') or
       love.keyboard.isDown('up') or love.keyboard.isDown('down') then
        self.entity:changeState('walk')
    end

    if love.keyboard.wasPressed('space') then
        self.entity:changeState('swing-sword')
    end

    if self.dungeon.currentRoom.objects[2] then
        if self.entity:collides(self.dungeon.currentRoom.objects[2]) then
            if love.keyboard.wasPressed('return') then
                self.entity:changeState('pot-lift')
            end
        end
    end

    
end