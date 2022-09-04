---@meta
---@diagnostic disable

--$Factorio 1.1.68
--$Overlay 5
--$Section LuaLampControlBehavior
-- This file is automatically generated. Edits will be overwritten.

---Control behavior for lamps.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLampControlBehavior.html)
---@class LuaLampControlBehavior:LuaGenericOnOffControlBehavior
---[R]  
---The color the lamp is showing, if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLampControlBehavior.html#LuaLampControlBehavior.color)
---@field color? Color 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLampControlBehavior.html#LuaLampControlBehavior.object_name)
---@field object_name string 
---[RW]  
---`true` if the lamp should set the color from the circuit network signals.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLampControlBehavior.html#LuaLampControlBehavior.use_colors)
---@field use_colors boolean 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLampControlBehavior.html#LuaLampControlBehavior.valid)
---@field valid boolean 
local LuaLampControlBehavior={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLampControlBehavior.html#LuaLampControlBehavior.help)
---@return string
help=function()end,
}


