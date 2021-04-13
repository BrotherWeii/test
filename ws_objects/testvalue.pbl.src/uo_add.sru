$PBExportHeader$uo_add.sru
forward
global type uo_add from adoresultset
end type
end forward

global type uo_add from adoresultset
end type
global uo_add uo_add

event constructor;int a,b
return a+b
end event

on uo_add.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_add.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

