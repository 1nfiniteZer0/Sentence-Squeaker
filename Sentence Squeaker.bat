@echo off
title Sqeaker Sentence Maker
set sentence=abcdefghijklmnopqrstuvwxyz
:startmenu
cls
echo.
echo --------------------------------------
echo By: Aidan Biggs
echo AKA AT Vloggers
echo Because of the element of randomness,
echo some sentences might not be changed!
echo Tip: Typing sentence then spamming ENTER
echo will squeakify it even more!
echo --------------------------------------
echo.
echo 1. LIVE SENTENCE SQUEAKER
echo 2. Normal Squeaker
set /p ln=
if %ln% == 1 goto live
:menu
SET /A randnum=%RANDOM% * 5 / 32768 + 1
cls
echo.
echo --------------------------------------
echo By: Aidan Biggs
echo AKA AT Vloggers
echo Because of the element of randomness,
echo some sentences might not be changed!
echo Tip: Typing sentence then spamming ENTER
echo will squeakify it even more!
echo --------------------------------------
echo.
echo What is the sentence?
set /p sentence=
goto squeak
:squeaked
cls
echo.
echo --------------------------------------
echo By: Aidan Biggs
echo AKA AT Vloggers
echo Because of the element of randomness,
echo some sentences might not be changed!
echo Tip: Typing sentence then spamming ENTER
echo will squeakify it even more!
echo --------------------------------------
echo.
echo %sentence%
pause >nul
goto menu
:squeak
if %randnum% == 1 goto squeakone
if %randnum% == 2 goto squeaktwo
if %randnum% == 3 goto squeakthree
if %randnum% == 4 goto squeakfour
if %randnum% == 5 goto squeakfive
goto menu
:squeakone
set sentence=%sentence:e=E%
set sentence=%sentence:t=T%
set sentence=%sentence:a=A%
set sentence=%sentence:o=O%
set sentence=%sentence:i=I%
set sentence=%sentence:n=N%
goto squeaked
:squeaktwo
set sentence=%sentence:s=S%
set sentence=%sentence:r=R%
set sentence=%sentence:h=H%
set sentence=%sentence:l=L%
set sentence=%sentence:d=D%
set sentence=%sentence:c=C%
goto squeaked
:squeakthree
set sentence=%sentence:u=U%
set sentence=%sentence:m=M%
set sentence=%sentence:f=F%
set sentence=%sentence:p=P%
set sentence=%sentence:g=G%
set sentence=%sentence:w=W%
goto squeaked
:squeakfour
set sentence=%sentence:y=Y%
set sentence=%sentence:b=B%
set sentence=%sentence:v=V%
set sentence=%sentence:k=K%
set sentence=%sentence:.=...%
set sentence=%sentence:!=!!!!!%
goto squeaked
:squeakfive
set sentence=%sentence:x=X%
set sentence=%sentence:j=J%
set sentence=%sentence:q=Q%
set sentence=%sentence:z=Z%
set sentence=%sentence:?=?!?!%
set sentence=%sentence:,=%
goto squeaked

:live
cls
echo Set WshShell = WScript.CreateObject("WScript.Shell") >livesqueakfile.vbs
echo WshShell.SendKeys "{CAPSLOCK}" >>livesqueakfile.vbs
:start
cls
echo CLOSE WINDOW TO STOP SQUEAKING
cscript /nologo livesqueakfile.vbs
goto start