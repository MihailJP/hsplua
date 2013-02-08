
//
//		HSPLUA
//

#include <windows.h>
#include "hsplua.h"
#include "hsp/hsp3plugin.h"
#include "commands.h"

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
	case 0x00:
		hsplua_cmd::hl_newstate(); break;
	case 0x01:
		hsplua_cmd::hl_switchstate(); break;
	case 0x02:
		hsplua_cmd::hl_close(); break;
	default:
		puterror( HSPERR_UNSUPPORTED_FUNCTION );
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

