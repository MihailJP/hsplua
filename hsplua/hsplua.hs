;--------------------------------------------------
; HSP ヘルプ ソースファイル (hs 形式)
; hs ファイルの書式については、HS_BIBLE.txt を参照してください。

;--------------------------------------------------
; この hs ファイルのデフォルトのフィールド値を設定

%dll
HSPLUA

%ver
; バージョン を記入

%date
; 日付 を記入

%author
MihailJP

%url
https://github.com/MihailJP/hsplua

%note
hsplua.asをインクルードすること。

%type
拡張命令

%port
Win

%portinfo
; 移植のヒント を記入

%index
hl_newstate
新規Luaステートを作成

%prm
p1
p1=0～(-1) : ステート番号

%inst
新しい Lua ステートを作成します。
他の Lua 機能を呼び出す前に、まずこの命令を実行する必要があります。
この命令を実行すると、作成されたステートがアクティブになります。

p1にはステート管理用の番号を指定します。
省略された場合や -1 が指定された場合、自動的に空いている番号が選ばれます。

ステートの作成に失敗した場合、エラーが発生します。
成功した場合は、 stat に作成されたステート番号が代入されます。

%sample
; サンプルスクリプト を記入

%href
hl_switchstate
hl_close

%group
Luaステート管理命令

%index
hl_switchstate
アクティブなLuaステートを切り替える

%prm
p1
p1=0～ : ステート番号

%inst
指定された Lua ステートをアクティブにします。
以降の操作は、指定された Lua ステートに対して行われます。
指定するステートは予め hl_newstate で初期化されている必要があります。

%sample
; サンプルスクリプト を記入

%href
hl_newstate

%group
Luaステート管理命令

%index
hl_close
Luaステートを解放する

%prm
p1
p1=0～(省略可) : ステート番号

%inst
必要なくなった Lua ステートを解放します。

p1にはステート管理用の番号を指定します。
省略された場合や -1 が指定された場合、現在アクティブなステートが解放されます。

アクティブなステートを解放した場合でも、アクティブなステートの番号は変更されません。
解放済みのステートに対して操作しようとすると、エラーが発生します。

%sample
; サンプルスクリプト を記入

%href
hl_newstate

%group
Luaステート管理命令

%index
hl_pop
スタックから値を除去する

%prm
p1
p1=1～(1) : 個数

%inst
Lua のスタックから一番上の値を除去します。

p1が指定された場合、一番上から指定された個数だけスタックから値を除去します。

%sample
; サンプルスクリプト を記入

%href
; 関連項目 を記入

%group
Luaスタック操作命令

%index
hl_pushboolean
ブール値をスタックに積む

%prm
p1
p1 : 格納する値

%inst
Lua のスタックに、p1 で指定された値をブール値として積みます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushfunction
関数をスタックに積む

%prm
*label
*label : 飛び先ラベル

%inst
Lua のスタックに、指定されたラベルを関数として積みます。

Lua から関数が呼ばれると、指定されたラベルに gosub します。
関数の実引数は、呼び出された時にスタックに格納されています。

関数から戻るときは、戻り値をスタックに積み、
return の引数に戻り値の個数を(整数型で)指定してください。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushinteger
整数値をスタックに積む

%prm
p1
p1 : 格納する値

%inst
Lua のスタックに、p1 で指定された値を整数値として積みます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushlightuserdata
ポインタをスタックに積む

%prm
p1
p1 : 格納する値

%inst
Lua のスタックに、p1 で指定された値をポインタ値とみなして積みます。
この値は Lua の軽量ユーザーデータ型として格納されます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushlstring
文字列型変数の内容をスタックに積む

%prm
p1, p2
p1=変数        : 格納するバッファ
p2=0～(省略可) : 格納するサイズ

%inst
Lua のスタックに、p1 で指定された文字列変数の中身を積みます。
この値は Lua の文字列型として格納されます。

p2 には、格納するバッファの大きさを指定します。
p2 が省略された場合、p1 の要素の大きさが指定されたものとみなされます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushnil
nil値をスタックに積む

%prm

%inst
Lua のスタックに nil 値を積みます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushnumber
浮動小数点数値をスタックに積む

%prm
p1
p1 : 格納する値

%inst
Lua のスタックに、p1 で指定された値を浮動小数点数値として積みます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushstring
文字列をスタックに積む

%prm
p1
p1 : 格納する文字列

%inst
Lua のスタックに、p1 で指定された文字列を積みます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushvalue
スタック内の別の値をスタックに積む

%prm
p1
p1 : 格納する値のインデックス

%inst
Lua のスタックに、p1 で指定されたスタックインデックスの値を積みます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_pushvarptr
変数のポインタをスタックに積む

%prm
p1
p1=変数 : 格納する変数

%inst
Lua のスタックに、p1 で指定された変数のポインタを積みます。
この値は Lua の軽量ユーザーデータ型として格納されます。

%sample
; サンプルスクリプト を記入

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
Luaスタック操作命令

%index
hl_gcstop
ガーベジコレクタを停止する

%prm

%inst
ガーベジコレクタの自動実行を停止します。

自動的なガーベジコレクションを再開するには、hl_gcrestart 命令を使用します。
hl_gccollect 命令を使用することで、明示的にガーベジコレクションを実行します。

%sample
; サンプルスクリプト を記入

%href
hl_gcrestart
hl_gccollect
hl_gcstep

%group
Luaガーベジコレクタ制御命令

%index
hl_gcrestart
ガーベジコレクタを再開する

%prm

%inst
ガーベジコレクタの自動実行を再開します。

%sample
; サンプルスクリプト を記入

%href
hl_gcstop
hl_gccollect
hl_gcstep

%group
Luaガーベジコレクタ制御命令

