--------------------------------------------------------------
-- This file was automatically generated by Cocos Studio.
-- Do not make changes to this file.
-- All changes will be lost.
--------------------------------------------------------------

local luaExtend = require "LuaExtend"

-- using for layout to decrease count of local variables
local layout = nil
local localLuaFile = nil
local innerCSD = nil
local innerProject = nil
local localFrame = nil

local Result = {}
------------------------------------------------------------
-- function call description
-- create function caller should provide a function to 
-- get a callback function in creating scene process.
-- the returned callback function will be registered to 
-- the callback event of the control.
-- the function provider is as below :
-- Callback callBackProvider(luaFileName, node, callbackName)
-- parameter description:
-- luaFileName  : a string, lua file name
-- node         : a Node, event source
-- callbackName : a string, callback function name
-- the return value is a callback function
------------------------------------------------------------
function Result.create(callBackProvider)

local result={}
setmetatable(result, luaExtend)

--Create Node
local Node=cc.Node:create()
Node:setName("Node")

--Create rootPanel
local rootPanel = ccui.Layout:create()
rootPanel:ignoreContentAdaptWithSize(false)
rootPanel:setClippingEnabled(false)
rootPanel:setBackGroundColorOpacity(102)
rootPanel:setTouchEnabled(true);
rootPanel:setLayoutComponentEnabled(true)
rootPanel:setName("rootPanel")
rootPanel:setTag(65)
rootPanel:setCascadeColorEnabled(true)
rootPanel:setCascadeOpacityEnabled(true)
rootPanel:setAnchorPoint(0.5000, 0.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(rootPanel)
layout:setSize({width = 54.0000, height = 48.0000})
layout:setLeftMargin(-27.0000)
layout:setRightMargin(-27.0000)
layout:setTopMargin(-24.0000)
layout:setBottomMargin(-24.0000)
Node:addChild(rootPanel)

--Create img11
local img11 = ccui.ImageView:create()
img11:ignoreContentAdaptWithSize(false)
img11:loadTexture("GameScene/left/mingmah_16.png",0)
img11:setLayoutComponentEnabled(true)
img11:setName("img11")
img11:setTag(66)
img11:setCascadeColorEnabled(true)
img11:setCascadeOpacityEnabled(true)
img11:setPosition(26.5024, 23.7705)
layout = ccui.LayoutComponent:bindLayoutComponent(img11)
layout:setPositionPercentX(0.4908)
layout:setPositionPercentY(0.4952)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 54.0000, height = 48.0000})
layout:setLeftMargin(-0.4976)
layout:setRightMargin(0.4976)
layout:setTopMargin(0.2295)
layout:setBottomMargin(-0.2295)
rootPanel:addChild(img11)

--Create txtNum
local txtNum = ccui.Text:create()
txtNum:ignoreContentAdaptWithSize(true)
txtNum:setTextAreaSize({width = 0, height = 0})
txtNum:setFontSize(20)
txtNum:setString([[3]])
txtNum:setLayoutComponentEnabled(true)
txtNum:setName("txtNum")
txtNum:setTag(122)
txtNum:setCascadeColorEnabled(true)
txtNum:setCascadeOpacityEnabled(true)
txtNum:setPosition(64.8743, 26.1558)
txtNum:setRotationSkewX(90.0000)
txtNum:setRotationSkewY(90.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(txtNum)
layout:setPositionPercentX(1.2014)
layout:setPositionPercentY(0.5449)
layout:setPercentWidth(0.1852)
layout:setPercentHeight(0.4167)
layout:setSize({width = 10.0000, height = 20.0000})
layout:setLeftMargin(59.8743)
layout:setRightMargin(-15.8743)
layout:setTopMargin(11.8442)
layout:setBottomMargin(16.1558)
rootPanel:addChild(txtNum)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Node
return result;
end

return Result

