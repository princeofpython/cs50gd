--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

MenuState = Class{__includes = BaseState}

function MenuState:init(def)
    self.menu = Menu(def)
    self.onPop = def.onPop
end

function MenuState:update(dt)
    --self.menu:update(dt)

    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateStack:pop()
        self:onPop()
    end

end

function MenuState:render()
    self.menu:render()
end