%index
hl_gccollect
ガーベジコレクションを実行する

%prm

%inst
ガーベジコレクションの完全なサイクルを実行します。

%sample
; サンプルスクリプト を記入

%href
hl_gcstop
hl_gcrestart
hl_gcstep

%group
Luaガーベジコレクタ制御命令

%index
hl_gcstep
ガーベジコレクションをステップ実行する

%prm
(p1)
p1 : ステップサイズ

%inst
ガーベジコレクションをステップ実行します。p1 にはステップサイズを指定します。
このステップでガーベジコレクションのサイクルが終了した場合、stat に 1 が返ります。

%sample
; サンプルスクリプト を記入

%href
hl_gcstop
hl_gcrestart
hl_gccollect

%group
Luaガーベジコレクタ制御命令

%index
hl_gcsetpause
ガーベジコレクタの停止期間を設定する

%prm
p1
p1 : 設定する値

%inst
ガーベジコレクタの停止期間を p1 に設定します。
stat に以前の値が返ります。

%sample
; サンプルスクリプト を記入

%href
hl_gcsetstepmul

%group
Luaガーベジコレクタ制御命令

%index
hl_gcsetstepmul
ガーベジコレクタのステップ係数を設定する

%prm
p1
p1 : 設定する値

%inst
ガーベジコレクタのステップ係数を p1 に設定します。
stat に以前の値が返ります。

%sample
; サンプルスクリプト を記入

%href
hl_gcsetpause

%group
Luaガーベジコレクタ制御命令

%index
hl_gcgen
世代別ガーベジコレクションを指示する

%prm

%inst
世代別ガーベジコレクションに変更します。
Lua 5.2.1 では、これは実験的な機能であることに注意してください。

%sample
; サンプルスクリプト を記入

%href
hl_gcinc

%group
Luaガーベジコレクタ制御命令

%index
hl_gcinc
インクリメンタルガーベジコレクションを指示する

%prm

%inst
インクリメンタルガーベジコレクションに変更します。
Lua 5.2.1 では、これはデフォルトのモードです。

%sample
; サンプルスクリプト を記入

%href
hl_gcgen

%group
Luaガーベジコレクタ制御命令

%index
hl_gccount
Lua が使用しているメモリの量を返す

%prm
()

%inst
Lua が使用している現在のメモリ量を返します。返り値は浮動小数点型で、単位はキロバイトです。

%sample
; サンプルスクリプト を記入

%href
; 関連項目 を記入

%group
Luaガーベジコレクタ制御関数

%index
hl_gcisrunning
ガーベジコレクタが実行中かどうかを返す

%prm
()

%inst
ガーベジコレクタが実行中であれば真、そうでなければ偽を返します。

%sample
; サンプルスクリプト を記入

%href
; 関連項目 を記入

%group
Luaガーベジコレクタ制御関数

%index
hl_isboolean
ブール値かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容がブール値ならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_iscfunction
Cの関数かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が C の関数ならば 1、そうでなければ 0 を返します。

hl_pushfunction で生成される関数は、実際には C のクロージャとして実装されています。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isfunction
関数かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が関数ならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_islightuserdata
軽量ユーザーデータかどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が軽量ユーザーデータならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isnil
nil値かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が nil ならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isnone
インデックスが無効かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスが無効ならば 1、そうでなければ 0 を返します。
すなわち、p1 が現在のスタックの外側を指しているならば 1 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isnoneornil
nil値またはインデックスが無効かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が無効か、内容が nil ならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isnumber
数値かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が数値ならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isstring
文字列かどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容が文字列ならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_istable
テーブルかどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容がテーブルならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isthread
スレッドかどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容がスレッドならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_isuserdata
ユーザーデータかどうか確認する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容がユーザーデータならば 1、そうでなければ 0 を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック状態取得関数

%type
拡張関数

%index
hl_toboolean
スタックからブール値を取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容をブール値に直して返します。
Lua では、false と nil のみが偽であり、それ以外の値は全て真となります。

%sample
; サンプルスクリプト を記入

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
Luaスタック取得関数

%index
hl_tocfunction
スタックからCの関数のポインタを取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容を C の関数のポインタで返します。
インデックスの内容が関数でなければ、ヌルポインタが返ります。

%sample
; サンプルスクリプト を記入

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
Luaスタック取得関数

%index
hl_tointeger
スタックから整数を取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容を整数値に直して返します。

%sample
; サンプルスクリプト を記入

%href
hl_pushinteger
hl_toboolean
hl_tocfunction
hl_tonumber
hl_topointer
hl_tostring
hl_touserdata

%group
Luaスタック取得関数

%index
hl_tonumber
スタックから浮動小数点数を取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容を浮動小数点数値に直して返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック取得関数

%index
hl_topointer
スタックからポインタを取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容をポインタに直して返します。
但し、内容がユーザーデータ、テーブル、スレッド、関数のいずれかでなければ、ヌルポインタを返します。

この関数は通常、デバッグ情報のためだけに使われます。

%sample
; サンプルスクリプト を記入

%href
hl_toboolean
hl_tocfunction
hl_tointeger
hl_tonumber
hl_tostring
hl_touserdata

%group
Luaスタック取得関数

%index
hl_tostring
スタックから文字列を取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容を文字列に変換し、その値を返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック取得関数

%index
hl_touserdata
スタックからユーザーデータのポインタを取得する

%prm
(p1)
p1 : スタックのインデックス

%inst
Lua のスタックで指定されたインデックスの内容がフルユーザーデータであれば、そのアドレスを返します。
内容が軽量ユーザーデータであれば、そのポインタを返します。
それ以外の場合、ヌルポインタを返します。

%sample
; サンプルスクリプト を記入

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
Luaスタック取得関数

