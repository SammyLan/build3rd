@setlocal enabledelayedexpansion
@echo off

@set CUR_DIR=%~dp0

@FOR /F %%f in ('dir /b "%CUR_DIR%*.env"') do (
  FOR /F "eol=; tokens=1,2 delims==" %%i in (%CUR_DIR%%%f) do (
  set VAR=%%i
  set VAL=%%j
  set !VAR!=!VAL!
  )
)

@set VS_TOOL_DIR=!VS%VS_VERSION%0COMNTOOLS!..\..\
@call "!VS_TOOL_DIR!VC\vcvarsall.bat" x86
@call %CUR_DIR%InitDir.bat

@call %*
@pause