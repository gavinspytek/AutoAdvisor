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

1. The most pressing issue is that the software itself has yet to be implemented. What is displayed represents the software's expected output. We are working on pushing the software into Auto Advisor, however we are unsure of when it will be avaliable.
2. The Database may not contain all information needed to accurately present the needed information. Classes and requirements update every year so this will need to be updated as well.
3. The website is takes a somewhat involved process to run properly.
4. Bug testing has been limited. Most bug testing has been done to the login page exclusively.

---

### Future Development

We would love to continue this project to get students at SEMO the help they need when working through their class scheduling. In order to do this, we have a few steps we must first take.

* We want to fully implement the software to allow all CY, CS, and IS students to create and modify their schedules.
* We want to add proper security feature to the webpage. As cybersecurity concerns continue to grow, we feel this is the most logical step in helping keep SEMO students safe online.
* We feel that if this software works for the CY, CS, and IS majors, it may be able to assist other departments or colleges at SEMO when it comes to academic advising. If possible we would love to expand to further horizens in the future.
* Continued support. While this project has been challenging, fun, frustrating, and rewarding, we want it to be continually update and made better. Be it by ourselves or future students.

---

### FAQs

Here are some questions that we are asked or have thought of that we figured you may have!

Q. Why Auto Advisor? What would it do.

A. The Auto Advisor software is meant to be a way for students to set themselves up for success as soon as they arrive at SEMO. Be a traditional student or transfer student, international or working on a new degree path, this software is made for all. It will help select classes based on avaliablity as well as student qualifications. It helps the students arrive at the fastest path to their overall goal: Graduation!



Q. Who designed this software?

A. This was designed by a team of four students from Southeast Missouri State University: Nathan Kiehl, Ryan Lee, Ethan Limbaugh, and Gavin Spytek.



Q. Can I just jump right in?

A. Woah there cowboy. First you need to be a registered student or staff member at SEMO. You also must be majoring or minoring in Computer Science, Cybersecurity, or Information Systems. If that's you then you're all good to go!



Q. When will this software be done?

A. NEVER. Well, kinda never. It has to be updated each semester due to class changes, staff changes, and such.

---

Thank you for taking a little time out of your day to read our User Guide! We hope it has helped answer some of your questions.
No go forth and learn!
   
