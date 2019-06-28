
#include <stdio.h>
#include "/usr/include/lua5.1/lua.h"
#include "/usr/include/lua5.1lualib.h"
#include "/usr/include/lua5.1/lauxlib.h"

/* the Lua interpreter */
lua_State* L;

int main ( int argc, char *argv[] )
{
        /* initialize Lua */
        L = lua_open();

        /* load various Lua libraries */
        lua_baselibopen(L);
        luaopen_table(L);
        luaopen_io(L);
        luaopen_string(L);
        luaopen_math(L);
    
        /* cleanup Lua */
        lua_close(L);

        return 0;
}
//fonte:https://debian-administration.org/article/264/Embedding_a_scripting_language_inside_your_C/C_code
