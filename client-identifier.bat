@echo off
set macaddr=%1
for /f "usebackq tokens=1-6 delims=-:" %%i in (`echo %macaddr%`) do (
    set macaddr=01%%i.%%j%%k.%%l%%m.%%n
)
echo %macaddr% 
echo %macaddr% | clip
