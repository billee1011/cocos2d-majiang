--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
local CardsArrayLeft = class("CardsArrayLeft", ccui.Layout)

local GameDefine = require("app.modules.game.GameDefine")
local GameHelper = require("app.modules.game.GameHelper")

function CardsArrayLeft:ctor()
--    self:setBackGroundColorType(1)
--    self:setBackGroundColor({r = 97, g = 2, b = 0})
    self:setCascadeColorEnabled(true)
    self:setAnchorPoint(0, 0)
    self:setScale(0.8)
    self.cards = {}
    self.cardSize = {width = 0, height = 0}
    self.sysCardIntvl = 10 --最新系统派牌布局间隔
    self.mode = GameDefine.GAME_MODE.GAME 
    
    self:setTouchEnabled(false)
end 

function CardsArrayLeft:setMode(mode)
    self.mode = mode 
end 

function CardsArrayLeft:incCardsNum(num)
    for i = 1, num, 1 do 
        table.insert(self.cards, {cardVal = -1, node = nil})
    end 
    self:refresh()
end 

function CardsArrayLeft:decCardsNum(num)
    for i = 1, num, 1 do 
        local card = self.cards[#self.cards]
        if card.node then 
            card.node:removeFromParent()
        end 
        self.cards[#self.cards] = nil
    end 
    self:refresh()
end 

function CardsArrayLeft:addCard(cardVal)
    self:__resetSysCard()
    table.insert_sort(self.cards, {cardVal = cardVal, node = nil}, function(card1, card2)
        return card2.cardVal < card1.cardVal
    end)
    self:refresh()
end 

function CardsArrayLeft:addSysCard(cardVal)
    if self.mode == GameDefine.GAME_MODE.GAME then 
        self:addCard(cardVal)
        return
    end 
    if self.sysCard then 
        return 
    end 
    local card = {cardVal = cardVal, node = nil}
    table.insert_sort(self.cards, card, function(card1, card2)
        return card2.cardVal < card1.cardVal
    end)
    card.node = Helper.getCardSpriteFlatLeft(card.cardVal)
    GameHelper.decorateCardImgWithSpecialMarkFlat(card.node, card.cardVal, GameDefine.DIR_LEFT)
    card.node:setLocalZOrder(0)
    card.node:addTo(self)
    local selfSz = self:getContentSize()
    local contentSz = card.node:getContentSize()
    local anpt = card.node:getAnchorPoint()

    card.node:setPosition(cc.p(selfSz.width * anpt.x, 0 - self.sysCardIntvl - contentSz.height * (1 - anpt.y)))
    self.sysCard = card
end 

--[Comment]
--resetSysCard doesn't refresh current cards' position
function CardsArrayLeft:__resetSysCard()
    if self.mode == GameDefine.GAME_MODE.GAME then 
        return
    end 
    if not self.sysCard then 
        return 
    end 
    self.sysCard = nil
end 

function CardsArrayLeft:rmvCard(cardVal)
    self:__resetSysCard()
    local card = table.delete(self.cards, cardVal, function(ele)
        return ele.cardVal == cardVal
    end)
    if card.node then 
        card.node:removeFromParent()
    end 
    self:refresh()
end 

function CardsArrayLeft:addCards(cards)
    self:__resetSysCard()
    for k, v in pairs(cards) do 
        table.insert(self.cards, {cardVal = v, node = nil})
    end 
    table.sort(self.cards, function(card1, card2)
        return card1.cardVal < card2.cardVal
    end)
    self:refresh()
end 

function CardsArrayLeft:rmvCards(cards)
    self:__resetSysCard()
    local tmp = {}
    for k, v in pairs(cards) do 
        tmp[v] = tmp[v] or {cardVal = v, num = 0}
        tmp[v].num = tmp[v].num + 1
    end 
    local tmpCards = {}
    for i, card in ipairs(self.cards) do 
        if tmp[card.cardVal] and tmp[card.cardVal].num > 0 then 
            card.node:removeFromParent()
            tmp[card.cardVal].num = tmp[card.cardVal].num - 1
        else
            table.insert(tmpCards, card)
        end 
    end 
    self.cards = tmpCards
    self:refresh()
end 

function CardsArrayLeft:createCardNode(cardVal)
    local node 
    if self.mode == GameDefine.GAME_MODE.GAME then 
        node = cc.Sprite:create("GameScene/hand_left.png")
    elseif self.mode == GameDefine.GAME_MODE.DEMO then 
        node = Helper.getCardSpriteFlatLeft(cardVal)
        GameHelper.decorateCardImgWithSpecialMarkFlat(node, cardVal, GameDefine.DIR_LEFT)
    end 
    return node
end 

function CardsArrayLeft:refresh()
    for i, card in ipairs(self.cards) do 
        if not card.node then 
            card.node = self:createCardNode(card.cardVal)
            card.node:addTo(self)
        end 
        if card.cardVal == GameCache.laiZiCardVal then 
            card.node.priority = -1
        elseif card.cardVal == GameCache.laiZiPiCardVal then 
            card.node.priority = -2
        elseif card.cardVal == GameCache.hongZhongCardVal then 
            card.node.priority = -3
        else  
            card.node.priority = i
        end 
    end 
    if #self.cards > 0 then 
        local cardSize = self.cards[1].node:getContentSize()
        local sz = CCSize(cardSize.width, 0)
        self:setContentSize(sz)
    end 
    if self.mode == GameDefine.GAME_MODE.GAME then 
        WidgetExt.panLayoutVertical(self, {columns = 1, lineIntvl = -50})
    elseif self.mode == GameDefine.GAME_MODE.DEMO then 
        WidgetExt.panLayoutVertical(self, {columns = 1, lineIntvl = -20})
    end 
end 

function CardsArrayLeft:getSysCardPosition()
    local pos = cc.p(self:getPosition())
    local nodeSz = self:createCardNode(11):getContentSize()
    pos.x = pos.x + nodeSz.width * 0.5
    return self:getParent():convertToWorldSpace(pos)
end 

function CardsArrayLeft:getSysCardSize()
    local nodeSz = self:createCardNode(11):getContentSize()
    return {
        width = nodeSz.width * self:getScaleX(),
        height = nodeSz.height * self:getScaleY(),
    }
end 

function CardsArrayLeft:selectAOutCardNode(cardVal)
    for _, card in ipairs(self.cards) do 
        if card.cardVal == cardVal then 
            return card.node
        end 
    end 
    assert(false)
end 

return CardsArrayLeft
--endregion
