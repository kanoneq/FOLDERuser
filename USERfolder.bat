@echo off
color 0a
cls
goto start2

:emergency start
cls
echo you did something wrong, let's start once again
echo press any key to continue
set /p cont=
goto start2

:start2
setlocal
cls
echo hello there, here you can create your own folder and add a .txt to it
echo.
echo if you want to create a folder press 1, if u want to add a .txt to your folder press 2
echo but if you want to change name of your folder/txt file press 3
echo you can always go back by typing "cancel"
set /p choice=
if %choice%==1 goto :creating
if %choice%==2 goto :adding
if %choice%==3 goto :changing
if %choice%==cancel goto :end
if %choice%==tukan goto :toucan
echo no compatible value provided
goto emergency start
endlocal

:creating
setlocal
echo type in a name for your folder
set /p name=
if %name%==cancel goto start2
mkdir ".\UsersFolder\%name%"
echo folder %name% was created in "UsersFolder"
echo.
echo you can create a .txt to your new folder, if not simply type "no"
echo if yes, type its name
set /p notepad=
if %notepad%==no goto end
type nul>".\UsersFolder\%name%\%notepad%.txt"
echo.
echo there is a notepad under name %notepad% in your folder %name%
goto end
endlocal

:adding
setlocal
echo.
echo type in name of your folder
set /p catalog=
if %catalog%==cancel goto start2
if not exist ".\UsersFolder\%catalog%" (
goto emergency start
)
echo.
echo type in name of your new notepad
set /p file=
if %file%==cancel goto adding
type nul>".\UsersFolder\%catalog%\%file%.txt"
echo operation was completed succesfully
goto end
endlocal

:changing
setlocal
echo.
echo do you want to change name for text file or folder? (1=txt  2=folder)
set /p choice=
if %choice%==1 goto notepad
if %choice%==2 goto folder
if %choice%==cancel goto start2
endlocal

:notepad
setlocal
echo.
echo enter the current name of your folder
set /p folder=
if %folder%==cancel goto changing
echo.
echo provide the name of the text file that will be executed in the operation
set /p txt=
if %txt%==cancel goto notepad
if not exist ".\UsersFolder\%folder%\%txt%.txt" (
goto emergency start
)
echo.
echo provide new name for the .txt file
set /p txtN=
if %txtN%==cancel goto notepad
ren ".\UsersFolder\%folder%\%txt%.txt" "%txtN%.txt"
echo operations completed succesfully
goto end
endlocal

:folder
setlocal
echo.
echo enter the current name of your folder
set /p folder=
if %folder%==cancel goto changing
if not exist ".\UsersFolder\%folder%" (
goto emergency start
)
echo.
echo pick a new name for your folder
set /p name=
if %name%==cancel goto folder
ren ".\UsersFolder\%folder%" "%name%"
echo operation completed succesfully
goto end
endlocal

:toucan
setlocal
set /p choice=
if %choice%==tukan goto letukan
endlocal

:letukan
setlocal
set/p choice=
if %choice%==tukan goto finallboss
endlocal

:finallboss
start "" ".\tukan.jpg"
goto end

:end
echo.
echo that's all, thank you
pause>nul