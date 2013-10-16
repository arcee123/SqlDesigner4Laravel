SqlDesigner4Laravel
===================

This will enable laravel developers to graphically create a data model, then output artisan generate commands for rapid development.  This works for Laravel 4.


Installation
============

1. Download wwwsqldesigner from google code at: http://code.google.com/p/wwwsqldesigner/

  Note: This does not have to be installed on a web server.  Just expand the zip and utilize locally.  Follow directions
  
2. Enable Jeffrey Way's Laravel 4 Generators at: https://github.com/JeffreyWay/Laravel-4-Generators

3. locate db folder in wwwsqldesigner.  Create another folder called "laravel"

4. Place datatypes.xml and output.xsl into laravel folder created in step 3

5. locate js/config.js file and add "laravel" at the end of the AVAILABLE_DBS array list

6. Navigate to index.html (locally, firefox works best...follow instructions)

7. Navigate to Options in Menu.  Select laravel as option for "*database for new designs" dropdown.

8. Refresh the page.


Operation
=========

9. Develop the data model as designed by wwwsqldesigner.  Do not create CREATED_AT and UPDATED_AT fields.  They will be  assumed during the artisan generate commands.   When done, click "Save/Load".

10. Click Generate SQL (laravel).  Output in below textbox contains necessary php artisan generate:migration scripts with associated fields. 

Upcoming Features
===================
1. Models
2. Models with joins (dependancy on upgrade to generator script to enable joins)
3. ignore automatic timestamp feature.
