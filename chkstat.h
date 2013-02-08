#ifndef __CHKSTAT_H
#define __CHKSTAT_H

#include "lua/include/lua.hpp"

void checkState(int statNum);
lua_State* currState();

#endif
