#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ;automatically replaces previous instance

{ ; Change the Tray icon
   if FileExist(A_WorkingDir "\Icons\Lucky.ico")
      Menu, Tray, Icon, %A_WorkingDir%\Icons\Lucky.ico
   else
      MsgBox Unable to find ico file
   return
}

#Include Abbreviations.ahk ; The name of the file to be included, which is assumed to be in the startup/working directory if an absolute path is not specified (both Autohotkey files are in the same folder)
; Shortcuts for directories in different laptops

#s:: ;Open Autohotkey's folder
   IfExist C:\Users\daweiz\Dropbox\PC settings\AutoHotKey
      Run C:\Users\daweiz\Dropbox\PC settings\AutoHotKey
   IfExist D:\Dropbox\PC settings\AutoHotKey
      Run D:\Dropbox\PC settings\AutoHotKey
   IfExist C:\Users\Dave\Dropbox\PC settings\AutoHotKey
	  Run C:\Users\Dave\Dropbox\PC settings\AutoHotKey
return


#w:: ;Open Work folder
   IfExist C:\Users\daweiz\Dropbox\Dawei\Private working folder
      Run C:\Users\daweiz\Dropbox\Dawei\Private working folder
   IfExist D:\Dropbox\Dawei\Private working folder
      Run D:\Dropbox\Dawei\Private working folder
   IfExist C:\Users\Dave\Dropbox\Dawei\Private working folder
      Run C:\Users\Dave\Dropbox\Dawei\Private working folder
return

#p:: ; Open Passwords Excel
   IfExist C:\Users\daweiz\Dropbox\Dawei\Passwords.xlsx
      Run C:\Users\daweiz\Dropbox\Dawei\Passwords.xlsx
   IfExist D:\Dropbox\Dawei\Passwords.xlsx
      Run D:\Dropbox\Dawei\Passwords.xlsx
   IfExist C:\Users\Dave\Dropbox\Dawei\Passwords.xlsx	  
      Run C:\Users\Dave\Dropbox\Dawei\Passwords.xlsx
return

{ ;Launching application/page
   ^n::run Notepad
   #m::run https://genius.euro.confirmit.com/login
   #q::
	    Run https://www.google.com
        WinWait Google - Mozilla Firefox
        WinActivate Google - Mozilla Firefox
	  Return   
   #y::
      Run https://www.youtube.com/
      WinWait YouTube - Mozilla Firefox
      WinActivate YouTube - Mozilla Firefox
      return
}

{ ;Use GUI to display calendar
   #c::
      StringRight, CurrentWeek, A_YWeek, 2
      Gui,Add,MonthCal,4
      Gui,add,Text,,The current week is week%CurrentWeek%, %A_YYYY%
      Gui,show,,Calender
   return
}

{ ;Input time & date at the present time
   #n::
      FormatTime,TimeNow,,yyyy-MM-dd dddd, HH:mm
      Send %TimeNow%
   return
}

{ ;Set current Window on top
   ^#t::
      WinGetTitle, Title, A
      MsgBox,4100, WindowOnTop, Set "%Title%" always on top? ; 4100 = 4+4096, check the MsgBox option table, Yes/No options + always on top option
      IfMsgBox,no
         WinSet,AlwaysOnTop,Off,A ;Set the current window not on top
      IfMsgBox,yes
         WinSet,AlwaysOnTop,On,A ;Set the current window on top
   return
}
   
^Esc::Suspend ;Suspend the autohotkey shortcut

{ ;System volume control
   #Numpad0::Send {Volume_Mute}
   #Numpad8::Send {Volume_Up 3}
   #Numpad2::Send {Volume_Down 3}
}

{ ;Toggle hidden file profile
   #f::
      RegRead, Showall_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden ;retrieve DWORD value and save it to Showall_Status
      if Showall_Status = 2 ;if the folders are hidden
         {
            MsgBox,4,Hidden Folder toggle,Some folders are hidden, would you like to reveal them?
            IfMsgBox, No
               return
            IfMsgBox, Yes
               {
               RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1 ;save value 1 into DWORD (turn into reveal mode)
               Run ::{20d04fe0-3aea-1069-a2d8-08002b30309d} ; run "My Computer"
               WinWait ahk_class CabinetWClass ;wait until the window is active
			   sleep 2000
               Send {F5} ;refresh in explorer (necessary for the toggle to take effect)
               return
            }
      }
      else
         {
            MsgBox,4,Hidden Folder toggle,The hidden folders are shown, would you like to hide them?
            IfMsgBox, No
               return
            IfMsgBox, Yes
               {
               RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
               Run ::{20d04fe0-3aea-1069-a2d8-08002b30309d}
               WinWait ahk_class CabinetWClass
			   sleep 700
               Send {F5}
               return
            }
      }
   return
}

