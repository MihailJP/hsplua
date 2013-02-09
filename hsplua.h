#ifndef __HSPLUA_H
#define __HSPLUA_H

#include "lua/include/lua.hpp"
#include <vector>

extern std::vector<lua_State*> luaStates;
extern unsigned currentState;

extern union RefVal {
	int ival;
	double dval;
	char* sval;
} ref_val;
extern char* ref_sval;

#endif
