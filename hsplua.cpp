
//
//		HSPLUA
//

#include <windows.h>
#include "hsplua.h"
#include "hsp/hsp3plugin.h"
#include "commands.h"
#include "pushpop.h"

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

static double ref_dval;						// 返値のための変数

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
	case 0x00:								// 関数１
		break;
	default:
		puterror( HSPERR_UNSUPPORTED_FUNCTION );
	}

	//			'('で終わるかを調べる
	//
	if ( *type != TYPE_MARK ) puterror( HSPERR_INVALID_FUNCPARAM );
	if ( *val != ')' ) puterror( HSPERR_INVALID_FUNCPARAM );
	code_next();

	*type_res = HSPVAR_FLAG_DOUBLE;		// 返値のタイプを指定する
	return (void *)&ref_dval;
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
	return TRUE;
}


EXPORT void WINAPI hsp3cmdinit( HSP3TYPEINFO *info )
{
	//		プラグイン初期化 (実行・終了処理を登録します)
	//
	hsp3sdk_init( info );		// SDKの初期化(最初に行なって下さい)

	info->cmdfunc = cmdfunc;		// 実行関数(cmdfunc)の登録
	info->reffunc = reffunc;		// 参照関数(reffunc)の登録
	info->termfunc = termfunc;		// 終了関数(termfunc)の登録
}

/*------------------------------------------------------------*/

