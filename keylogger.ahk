#SingleInstance Force
Loop{
    key := InputHook("V T5")
    key.Start()
    key.Wait()
    FileAppend key.Input, "key.txt"
}

ESC::ExitApp