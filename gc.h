#ifndef __GC_H
#define __GC_H

namespace hsplua_cmd {
	void hl_gcstop();
	void hl_gcrestart();
	void hl_gccollect();
	void hl_gcstep();
	void hl_gcsetpause();
	void hl_gcsetstepmul();
	void hl_gcgen();
	void hl_gcinc();
}
namespace hsplua_func {
	int hl_gccount();
	int hl_gcisrunning();
}

#endif
