#include "gc.h"
#include "hsplua.h"
#include "chkstat.h"
#include "hsp/hsp3plugin.h"

void hsplua_cmd::hl_gcstop() { // GC停止
	lua_gc(currState(), LUA_GCSTOP, 0);
	return;
}

void hsplua_cmd::hl_gcrestart() { // GC再開
	lua_gc(currState(), LUA_GCRESTART, 0);
	return;
}

void hsplua_cmd::hl_gccollect() { // GC実行
	lua_gc(currState(), LUA_GCCOLLECT, 0);
	return;
}

int hsplua_func::hl_gccount() { // Luaが使用しているメモリの量
	ref_val.dval = (double)lua_gc(currState(), LUA_GCCOUNTB, 0) +
		(double)(lua_gc(currState(), LUA_GCCOUNT, 0) * 1024);
	return HSPVAR_FLAG_DOUBLE;
}

void hsplua_cmd::hl_gcstep() { // GCステップ実行
	stat = lua_gc(currState(), LUA_GCSTEP, exinfo->HspFunc_prm_geti());
	return;
}

void hsplua_cmd::hl_gcsetpause() { // GC停止期間設定
	stat = lua_gc(currState(), LUA_GCSETPAUSE, exinfo->HspFunc_prm_geti());
	return;
}

void hsplua_cmd::hl_gcsetstepmul() { // GCステップ係数設定
	stat = lua_gc(currState(), LUA_GCSETSTEPMUL, exinfo->HspFunc_prm_geti());
	return;
}

int hsplua_func::hl_gcisrunning() { // GCが実行中かどうかを返す
	ref_val.ival = lua_gc(currState(), LUA_GCISRUNNING, 0);
	return HSPVAR_FLAG_INT;
}

void hsplua_cmd::hl_gcgen() { // 世代別GC
	lua_gc(currState(), LUA_GCGEN, 0);
	return;
}

void hsplua_cmd::hl_gcinc() { // インクリメンタルGC
	lua_gc(currState(), LUA_GCINC, 0);
	return;
}
