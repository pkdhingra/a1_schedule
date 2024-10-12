REM copy_article_to_site
SET drive=acespire_gdrive
SET article=acespire_prompt
SET cms=acespire-cms
SET topic=technology
SET site=acespireconsulting.com
call gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
call gsutil -m cp -r -n gs://%article%  c:\f\0-buckets
REM REM CMS is part of prompt. prompt include site and cms.  later add gdrive too.
call xcopy  c:\f\0-buckets\%article%\%cms%  c:\e\a2_generated_sites\articles\%cms%\  /s /e /y /d
call xcopy c:\f\0-buckets\%article%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d
call robocopy  c:\f\0-buckets\%article%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count" ".desc"  ".keywords"  ".articlelist"  ".articleslist" /e 

REM REM call xcopy  c:\f\0-buckets\%cms%\  c:\e\a2_generated_sites\articles\%topic%  /s /e /y /d

