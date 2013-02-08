#include "labelfunc.h"
#include <stdexcept>
#include "hsplua.h"
#include "hsp/hsp3plugin.h"

int labelFunc(lua_State* l) {
	unsigned short* const label = (unsigned short*)lua_tointeger(l, lua_upvalueindex(1));
	code_call(label);
	return stat;
}
