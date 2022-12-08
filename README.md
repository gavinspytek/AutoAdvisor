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
10. Add line 11 in the "Authentication type and info" section near the beginning.
11. $cfg['Servers'][$i]['port'] = 4000;
12. Save the file and return to the XAMPP Control Panel
