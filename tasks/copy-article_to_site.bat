SET drive=%2
SET cms=%3
SET topic=%4
SET site=%1
call gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
call gsutil -m cp -r -n gs://%cms%  c:\f\0-buckets
call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\  /s /e /y /d
call xcopy c:\f\0-buckets\%cms%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\%cms%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count"  /e 

REM REM call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\%topic%  /s /e /y /d
REM REM in future avoid using www or use every where for consistency
