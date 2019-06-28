#include "lua.h"
#include "luaxlib.h"
#include "lualib.h"

int main(int argc, char** argv) {

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    //seu código

    lua_close(L);
    return 0;

}
