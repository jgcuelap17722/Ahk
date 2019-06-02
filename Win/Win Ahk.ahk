#WinActivateForce
Gui, Add, Text, x10 y10 w100 h20 , COMBO
Gui, Add, Text, x10 y100 w90 h20 , Suspender
Gui, Add, Hotkey, x60 y7  w50 h20 vKeyCombo,
Gui, Add, Hotkey, x75 y55 w50 h20 vBlink ,
Gui, Add, Hotkey, x15 y55 w50 h20 vRamita,
Gui, Add, Hotkey, x75 y100 w50 h20 vKeySuspender,
Gui, Add, Button, x35 y130 w80 h25 gAplicar, Guardar
Gui, Add, Picture, x25 y35 w30 h20,rama.png
Gui, Add, Picture, x85 y35 w30 h20,daga.png

Gui, Color, Default
Gui, Show, x890 y401 h180 w150 Center, Win v1.0
Return
GuiClose:
ExitApp
Aplicar: ;apaga as teclas y las vuelve a prender*/ 
HotKey, %KeyCombo%, 			Off, UseErrorLevel
HotKey, %Blink%, 				Off, UseErrorLevel
HotKey, %Ramita%, 				Off, UseErrorLevel
HotKey, %KeySuspender%, 		Off, UseErrorLevel
Gui, Submit, NoHide
HotKey, $%KeyCombo%, Combo, 	On, UseErrorLevel
HotKey, %KeyW%, 				On, UseErrorLevel
HotKey, %KeyArmlet%, 			On, UseErrorLevel
HotKey, %KeyBlade%, 			On, UseErrorLevel
HotKey, $%KeySuspender%, Sus, 	On, UseErrorLevel

Combo:
SendInput, !{%KeyCombo%} 
Sleep, 240
SendInput, {%Blink%}{%Ramita%}
Sleep, 240
SendInput, {a}{Click}
return

Sus:
Suspend