echo "kreatewebsite start" >> c:\e\a1_schedule\log.txt
REM call start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
call start "C:\Program Files (x86)\Microsoft\Edge\Application\mesedge.exe" http://localhost:51000/generate_site.aspx?site=%1%
timeout 20
REM call start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
call start "C:\Program Files (x86)\Microsoft\Edge\Application\mesedge.exe" http://localhost:51000/generate_site.aspx?site=%1%
timeout 20
REM cd c:\e\a3_output\%1%
REM timeout 40
REM gitall.bat "added by job"
REM cd c:\e\a1_schedule
echo "kreatewebsite complete" >> c:\e\a1_schedule\log.txt
