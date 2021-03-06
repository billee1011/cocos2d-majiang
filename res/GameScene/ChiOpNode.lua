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

--Create panRoot
local panRoot = ccui.Layout:create()
panRoot:ignoreContentAdaptWithSize(false)
panRoot:setClippingEnabled(false)
panRoot:setBackGroundColorType(1)
panRoot:setBackGroundColor({r = 150, g = 200, b = 255})
panRoot:setBackGroundColorOpacity(102)
panRoot:setTouchEnabled(true);
panRoot:setLayoutComponentEnabled(true)
panRoot:setName("panRoot")
panRoot:setTag(67)
panRoot:setCascadeColorEnabled(true)
panRoot:setCascadeOpacityEnabled(true)
panRoot:setAnchorPoint(0.5000, 0.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(panRoot)
layout:setSize({width = 1000.0000, height = 200.0000})
layout:setLeftMargin(-500.0000)
layout:setRightMargin(-500.0000)
layout:setTopMargin(-100.0000)
layout:setBottomMargin(-100.0000)
Node:addChild(panRoot)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Node
return result;
end

return Result

