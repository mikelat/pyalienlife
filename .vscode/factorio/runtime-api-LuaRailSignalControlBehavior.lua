---@meta
---@diagnostic disable

--$Factorio 1.1.68
--$Overlay 5
--$Section LuaRailSignalControlBehavior
-- This file is automatically generated. Edits will be overwritten.

---Control behavior for rail signals.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html)
---@class LuaRailSignalControlBehavior:LuaControlBehavior
---[RW]  
---The circuit condition when controlling the signal through the circuit network.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.circuit_condition)
---@field circuit_condition CircuitConditionDefinition 
---[RW]  
---If this will close the rail signal based off the circuit condition.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.close_signal)
---@field close_signal boolean 
---[RW]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.green_signal)
---@field green_signal SignalID 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.object_name)
---@field object_name string 
---[RW]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.orange_signal)
---@field orange_signal SignalID 
---[RW]  
---If this will read the rail signal state.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.read_signal)
---@field read_signal boolean 
---[RW]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.red_signal)
---@field red_signal SignalID 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.valid)
---@field valid boolean 
local LuaRailSignalControlBehavior={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRailSignalControlBehavior.html#LuaRailSignalControlBehavior.help)
---@return string
help=function()end,
}


