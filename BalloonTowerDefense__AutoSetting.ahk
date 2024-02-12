;2560*1600 Version
Gui, Add, Text, x10 y10 w150 h20 Center, 매크로 프로그램
Gui, Add, Button, x10 y30 w150 h20, 시작
Gui, Add, Button, x10 y55 w150 h20, 종료
Gui, Show, ,
CoordMode, Pixel , Client
CoordMode, Mouse , Client
SetKeyDelay, 10
SetMouseDelay, 10
Return

GuiClose: 
{
   ExitApp
}
Return

Button시작:
{
    Loop
        {
            summon_base()
            Sleep, 500
            Send, {Space}
            Sleep, 500
            Send, {Space}
            Sleep, 500
            WinMinimize, BloonsTD6-Epic ahk_class UnityWndClass
            WinActivate ahk_exe whale.exe
           
            Sleep, (5.5)*60*1000
            ;1분정도마다 화면체크해서 이상잇으면 그 상태 처리기로 가고 1분 추가하기 
            #IfWinActive ahk_exe whale.exe
            Send, {Space}
            #IfWinActive
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            Sleep, 5000
            ImageSearch, OutputVarX, OutputVarY, X1, Y1, 2560, 1600,*30 C:\Users\dongwoo\Documents\AutoHotkey\Image\next.bmp 
            Click %OutputVarX%, %OutputVarY% 
            Sleep, 1000 ;다음 클릭
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            ImageSearch, OutputVarX, OutputVarY, X1, Y1,2560, 1600,*30 C:\Users\dongwoo\Documents\AutoHotkey\Image\freeplay.bmp ;자유플레이 클릭
            Click %OutputVarX%, %OutputVarY%
            Sleep, 2*1000
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            Click 100, 100 ;계속 한 곳 클릭 하면서 뜨는 창 없애기
            Sleep, 1000
            Send, {Esc}
            Sleep, 1000 ;esc 누르기
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            ImageSearch, OutputVarX, OutputVarY, X1, Y1, 2500, 1500,*30 C:\Users\dongwoo\Documents\AutoHotkey\Image\restart_blue.bmp 
            Click %OutputVarX%, %OutputVarY% 
            Sleep, 1000 ;재시작 클릭
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            ImageSearch, OutputVarX, OutputVarY, X1, Y1, 2500, 1500,*30 C:\Users\dongwoo\Documents\AutoHotkey\Image\restart_green.bmp
            Click %OutputVarX%, %OutputVarY% 
            Sleep, 2000 ;정말 재시작 클릭 후 4초 쉬고 
        }
}
Return

Button종료: 
{
    
}

#a::
{
    #IfWinActive ahk_exe whale.exe
    Send, {Space}
    Sleep, 1000
    #IfWinActive
    WinActivate BloonsTD6-Epic ahk_class UnityWndClass
	Sleep, 1000
    ImageSearch, OutputVarX, OutputVarY, X1, Y1, 2600, 1600,*50 C:\Users\dongwoo\Documents\AutoHotkey\Image\next.bmp
    MsgBox, 0, %ErrorLevel%,, 
    if (ErrorLevel=0)
	{
		 Click %OutputVarX%, %OutputVarY%
	}
	
	else if (ErrorLevel = 1)
	{
		Click %OutputVarX%, %OutputVarY%
	}
}
Return


#y::
{
    Reload
}
Return

#q::
{
    ExitApp
}
Return

summon_mon(monkey_shortcut,x_,y_,a,b,c)
{
    WinActivate BloonsTD6-Epic ahk_class UnityWndClass
    Send, %monkey_shortcut%
    Sleep, 500
    WinActivate BloonsTD6-Epic ahk_class UnityWndClass
    Click %x_%,%y_%
    Sleep, 500
    WinActivate BloonsTD6-Epic ahk_class UnityWndClass
    Click %x_%,%y_%
    Sleep, 500
    Loop, %a%
        {
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            Send, ,
        }
    Loop, %b%
        {
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            Send, .
        }
    Loop, %c%
        {
            WinActivate BloonsTD6-Epic ahk_class UnityWndClass
            Send, /
        }

    WinActivate BloonsTD6-Epic ahk_class UnityWndClass
    Send, {Esc}
    Sleep, 500
    Return
}
summon_base()
{   
    summon_mon("a",757,722,4,0,2)
    summon_mon("u",1332,1137,0,0,0)
    summon_mon("a",819,907,3,0,2)
    summon_mon("a",903,777,3,0,2)
    summon_mon("a",675,830,4,2,0)
}
