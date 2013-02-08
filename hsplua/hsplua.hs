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

