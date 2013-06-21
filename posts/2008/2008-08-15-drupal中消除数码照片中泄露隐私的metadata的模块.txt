# drupal中消除数码照片中泄露隐私的metadata的模块

drupal中消除数码照片中泄露隐私的metadata的模块

http://drupal.org/project/mm_exif
robeano - October 18, 2007 - 06:52

The mm_exif module provides the ability to search through media files (jpeg so far) finds the Exif data and removes it. Removing Exif data protects user's privacy. Allowing a user to upload sensitive material without allowing others to use the uploaded file as a way to track down that user.

Check out the Exif Specification to learn more about Exif.
media_mover module is required for this module to run properly.

mm_exif module relies on jhead to find and remove the Exif data.
Download and install jhead on your server first: http://www.sentex.net/~mwandel/jhead/

This project funded [in part] by CivicActions.



2008-08-15