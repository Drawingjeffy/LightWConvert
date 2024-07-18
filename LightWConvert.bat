@echo off
title LightWConvert
REM Creating a Newline variable
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%
REM  Usage:
echo.	LightWConvert%NL%	Version 0.001%NL%	All rights reserved

echo.
pause
REM Find values
set /p OFP="What is your file's p?"
echo OFP = %OFP%
pause
echo 
set /p CF="What file type are you converting it from? "
echo CF = %CF%
pause
echo
set /p CT="What file type are you converting it to?"
echo CT = %CT%
pause
echo
set /p FN="What is the name of your file?"
echo FN = %FN%
REM Rename files
echo Make sure you have a duplicate of your file before Converting!
pause
ren "%OFP%" "%FN%.%CT%"

if %ERRORLEVEL% NEQ 0 (
    echo An error occurred!
) else (
    echo File converted!
)
pause
EXIT /B < exitcodes >