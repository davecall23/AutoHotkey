Gui, Add, Text, vCount, 0 comments are read.
Gui, Show

Count := 0

~NumpadAdd::   ;Default behavior is to block keystroke, ~ allows it to pass through
  Count := Count + 1
  GuiControl,,Count, %Count% comments are read.
  KeyWait, NumpadAdd  ;Wait for NumpadAdd to be released
return

GuiClose:
  ExitApp
return