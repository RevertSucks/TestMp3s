# How To Use  
as long as you have write/readfile this should work
but first get the loadstring
```lua
loadstring(game:HttpGet(https://raw.githubusercontent.com/RevertSucks/TestMp3s/main/main.lua))()
```
now set a _G. value above that
```lua
_G.providedurl = "https://raw.githubusercontent.com/RevertSucks/TestMp3s/Songs/UGK.mp3"
```
and it should now look like this
```lua
_G.providedurl = "https://raw.githubusercontent.com/RevertSucks/TestMp3s/Songs/UGK.mp3"
loadstring(game:HttpGet(https://raw.githubusercontent.com/RevertSucks/TestMp3s/main/main.lua))()
```
and thats it! execute. if you want to change the song all you have to do is change the name at the end where it says "UGK.mp3". Make sure you use %20 as space and not space
