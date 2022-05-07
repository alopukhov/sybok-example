@echo off

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

IF "%~1"=="" (GOTO :runAll) ELSE (GOTO :runArgs)


:runAll
"%DIRNAME%\bin\run-junit-console.bat" ^
--config "sybok.script-roots=%DIRNAME%\tests" ^
-e sybok-engine --disable-banner --disable-ansi-colors ^
-n ".*Spec" -n ".*Test" ^
-d "%DIRNAME%\tests
exit /b

:runArgs
"%DIRNAME%\bin\run-junit-console.bat" ^
--config "sybok.script-roots=%DIRNAME%\tests" ^
-e sybok-engine --disable-banner --disable-ansi-colors ^
-n ".*Spec" -n ".*Test" ^
%*

exit /b