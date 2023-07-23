extern "C" {
#include "LuaResourceCode/lua.h"
#include "LuaResourceCode/lualib.h"
#include "LuaResourceCode/lauxlib.h"
}

int main()
{
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, "LuaCode/3_luaLoop.lua");

    lua_close(L);
    return 0;
}