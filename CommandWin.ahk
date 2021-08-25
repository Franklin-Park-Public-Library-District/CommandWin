/* Summary of Commands:
Alt + -				Inputs En-Dash
Alt + Shift + -		Inputs Em-Dash
Ctrl + Win + C		Centers the Active Window
*/

!-::
	Send {U+2013}
Return

!+-::
	Send {U+2014}
Return

^#c::
	WinGetTitle, windowName, A
	
	CenterWindow(windowTitleVariable) {
		WinGetPos,,, Width, Height, %windowTitleVariable%
		WinMove, %windowTitleVariable%,, (A_ScreenWidth - Width) / 2, (A_ScreenHeight - Height) / 2
	}
	
	CenterWindow(windowName)
Return