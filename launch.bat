@echo off
  git init %1
  cd %1
  for /f "tokens=1 delims=:" %%L in ('findstr /n "<PATH>" source.xml') do (
   set begin_line=%%L
  )

  for /f "tokens=1 delims=:" %%L in ('findstr /n "</PATH>" source.xml') do (
   set /a end_line=%%L+1
  )
  break>"%temp%\empty"

  for /f "delims=" %%l in ('fc "%temp%\empty" "source.xml" /lb  %end_line% /t ^|more +4 ^| findstr /B /E /V "*****" ^| more +%begin_line%') do (
   set "lloc=%%l"
   goto :break_for
  )
  :break_for
  ::echo %lloc%
  del /Q /F "%temp%\empty"
  ::set jj = %1
  set jj = C:\Users\synta\Documents\GitHub\RepositoryWizard
  start %lloc%
  IF /I %2==Atom (
  Powershell.exe -executionpolicy remotesigned -File  %~dp0atom.ps1 "%jj%")
  git add .
  git commit -m "Initial Commit"
  git push
