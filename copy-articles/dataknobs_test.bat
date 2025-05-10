SET site=www.dataknobs.com
SET drive=5106_gdrive
SET article=5106_prompt
SET cms=technology
SET topic=technology


REM uncomment this after fix unnecessary images copy
call robocopy  c:\f\0-buckets\%drive%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count"  /e 

REM REM call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\%topic%  /s /e /y /d
REM REM in future avoid using www or use every where for consistency
