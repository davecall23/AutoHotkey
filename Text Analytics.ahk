#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ;automatically replaces previous instance

Suspend, On ;script is suspended by default

{ ; Change the Tray icon
   if FileExist(A_WorkingDir "\Icons\Text Analytics.ico")
      Menu, Tray, Icon, %A_WorkingDir%\Icons\Text Analytics.ico
   else
      MsgBox Unable to find ico file
   return
}

F1::Suspend,toggle ;toggle the suspended script

{ ;use in TA
	::or::OR
	::loor::or
	::and::AND
	:*:loand::and
	:*:ant::AND NOT
	:*:tmt::content_termcount:[ TO ]{Left 5}
	:*:/*::/**/{Left 2}
	SC027:: ;semicolon as a special key: https://www.autohotkey.com/docs/KeyList.htm#SpecialKeys
		{
			send {Right}
			return
		}
	::ce::
	{
		sleep 50
		send content_exact:""{Left 1}
		return
	}
}


