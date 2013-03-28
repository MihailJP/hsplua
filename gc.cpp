#include "gc.h"
#include "hsplua.h"
#include "chkstat.h"
#include "hsp/hsp3plugin.h"

void hsplua_cmd::hl_gcstop() { // GC��~
	lua_gc(currState(), LUA_GCSTOP, 0);
	return;
}

void hsplua_cmd::hl_gcrestart() { // GC�ĊJ
	lua_gc(currState(), LUA_GCRESTART, 0);
	return;
}

void hsplua_cmd::hl_gccollect() { // GC���s
	lua_gc(currState(), LUA_GCCOLLECT, 0);
	return;
}

int hsplua_func::hl_gccount() { // Lua���g�p���Ă��郁�����̗�
	ref_val.dval = (double)lua_gc(currState(), LUA_GCCOUNTB, 0) +
		(double)(lua_gc(currState(), LUA_GCCOUNT, 0) * 1024);
	return HSPVAR_FLAG_DOUBLE;
}

void hsplua_cmd::hl_gcstep() { // GC�X�e�b�v���s
	stat = lua_gc(currState(), LUA_GCSTEP, exinfo->HspFunc_prm_geti());
	return;
}

void hsplua_cmd::hl_gcsetpause() { // GC��~���Ԑݒ�
	stat = lua_gc(currState(), LUA_GCSETPAUSE, exinfo->HspFunc_prm_geti());
	return;
}

void hsplua_cmd::hl_gcsetstepmul() { // GC�X�e�b�v�W���ݒ�
	stat = lua_gc(currState(), LUA_GCSETSTEPMUL, exinfo->HspFunc_prm_geti());
	return;
}

int hsplua_func::hl_gcisrunning() { // GC�����s�����ǂ�����Ԃ�
	ref_val.ival = lua_gc(currState(), LUA_GCISRUNNING, 0);
	return HSPVAR_FLAG_INT;
}

void hsplua_cmd::hl_gcgen() { // �����GC
	lua_gc(currState(), LUA_GCGEN, 0);
	return;
}

void hsplua_cmd::hl_gcinc() { // �C���N�������^��GC
	lua_gc(currState(), LUA_GCINC, 0);
	return;
}
