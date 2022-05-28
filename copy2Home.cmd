@ECHO OFF


GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

%HOME% - may be defined by Windows domain setting (your network drive)

://////////////////////////////////////////////////

copy /V /Y  .bash_profile  %USERPROFILE%
copy /V /Y  .bashrc        %USERPROFILE%
copy /V /Y  .minttyrc      %USERPROFILE%
copy /V /Y  .nanorc        %USERPROFILE%
copy /V /Y  .vimrc         %USERPROFILE%

