REM copy_article_to_site
SET drive=zapario_gdrive
SET article=zapario_prompt
SET cms=zapario-cms
SET topic=technology
SET site=zapario.com
call gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
call gsutil -m cp -r -n gs://%article%  c:\f\0-buckets
REM REM CMS is part of prompt. prompt include site and cms.  later add gdrive too.
call xcopy  c:\f\0-buckets\%article%\%cms%  c:\e\a2_generated_sites\articles\%cms%\  /s /e /y /d
call xcopy c:\f\0-buckets\%article%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\%drive%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count" ".desc"  ".keywords"  ".articlelist"  ".articleslist" /e 


