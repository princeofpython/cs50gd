--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Projectile = Class{}

function Projectile:init(object, room, direction)
    self.object = object
    self.room = room

    self.direction = direction

    self.speed = 300

    self.over = false

    self.displacement = 0
end

function Projectile:update(dt)
    if not self.over then
        if self.direction == 'left' then
            self.object.x = self.object.x - self.speed * dt
            self.displacement = self.displacement + self.speed * dt

            if self.object.x <= MAP_RENDER_OFFSET_X + TILE_SIZE then 
                table.remove(self.room.objects, 2)
                gSounds['explosion']:play()
                self.over = true
            end
        elseif self.direction == 'right' then
            self.object.x = self.object.x + self.speed * dt
            self.displacement = self.displacement + self.speed * dt


            if self.object.x + self.object.width >= VIRTUAL_WIDTH - TILE_SIZE * 2 then
                gSounds['explosion']:play()
                table.remove(self.room.objects, 2)
                self.over = true
                
            end
        elseif self.direction == 'up' then
            self.object.y = self.object.y - self.speed * dt
            self.displacement = self.displacement + self.speed * dt


            if self.object.y <= MAP_RENDER_OFFSET_Y + TILE_SIZE - self.object.height / 2 then                 
                gSounds['explosion']:play()
                table.remove(self.room.objects, 2)
                self.over = true
            end
        elseif self.direction == 'down' then
            self.object.y = self.object.y + self.speed * dt
            self.displacement = self.displacement + self.speed * dt


            local bottomEdge = VIRTUAL_HEIGHT - (VIRTUAL_HEIGHT - MAP_HEIGHT * TILE_SIZE) 
                + MAP_RENDER_OFFSET_Y - TILE_SIZE

            if self.object.y + self.object.height >= bottomEdge then
                gSounds['explosion']:play()
                table.remove(self.room.objects, 2)
                self.over = true
            end
        end
    
        for k, entity in pairs(self.room.entities) do
            if self.object:collides(entity) and entity.dead == false then
                entity:damage(1)
                gSounds['hit-enemy']:play()

                self.over = true
                break
            end
        end

        if self.displacement > 4 * TILE_SIZE then
            self.over = true
            gSounds['explosion']:play()
            table.remove(self.room.objects, 2) 
        end   
    end
end

function Projectile:render()

end