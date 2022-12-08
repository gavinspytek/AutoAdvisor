# AutoAdvisor

## TOPICS OF CONVERSATION
* Entry Point
* How to Start the Project
* Functionalities
* Tested Browsers and OS
* External Libraries/Frameworks
* Starter Code Used
* Changed Code


### ENTRY POINT
  After completing steps on how to start the project, run
  localhost/autoadvisor/autoAdvisor.html

### How to Start the Project
***Ensure you follow all formatting EXACTLY as stated***

<ins>XAMPP SETUP</ins>
1. Install and run XAMPP: https://www.apachefriends.org/download.html
2. Click the Config button in the MYSQL Module and select my.ini.
3. CTRL+F and search for 3306. Replace all these instance with 4000. Save this file.
4. Click the Config button in the upper-right hand corner of the XAMPP Control Panel.
5. Click Service and Port Settings. Then click the MySQL tab. 
6. Change the main port to 4000 and save.
7. On the XAMPP Control Panel, click Explorer.
8. Find the phpMyAdmin folder, open it.
9. Locate the file config.inc.php. It may also be called config.inc. Open this file.
10. Add line 11 in the "Authentication type and info" section near the beginning, which is located near the beginning.
11. $cfg['Servers'][$i]['port'] = 4000;
12. Save the file and return to the XAMPP Control Panel

<ins>Prepping Database and Files</ins>
1. On GITHUB, download this repository.
2. In the XAMPP folder (accessed by clicking Explorer in the XAMPP Control Panel, open htdocs and create a folder named autoadvisor.
3. Copy all files and paste all files into the autoadvisor folder that was created.
4. On the XAMPP Control Panel, click Start for Apache and MySQL. Click Admin for MySQL.
5. Create a new database by selecting New button located on the left side.
6. Name the database autoadvisor.
7. Click the import tab at the top. Select choose file and import autoadvisor(1).sql
8. Select Import at the bottom. The complete database should appear on the left side.

<ins>Running the Program</ins>
1. Run local localhost/autoadvisor/autoAdvisor.html
