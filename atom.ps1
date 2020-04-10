param($jj)
[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
Start-Sleep -Seconds 5.0
[System.Windows.Forms.SendKeys]::SendWait("^+{a}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}{TAB}{TAB}{TAB}")
[System.Windows.Forms.SendKeys]::SendWait($jj)
[System.Windows.Forms.SendKeys]::SendWait("~")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("~")
Start-Sleep -Seconds 2.0
[System.Windows.Forms.SendKeys]::SendWait("^{n}")
[System.Windows.Forms.SendKeys]::SendWait("Welcome to the README.")
[System.Windows.Forms.SendKeys]::SendWait($jj)
[System.Windows.Forms.SendKeys]::SendWait("^{s}")
Start-Sleep -Seconds 2.0
[System.Windows.Forms.SendKeys]::SendWait("READMEE.md")
Start-Sleep -Seconds 2.0
[System.Windows.Forms.SendKeys]::SendWait("{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("~")
[System.Windows.Forms.SendKeys]::SendWait($jj)
[System.Windows.Forms.SendKeys]::SendWait("~")
Start-Sleep -Seconds 3.0
[System.Windows.Forms.SendKeys]::SendWait("{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("~")
[System.Windows.Forms.SendKeys]::SendWait("{F11}")
