SET MYFILE=elvui.zip
SET WOW_CLASSIC_INSTALL_DIR=C:\Program Files\World of Warcraft\_classic_
 
IF EXIST %CD%\%MYFILE% del /f %CD%\%MYFILE%

curl https://www.tukui.org/classic-addons.php?download=2 -o %USERPROFILE%\Downloads\%MYFILE%

for %%a in ("%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns\ElvUI" "%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns\ElvUI_OptionsUI") do rd /s /q "%%~a"

PowerShell Expand-Archive -Path "%CD%\%MYFILE%" -DestinationPath '%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns'

del /s "%CD%\%MYFILE%"