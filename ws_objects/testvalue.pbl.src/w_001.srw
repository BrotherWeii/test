$PBExportHeader$w_001.srw
forward
global type w_001 from window
end type
type cb_8 from commandbutton within w_001
end type
type cb_7 from commandbutton within w_001
end type
type dw_1 from datawindow within w_001
end type
type sle_1 from singlelineedit within w_001
end type
type cb_6 from commandbutton within w_001
end type
type rb_1 from radiobutton within w_001
end type
type cb_5 from commandbutton within w_001
end type
type cb_4 from commandbutton within w_001
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
cb_8 cb_8
cb_7 cb_7
dw_1 dw_1
sle_1 sle_1
cb_6 cb_6
rb_1 rb_1
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_001 w_001

on w_001.create
this.cb_8=create cb_8
this.cb_7=create cb_7
this.dw_1=create dw_1
this.sle_1=create sle_1
this.cb_6=create cb_6
this.rb_1=create rb_1
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_8,&
this.cb_7,&
this.dw_1,&
this.sle_1,&
this.cb_6,&
this.rb_1,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_001.destroy
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.dw_1)
destroy(this.sle_1)
destroy(this.cb_6)
destroy(this.rb_1)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

event open;sle_1.Text = message.stringparm

uo_add u_add1
u_add1 = create uo_add

end event

type cb_8 from commandbutton within w_001
integer x = 3269
integer y = 980
integer width = 457
integer height = 132
integer taborder = 50
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Connect"
end type

event clicked;//tran_SQLCA = create transaction
//testname = "ODBC_ASA"
// Profile PB Demo DB V2019R3
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=PB Demo DB V2019R3;UID=dba;PWD=sql',DelimitIdentifier='No'"
connect;

If SQLCA.sqlcode<>0 Then
	//ls_result = testname + " Connect To DB = "+ String ( "Success!" ) +"~r~n"
	Messagebox("DB Connect",  "Failed!")
Else
	//ls_result = testname +" Connect To DB = "+ String ( "Fail!" ) +"~r~n"
	Messagebox("DB Connect","Sucessed!")
End If
end event

type cb_7 from commandbutton within w_001
integer x = 3808
integer y = 980
integer width = 457
integer height = 132
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Retrive"
end type

event clicked;	dw_1.dataobject = "dw_ole02"
	//dw_1.dataobject = "dw_self02"
	dw_1.SetTransObject ( SQLCA )
	dw_1.Retrieve()		
end event

type dw_1 from datawindow within w_001
integer x = 1225
integer y = 1112
integer width = 3045
integer height = 744
integer taborder = 40
string title = "none"
string dataobject = "dw_ole01"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_001
integer x = 1202
integer y = 820
integer width = 869
integer height = 168
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

type cb_6 from commandbutton within w_001
integer x = 206
integer y = 1148
integer width = 544
integer height = 136
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "convert"
end type

event clicked;string str1 = "12.11234134"
dec{3}	              ldec_2 = 123456.123456
//Decimal dec1 = Convert.ToDecimal(str)

double dl_data1 = 10
int nl_data2 = 1.2545

char c_1 = Char(str1)
//decimal{10}  dec_1 = dec(str1)
//double ddb_1 = Double(str)
integer li_1 = integer(str1)
long ll_1 = Long(str1)
Real rea_1 = Real(str1)

// data
date date1, date2
date1 = 2003-02-16
date2 = 2003-04-28

// time
time time1, time2
time1 = 12:22:44
time2 = 12:34:22

// datatime
datetime dt 
dt=datetime (date(string( today() ,"dd/mm/yyyy")),  &
   time(string ( today() ,"hh:mm:ss ")))


end event

type rb_1 from radiobutton within w_001
integer x = 1193
integer y = 136
integer width = 512
integer height = 96
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "radiobutton1"
end type

type cb_5 from commandbutton within w_001
integer x = 1202
integer y = 620
integer width = 462
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "object Array"
end type

event clicked;any commbut[]
commbut[1] = cb_1
commbut[2] = rb_1
end event

type cb_4 from commandbutton within w_001
boolean visible = false
integer x = 1198
integer y = 340
integer width = 457
integer height = 132
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Array"
end type

event clicked;// 12.string->char
string ls_name, ls_List
char ls_letter, ls_Array[], ls_Tmp[]
ls_Name = "Jordan"
ls_Letter = ls_name
ls_Array = ls_name

// 13.char->string
ls_Tmp[1] = 'n'
ls_Tmp[2] = 'e'
ls_Tmp[3] = 'w'
ls_List = ls_Tmp

//struct array List
str ss[]
ss[1].array[1] = "11"
ss[1].array[2] = "12"
ss[1].array[3] = "13"
ss[1].array[4] = "14"

ss[2].array[1] = "21"
ss[2].array[2] = "22"
ss[2].array[3] = "23"
ss[2].array[4] = "24"

long ll_i, ll_j
for ll_i=1 to upperbound(ss)
	for ll_j = 1 to upperbound(ss[ll_i].array)
	next
next

// array to string, char
any Li_Arr[] = {"array1", "array2", "array3", "array4"}
string str_array[1] = Li_Arr
char c_array[1] = Li_Arr

// array to double
any Db_Array[] = {4.1233, 5.78899, 6.7888, 8.9088}
double dArray[1] = db_Array

// array to int
any Li_IntArray[4] = {1,3,4,5}
int nDataArray[] = Li_intArray

string str_bounds[4] = {"test1", "test2", "test3", "test4"}
//str_bounds[0] = "0"
//str_bounds[-1] = "-1"
//str_bounds[4] = "4"

string str = "123";
str = "232"

string str1 = "0"
str1 = str + str1;






