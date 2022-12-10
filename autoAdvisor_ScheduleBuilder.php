<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Auto Advisor - Schedule Builder</title>
    <link rel="stylesheet" href="autoAdvisor_ScheduleBuilder.css">

    <style>
        .collapsible {
            background-color: #777;
            color: white;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
        }

            .active, .collapsible:hover {
                background-color: #555;
            }

            .collapsible:after {
                content: '\002B';
                color: white;
                font-weight: bold;
                float: right;
                margin-left: 5px;
            }

        .active:after {
            content: "\2212";
        }

        .content {
            padding: 0 18px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
            background-color: #f1f1f1;
        }
    </style>

    <script src="scheduleBuilder.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


</script>

<body>

    <!--3 Main Colums-->
    <div class="row" style="height:100%;">

        <!--Left Column-->
        <div class="column left" style="overflow-y:scroll;">
            <h1>Semester Viewer</h1>
            <br />
            <button type="button" class="semesterView">Fall 2022</button>
            <button type="button" class="semesterView">Spring 2023</button>
            <button type="button" class="semesterView">Fall 2023</button>
            <button type="button" class="semesterView">Spring 2024</button>
        </div>


        
        <!--Middle Column-->

        <div class="column middle">
            <!--Top section-->
            <div class="tab">
                <button class="tablinks">Schedule Editor</button>
                <button class="tablinks" id="save_button" value="Save" onclick="">Save</button>
                <button class="tablinks" id="edit_button" value="Edit" onclick="">Edit</button>
                <button class="tablinks">Load</button>
                <a href="index.php"><button class="tablinks">Classes</button></a>
                <a href="autoAdvisor.html"><button class="tablinks">Logout</button></a>
            </div>
            <!--Table-->
            <div>
                <h1>Editor</h1>

                <table id="editor" class="table">
                    <thead>
                    <th style="width: 275px;">Course</th>
                    <th style="width: 225px;">Credits</th>
                    </thead>

                    <tbody>
                        
                    </tbody>

                </table>

            </div>

        </div>


        <!--Right Column-->
        <div class="container column right" style="overflow-y:scroll;">


            <h1>Courses</h1>
            <!--Computer Science-->
            <button type="button" class="collapsible">Computer Science</button>
            <div class="content">

                <button type="button" class="collapsible">CS 101 - Introduction to Computer Programming</button>
                <div class="content">
                    <p>do stuff</p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>

                <button type="button" class="collapsible">CS 350 - Analysis of Algorithms</button>
                <div class="content">
                    <p>do stuff</p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>

                <button type="button" class="collapsible">CS 440 - Database</button>
                <div class="content">
                    <p>do stuff</p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>

                <button type="button" class="collapsible">CS 445 - Software Enginering</button>
                <div class="content">
                    <p>do stuff</p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>

                <button type="button" class="collapsible">CS 480 - Data Communication</button>
                <div class="content">
                    <p>do stuff</p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
            </div>

            <!--Cyber Security-->
            <button class="collapsible">Cyber Security</button>
            <div class="content">

                <button type="button" class="collapsible">CY 201 - Introduction to Cybersecurity</button>
                <div class="content">
                    <p>
                        Broad introduction to the field of cybersecurity, information assurance terminology and issues, computer forensics investigation and methodology. 
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">CY 310 - Information Security and Assurance</button>
                <div class="content">
                    <p>
                        Software assurance, secure programming practices, software security analysis, hardware/firmware security, cryptographic principles to design secure systems.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">CY 320 - Information Security in System Administration</button>
                <div class="content">
                    <p>
                        Security construct for privilege management, security policies, authorization models, security administration of networking elements, database, OS, and Cloud.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">CY 410 - Web Application Security</button>
                <div class="content">
                    <p>
                        Development of secure web-based systems. Security mitigation strategies and secure coding. 
                        Penetration testing. Security in systems using advanced web technologies.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">CY 420 - Computer Forensics</button>
                <div class="content">
                    <p>
                        Implementation of computer forensic methodology. File system analysis in Windows. Response techniques, evidence acquisition,
                         timeline analysis, extraction and recovery of files and data. Dealing with as-yet-unknown malware.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">CY 440 - Cloud Computing</button>
                <div class="content">
                    <p>
                        Virtualization Technology, cloud delivery, deployment. Models, threats, vulnerabilities, privacy issues, secure isolation, identity, 
                        access management, regulation, compliance in cloud.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">CY 450 - Introduction to Cyber Operations</button>
                <div class="content">
                    <p>
                        Cyberspace and Cyber warfare. Tools, techniques of cyber offense and defensive tactics. Foot printing and monitoring techniques.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
            </div>

            <!--Information Systems-->
            <button class="collapsible">Infomation Systems</button>
            <div class="content">

                <button type="button" class="collapsible">IS 145 - Introductio to Web Development</button>
                <div class="content">
                    <p>Introduction to website development including vocabulary, tools, and standards used in the field, with emphasis on HTML/CSS. </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
            </div>

            <!--IU Classes-->
            <button class="collapsible">Unitversity Studies</button>
            <div class="content">

                <button type="button" class="collapsible">IU 315 - Ethics in the Cyber World</button>
                <div class="content">
                    <p>
                        Social and ethical issues and controversies concerning new and evolving technologies in the cyber world. 
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
            </div>

            <!--Math Classes-->
            <button class="collapsible">Math</button>
            <div class="content">

                <button type="button" class="collapsible">CS 480 - Data Communication</button>
                <div class="content">
                     <p>
                        For students in business, social or life sciences. Functions, limits, differentiation, and integration of elementary functions. Emphasizes applications.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                    
                </div>
                <button type="button" class="collapsible">MA 223 - Elementary Probability & Statistics</button>
                <div class="content">
                    <p>
                        Introduction to the basic ideas of statistics: descriptive measures, elementary probability, distributions,
                        estimation, hypothesis testing, correlation, and linear regression.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
                <button type="button" class="collapsible">MA 464 - Mathematical Cryptography</button>
                <div class="content">
                    <p>
                        Course will cover basic concepts of secure communication, classical cryptography and cryptoanalysis, monoalphabetic and polyalphabetic ciphers,
                        Shannons theory of secrecy, modern private-key cryptosystems such as DES and AES, and public-key cryptosystems such and RSA.
                    </p>
                    <!--Submit Button-->
                    <button type="submit" onclick="addToTable()">Add to Builder</button>
                </div>
            </div>

        </div>


         <!--Right Column-->
        <div class="container column right" style="overflow-y:scroll;">
        
        
        <?php
		include("maclasses.php");

        echo "<table border='1'>
            <tr><th>Courses</th>
            <th>Credits</th>
            </tr>";

        while($row = mysqli_fetch_assoc($result)){
            echo "<tr><td>{$row['class_title']}</td><td>{$row['class_credits']}</td></tr>";
		}
        echo "</table>";
        mysqli_close($con);
        ?>

        
        </div>


        <!--Script for adding to table-->
        <script>

            function addToTable() {
                var table = document.getElementById("editor");
                var row = table.insertRow(0);
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);
                cell1.innerHTML = "NEW CELL1";
                cell2.innerHTML = "NEW CELL2";
            }

        </script>

        <!--Script for collapse-->
        <script>
            var coll = document.getElementsByClassName("collapsible");
            var i;

            for (i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var content = this.nextElementSibling;
                    if (content.style.maxHeight) {
                        content.style.maxHeight = null;
                    } else {
                        content.style.maxHeight = content.scrollHeight + "px";
                    }
                });
            }
        </script>

</body>

</html>
