Option Explicit
Dim obj

set obj = CreateObject("shell.Application")

obj.shellExecute "kio.bat",,,"",0
Do

obj.shellExecute "rroll.bat",,,"",0
wscript.sleep 5000
Loop