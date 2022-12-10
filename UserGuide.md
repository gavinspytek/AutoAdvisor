# USER GUIDE: AUTO ADVISOR
---
## Contents
This is a simple user guide for the Auto Advising software.
Contents include:
1. How to run Auto Advisor
2. Capabilities of the software
3. Known Problems
4. Future Development
5. FAQs
---

### How to run Auto Advisor

*Found also in the README.md for this project*
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

*Found also in the README.md for this project*

* This Auto Advisor software is designed to present a student with information regarding their remaining time at SEMO.
* While designing future semesters, a student will be automatically recommended classes based on avaliability, prerequisites, requirements.

**Alongside these main features there are a few other extras that the Auto Advisor software can offer!**
* On the left-hand side you can view a semester as a whole. Besides the current semester and classes that have been applied for, classes here are subject to change.
* A student may edit their schedule, load a schedule, save a schedule, and logout once finished.
* Courses for different departments may be viewed on the left side though the dropdown menu.

---

### Known Issues

*The Auto Advisor software is incomplete and not fully tested. There may be more issues than mentioned here*
_MAIN ISSUES_
1. 
