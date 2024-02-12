#0::
{
    sleeptime:=100
    Loop 100
        {
            Sleep, %sleeptime%
            Send, {Enter}
            Sleep, %sleeptime%
            Send, show me the money
            Sleep, %sleeptime%
            Send, {Enter}
        }

return

}
    
#y::
{
    Reload
}

#q::
{
    ExitApp
}
Return