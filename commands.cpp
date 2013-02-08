#include "commands.h"
#include "hsplua.h"
#include "chkstat.h"
#include "hsp/hsp3plugin.h"

void hsplua_cmd::hl_newstate() { // 新規Luaステート
	int statNum = exinfo->HspFunc_prm_getdi(luaStates.size()); // ステート管理番号
	if (statNum < 0) throw HSPERR_ILLEGAL_FUNCTION; // マイナスを指定してた場合
	if (luaStates.size() <= statNum) luaStates.resize(statNum + 1, NULL);
	luaStates[statNum] = luaL_newstate(); // 新規ステート
	if (luaStates[statNum] == NULL) throw HSPERR_OUT_OF_MEMORY;
	currentState = statNum;
	return;
}

void hsplua_cmd::hl_switchstate() { // Luaステート切り替え
	int statNum = exinfo->HspFunc_prm_geti(); // ステート管理番号
	checkState(statNum);
	currentState = statNum;
	return;
}

void hsplua_cmd::hl_close() { // Luaステート破棄
	int statNum = exinfo->HspFunc_prm_getdi(luaStates.size()); // ステート管理番号
	checkState(statNum);
	lua_close(luaStates[statNum]);
	luaStates[statNum] = NULL;
	return;
}
