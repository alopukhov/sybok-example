@echo off

SET SCRIPT_DIR=%~dp0

"%SCRIPT_DIR%\bin\run-launcher.bat" ^
--config "sybok.script-roots=%SCRIPT_DIR%\specs" ^
-e sybok-engine ^
--disable-banner ^
--disable-ansi-colors ^
-n ".*Spec" %*