
//
//		HSPLUA
//

#include <windows.h>
#include "hsplua.h"
#include "hsp/hsp3plugin.h"
#include "commands.h"
#include "pushpop.h"
#include "chktype.h"
#include "readval.h"
#include <cstdlib>

 /*------------------------------------------------------------*/
/*
		controller
*/
/*------------------------------------------------------------*/

std::vector<lua_State*> luaStates;
unsigned currentState = 0;

static int cmdfunc( int cmd )
{
	//		実行処理 (命令実行時に呼ばれます)
	//
	code_next();							// 次のコードを取得(最初に必ず必要です)

	switch( cmd ) {							// サブコマンドごとの分岐
		case 0x00: hsplua_cmd::hl_newstate();             break;
		case 0x01: hsplua_cmd::hl_switchstate();          break;
		case 0x02: hsplua_cmd::hl_close();                break;
		case 0x10: hsplua_cmd::hl_pop();                  break;
		case 0x11: hsplua_cmd::hl_pushboolean();          break;
		case 0x12: hsplua_cmd::hl_pushfunction();         break;
		case 0x13: hsplua_cmd::hl_pushinteger();          break;
		case 0x14: hsplua_cmd::hl_pushlightuserdata();    break;
		case 0x15: hsplua_cmd::hl_pushlstring();          break;
		case 0x16: hsplua_cmd::hl_pushnil();              break;
		case 0x17: hsplua_cmd::hl_pushnumber();           break;
		case 0x18: hsplua_cmd::hl_pushstring();           break;
		case 0x19: hsplua_cmd::hl_pushvalue();            break;
		case 0x1a: hsplua_cmd::hl_pushvarptr();           break;
		default: puterror( HSPERR_UNSUPPORTED_FUNCTION ); break;
	}
	return RUNMODE_RUN;
}

/*------------------------------------------------------------*/

RefVal ref_val;						// 返値のための変数
char* ref_sval = NULL;

static void *reffunc( int *type_res, int cmd )
{
	//		関数・システム変数の実行処理 (値の参照時に呼ばれます)
	//

	int answerType = 0;

	//			'('で始まるかを調べる
	//
	if ( *type != TYPE_MARK ) puterror( HSPERR_INVALID_FUNCPARAM );
	if ( *val != '(' ) puterror( HSPERR_INVALID_FUNCPARAM );
	code_next();

	switch( cmd ) {							// サブコマンドごとの分岐
		case 0x80: *type_res = hsplua_func::hl_isboolean();       break;
		case 0x81: *type_res = hsplua_func::hl_iscfunction();     break;
		case 0x82: *type_res = hsplua_func::hl_isfunction();      break;
		case 0x83: *type_res = hsplua_func::hl_islightuserdata(); break;
		case 0x84: *type_res = hsplua_func::hl_isnil();           break;
		case 0x85: *type_res = hsplua_func::hl_isnone();          break;
		case 0x86: *type_res = hsplua_func::hl_isnoneornil();     break;
		case 0x87: *type_res = hsplua_func::hl_isnumber();        break;
		case 0x88: *type_res = hsplua_func::hl_isstring();        break;
		case 0x89: *type_res = hsplua_func::hl_istable();         break;
		case 0x8a: *type_res = hsplua_func::hl_isthread();        break;
		case 0x8b: *type_res = hsplua_func::hl_isuserdata();      break;
		case 0x90: *type_res = hsplua_func::hl_toboolean();       break;
		case 0x91: *type_res = hsplua_func::hl_tocfunction();     break;
		case 0x92: *type_res = hsplua_func::hl_tointeger();       break;
		case 0x93: *type_res = hsplua_func::hl_tonumber();        break;
		case 0x94: *type_res = hsplua_func::hl_topointer();       break;
		case 0x95: *type_res = hsplua_func::hl_tostring();        break;
		case 0x96: *type_res = hsplua_func::hl_touserdata();      break;
		default: puterror( HSPERR_UNSUPPORTED_FUNCTION );         break;
	}

	//			'('で終わるかを調べる
	//
	if ( *type != TYPE_MARK ) puterror( HSPERR_INVALID_FUNCPARAM );
	if ( *val != ')' ) puterror( HSPERR_INVALID_FUNCPARAM );
	code_next();

	return (void *)&ref_val;
}

/*------------------------------------------------------------*/

static int termfunc( int option )
{
	//		終了処理 (アプリケーション終了時に呼ばれます)
	//
	return 0;
}

/*------------------------------------------------------------*/
/*
		interface
*/
/*------------------------------------------------------------*/

int WINAPI DllMain (HINSTANCE hInstance, DWORD fdwReason, PVOID pvReserved)
{
	//		DLLエントリー (何もする必要はありません)
	//
	free(ref_sval); ref_sval = NULL;
	return TRUE;
}


EXPORT void WINAPI hsp3cmdinit( HSP3TYPEINFO *info )
{
	//		プラグイン初期化 (実行・終了処理を登録します)
	//
	hsp3sdk_init( info );		// SDKの初期化(最初に行なって下さい)

	ref_sval = (char*)malloc(64);

	info->cmdfunc = cmdfunc;		// 実行関数(cmdfunc)の登録
	info->reffunc = reffunc;		// 参照関数(reffunc)の登録
	info->termfunc = termfunc;		// 終了関数(termfunc)の登録
}

/*------------------------------------------------------------*/

