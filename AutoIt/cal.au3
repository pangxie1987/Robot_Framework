Run("calc.exe")
WinWaitActive("������")
;Sleep(5)
ControlClick("������","","Button3")
ControlClick("������","","Button23")
ControlClick("������","","Button9")
ControlClick("������","","Button28")
Sleep(5)

;$Result=WinGetText("������")
$Result=ControlGetText("������","",403)
if $Result=="15. " Then
   FileWriteLine("C:\result.txt","��ȷ����������� 15һ��")
Else
   FileWriteLine("C:\result.txt","���󣺺��������15��һ��,ʵ�ʽ�����Ϊ"&$Result)
EndIf
;WinClose("������")