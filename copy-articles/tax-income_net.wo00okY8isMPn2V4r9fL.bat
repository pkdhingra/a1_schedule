REM copy_article_to_site
SET site=tax-income.net
SET drive=wo00okY8isMPn2V4r9fL_gdrive
SET article=wo00okY8isMPn2V4r9fL_prompt
SET cms=tax
SET topic=tax

call .\copy_article_to_site.bat %site% %drive% %article% %cms% %topic%
REM call  gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
REM call gsutil -m cp -r -n gs://%article%  c:\f\0-buckets
REM call xcopy  c:\f\0-buckets\%article%\%cms%  c:\e\a2_generated_sites\articles\%cms%\  /s /e /y /d
REM call xcopy c:\f\0-buckets\%article%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d
REM call robocopy  c:\f\0-buckets\%drive%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count" ".desc"  ".keywords"  ".articlelist"  ".articleslist" /e 


