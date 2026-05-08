@echo off
title Calculadora
color a

:inicio
cls
echo ---------------------------------------------------
echo                     Calculadora
echo ---------------------------------------------------
echo.

set /p n1=Digite o primeiro numero: 
set /p n2=Digite o segundo numero: 

echo.
echo Escolha a operacao:
echo [1] Adicao (+)
echo [2] Subtracao (-)
echo [3] Multiplicacao (*)
echo [4] Divisao (/)
echo.

set /p opcao=Opcao: 

if %opcao%==1 (
    set /a resultado=%n1%+%n2%
) else if %opcao%==2 (
    set /a resultado=%n1%-%n2%
) else if %opcao%==3 (
    set /a resultado=%n1%*%n2%
) else if %opcao%==4 (
    set /a resultado=%n1%/%n2%
) else (
    echo Opcao invalida!
    pause
    goto inicio
)

echo.
echo O resultado da operacao e %resultado%
echo.

pause
goto inicio