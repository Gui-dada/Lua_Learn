// main.cpp
extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

int main() {
    // 创建 Lua 状态
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);  // 打开标准库

    // 执行 Lua 代码
    
    luaL_dostring(L, "print('Hello from Lua in VS!')");

    // 关闭 Lua 状态
    lua_close(L);

    return 0;
}