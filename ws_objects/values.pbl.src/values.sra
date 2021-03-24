$PBExportHeader$values.sra
$PBExportComments$Generated Application Object
forward
global type values from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
// 00. bool
Boolean		lbl_1
Boolean		lbl_2	=	True
Boolean		lbl_3	=	false

// 01. int or integer
Integer		gli_1
Integer		gli_2=32767
Integer		gli_3 = 32768
Integer		gli_4 = -32768
Integer		gli_5 = -32769

Int		gli_6
Int		gli_7=32767
Int		gli_8 = -32768
Int		gli_9 = -32768
Int		gli_10 = -32769

Integer	gli_11 = gli_1 + gli_6
Integer	gli_12 = gli_1 + gli_8

// 02. Unsignedinteger, Unsignedint or Unit
Unsignedinteger gui_1 = -1
Unsignedinteger gui_2 = 0
Unsignedinteger gui_3 = 65535
Unsignedinteger gui_4 = 65536

Unsignedinteger gui_5 = 65535
Unsignedinteger gui_6 = 65536

Unsignedinteger gui_7 = 65535
Unsignedinteger gui_8 = 65536

// 03. byte
Byte		glbt_1
Byte		glbt_2	=	255
Byte		glbt_3	=	256
Byte		glbt_4	=	-1
Byte		glbt_5 = 257

// 04. Longptr
Longptr	gllptr_1
Longptr	gllptr_2	=	-2147483648
Longptr	gllptr_3	=	+2147483647123456

// 05. long
Long		gll_1
Long		gll_2	=	-2147483648
Long		gll_3	=	+2147483647
Long		gll_4	=	gll_2 + gll_3

// 06. ulong
ulong     gul_1
ulong     gul_2 = 0
ulong     gul_3 = 4294967295
ulong     gul_4 = 4294967296

// 07. unsignedlong
Unsignedlong     gul_5
Unsignedlong     gul_6 = 0
Unsignedlong     gul_7 = 4294967295
Unsignedlong     gul_8 = 4294967296

// 08. longlong
LongLong		glll_1
LongLong		glll_2	=	-9223372036854775808 
LongLong		glll_3	=	9223372036854775807

LongLong		glll_4	=	glll_2 + glll_3

// 09. dec or decimal
decimal{6}		gldec_1 = 123.15555555
dec{3}	         gldec_2 = 123456.123456
Dec	              gldec_3 = 18446744073709551615
Dec	              gldec_4 = -18446744073709551615
Dec	              gldec_5 = 0.1234567890123456789012345678
Dec	              gldec_6 = 0.123456789012345678901234569

Decimal{3}	ldec_7
Dec{6}	ldec_8 = 9.999999
//Dec{3}	ldec_9 = ldec_8 + ldec_7    //PBIDE 也存在该问题

// 10. doule
Double	gldb_0
Double	gldb_1 = 2.2250738585073E-308 
Double	gldb_2 = 1.79769313486231E+308
Double	gldb_3 = -2.2250738585073E-308
Double	gldb_4 = -1.79769313486231E+308

// 11.real
Real		glr_1
Real		glr_2	=	3.402822E-38
Real		glr_3	=	3.402822E+38
Real		glr_4	=	-3.402822E-38
Real		glr_5	=	-3.402822E+38

// 12. char
char		lc_1
Character	lc_2
char		lc_3	=	'C'
char		lc_4	=	'c'
char		lc_5	=	'Char'
Character	lc_6	=	"Character"
Char		lc_7	=	Char(65)
Character	lc_8	=	char("testet")
character	lc_9	=	lc_3 + lc_4
char		lc_10	=	String(glll_3)
char		_Char	=	"65"
Char		lc_11	=	'"'
Char		lc_12	=	'~''
char      ls_letter, ls_Array[]

// 13. string
string gls_name = "Marical Jack son"
//ls_Array = ls_name
//ls_letter = ls_name


String		ls_1
String		_String	=	lc_6
String		_Str_Char	=	lc_3	+	lc_4	+	lc_7
Char		_Char2	=	_Str_Char

String		ls_2	=	_string + ls_1 //默认值 计算
String		ls_3	=	"     '    "
String		ls_4	=	"Here's a tring"
String		ls_5	=	'He said, "It~'s good!" '
String		ls_6	=	"He said ~"she said ~~~"Hi ~~~" ~" "
String		ls_7	=	"emp.Color = ~"0~tIf(stat=~~~"a~~~",255,16711680)~""











end variables

global type values from application
string appname = "values"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\PowerBuilder\theme190"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "21.0.0.9011"
end type
global values values

on values.create
appname="values"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on values.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_001)
end event

