---@meta
---@diagnostic disable

--$Factorio 1.1.68
--$Overlay 5
--$Section LuaCustomChartTag
-- This file is automatically generated. Edits will be overwritten.

---A custom tag that shows on the map view.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html)
---@class LuaCustomChartTag:LuaObject
---[R]  
---The force this tag belongs to.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.force)
---@field force LuaForce 
---[RW]  
---This tag's icon, if it has one. Writing `nil` removes it.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.icon)
---@field icon SignalID 
---[RW]  
---The player who last edited this tag.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.last_user)
---@field last_user? LuaPlayer 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.object_name)
---@field object_name string 
---[R]  
---The position of this tag.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.position)
---@field position MapPosition 
---[R]  
---The surface this tag belongs to.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.surface)
---@field surface LuaSurface 
---[R]  
---The unique ID for this tag on this force.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.tag_number)
---@field tag_number uint 
---[RW]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.text)
---@field text string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.valid)
---@field valid boolean 
local LuaCustomChartTag={
---Destroys this tag.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.destroy)
destroy=function()end,
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCustomChartTag.html#LuaCustomChartTag.help)
---@return string
help=function()end,
}


