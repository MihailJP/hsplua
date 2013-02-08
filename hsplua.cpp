
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
	//		���s���� (���ߎ��s���ɌĂ΂�܂�)
	//
	code_next();							// ���̃R�[�h���擾(�ŏ��ɕK���K�v�ł�)

	switch( cmd ) {							// �T�u�R�}���h���Ƃ̕���
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

static double ref_dval;						// �Ԓl�̂��߂̕ϐ�

static void *reffunc( int *type_res, int cmd )
{
	//		�֐��E�V�X�e���ϐ��̎��s���� (�l�̎Q�Ǝ��ɌĂ΂�܂�)
	//

	int answerType = 0;

	//			'('�Ŏn�܂邩�𒲂ׂ�
	//
	if ( *type != TYPE_MARK ) puterror( HSPERR_INVALID_FUNCPARAM );
	if ( *val != '(' ) puterror( HSPERR_INVALID_FUNCPARAM );
	code_next();

	switch( cmd ) {							// �T�u�R�}���h���Ƃ̕���
	case 0x00:								// �֐��P
		break;
	default:
		puterror( HSPERR_UNSUPPORTED_FUNCTION );
	}

	//			'('�ŏI��邩�𒲂ׂ�
	//
	if ( *type != TYPE_MARK ) puterror( HSPERR_INVALID_FUNCPARAM );
	if ( *val != ')' ) puterror( HSPERR_INVALID_FUNCPARAM );
	code_next();

	*type_res = HSPVAR_FLAG_DOUBLE;		// �Ԓl�̃^�C�v���w�肷��
	return (void *)&ref_dval;
}

/*------------------------------------------------------------*/

static int termfunc( int option )
{
	//		�I������ (�A�v���P�[�V�����I�����ɌĂ΂�܂�)
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
	//		DLL�G���g���[ (��������K�v�͂���܂���)
	//
	return TRUE;
}


EXPORT void WINAPI hsp3cmdinit( HSP3TYPEINFO *info )
{
	//		�v���O�C�������� (���s�E�I��������o�^���܂�)
	//
	hsp3sdk_init( info );		// SDK�̏�����(�ŏ��ɍs�Ȃ��ĉ�����)

	info->cmdfunc = cmdfunc;		// ���s�֐�(cmdfunc)�̓o�^
	info->reffunc = reffunc;		// �Q�Ɗ֐�(reffunc)�̓o�^
	info->termfunc = termfunc;		// �I���֐�(termfunc)�̓o�^
}

/*------------------------------------------------------------*/

