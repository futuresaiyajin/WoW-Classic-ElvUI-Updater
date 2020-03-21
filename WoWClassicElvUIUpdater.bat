SET DOWNLOAD_DIR=%CD%
SET MYFILE=elvui.zip
SET WOW_CLASSIC_INSTALL_DIR=C:\Program Files\World of Warcraft\_classic_
 
IF EXIST %DOWNLOAD_DIR%\%MYFILE% del /f %DOWNLOAD_DIR%\%MYFILE%

PowerShell Start-BitsTransfer -Source https://www.tukui.org/classic-addons.php?download=2 -Destination %DOWNLOAD_DIR%\%MYFILE%

for %%a in ("%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns\ElvUI" "%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns\ElvUI_OptionsUI") do rd /s /q "%%~a"

PowerShell Expand-Archive -Path "%DOWNLOAD_DIR%\%MYFILE%" -DestinationPath '%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns'

del /s "%DOWNLOAD_DIR%\%MYFILE%"