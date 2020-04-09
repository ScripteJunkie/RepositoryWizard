@echo off
  ::git init %1
  ::cd %1
  for /f "tokens=1 delims=:" %%L in ('findstr /n "<PATH>" source.xml') do (
   set begin_line=%%L
  )

  for /f "tokens=1 delims=:" %%L in ('findstr /n "</PATH>" source.xml') do (
   set /a end_line=%%L+1
  )

  ::echo showing lines between %end_line% and %begin_line%
  break>"%temp%\empty"
  for /f "delims=" %%l in ('fc "%temp%\empty" "source.xml" /lb  %end_line% /t ^|more +4 ^| findstr /B /E /V "*****" ^| more +%begin_line%') do (
   set "lloc=%%l"
   goto :break_for
  )
  :break_for
  ::echo %lloc%
  del /Q /F "%temp%\empty"
  set jj = %1
  start %lloc%
  Powershell.exe -executionpolicy remotesigned -File  %~dp0sim.ps1 "%jj%"
  git add .
  git commit -m "Testing Commit"
  git push
