set site1=slides.kreatewebsites.com
set drive1=5108_prompt
set drive2=5108_gdrive
call gsutil -m cp -r -n gs://%drive1% c:\f\0-buckets
call gsutil -m cp -r -n gs://%drive2% c:\f\0-buckets
call xcopy  c:\f\0-buckets\%drive1%\4-articles-technology  c:\e\a2_generated_sites\articles\4-articles-technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\%drive1%\technology c:\e\a2_generated_sites\articles\technology\  /s /e /y /d
call xcopy  c:\f\0-buckets\%drive1%\slides c:\e\a2_generated_sites\articles\slides\  /s /e /y /d
call xcopy c:\f\0-buckets\%drive1%t\%site1%\input\content\  c:\e\a3_input\%site1%\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\%drive2%\  c:\e\a3_input\%site1%\input\content\  /s "*.list" "*.imagelist" ".path" /e /y /d
echo "kreatewebsite-push start" >> c:\e\a1_schedule\log.txt
call start chrome.exe http://localhost:51000/generate_site.aspx?site=%site1%
timeout 20
call start chrome.exe http://localhost:51000/generate_site.aspx?site=%site1%
timeout 20
call cd c:\e\a3_output\%site1%
call cd output\content\
timeout 40
call gitall.bat "added by job"
call cd c:\e\a1_schedule
echo "kreatewebsite-push complete" >> c:\e\a1_schedule\log.txt

