#ifndef __PUSHPOP_H
#define __PUSHPOP_H

namespace hsplua_cmd {
	void hl_pop();
	void hl_pushboolean();
	void hl_pushfunction();
	void hl_pushinteger();
	void hl_pushlightuserdata();
	void hl_pushlstring();
	void hl_pushnil();
	void hl_pushnumber();
	void hl_pushstring();
	void hl_pushvalue();
	void hl_pushvarptr();
}

#endif
