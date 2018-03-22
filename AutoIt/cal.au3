Run("calc.exe")
WinWaitActive("计算器")
;Sleep(5)
ControlClick("计算器","","Button3")
ControlClick("计算器","","Button23")
ControlClick("计算器","","Button9")
ControlClick("计算器","","Button28")
Sleep(5)

;$Result=WinGetText("计算器")
$Result=ControlGetText("计算器","",403)
if $Result=="15. " Then
   FileWriteLine("C:\result.txt","正确：和期望结果 15一致")
Else
   FileWriteLine("C:\result.txt","错误：和期望结果15不一致,实际结果结果为"&$Result)
EndIf
;WinClose("计算器")