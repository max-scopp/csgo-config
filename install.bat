@echo off
goto check_Permissions
goto install_config
echo Done! Have fun.
pause

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed. Press Enter to install.
    ) else (
        echo Failure: Current permissions inadequate.
    )

    pause >nul

:install_config
	mklink /H csgo\cfg\autoexec.cfg ..\csgo\cfg\autoexec.cfg
	echo Linked autoexec.cfg
	mklink /H csgo\cfg\config.cfg ..\csgo\cfg\config.cfg
	echo Linked config.cfg
	echo ================================================================================
	mklink /H csgo\resource\csgo_llama.txt ..\csgo\resource\csgo_llama.txt
	mklink /H csgo\resource\valve_llama.txt ..\csgo\resource\valve_llama.txt
	echo Linked resources
	pause