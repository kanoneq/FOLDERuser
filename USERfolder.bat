rem WAZNE! jesli nie jestes na PC'cie kanonq'a to pamietaj, aby zmienic sciezki w kodzie

@echo off
color 0a
cls
goto start

:emergency start
cls
echo zacznijmy od nowa
echo.
goto start2

:start
echo dzien dobry uzytkowniku, tutaj mozesz stworzyc swoj katalog, lub dodac do niego plik tekstowy
echo.
goto start2


:start2
setlocal
echo jesli chcesz utworzyc katalog, wpisz 1, jesli dodac .txt wpisz 2
echo jesli natomiast chcesz zmienic nazwe .txt lub folderu wpisz 3
set /p wybor=
if %wybor%==1 goto :tworzenie
if %wybor%==2 goto :dodawanie
if %wybor%==3 goto :zmienianie
if %wybor%==tukan goto :toucan
echo nie wybrano kompatybilnej warosci
goto emergency start
endlocal

:tworzenie
setlocal
echo podaj nazwe katalogu ktory chcesz utworzyc
set /p nazwa=
mkdir "C:\Users\kanoneq\Desktop\FolderyUserow\%nazwa%"
echo podkatalog %nazwa% zostal utworzony w katalogu "foldery userow"
echo.
echo jesli chcesz to mozesz stworzyc tez plik tekstowy w swoim nowym katalogu, jesli nie chcesz, to wpisz "nie"
echo jesli chcesz to wpisz nazwe tego pliku
set /p notatnik=
if %notatnik%==nie goto koniec
type nul>"C:\Users\kanoneq\Desktop\FolderyUserow\%nazwa%\%notatnik%.txt"
echo.
echo zostal utworzony plik tekstowy o nazwe %notatnik% w twoim katalogu %nazwa%
goto koniec
endlocal

:dodawanie
setlocal
echo wpisz nazwe swojego katalogu
set /p katalog=
echo.
echo wpisz nazwe pliku tekstowego ktory chcesz zalozyc
set /p pliczek=
type nul>"C:\Users\kanoneq\Desktop\FolderyUserow\%katalog%\%pliczek%.txt"
if not exist "C:\Users\kanoneq\Desktop\FolderyUserow\%katalog%" (
nie ma takiego folderu
goto emergency start
)
echo polecenie zostalo pomyslnie wykonane
goto koniec
endlocal

:zmienianie
setlocal
echo chcesz zmienic nazwe folderu czy pliku txt? (1=txt  2=folder)
set /p wybor=
if %wybor%==1 goto tekstowy
if %wybor%==2 goto folder
endlocal

:tekstowy
setlocal
echo.
echo podaj nazwe swojego folderu
set /p folder=
echo.
echo podaj nazwe pliku tekstowego na ktorym ma zostac wykonana operacja
set /p tekstowy=
echo.
echo podaj nowa nazwe dla swojego pliku tekstowego
set /p txtN=
if not exist "C:\Users\kanoneq\Desktop\FolderyUserow\%folder%\%tekstowy%.txt" (
echo nie ma takiego folderu, pliku tekstowego lub obydwu
goto emergency start
)
ren "C:\Users\kanoneq\Desktop\FolderyUserow\%folder%\%tekstowy%.txt" "%txtN%.txt"
echo zmiana przebiegla pomyslnie
goto koniec
endlocal

:folder
setlocal
echo.
echo podaj aktualna nazwe swojego folderu
set /p folder=
echo.
echo wybierz nowa nazwe dla twojego folderu
set /p nazwa=
if not exist "C:\Users\kanoneq\Desktop\FolderyUserow\%folder%" (
echo taki folder nie istnieje
goto emergency start
)
ren "C:\Users\kanoneq\Desktop\FolderyUserow\%folder%" "%nazwa%"
echo operacja przebiegla pomyslnie
goto koniec
endlocal

:koniec
echo.
echo to wszystko, dzieki
pause>nul

:toucan
setlocal
set /p wybor=
if %wybor%==tukan goto letukan
endlocal

:letukan
setlocal
set/p wybor=
if %wybor%==tukan goto finallboss
endlocal

:finallboss
start "" ".\tukan.jpg"
pause>nul