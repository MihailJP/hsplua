#include "chkstat.h"
#include "hsplua.h"
#include "hsp/hsp3plugin.h"

void checkState(int statNum) {
	try {
		if (luaStates.at(statNum) == NULL)
			throw HSPERR_ILLEGAL_FUNCTION;
	} catch (std::out_of_range&) {
		throw HSPERR_ILLEGAL_FUNCTION;
	}
	return;
}

lua_State* currState() {
	checkState(currentState);
	return luaStates[currentState];
}

