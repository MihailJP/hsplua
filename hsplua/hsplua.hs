;--------------------------------------------------
; HSP �w���v �\�[�X�t�@�C�� (hs �`��)
; hs �t�@�C���̏����ɂ��ẮAHS_BIBLE.txt ���Q�Ƃ��Ă��������B

;--------------------------------------------------
; ���� hs �t�@�C���̃f�t�H���g�̃t�B�[���h�l��ݒ�

%dll
HSPLUA

%ver
; �o�[�W���� ���L��

%date
; ���t ���L��

%author
MihailJP

%url
https://github.com/MihailJP/hsplua

%note
hsplua.as���C���N���[�h���邱�ƁB

%type
�g������

%port
Win

%portinfo
; �ڐA�̃q���g ���L��

%index
hl_newstate
�V�KLua�X�e�[�g���쐬

%prm
p1
p1=0�`(-1) : �X�e�[�g�ԍ�

%inst
�V���� Lua �X�e�[�g���쐬���܂��B
���� Lua �@�\���Ăяo���O�ɁA�܂����̖��߂����s����K�v������܂��B
���̖��߂����s����ƁA�쐬���ꂽ�X�e�[�g���A�N�e�B�u�ɂȂ�܂��B

p1�ɂ̓X�e�[�g�Ǘ��p�̔ԍ����w�肵�܂��B
�ȗ����ꂽ�ꍇ�� -1 ���w�肳�ꂽ�ꍇ�A�����I�ɋ󂢂Ă���ԍ����I�΂�܂��B

�X�e�[�g�̍쐬�Ɏ��s�����ꍇ�A�G���[���������܂��B
���������ꍇ�́A stat �ɍ쐬���ꂽ�X�e�[�g�ԍ����������܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_switchstate
hl_close

%group
Lua�X�e�[�g�Ǘ�����

%index
hl_switchstate
�A�N�e�B�u��Lua�X�e�[�g��؂�ւ���

%prm
p1
p1=0�` : �X�e�[�g�ԍ�

%inst
�w�肳�ꂽ Lua �X�e�[�g���A�N�e�B�u�ɂ��܂��B
�ȍ~�̑���́A�w�肳�ꂽ Lua �X�e�[�g�ɑ΂��čs���܂��B
�w�肷��X�e�[�g�͗\�� hl_newstate �ŏ���������Ă���K�v������܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_newstate

%group
Lua�X�e�[�g�Ǘ�����

%index
hl_close
Lua�X�e�[�g���������

%prm
p1
p1=0�`(�ȗ���) : �X�e�[�g�ԍ�

%inst
�K�v�Ȃ��Ȃ��� Lua �X�e�[�g��������܂��B

p1�ɂ̓X�e�[�g�Ǘ��p�̔ԍ����w�肵�܂��B
�ȗ����ꂽ�ꍇ�� -1 ���w�肳�ꂽ�ꍇ�A���݃A�N�e�B�u�ȃX�e�[�g���������܂��B

�A�N�e�B�u�ȃX�e�[�g����������ꍇ�ł��A�A�N�e�B�u�ȃX�e�[�g�̔ԍ��͕ύX����܂���B
����ς݂̃X�e�[�g�ɑ΂��đ��삵�悤�Ƃ���ƁA�G���[���������܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_newstate

%group
Lua�X�e�[�g�Ǘ�����

%index
hl_pop
�X�^�b�N����l����������

%prm
p1
p1=1�`(1) : ��

%inst
Lua �̃X�^�b�N�����ԏ�̒l���������܂��B

p1���w�肳�ꂽ�ꍇ�A��ԏォ��w�肳�ꂽ�������X�^�b�N����l���������܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
; �֘A���� ���L��

%group
Lua�X�^�b�N���얽��

%index
hl_pushboolean
�u�[���l���X�^�b�N�ɐς�

%prm
p1
p1 : �i�[����l

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�l���u�[���l�Ƃ��Đς݂܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushfunction
�֐����X�^�b�N�ɐς�

%prm
*label
*label : ��ѐ惉�x��

%inst
Lua �̃X�^�b�N�ɁA�w�肳�ꂽ���x�����֐��Ƃ��Đς݂܂��B

Lua ����֐����Ă΂��ƁA�w�肳�ꂽ���x���� gosub ���܂��B
�֐��̎������́A�Ăяo���ꂽ���ɃX�^�b�N�Ɋi�[����Ă��܂��B

�֐�����߂�Ƃ��́A�߂�l���X�^�b�N�ɐς݁A
return �̈����ɖ߂�l�̌���(�����^��)�w�肵�Ă��������B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushinteger
�����l���X�^�b�N�ɐς�

%prm
p1
p1 : �i�[����l

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�l�𐮐��l�Ƃ��Đς݂܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushlightuserdata
�|�C���^���X�^�b�N�ɐς�

%prm
p1
p1 : �i�[����l

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�l���|�C���^�l�Ƃ݂Ȃ��Đς݂܂��B
���̒l�� Lua �̌y�ʃ��[�U�[�f�[�^�^�Ƃ��Ċi�[����܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushlstring
������^�ϐ��̓��e���X�^�b�N�ɐς�

%prm
p1, p2
p1=�ϐ�        : �i�[����o�b�t�@
p2=0�`(�ȗ���) : �i�[����T�C�Y

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ������ϐ��̒��g��ς݂܂��B
���̒l�� Lua �̕�����^�Ƃ��Ċi�[����܂��B

p2 �ɂ́A�i�[����o�b�t�@�̑傫�����w�肵�܂��B
p2 ���ȗ����ꂽ�ꍇ�Ap1 �̗v�f�̑傫�����w�肳�ꂽ���̂Ƃ݂Ȃ���܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushnil
nil�l���X�^�b�N�ɐς�

%prm

%inst
Lua �̃X�^�b�N�� nil �l��ς݂܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnumber
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushnumber
���������_���l���X�^�b�N�ɐς�

%prm
p1
p1 : �i�[����l

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�l�𕂓������_���l�Ƃ��Đς݂܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushstring
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushstring
��������X�^�b�N�ɐς�

%prm
p1
p1 : �i�[���镶����

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�������ς݂܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushvalue
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushvalue
�X�^�b�N���̕ʂ̒l���X�^�b�N�ɐς�

%prm
p1
p1 : �i�[����l�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�X�^�b�N�C���f�b�N�X�̒l��ς݂܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvarptr

%group
Lua�X�^�b�N���얽��

%index
hl_pushvarptr
�ϐ��̃|�C���^���X�^�b�N�ɐς�

%prm
p1
p1=�ϐ� : �i�[����ϐ�

%inst
Lua �̃X�^�b�N�ɁAp1 �Ŏw�肳�ꂽ�ϐ��̃|�C���^��ς݂܂��B
���̒l�� Lua �̌y�ʃ��[�U�[�f�[�^�^�Ƃ��Ċi�[����܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_pushfunction
hl_pushinteger
hl_pushlightuserdata
hl_pushlstring
hl_pushnil
hl_pushnumber
hl_pushstring
hl_pushvalue

%group
Lua�X�^�b�N���얽��

%index
hl_isboolean
�u�[���l���ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���u�[���l�Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_iscfunction
C�̊֐����ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�� C �̊֐��Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

hl_pushfunction �Ő��������֐��́A���ۂɂ� C �̃N���[�W���Ƃ��Ď�������Ă��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isfunction
�֐����ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���֐��Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushfunction
hl_isboolean
hl_iscfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_islightuserdata
�y�ʃ��[�U�[�f�[�^���ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���y�ʃ��[�U�[�f�[�^�Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isnil
nil�l���ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�� nil �Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isnone
�C���f�b�N�X���������ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�������Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B
���Ȃ킿�Ap1 �����݂̃X�^�b�N�̊O�����w���Ă���Ȃ�� 1 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isnoneornil
nil�l�܂��̓C���f�b�N�X���������ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���������A���e�� nil �Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnumber
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isnumber
���l���ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�����l�Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isstring
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isstring
�����񂩂ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e��������Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_istable
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_istable
�e�[�u�����ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���e�[�u���Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_isthread
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isthread
�X���b�h���ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���X���b�h�Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isuserdata

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_isuserdata
���[�U�[�f�[�^���ǂ����m�F����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�����[�U�[�f�[�^�Ȃ�� 1�A�����łȂ���� 0 ��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_isboolean
hl_iscfunction
hl_isfunction
hl_islightuserdata
hl_isnil
hl_isnone
hl_isnoneornil
hl_isnumber
hl_isstring
hl_istable
hl_isthread

%group
Lua�X�^�b�N��Ԏ擾�֐�

%type
�g���֐�

%index
hl_toboolean
�X�^�b�N����u�[���l���擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���u�[���l�ɒ����ĕԂ��܂��B
Lua �ł́Afalse �� nil �݂̂��U�ł���A����ȊO�̒l�͑S�Đ^�ƂȂ�܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushboolean
hl_isboolean
hl_tocfunction
hl_tointeger
hl_tonumber
hl_topointer
hl_tostring
hl_touserdata

%group
Lua�X�^�b�N�擾�֐�

%index
hl_tocfunction
�X�^�b�N����C�̊֐��̃|�C���^���擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�� C �̊֐��̃|�C���^�ŕԂ��܂��B
�C���f�b�N�X�̓��e���֐��łȂ���΁A�k���|�C���^���Ԃ�܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushfunction
hl_iscfunction
hl_isfunction
hl_toboolean
hl_tointeger
hl_tonumber
hl_topointer
hl_tostring
hl_touserdata

%group
Lua�X�^�b�N�擾�֐�

%index
hl_tointeger
�X�^�b�N���琮�����擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�𐮐��l�ɒ����ĕԂ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushinteger
hl_toboolean
hl_tocfunction
hl_tonumber
hl_topointer
hl_tostring
hl_touserdata

%group
Lua�X�^�b�N�擾�֐�

%index
hl_tonumber
�X�^�b�N���畂�������_�����擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�𕂓������_���l�ɒ����ĕԂ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushnumber
hl_isnumber
hl_toboolean
hl_tocfunction
hl_tointeger
hl_topointer
hl_tostring
hl_touserdata

%group
Lua�X�^�b�N�擾�֐�

%index
hl_topointer
�X�^�b�N����|�C���^���擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���|�C���^�ɒ����ĕԂ��܂��B
�A���A���e�����[�U�[�f�[�^�A�e�[�u���A�X���b�h�A�֐��̂����ꂩ�łȂ���΁A�k���|�C���^��Ԃ��܂��B

���̊֐��͒ʏ�A�f�o�b�O���̂��߂����Ɏg���܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_toboolean
hl_tocfunction
hl_tointeger
hl_tonumber
hl_tostring
hl_touserdata

%group
Lua�X�^�b�N�擾�֐�

%index
hl_tostring
�X�^�b�N���當������擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e�𕶎���ɕϊ����A���̒l��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushlstring
hl_pushstring
hl_isstring
hl_toboolean
hl_tocfunction
hl_tointeger
hl_tonumber
hl_topointer
hl_touserdata

%group
Lua�X�^�b�N�擾�֐�

%index
hl_touserdata
�X�^�b�N���烆�[�U�[�f�[�^�̃|�C���^���擾����

%prm
(p1)
p1 : �X�^�b�N�̃C���f�b�N�X

%inst
Lua �̃X�^�b�N�Ŏw�肳�ꂽ�C���f�b�N�X�̓��e���t�����[�U�[�f�[�^�ł���΁A���̃A�h���X��Ԃ��܂��B
���e���y�ʃ��[�U�[�f�[�^�ł���΁A���̃|�C���^��Ԃ��܂��B
����ȊO�̏ꍇ�A�k���|�C���^��Ԃ��܂��B

%sample
; �T���v���X�N���v�g ���L��

%href
hl_pushlightuserdata
hl_islightuserdata
hl_isuserdata
hl_toboolean
hl_tocfunction
hl_tointeger
hl_tonumber
hl_topointer
hl_tostring

%group
Lua�X�^�b�N�擾�֐�

