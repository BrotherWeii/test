$PBExportHeader$testvalue.sra
$PBExportComments$Generated Application Object
forward
global type testvalue from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
int g_indata
end variables

global type testvalue from application
string appname = "testvalue"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\PowerBuilder\theme190"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
end type
global testvalue testvalue

type variables
//int instance_array[3] = {1,2,3}
string strInstanceArray[3] = {"122", "1233", "12345"}
int i_instance = 1;
end variables

on testvalue.create
appname="testvalue"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on testvalue.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Integer		li_1
//Integer		li_2=32767
//Integer		li_3 = 32768
//Integer		li_4 = -32768
//Integer		li_5 = -32769

//li_4 = 1 
//li_3 = 1
//li_2 = 1
//li_1 = 1

//Longptr	l1
//Longptr	l2	=	-2147483648
//Longptr	l3	=	+2147483647123456
//Longptr	l4	=	111

//l1 = 1
//l2 = 2
//l3 = 3
//l4 = 4;
constant string LS_HOMECITY = "Boston"
constant real LR_PI = 3.14159265

//LS_HOMECITY = "hello world!"

any arry[5] = {"test01", "test02", "test003"}

str m_str[]
m_str[1].array[1] = "test01"
m_str[1].array[2] = "test02"
m_str[1].array[3] = "test003"
m_str[2].array[1] = "test1111"
m_str[2].array[2] = "test2222"
int sum, sumRef, sumReadOnly

i_instance = 2;
strInstanceArray[1] = "local01";

//sum = add(1,5)
//sumRef = addref(1,5)
//sumreadonly = addreadonly(1,5)

openwithparm(w_001, "无敌的寂寞!")

end event

