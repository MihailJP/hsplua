#ifndef __CHKTYPE_H
#define __CHKTYPE_H

namespace hsplua_func {
	int hl_isboolean();
	int hl_iscfunction();
	int hl_isfunction();
	int hl_islightuserdata();
	int hl_isnil();
	int hl_isnone();
	int hl_isnoneornil();
	int hl_isnumber();
	int hl_isstring();
	int hl_istable();
	int hl_isthread();
	int hl_isuserdata();
}

#endif
