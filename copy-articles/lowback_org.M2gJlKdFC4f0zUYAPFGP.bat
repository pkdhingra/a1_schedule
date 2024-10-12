REM copy_article_to_site
SET site=lowback.org
SET drive=m2gjlkdfc4f0zuyapfgp_gdrive
REM SET article=M2gJlKdFC4f0zUYAPFGP_prompt
SET article=m2gjlkdfc4f0zuyapfgp_prompt
SET cms=health
SET topic=health

call .\copy_article_to_site.bat %site% %drive% %article% %cms% %topic%
REM call  gsutil -m cp -r -n gs://%drive%  c:\f\0-buckets
REM call gsutil -m cp -r -n gs://%article%  c:\f\0-buckets
REM call xcopy  c:\f\0-buckets\%article%\%cms%  c:\e\a2_generated_sites\articles\%cms%\  /s /e /y /d
REM call xcopy c:\f\0-buckets\%article%\%site%\input\content\  c:\e\a3_input\%site%\input\content\  /s /e /y /d
REM call robocopy  c:\f\0-buckets\%drive%\%site%\input\content  c:\e\a3_input\%site%\input\content\  /s "*.list"  "*.path" "*.imagelist"  "*.count" ".desc"  ".keywords"  ".articlelist"  ".articleslist" /e 


