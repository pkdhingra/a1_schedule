SET site=%1
SET drive=%2
SET article=%3
SET cms=%4
SET topic=%5

call gsutil -m cp -r -n gs://%article%  c:\f\0-buckets
if %drive% NEQ %article% (
call gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
echo drive and site are different
)
call xcopy  c:\f\0-buckets\%article%\%cms%\  c:\e\a2_generated_sites\articles\%cms%  /s /e /y /d
call xcopy c:\f\0-buckets\%article%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d

REM uncomment this after fix unnecessary images copy
REM call robocopy  c:\f\0-buckets\%drive%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count"  /e 

REM REM call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\%topic%  /s /e /y /d
REM REM in future avoid using www or use every where for consistency
