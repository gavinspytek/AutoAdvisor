# AutoAdvisor

## TOPICS OF CONVERSATION
* Entry Point
* How to Start the Project
* Functionalities
* Tested Browsers and OS
* External Libraries/Frameworks
* Starter Code Used
* Changed Code

---
### ENTRY POINT
  After completing steps on how to start the project, run
  localhost/autoadvisor/autoAdvisor.html
  
---
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
2. SE key: root    Password: user
3. Enjoy!

---
### Fuctionalities

* This Auto Advisor software is designed to present a student with information regarding their remaining time at SEMO.
* While designing future semesters, a student will be automatically recommended classes based on avaliability, prerequisites, requirements.

**Alongside these main features there are a few other extras that the Auto Advisor software can offer!**
* On the left-hand side you can view a semester as a whole. Besides the current semester and classes that have been applied for, classes here are subject to change.
* A student may edit their schedule, load a schedule, save a schedule, and logout once finished.
* Courses for different departments may be viewed on the left side though the dropdown menu.

---
### Tested Brower and OS

Auto Advisor has been tested on the following Operating Systems:
* Windows 10 Home Build 19044.2251
* Windows 11 Home Version 22H2

Auto Advisor has been tested on the following Browsers:
* Google Chrome Version 108.0.5359.99 (Official Build) (64-bit)
* Avast Secure Browser Version 107.0.19447.122 (Official Build) (64-bit)

---
### External Libraries/Frameworks/Software

Auto Advisor uses the following External Libraries/Frameworks/Software:
* XAMPP
* Visual Studio Code
* phpmyadmin

---
### Starter Code
*Code in this section was either used partially, mostly, or simply referenced. Links show where the code was originally located*
* https://www.w3schools.com/howto/howto_js_collapsible.asp
* https://stackoverflow.com/questions/27014042/display-data-from-mysql-phpmyadmin-on-html-page
* https://www.javatpoint.com/php-mysql-login-system

---
### Changed Code
Most of the changed code revolved around changing specifics to match our project.
For example, in the 2nd link above, headers for the tables was changed as well as what information was queried.
