#NoEnv
#Include Menu.ahk
; GUI menu
Menu, GuiMenu, Add, Menu, ShowMenu
Menu, GuiMenu, Add, Quit, GuiClose
HGMEN := Menu_GetMenuByName("GuiMenu")
; Pop-up menu
Menu, ExportMenu, Add, Excel (.csv), Export
Menu, ExportMenu, Add
Menu, ExportMenu, Add, Excel Direct, Export
Menu, ExportMenu, Add
Menu, ExportMenu, Add, Access DB, Export
HMENU := Menu_GetMenuByName("ExportMenu")
; GUI
Gui, New, +hwndHGUI
Gui, Margin, 100, 20
Gui, Menu, GuiMenu
Menu_BarRightJustify(HGUI, 2)
Gui, Add, Button, y100 w100 vExportBtn hwndHExportBtn gExportMenu, Button Menu
Gui, Show, , Menu
MsgBox, 0, ExportMenu, % "The name of item 3 is:`n`n" . Menu_GetItemName(HMENU, 3)
MsgBox, 0, ExportMenu,% "Item 2 is" . (Menu_IsSeparator(HMENU, 2) ? "" : "n't" ) . " a separator!"
Loop, 5 {
  Menu_BarHiliteItem(HGUI, 2, True)
  Sleep, 250
  Menu_BarHiliteItem(HGUI, 2, False)
  Sleep, 250
}
Return
; ----------------------------------------------------------------------------------------------------------------------
GuiClose:
ExitApp
; ----------------------------------------------------------------------------------------------------------------------
ShowMenu:
  ; Get the screen coordinates of the GUI's client area
  VarSetCapacity(POINT, 8, 0)
  DllCall("User32.dll\ClientToScreen", "Ptr", HGUI, "Ptr", &POINT)
  X := Numget(POINT, 0, "Int")
  Y := NumGet(POINT, 4, "Int")
  ; Show the ExportMenu using X and Y as left and top position.
  Menu_ShowAligned(HMENU, HGUI, X, Y, "Left", "Top")
Return
; ----------------------------------------------------------------------------------------------------------------------
ExportMenu:
  ; Get the position of the Export button
  WinGetPos, X, Y, W, H, ahk_id %HExportBtn%
  X += W // 2
  ; Show the ExportMenu using X and Y as horizontal center and bottom position.
  Menu_ShowAligned(HMENU, HGUI, X, Y, "Center", "Bottom")
Return
; ----------------------------------------------------------------------------------------------------------------------
Export:
  Menu_CheckRadioItem(HMENU, A_ThisMenuItemPos)
  MsgBox, 0, %A_ThisLabel%
  , % A_ThisMenuItem . " is now " . (Menu_IsItemChecked(HMENU, A_ThisMenuItemPos) ? "" : "un") . "checked!"
Return