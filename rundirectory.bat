
        
    @echo off
    REM Set directory.
    set "base=c:\Users\Rudy\Documents\Projects\elements-micro"

    REM clear output and temp.
    echo  Clearing Output and Temp Directories:
    for %%F in (output temp) do(
        del /q "%base%\%%F\*.*"
        for /d %%D in ("%base%\%%F\*") do rd /s /q "%%D"
    )

    REM Execute Scripts. delete "REM" and add script names to actually run things.
    echo Running *Insertscipt1.py*
    REM python "%base%\code\script1.py"
    REM python "%base%\code\script2.py"

    echo Batch Execution Complete.
    pause  

    