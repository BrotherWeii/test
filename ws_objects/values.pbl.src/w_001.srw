$PBExportHeader$w_001.srw
forward
global type w_001 from window
end type
type cb_3 from commandbutton within w_001
end type
type cb_2 from commandbutton within w_001
end type
type cb_1 from commandbutton within w_001
end type
end forward

global type w_001 from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_001 w_001

on w_001.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_001.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_3 from commandbutton within w_001
integer x = 82
integer y = 644
integer width = 562
integer height = 124
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "SetValue"
end type

event clicked;// 01. int
gli_1 = 1;

// 02. unsigned int
gui_1 = 65535

// 03. byte
glbt_2 = 255

// 04. Longptr
gllptr_1 = 2147483647123456

// 05. long
gll_1 = 4294967295

// 06. ulong or unsignedlong
gul_1 = 4294967295
gul_5 = 4294967296

// 07. longlong
glll_1 = 2147483647123456

// 08. dec or decimal
ldec_7 = 0.123456789012345678901234569

// 09. double
gldb_0 = 8.123456789101112

// 10. real
glr_1 = 3.402822E+38

// 11. char 
lc_1 = 'c'

// 12. string
ls_1 = "NULL"

// 13. bool




end event

type cb_2 from commandbutton within w_001
integer x = 82
integer y = 376
integer width = 553
integer height = 128
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "SetNULL"
end type

event clicked;// 01. int
SetNull(gli_1)

// 02. unsigned int
SetNULL(gui_1)

// 03. byte
SetNULL(glbt_2)

// 04. Longptr
SetNULL(gllptr_1)

// 05. long
SetNULL(gll_1)

// 06. ulong or unsignedlong
SetNULL(gul_1)
SetNULL(gul_5)

// 07. longlong
SetNULL(glll_1)

// 08. dec or decimal
SetNULL(ldec_7)

// 09. double
SetNULL(gldb_0)

// 10. real
SetNULL(glr_1)

// 11. char 
SetNULL(lc_1)

// 12. string
SetNULL(ls_1)






end event

type cb_1 from commandbutton within w_001
integer x = 73
integer y = 108
integer width = 558
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ShowValue"
end type

event clicked;testvalue()

// 00. bool


// 01. int or integer
Integer		li_1
Integer		li_2=32767
Integer		li_3 = 32768
Integer		li_4 = -32768
Integer		li_5 = -32769

Int		li_6
Int		li_7=32767
Int		li_8 = -32768
Int		li_9 = -32768
Int		li_10 = -32769

Integer	li_11 = gli_1 + gli_6
Integer	li_12 = gli_1 + gli_8

// 02. Unsignedinteger, Unsignedint or Unit
Unsignedinteger ui_1 = -1
Unsignedinteger ui_2 = 0
Unsignedinteger ui_3 = 65535
Unsignedinteger ui_4 = 65536

Unsignedinteger ui_5 = 65535
Unsignedinteger ui_6 = 65536

Unsignedinteger ui_7 = 65535
Unsignedinteger ui_8 = 65536

// 03. byte
Byte		lbt_1
Byte		lbt_2	=	255
Byte		lbt_3	=	256
Byte		lbt_4	=	-1
Byte		lbt_5 = 257

// 04. Longptr
Longptr	llptr_1
Longptr	llptr_2	=	-2147483648
Longptr	llptr_3	=	+2147483647123456

// 05. long
Long		ll_1
Long		ll_2	=	-2147483648
Long		ll_3	=	+2147483647
Long		ll_4	=	gll_2 + gll_3

// 06. ulong
ulong     ul_1
ulong     ul_2 = 0
ulong     ul_3 = 4294967295
ulong     ul_4 = 4294967296

// 07. unsignedlong
Unsignedlong     ul_5
Unsignedlong     ul_6 = 0
Unsignedlong     ul_7 = 4294967295
Unsignedlong     ul_8 = 4294967296

// 08. longlong
LongLong		lll_1
LongLong		lll_2	=	-9223372036854775808 
LongLong		lll_3	=	9223372036854775807

//LongLong		lll_4	=	glll_2 + glll_3     出现编译错误， PB崩溃
//glll_3 = lll_3

// 09. dec or decimal
decimal{6}	      ldec_1 = 123.15555555
dec{3}	              ldec_2 = 123456.123456
Dec	              ldec_3 = 18446744073709551615
Dec	              ldec_4 = -18446744073709551615
Dec	              ldec_5 = 0.1234567890123456789012345678
Dec	              ldec_6 = 0.123456789012345678901234569

Decimal{3}	lldec_7
Dec{6}		lldec_8 = 9.999999
//Dec{3}	lldec_9 = ldec_8 + ldec_7    //PBIDE 也存在该问题

// 10. doule
Double		ldb_0
Double		ldb_1 = 2.2250738585073E-308 
Double		ldb_2 = 1.79769313486231E+308
Double		ldb_3 = -2.2250738585073E-308
Double		ldb_4 = -1.79769313486231E+308

// 11.real
Real		lr_1
Real		lr_2	=	3.402822E-38
Real		lr_3	=	3.402822E+38
Real		lr_4	=	-3.402822E-38
Real		lr_5	=	-3.402822E+38

// 12. char
char		llc_1
Character	llc_2
char		llc_3	=	'C'
char		llc_4	=	'c'
char		llc_5	=	'Char'
Character	llc_6	=	"Character"
Char		llc_7	=	Char(65)
Character	llc_8	=	char("testet")
character	llc_9	=	lc_3 + lc_4
char		llc_10	=	String(glll_3)
char		l_Char	=	"65"
Char		llc_11	=	'"'
Char		llc_12	=	'~''
char      	lls_letter, lls_Array[]

// 13. string
string 		ls_name = "Marical Jack son"
lls_Array = ls_name
lls_letter = ls_name

String		lls_1
String		l_String	=	lc_6
String		l_Str_Char	=	lc_3	+	lc_4	+	lc_7
Char		l_Char2	=	_Str_Char

String		lls_2	=	_string + ls_1 //默认值 计算
String		lls_3	=	"     '    "
String		lls_4	=	"Here's a tring"
String		lls_5	=	'He said, "It~'s good!" '
String		lls_6	=	"He said ~"she said ~~~"Hi ~~~" ~" "
String		lls_7	=	"emp.Color = ~"0~tIf(stat=~~~"a~~~",255,16711680)~""


end event

