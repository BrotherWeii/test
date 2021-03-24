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

open(w_001)

end event