end event

type cb_3 from commandbutton within w_001
integer x = 183
integer y = 860
integer width = 558
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "calculation"
end type

event clicked;// 00. bool
Boolean b_1
Boolean b_2 

// 01. int or integer
Integer		li_1
li_1 = 32767 + 32767;

Int		li_6
Int		li_7=32767
li_6 = li_7 + li_7;

// 02. Unsignedinteger, Unsignedint or Unit
Unsignedinteger ui_1 = -1
Unsignedinteger ui_2 = 0
ui_2 = 65535 + 65535


// 03. byte
Byte		lbt_3	=	-1 + 255


// 04. Longptr
Longptr	llptr_1
llptr_1 = 72057594037927935 -1

// 05. long
Long		ll_4	=	4294967295 + 4294967295

// 06. ulong
ulong     ul_4 = 4294967295 + 4294967295

// 07. unsignedlong
Unsignedlong     unl_5 = 4294967295 + 4294967295

// 08. longlong
LongLong		lll_3	=	9223372036854775807 + 1

//LongLong		lll_4	=	glll_2 + glll_3     出现编译错误， PB崩溃
//glll_3 = lll_3

// 09. dec or decimal
dec{3}	              ldec_2 = 123456.123456
ldec_2 = 123.15555555 + 123.15555555
//Dec{3}	lldec_9 = ldec_8 + ldec_7    //PBIDE 也存在该问题

// 10. doule
Double		ldb_2 = 1.79769313486231E+308
Double		ldb_4 = ldb_2 + ldb_2

// 11.real
//Real		lr_2	=	3.402822E+38
//lr_2 = lr_2 - 2.402822E+38

// 12.string->char
//string ls_name, ls_List
//char ls_letter, ls_Array[], ls_Tmp[]
//ls_Name = "Jordan"
//ls_Letter = ls_name
//ls_Array = ls_name

// 13.char->string
//ls_Tmp[1] = 'n'
//ls_Tmp[2] = 'e'
//ls_Tmp[3] = 'w'
//ls_List = ls_Tmp

//
//if b_2 =  true then
//	b_2 = false
//	b_1 = true
//else
//	b_1 = false
//End If

// or
//if b_2 = false or b_1 = false Then
//	b_1 = true
//else
//	b_1 = false
//End if
//

// and
//if b_2 = false and b_1 = true Then
//	b_2 = true
//else
//	b_1 = false
//End if

// not 
//if not b_2 = false Then
//	b_2 = true
//else
//	b_2 = false
//End if

// String

//String str1 = Math.Round(dec,2)















end event

type cb_2 from commandbutton within w_001
integer x = 169
integer y = 608
integer width = 576
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "SetNULL"
end type

event clicked;// 00. bool
Boolean			lbl_1
setNULL(lbl_1)


// 01. int or integer
Integer		li_1
SetNULL(li_1)

// 02. Unsignedinteger, Unsignedint or Unit
Unsignedinteger ui_1 = -1
SetNULL(ui_1)

// 03. byte
Byte		lbt_1
SetNULL(lbt_1)

// 04. Longptr
Longptr	llptr_1
SetNULL(llptr_1)

// 05. long
Long		ll_1
SetNULL(ll_1)


// 06. ulong
ulong     ul_1
SetNULL(ul_1)

// 07. unsignedlong
Unsignedlong     ul_5
SetNULL(ul_5)

// 08. longlong
LongLong		lll_1
SetNULL(lll_1)

//LongLong		lll_4	=	glll_2 + glll_3     出现编译错误， PB崩溃
//glll_3 = lll_3

// 09. dec or decimal
decimal{6}	      ldec_1 = 123.15555555
SetNULL(ldec_1)
dec{3}	              ldec_2 = 123456.123456
SetNULL(ldec_2)

// 10. doule
Double		ldb_0
SetNULL(ldb_0)

// 11.real
Real		lr_1
SetNULL(lr_1)

// 12. char
char		llc_1
SetNULL(llc_1)

// 13. string
string 		ls_name = "Marical Jack son"
SetNULL(ls_name)

end event

type cb_1 from commandbutton within w_001
integer x = 165
integer y = 344
integer width = 576
integer height = 144
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "showValue"
end type

event clicked;// 00. bool
Boolean			lbl_1
Boolean			lbl_2	=	True
Boolean			lbl_3	=	false


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
Long		ll_4	=	ll_2 + ll_3

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
character	llc_9	=	llc_3 + llc_4
char		llc_10	=	String(lll_3)
char		l_Char	=	"65"
Char		llc_11	=	'"'
Char		llc_12	=	'~''
char      	lls_letter, lls_Array[]

// 13. string
string 		ls_name = "Marical Jack son"
lls_Array = ls_name
lls_letter = ls_name

String		lls_1
String		l_String	=	llc_6
String		l_Str_Char	=	llc_3	+	llc_4	+	llc_7
Char		l_Char2	=	l_Str_Char

String		lls_2	=	l_string + lls_1 //默认值 计算
String		lls_3	=	"     '    "
String		lls_4	=	"Here's a tring"
String		lls_5	=	'He said, "It~'s good!" '
String		lls_6	=	"He said ~"she said ~~~"Hi ~~~" ~" "
String		lls_7	=	"emp.Color = ~"0~tIf(stat=~~~"a~~~",255,16711680)~""

// data
date date1, date2
date1 = 2003-02-16
date2 = 2003-04-28

// time
time time1, time2
time1 = 12:22:44
time2 = 12:34:22

// datatime
datetime dt 
dt=datetime (date(string( today() ,"dd/mm/yyyy")),  &
   time(string ( today() ,"hh:mm:ss ")))




end event

