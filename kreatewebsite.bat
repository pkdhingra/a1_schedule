start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
timeout 20
start chrome.exe http://localhost:51000/generate_site.aspx?site=%1
timeout 20
cd c:\e\a3_output\%1%
timeout 40
gitall.bat "added by job"
cd c:\e\a1_schedule
