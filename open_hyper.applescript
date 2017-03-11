on runTest(_command)
    set the clipboard to _command

    tell application "Hyper"
        activate

        delay 0.1
        tell application "System Events" to keystroke "k" using command down
        tell application "System Events" to keystroke "v" using command down
        tell application "System Events" to keystroke return

    end tell
end runTest

on run argv
    set _command to item 1 of argv
    runTest(_command)
end run
