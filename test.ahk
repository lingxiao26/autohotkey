; !q::
;   ; InputBox, OutputVar, Question 1, What is your first name?
;   ; MsgBox, %OutputVar%
;   ; MsgBox, %A_AhkVersion%
;   MsgBox % Format("ahk version: {1}", A_AhkVersion)
; Return 

; If (getKeyState("shift")) {
;   MsgBox shift is pressed
; }

; !q::
;   Gui, Font, s13 underline, Ubuntu Mono
;   Gui, Add, Text, cBlue gLaunchGoogle, Click here to launch Google.

;   ; 或者可以使用 Link 控件:
;   Gui, Add, Link,, Click <a href="www.google.com">here</a> to launch Google.
;   Gui, Font, norm

;   Gui, Add, Text,, &First Name:
;   Gui, Add, Edit

;   ; Gui Add, ActiveX, w980 h640 vWB, Shell.Explorer ; 最后一个参数是 ActiveX 组件的名称.
;   ; WB.Navigate("https://www.autohotkey.com/boards/") ; 该句只适用于 web 浏览器控件.

;   Gui, Add, Custom, ClassComboBoxEx32 ; 添加 ComboBoxEx 控件.
;   Gui, Add, Custom, ClassScintilla ; 添加 Scintilla 控件. 注意必须加载 SciLexer.dll 库后才能添加此控件.
;   Gui Show
; Return

; LaunchGoogle:
;   Run www.google.com
; return
