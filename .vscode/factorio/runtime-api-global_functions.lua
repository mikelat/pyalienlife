---@meta
---@diagnostic disable

--$Factorio 1.1.68
--$Overlay 5
--$Section global_functions
-- This file is automatically generated. Edits will be overwritten.

---`localised_print()` allows printing [LocalisedString](https://lua-api.factorio.com/latest/Concepts.html#LocalisedString) to stdout without polluting the Factorio [log file](https://wiki.factorio.com/Log_file). This is primarily useful when communicating with external tools that launch Factorio as a child process.
---@param string LocalisedString
localised_print=function(string)end
---`log()` can print [LocalisedStrings](https://lua-api.factorio.com/latest/Concepts.html#LocalisedString) to the Factorio [log file](https://wiki.factorio.com/Log_file). This, in combination with the serpent library, makes debugging in the data stage easier because it allows the inspection of entire prototype tables. For example, printing all properties of the sulfur item prototype can be done like so: `log(serpent.block(data.raw["item"]["sulfur"]))`
---@param string LocalisedString
log=function(string)end
---Factorio provides the `table_size()` function as a simple way to determine the size of tables with non-continuous keys, as the standard `#` operator does not work correctly for these. The function is a C++ implementation of the following Lua code, which is faster than doing the same in Lua:
---
---```
---local function size(t)
---    local count = 0
---    for k,v in pairs(t) do
---        count = count + 1
---    end
---    return count
---end
---```
---
---Note that `table_size()` does not work correctly for [LuaCustomTable](https://lua-api.factorio.com/latest/LuaCustomTable.html), their size has to be determined with [LuaCustomTable::length](https://lua-api.factorio.com/latest/LuaCustomTable.html#LuaCustomTable.length) instead.
---@param table table
---@return uint
table_size=function(table)end

