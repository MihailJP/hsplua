#include "commands.h"
#include "hsplua.h"
#include "chkstat.h"
#include "hsp/hsp3plugin.h"

void hsplua_cmd::hl_newstate() { // �V�KLua�X�e�[�g
	int statNum = exinfo->HspFunc_prm_getdi(-1); // �X�e�[�g�Ǘ��ԍ�
	if (statNum == -1) {
		statNum = luaStates.size();
		for (int i = 0; i < luaStates.size(); ++i) {
			if (luaStates[statNum] == NULL) {
				statNum = i; break;
			}
		}
	}
	if (statNum < 0) throw HSPERR_ILLEGAL_FUNCTION; // �}�C�i�X���w�肵�Ă��ꍇ
	if (luaStates.size() <= statNum) luaStates.resize(statNum + 1, NULL);
	luaStates[statNum] = luaL_newstate(); // �V�K�X�e�[�g
	if (luaStates[statNum] == NULL) throw HSPERR_OUT_OF_MEMORY;
	currentState = statNum;
	stat = statNum;
	return;
}

void hsplua_cmd::hl_switchstate() { // Lua�X�e�[�g�؂�ւ�
	int statNum = exinfo->HspFunc_prm_geti(); // �X�e�[�g�Ǘ��ԍ�
	checkState(statNum);
	currentState = statNum;
	return;
}

void hsplua_cmd::hl_close() { // Lua�X�e�[�g�j��
	int statNum = exinfo->HspFunc_prm_getdi(luaStates.size()); // �X�e�[�g�Ǘ��ԍ�
	checkState(statNum);
	lua_close(luaStates[statNum]);
	luaStates[statNum] = NULL;
	return;
}