{ ;Make the laptop sleep
   #Escape::
      gui,new,,Power Status Change
      gui,font,s12,Arial bold
      gui,add,Button,x10 y10 h30 w100 gPCSleep,Sleep ; add a glable to differentiate the same button name in different scripts
      gui,add,Button,x120 y10 h30 w100 Default gPCLock,Lock ;setting the lock button to be the default selected button when this window is triggered
      gui,add,Button,x230 y10 h30 w100 gPCHibernate,Hibernate
      gui,add,Button,x340 y10 h30 w100 gPCReboot,Reboot
      gui,add,Button,x450 y10 h30 w100 gPCShutdown,Shutdown
      ;gui,add,Button,x560 y10 h30 w100 gPowerChangeCancel,Cancel
      gui show
      return

      PCSleep:
         Gui destroy
         DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
         return
      PCLock:
         Gui destroy
         Run rundll32.exe user32.dll`,LockWorkStation
         return
      PCHibernate:
         Gui destroy
         DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
         return
      PCReboot:
         MsgBox,4,Reboot,The PC will restart, continue?
         IfMsgBox,No
         return
         IfMsgBox,Yes
            Shutdown,2
         ExitApp
      PCShutdown:
         MsgBox,4,Power off,Do you really want to turn off the PC?
         IfMsgBox,No ;it's better to put "no" option in the first, since even if you want to cancel the action by choosing "no", it will still start again from the start, if "yes" is the first one, the "yes" action will be carried out, resulting in unexpected outcome
         return
         IfMsgBox,Yes
            Shutdown,1
         ExitApp
		/*
		PowerChangeCancel:
        Gui destroy
		*/
      return
   return 
}

{ ;this lable is used to close the active gui window by pressing Esc key
   GuiEscape:
      Gui destroy
   return
}


{ ;alt + F4 reassignment
	!`::
	  WinGetTitle, Title, A
	  gui,new,,Warning
      gui,font,s9,Arial bold
      gui,add,Button,x10 y10 h25 Default gClose,Closing this? ; add a glable to differentiate the same button name in different scripts, without using w value, the width is flexible
	  gui,add,Text,y15 h25 cBlue,"%Title%"
      gui show	  
      return

      Close:
		 Gui destroy
         Send !{F4}
         return
   return 
}

{ ;reload the scripts
	F5::
	SetTitleMatchMode 2 ;only match part of the file name
	if !WinActive(" - Notepad++") ;when the active Window is not Notepad++
		Send {Ctrl down}{r}
		Send {Ctrl up}
	
	if WinActive("C:\Users\daweiz\Dropbox\PC settings\AutoHotKey\Shortcut.ahk - Notepad++")
		Reload
	if WinActive("C:\Users\daweiz\Dropbox\PC settings\AutoHotKey\Abbreviations.ahk - Notepad++")
		Run C:\Users\daweiz\Dropbox\PC settings\AutoHotKey\Shortcut.ahk
	if WinActive("C:\Users\daweiz\Dropbox\PC settings\AutoHotKey\Text Analytics.ahk - Notepad++")
		Run C:\Users\daweiz\Dropbox\PC settings\AutoHotKey\Text Analytics.ahk
		
	return
}

{ ;enclose the text in ()
	^9::
		send ^x
		sleep 200
		buffer1 := clipboard
		send (%buffer1%)
		buffer1 =
		
	Return
}
{ ;enclose the text in ""
	^'::
		send ^x
		sleep 200
		buffer2 := clipboard
		send "%buffer2%"
		buffer2 =
	Return
}
{ ;enclose the text in []
	^[::
		send ^x
		sleep 200
		buffer2 := clipboard
		send [%buffer2%]
		buffer2 =
	Return
}