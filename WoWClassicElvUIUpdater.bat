SET MYFILE=elvui.zip
SET WOW_CLASSIC_INSTALL_DIR=C:\Program Files\World of Warcraft\_classic_
 
IF EXIST %MYFILE% del /f %MYFILE%

curl https://www.tukui.org/classic-addons.php?download=2 -o %MYFILE%

for %%a in ("%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns\ElvUI" "%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns\ElvUI_OptionsUI") do rd /s /q "%%~a"

PowerShell Expand-Archive -Path "%USERPROFILE%\Downloads\%MYFILE%" -DestinationPath '%WOW_CLASSIC_INSTALL_DIR%\Interface\AddOns'

del /s "%USERPROFILE%\Downloads\%MYFILE%"