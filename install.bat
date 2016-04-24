@echo off
@setlocal enableextensions
@cd /d "%~dp0"

echo .
echo .
echo .
echo .

goto check_Permissions
echo Done! Have fun.
pause

:check_Permissions
    echo Administrative permissions required. Detecting permissions...
    echo %CD%

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed. Press Enter to install.
	pause >nul
	goto install_config
    ) else (
        echo Failure: Current permissions inadequate.
    )

    pause >nul

:install_config
	mklink /H ..\csgo\cfg\autoexec.cfg csgo\cfg\autoexec.cfg
	mklink /H ..\csgo\cfg\config.cfg csgo\cfg\config.cfg
	echo ================================================================================
	mklink /H ..\csgo\resource\csgo_llama.txt csgo\resource\csgo_llama.txt 
	mklink /H ..\csgo\resource\valve_llama.txt csgo\resource\valve_llama.txt
	pause