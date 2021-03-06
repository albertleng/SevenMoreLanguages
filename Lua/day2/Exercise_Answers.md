## Your Turn

### Find...
- The `LuaRocks` system for installing Lua modules onto your system.  
Ans/Notes:  
Ref: [LuaRocks](https://luarocks.org/)  
`LuaRocks` is the package manager for Lua modules.  
It allows you to create and install Lua modules as self-contained packages called `rocks`. You can download and install LuaRocks on Unix and Windows. [Get Started](https://luarocks.org/#quick-start)  
Current status: Facing problem in installation. Asked in [luarocks/luarocks](https://github.com/luarocks/luarocks/issues/1278) and [Stackoverflow](https://stackoverflow.com/questions/66095535/luarocks-installation-in-win-10-does-nothing)  
Answered in <https://stackoverflow.com/a/66097449/6611532>  

Running `luarocks` gives me the following error/warning:  
```bash
PS C:\Users\CMS\SevenMoreLanguages> luarocks
Warning: Lua 5.3 interpreter not found at C:\Program Files\LUA

Modules may not install with the correct configurations. You may want to configure the path prefix to your build of Lua 5.3 using

   luarocks config --local lua_dir <your-lua-prefix>
...
Configuration:
   Lua:
      Version    : 5.3
      Interpreter: C:\Program Files\LUA/luarocks.exe (ok)
      LUA_DIR    : C:\Program Files\LUA (ok)
      LUA_BINDIR : C:\Program Files\LUA (ok)
      LUA_INCDIR :  (not found)
                   ****************************************
                   Use the command

                      luarocks config variables.LUA_INCDIR <dir>

                   to fix the location
                   ****************************************
      LUA_LIBDIR :  (not found)
                   ****************************************
                   Use the command

                      luarocks config variables.LUA_LIBDIR <dir>

                   to fix the location
                   ****************************************

   Configuration files:
      System  : C:/Program Files/luarocks/config-5.3.lua (not found)
      User    : C:/Users/CMS/AppData/Roaming/luarocks/config-5.3.lua (not found)

   Rocks trees in use:
      C:\Users\CMS\AppData\Roaming/luarocks ("user")
```
TODO: To refer to [](https://stackoverflow.com/a/54700412/6611532) and resolve.

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
#### Verification in Lua Prompt:  
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
Refer to line 13 of [strict.lua](strict.lua).  
#### Verification in Lua Prompt:
```lua
> dofile('strict.lua')
> treasure.gold = 50
> =treasure.gold
50
>
> treasure.gold = nil
> =treasure.gold
strict.lua:7: Invalid key: gold
stack traceback:
        [C]: in function 'error'
        strict.lua:7: in function '__index'
        stdin:1: in main chunk
        [C]: in ?
>
```