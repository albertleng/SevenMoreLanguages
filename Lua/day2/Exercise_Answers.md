## Your Turn

### Find...
- The `LuaRocks` system for installing Lua modules onto your system.  
Ans/Notes:  
Ref: [LuaRocks](https://luarocks.org/)  
`LuaRocks` is the package manager for Lua modules.  
It allows you to create and install Lua modules as self-contained packages called `rocks`. You can download and install LuaRocks on Unix and Windows. [Get Started](https://luarocks.org/#quick-start)
Current status: Facing problem in installation. Asked in [luarocks/luarocks](https://github.com/luarocks/luarocks/issues/1278) and [Stackoverflow](https://stackoverflow.com/questions/66095535/luarocks-installation-in-win-10-does-nothing)
- The open source LOOP Library that implements a more sophisticated scheduler than the one we've written here.
    Ref: <https://git.tecgraf.puc-rio.br/engdist/loop/-/blob/06dd23c4e5099586e189959aa474344f534d8f39/lua/loop/thread/Scheduler.lua>
- The list of all metatable functions that Lua recognizes (in addition to the __tostring, __index and __newindex functions we used)  
Ans/Notes:  
    Ref: [13 Metatables and Metamethods](https://www.lua.org/pil/13.html), [Metamethods Tutorial](http://lua-users.org/wiki/MetamethodsTutorial#:~:text=A%20metatable%20is%20a%20regular,when%20a%20specific%20event%20occurs.), [Metatable Events](http://lua-users.org/wiki/MetatableEvents)
- The name of the table where Lua keeps its global variables.  
Ans/Notes:  
Lua keeps all its global variables in a regular table, call the `environment`, `_G`.  
Ref: [14 - The Environment](https://www.lua.org/pil/14.html)

### Do (Easy):
- Write a function called concatenate(a1, a2) that takes two arrays and returns a new array with all the elements of a1 followed by all the elements of a2.  
Ans: [day2_easy_concat.lua](day2_easy_concat.lua)  
Verification in Lua Prompt:  
```lua
> dofile('day2_easy_concat.lua')
> a = {1, 2, 3}
> b = {4, 5, 6}
> c = concatenate(a, b)
> for _, v in pairs(c) do
>>   print(v)
>> end
1
2
3
4
5
6
>
```
- Our strict table implementation in `Reading and Writing`, on page 19 doesn't provide a way to delete items from the table. If we try the usual approach, `treasure.gold = nil`, we get a duplicate key error. Modify `strict_write()` to allow deleting keys (by setting their values to `nil`).  
Ans:
