-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4000
-- Generation Time: Dec 07, 2022 at 09:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoadvisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `advisor_fn` varchar(30) NOT NULL,
  `advisor_ln` varchar(50) NOT NULL,
  `advisor_email` varchar(100) NOT NULL,
  `advisor_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`advisor_fn`, `advisor_ln`, `advisor_email`, `advisor_id`) VALUES
('Mario', 'Guimaraes', 'mguimaraes@semo.edu', '1'),
('Reshmi', 'Mitra', 'rmitra@semo.edu', '10'),
('Max', 'North', 'mnorth@semo.edu', '11'),
('Carole', 'Pfeiffer', 'cpfeiffer@semo.edu', '12'),
('Indranil', 'Roy', 'iroy@semo.edu', '13'),
('Joshua', 'Schulz', 'jaschulz@semo.edu', '14'),
('Paul', 'Setzer', 'pbsetzer@semo.edu', '15'),
('Terri', 'Smith', 'tcsmith@semo.edu', '16'),
('Juefei', 'Yuan', 'jyuan@semo.edu', '17'),
('Suhair', 'Amer', 'samer@semo.edu', '2'),
('Cynthia', 'Calongne', 'cmcalongne@semo.edu', '3'),
('Ethan', 'Chou', 'echou@semo.edu', '4'),
('Mario', 'Garcia', 'mgarcia@semo.edu', '5'),
('George', 'Li', 'zli2@semo.edu', '6'),
('Xiaoming', 'Liu', 'xliu@semo.edu', '7'),
('Robert', 'Lowe', 'rlowe@semo.edu', '9');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_ID` varchar(10) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `class_credits` int(11) NOT NULL,
  `class_des` varchar(1000) DEFAULT NULL,
  `class_fall` char(1) DEFAULT NULL,
  `class_winter` char(1) DEFAULT NULL,
  `class_spring` char(1) DEFAULT NULL,
  `class_summer` char(1) DEFAULT NULL,
  `class_prereq` varchar(1000) DEFAULT NULL,
  `class_OffAsNeed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_ID`, `class_title`, `class_credits`, `class_des`, `class_fall`, `class_winter`, `class_spring`, `class_summer`, `class_prereq`, `class_OffAsNeed`) VALUES
('CS101', 'Introduction to computer programming', 3, 'Introduction to design and development of simple programs using Python.', 'X', 'X', 'X', 'X', '', ''),
('CS155', 'Computer Science I', 4, 'Introduction to object oriented programming in Java, with selection and repetition structures, pre-defined and programmer-defined functions and arrays.', 'X', '', 'X', 'X', 'CS101', ''),
('CS245', 'Discrete Structures I', 3, 'Introduction to discrete structures as used in computer science. Topics include proof techniques, fundamental structures, and basic algorithm analysis.', 'X', '', 'X', '', 'CS101', ''),
('CS265', ' Computer Science II', 4, 'Covers object oriented programming, generics, and applications of data structures such as lists, stacks, queues and priority queues.', 'X', '', 'X', '', 'CS155', ''),
('CS288', 'Computer System and Assembly Language', 4, 'Computer system organization including logic circuits and assembly language.', 'X', '', 'X', '', 'CS245', ''),
('CS300', 'Computer Science III', 3, 'Covers object-oriented programming, sets and maps, sorting, binary search tress, AVL trees, hashing, and graphs.', '', '', 'X', '', 'CS265', ''),
('CS345', 'Discrete Structures', 3, 'A continuation of the study of discrete structures in computer science. Topics may include graph theory, computational models, proof of correctness and algorithm analysis.', 'X', '', '', '', 'CS245', ''),
('CS350', 'Analysis of Algorithms', 3, 'A continuation of the study of data abstractions and the algorithms for their manipulation. Emphasis on the analysis of non-numeric algorithms.', 'X', '', '', '', 'CS300 ; CS345', ''),
('CS351', 'C and the Posix Environment', 4, 'C language and Linux Environment. ', 'X', 'X', '', '', 'CS155', ''),
('CS373', 'Introduction to game programming', 3, 'Explore the fundamentals of 2D game programming, using a high-level programming language and appropriate tool(s).', '', '', '', '', 'CS265', 'X'),
('CS380', 'Computer Operating System', 3, 'Explores the concepts and implementation of operating systems.', 'X', '', 'X', '', 'CS288; CS351', ''),
('CS390', 'Programming Languages', 3, 'Properties of algorithmic languages including scopes of declarations, storage allocation, grouping of statements, runtime behavior; introduction to Language and BNF Grammars.', 'X', '', '', '', 'CS300', ''),
('CS433', 'Introduction to Data Analytics', 3, 'Data collection, analysis and visualization of Big Data.', '', '', 'X', '', 'CS300 or CS500', ''),
('CS440', 'Database', 3, 'Basic concepts of database and database architecture. Discussion of entity-relationship and relational database models. Study of the SQL query language. Study of database design methodology.', 'X', '', '', '', 'CS265 or CS500', ''),
('CS445', 'Software Engineering', 3, 'Provides an in depth understanding of the principles and techniques used in the analysis and design aspects of developing applications systems. Apply techniques and tools to produce the system artifacts pertaining to analysis and design.', 'X', '', 'X', '', 'Senior Standing', ''),
('CS453', 'Machine Learning', 3, 'Overview of many concepts, techniques, and algorithms related to machine learning.', 'X', '', '', '', 'CS265 or CS500', ''),
('CS473', '3D Game Programming', 3, 'Explore the algorithms, data structures, and techniques in 3D computer game programming. Create complex 3D games utilizing a programming language. ', '', '', '', '', 'CS373', 'X'),
('CS480', 'Data Communications', 3, 'Principles of data communication and computer networks.', 'X', '', '', '', 'CS351', ''),
('CS481', 'Problems in Computer Science', 1, 'Directed study of special topics in computer science through seminars, workshops, forums, etc. ', '', '', '', '', 'Faculty Approval', 'X'),
('CS482', 'Problems in Computer Science', 2, 'Directed study of special topics in computer science through seminars, workshops, forums, etc. ', '', '', '', '', 'Faculty Approval', 'X'),
('CS483', 'Problems in Computer Science', 3, 'Directed study of special topics in computer science through seminars, workshops, forums, etc. ', '', '', '', '', 'Faculty Approval', 'X'),
('CS495', 'Senior Seminar', 1, 'The impact of computing on society; social, professional, ethical, legal and security and privacy issues and responsibilities in the computing field; lifelong learning in the computing field.', 'X', '', 'X', '', 'Co-req CS499', ''),
('CS499', 'Capstone Experience', 3, 'Application of techniques and tools to deliver the artifacts pertaining to requirements, analysis, design, software plan and implementation.', 'X', '', 'X', '', 'CS445', ''),
('CS503', 'Fundamentals of Computing', 3, 'Covers basic understanding of fundamental concepts in computer organizations, networks, algorithms and operating systems.', 'X', '', 'X', '', 'Permission of Chair', ''),
('CS505', 'Data Mining', 3, 'Trends, principles and applications of data mining.', '', '', '', '', 'CS265 or CS500', 'X'),
('CS506', 'Distributed Cloud Computing', 3, 'Principles and technologies for distributed cloud computing development.', 'X', '', '', '', '(CS265;CS380;CS480) or (CS265;CS503) or (CS500;CS503)', ''),
('CS533', 'Mobile Computing', 3, 'Mobile device architectures and the application development frameworks for various modern mobile platforms.', '', '', 'X', '', '(CS265;CS380;CS480) or (CS265;CS503) or (CS500;CS503)', ''),
('CS560', 'Computer Architecture', 3, 'Major architectures in modern computer systems, including the evolution of computer architectures.', '', '', '', '', '(CS300;CS380;CS480) or (CS300;CS503) or (CS500;CS503)', 'X'),
('CS575', 'Advanced Web Development', 3, 'Latest technologies for the front-end and back-end web development. ', '', '', '', '', 'CS265', 'X'),
('CS580', 'Advanced Robotics', 3, 'Modern topics in Artificial Intelligence robotics.', '', '', '', '', '(CS300;CS380;CS480) or (CS300;CS503) or (CS500;CS503) ', 'X'),
('CS585', 'Formal System and Modeling', 3, 'Course covers nondeterminism, program specification and verification, formal models of computation and languages. ', '', '', '', '', 'CS265', 'X'),
('CS591', 'Advanced Artificial Intelligence', 3, 'Covers major Artificial Intelligence areas in detail.', '', '', 'X', '', '(CS300;CS380;CS480) or (CS300;CS503) or (CS500;CS503)', ''),
('CY201', 'Introduction to Cybersecurity', 3, 'Broad introduction to the field of cybersecurity, information assurance terminology and issues, computer forensics investigation and methodology.', 'X', '', 'X', '', 'CS155', ''),
('CY310', 'Information Security and Assurance', 3, 'Software assurance, secure programming practices, software security analysis, hardware/firmware security, cryptographic principles to design secure systems.', 'X', '', '', '', 'CY201;CS265;MA464', ''),
('CY320', 'Information Security in System Administration', 3, 'Security construct for privilege management, security policies, authorization models, security administration of networking elements, database, OS, and Cloud.', 'X', '', '', '', 'CY201;IS299', ''),
('CY410', 'Web Application Security', 3, 'Development of secure web-based systems. Security mitigation strategies and secure coding. Penetration testing. Security in systems using advanced web technologies.', '', '', 'X', '', 'CY320;IS245', ''),
('CY420', 'Computer Forensics', 3, 'Implementation of computer forensic methodology. File system analysis in Windows. Response techniques, evidence acquisition, timeline analysis, extraction and recovery of files and data. Dealing with as-yet-unknown malware.', '', '', 'X', '', 'CY310;CS288', ''),
('CY440', 'Cloud Computing', 3, 'Virtualization Technology, cloud delivery, deployment. Models, threats, vulnerabilities, privacy issues, secure isolation, identity, access management, regulation, compliance in cloud.', 'X', '', '', '', 'CY310;IS245', ''),
('CY450', 'Introduction to Cyber Operations', 3, 'Cyberspace and Cyber warfare. Tools, techniques of cyber offense and defensive tactics. Foot printing and monitoring techniques.', '', '', 'X', '', 'CY310;CY320', ''),
('IS145', 'Introduction to Web Development', 3, 'Introduction to website development including vocabulary, tools, and standards used in the field, with emphasis on HTML/CSS.', 'X', '', 'X', '', '', ''),
('IS175', 'Computer Information Systems I', 3, 'Introduction to information systems, concepts of information systems and applications and how information systems are used throughout organizations.', 'X', '', 'X', '', '', ''),
('IS245', 'Web Development and Security', 3, 'Web page programming used to develop professional and secure web pages.', 'X', '', 'X', '', 'CS101 or IS145', ''),
('IS275', 'Computer Information systems II', 3, 'Design, selection, implementation and management of enterprise IT solutions. Advanced concepts in information systems and simple applications involving databases.', 'X', '', 'X', '', 'IS175', ''),
('IS299', 'Security in Data Protocols', 3, 'Provides a fundamental understanding of data protocols and algorithms, network defense, and security issues in protocols for current and emerging standards.', '', '', 'X', '', 'IS245', ''),
('IS340', 'Information Technology', 3, 'Covers major topics in information technology in general, with emphasis on areas in computer organization, operating systems, and networks.', 'X', '', '', '', 'IS275', ''),
('IS360', 'Mobil Application Development', 3, 'Covers mobile application design and development essentials.', '', '', 'X', '', 'CS265', ''),
('IS420', 'Human Computer Interation', 3, 'Theory and practice of human computer interaction; designing, implementing and evaluating human computer interaction. ', '', '', 'X', '', 'IS245', ''),
('IS440', 'Web Design for Electronic Commerce', 3, 'Developing a World Wide presence using advanced Web-centered technologies and exploring the design, selection, implementation and management of enterprise commerce.', '', '', 'X', '', 'IS245', ''),
('IS448', 'IS/IT Project Management', 3, 'Elements of IS/IT project management. Preparing a project plan, managing time and cost, quality and risk management, use of a project management tool.', '', 'X', '', '', 'IS340', ''),
('IS465', 'Management Support Systems', 3, 'Understanding management support systems; study of decision support systems, analysis and development, use of Information Systems in supporting decision making, expert and intelligent systems.', '', '', 'X', '', 'CS440', ''),
('IS575', 'IS/IT Strategy and Management', 3, 'Business alignment with technology using strategic frameworks for IT deployment in organizations. Course is of applied nature with discussions on industry practices in managing IT.', 'X', '', 'X', '', 'IS465', ''),
('IU315', 'Ethics in the Cyber World', 3, 'Social and ethical issues and controversies concerning new and evolving technologies in the cyber world.', '', 'X', 'X', 'X', '', ''),
('MA139', 'Applied Calculus', 3, 'For students in business, social or life sciences. Functions, limits, differentiation, and integration of elementary functions. Emphasizes applications.', 'X', '', 'X', '', 'ACT Math subscore of 24 or MA 115 or MA 116 or MA 137', ''),
('MA223', 'Elementary Probability & Statistics', 3, 'Introduction to the basic ideas of statistics: descriptive measures, elementary probability, distributions, estimation, hypothesis testing, correlation, and linear regression.', 'X', '', 'X', '', 'MA 115 or MA 116 or MA 137 or ACT math subscore of 24.  ', ''),
('MA464', 'Mathematical Cryptography', 3, 'Course will cover basic concepts of secure communication, classical cryptography and cryptoanalysis, monoalphabetic and polyalphabetic ciphers, Shannons theory of secrecy, modern private-key cryptosystems such as DES and AES, and public-key cryptosystems such and RSA.', 'X', '', 'X', '', 'MA223 or MA250', '');

-- --------------------------------------------------------

--
-- Table structure for table `csclasses`
--

CREATE TABLE `csclasses` (
  `class_ID` varchar(10) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `class_credits` int(11) NOT NULL,
  `class_des` varchar(1000) DEFAULT NULL,
  `class_fall` char(1) DEFAULT NULL,
  `class_winter` char(1) DEFAULT NULL,
  `class_spring` char(1) DEFAULT NULL,
  `class_summer` char(1) DEFAULT NULL,
  `class_prereq` varchar(1000) DEFAULT NULL,
  `class_OffAsNeed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `csclasses`
--

INSERT INTO `csclasses` (`class_ID`, `class_title`, `class_credits`, `class_des`, `class_fall`, `class_winter`, `class_spring`, `class_summer`, `class_prereq`, `class_OffAsNeed`) VALUES
('CS101', 'Introduction to computer programming', 3, 'Introduction to design and development of simple programs using Python.', 'X', 'X', 'X', 'X', '', ''),
('CS155', 'Computer Science I', 4, 'Introduction to object oriented programming in Java, with selection and repetition structures, pre-defined and programmer-defined functions and arrays.', 'X', '', 'X', 'X', 'CS101', ''),
('CS245', 'Discrete Structures I', 3, 'Introduction to discrete structures as used in computer science. Topics include proof techniques, fundamental structures, and basic algorithm analysis.', 'X', '', 'X', '', 'CS101', ''),
('CS265', ' Computer Science II', 4, 'Covers object oriented programming, generics, and applications of data structures such as lists, stacks, queues and priority queues.', 'X', '', 'X', '', 'CS155', ''),
('CS288', 'Computer System and Assembly Language', 4, 'Computer system organization including logic circuits and assembly language.', 'X', '', 'X', '', 'CS245', ''),
('CS300', 'Computer Science III', 3, 'Covers object-oriented programming, sets and maps, sorting, binary search tress, AVL trees, hashing, and graphs.', '', '', 'X', '', 'CS265', ''),
('CS345', 'Discrete Structures', 3, 'A continuation of the study of discrete structures in computer science. Topics may include graph theory, computational models, proof of correctness and algorithm analysis.', 'X', '', '', '', 'CS245', ''),
('CS350', 'Analysis of Algorithms', 3, 'A continuation of the study of data abstractions and the algorithms for their manipulation. Emphasis on the analysis of non-numeric algorithms.', 'X', '', '', '', 'CS300 ; CS345', ''),
('CS351', 'C and the Posix Environment', 4, 'C language and Linux Environment. ', 'X', 'X', '', '', 'CS155', ''),
('CS373', 'Introduction to game programming', 3, 'Explore the fundamentals of 2D game programming, using a high-level programming language and appropriate tool(s).', '', '', '', '', 'CS265', 'X'),
('CS380', 'Computer Operating System', 3, 'Explores the concepts and implementation of operating systems.', 'X', '', 'X', '', 'CS288; CS351', ''),
('CS390', 'Programming Languages', 3, 'Properties of algorithmic languages including scopes of declarations, storage allocation, grouping of statements, runtime behavior; introduction to Language and BNF Grammars.', 'X', '', '', '', 'CS300', ''),
('CS433', 'Introduction to Data Analytics', 3, 'Data collection, analysis and visualization of Big Data.', '', '', 'X', '', 'CS300 or CS500', ''),
('CS440', 'Database', 3, 'Basic concepts of database and database architecture. Discussion of entity-relationship and relational database models. Study of the SQL query language. Study of database design methodology.', 'X', '', '', '', 'CS265 or CS500', ''),
('CS445', 'Software Engineering', 3, 'Provides an in depth understanding of the principles and techniques used in the analysis and design aspects of developing applications systems. Apply techniques and tools to produce the system artifacts pertaining to analysis and design.', 'X', '', 'X', '', 'Senior Standing', ''),
('CS453', 'Machine Learning', 3, 'Overview of many concepts, techniques, and algorithms related to machine learning.', 'X', '', '', '', 'CS265 or CS500', ''),
('CS473', '3D Game Programming', 3, 'Explore the algorithms, data structures, and techniques in 3D computer game programming. Create complex 3D games utilizing a programming language. ', '', '', '', '', 'CS373', 'X'),
('CS480', 'Data Communications', 3, 'Principles of data communication and computer networks.', 'X', '', '', '', 'CS351', ''),
('CS481', 'Problems in Computer Science', 1, 'Directed study of special topics in computer science through seminars, workshops, forums, etc. ', '', '', '', '', 'Faculty Approval', 'X'),
('CS482', 'Problems in Computer Science', 2, 'Directed study of special topics in computer science through seminars, workshops, forums, etc. ', '', '', '', '', 'Faculty Approval', 'X'),
('CS483', 'Problems in Computer Science', 3, 'Directed study of special topics in computer science through seminars, workshops, forums, etc. ', '', '', '', '', 'Faculty Approval', 'X'),
('CS495', 'Senior Seminar', 1, 'The impact of computing on society; social, professional, ethical, legal and security and privacy issues and responsibilities in the computing field; lifelong learning in the computing field.', 'X', '', 'X', '', 'Co-req CS499', ''),
('CS499', 'Capstone Experience', 3, 'Application of techniques and tools to deliver the artifacts pertaining to requirements, analysis, design, software plan and implementation.', 'X', '', 'X', '', 'CS445', ''),
('CS503', 'Fundamentals of Computing', 3, 'Covers basic understanding of fundamental concepts in computer organizations, networks, algorithms and operating systems.', 'X', '', 'X', '', 'Permission of Chair', ''),
('CS505', 'Data Mining', 3, 'Trends, principles and applications of data mining.', '', '', '', '', 'CS265 or CS500', 'X'),
('CS506', 'Distributed Cloud Computing', 3, 'Principles and technologies for distributed cloud computing development.', 'X', '', '', '', '(CS265;CS380;CS480) or (CS265;CS503) or (CS500;CS503)', ''),
('CS533', 'Mobile Computing', 3, 'Mobile device architectures and the application development frameworks for various modern mobile platforms.', '', '', 'X', '', '(CS265;CS380;CS480) or (CS265;CS503) or (CS500;CS503)', ''),
('CS560', 'Computer Architecture', 3, 'Major architectures in modern computer systems, including the evolution of computer architectures.', '', '', '', '', '(CS300;CS380;CS480) or (CS300;CS503) or (CS500;CS503)', 'X'),
('CS575', 'Advanced Web Development', 3, 'Latest technologies for the front-end and back-end web development. ', '', '', '', '', 'CS265', 'X'),
('CS580', 'Advanced Robotics', 3, 'Modern topics in Artificial Intelligence robotics.', '', '', '', '', '(CS300;CS380;CS480) or (CS300;CS503) or (CS500;CS503) ', 'X'),
('CS585', 'Formal System and Modeling', 3, 'Course covers nondeterminism, program specification and verification, formal models of computation and languages. ', '', '', '', '', 'CS265', 'X'),
('CS591', 'Advanced Artificial Intelligence', 3, 'Covers major Artificial Intelligence areas in detail.', '', '', 'X', '', '(CS300;CS380;CS480) or (CS300;CS503) or (CS500;CS503)', '');

-- --------------------------------------------------------

--
-- Table structure for table `cyclasses`
--

CREATE TABLE `cyclasses` (
  `class_ID` varchar(10) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `class_credits` int(11) NOT NULL,
  `class_des` varchar(1000) DEFAULT NULL,
  `class_fall` char(1) DEFAULT NULL,
  `class_winter` char(1) DEFAULT NULL,
  `class_spring` char(1) DEFAULT NULL,
  `class_summer` char(1) DEFAULT NULL,
  `class_prereq` varchar(1000) DEFAULT NULL,
  `class_OffAsNeed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cyclasses`
--

INSERT INTO `cyclasses` (`class_ID`, `class_title`, `class_credits`, `class_des`, `class_fall`, `class_winter`, `class_spring`, `class_summer`, `class_prereq`, `class_OffAsNeed`) VALUES
('CY201', 'Introduction to Cybersecurity', 3, 'Broad introduction to the field of cybersecurity, information assurance terminology and issues, computer forensics investigation and methodology.', 'X', '', 'X', '', 'CS155', ''),
('CY310', 'Information Security and Assurance', 3, 'Software assurance, secure programming practices, software security analysis, hardware/firmware security, cryptographic principles to design secure systems.', 'X', '', '', '', 'CY201;CS265;MA464', ''),
('CY320', 'Information Security in System Administration', 3, 'Security construct for privilege management, security policies, authorization models, security administration of networking elements, database, OS, and Cloud.', 'X', '', '', '', 'CY201;IS299', ''),
('CY410', 'Web Application Security', 3, 'Development of secure web-based systems. Security mitigation strategies and secure coding. Penetration testing. Security in systems using advanced web technologies.', '', '', 'X', '', 'CY320;IS245', ''),
('CY420', 'Computer Forensics', 3, 'Implementation of computer forensic methodology. File system analysis in Windows. Response techniques, evidence acquisition, timeline analysis, extraction and recovery of files and data. Dealing with as-yet-unknown malware.', '', '', 'X', '', 'CY310;CS288', ''),
('CY440', 'Cloud Computing', 3, 'Virtualization Technology, cloud delivery, deployment. Models, threats, vulnerabilities, privacy issues, secure isolation, identity, access management, regulation, compliance in cloud.', 'X', '', '', '', 'CY310;IS245', ''),
('CY450', 'Introduction to Cyber Operations', 3, 'Cyberspace and Cyber warfare. Tools, techniques of cyber offense and defensive tactics. Foot printing and monitoring techniques.', '', '', 'X', '', 'CY310;CY320', '');

-- --------------------------------------------------------

--
-- Table structure for table `isclasses`
--

CREATE TABLE `isclasses` (
  `class_ID` varchar(10) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `class_credits` int(11) NOT NULL,
  `class_des` varchar(1000) DEFAULT NULL,
  `class_fall` char(1) DEFAULT NULL,
  `class_winter` char(1) DEFAULT NULL,
  `class_spring` char(1) DEFAULT NULL,
  `class_summer` char(1) DEFAULT NULL,
  `class_prereq` varchar(1000) DEFAULT NULL,
  `class_OffAsNeed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isclasses`
--

INSERT INTO `isclasses` (`class_ID`, `class_title`, `class_credits`, `class_des`, `class_fall`, `class_winter`, `class_spring`, `class_summer`, `class_prereq`, `class_OffAsNeed`) VALUES
('IS145', 'Introduction to Web Development', 3, 'Introduction to website development including vocabulary, tools, and standards used in the field, with emphasis on HTML/CSS.', 'X', '', 'X', '', '', ''),
('IS175', 'Computer Information Systems I', 3, 'Introduction to information systems, concepts of information systems and applications and how information systems are used throughout organizations.', 'X', '', 'X', '', '', ''),
('IS245', 'Web Development and Security', 3, 'Web page programming used to develop professional and secure web pages.', 'X', '', 'X', '', 'CS101 or IS145', ''),
('IS275', 'Computer Information systems II', 3, 'Design, selection, implementation and management of enterprise IT solutions. Advanced concepts in information systems and simple applications involving databases.', 'X', '', 'X', '', 'IS175', ''),
('IS299', 'Security in Data Protocols', 3, 'Provides a fundamental understanding of data protocols and algorithms, network defense, and security issues in protocols for current and emerging standards.', '', '', 'X', '', 'IS245', ''),
('IS340', 'Information Technology', 3, 'Covers major topics in information technology in general, with emphasis on areas in computer organization, operating systems, and networks.', 'X', '', '', '', 'IS275', ''),
('IS360', 'Mobil Application Development', 3, 'Covers mobile application design and development essentials.', '', '', 'X', '', 'CS265', ''),
('IS420', 'Human Computer Interation', 3, 'Theory and practice of human computer interaction; designing, implementing and evaluating human computer interaction. ', '', '', 'X', '', 'IS245', ''),
('IS440', 'Web Design for Electronic Commerce', 3, 'Developing a World Wide presence using advanced Web-centered technologies and exploring the design, selection, implementation and management of enterprise commerce.', '', '', 'X', '', 'IS245', ''),
('IS448', 'IS/IT Project Management', 3, 'Elements of IS/IT project management. Preparing a project plan, managing time and cost, quality and risk management, use of a project management tool.', '', 'X', '', '', 'IS340', ''),
('IS465', 'Management Support Systems', 3, 'Understanding management support systems; study of decision support systems, analysis and development, use of Information Systems in supporting decision making, expert and intelligent systems.', '', '', 'X', '', 'CS440', ''),
('IS575', 'IS/IT Strategy and Management', 3, 'Business alignment with technology using strategic frameworks for IT deployment in organizations. Course is of applied nature with discussions on industry practices in managing IT.', 'X', '', 'X', '', 'IS465', '');

-- --------------------------------------------------------

--
-- Table structure for table `iuclasses`
--

CREATE TABLE `iuclasses` (
  `class_ID` varchar(10) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `class_credits` int(11) NOT NULL,
  `class_des` varchar(1000) DEFAULT NULL,
  `class_fall` char(1) DEFAULT NULL,
  `class_winter` char(1) DEFAULT NULL,
  `class_spring` char(1) DEFAULT NULL,
  `class_summer` char(1) DEFAULT NULL,
  `class_prereq` varchar(1000) DEFAULT NULL,
  `class_OffAsNeed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iuclasses`
--

INSERT INTO `iuclasses` (`class_ID`, `class_title`, `class_credits`, `class_des`, `class_fall`, `class_winter`, `class_spring`, `class_summer`, `class_prereq`, `class_OffAsNeed`) VALUES
('IU315', 'Ethics in the Cyber World', 3, 'Social and ethical issues and controversies concerning new and evolving technologies in the cyber world.', '', 'X', 'X', 'X', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('root', 'user'),
('test', 'complete'),
('random', 'person'),
('beep', 'boop'),
('get', 'pwned'),
('glspytek1s', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `maclasses`
--

CREATE TABLE `maclasses` (
  `class_ID` varchar(10) NOT NULL,
  `class_title` varchar(100) NOT NULL,
  `class_credits` int(11) NOT NULL,
  `class_des` varchar(1000) DEFAULT NULL,
  `class_fall` char(1) DEFAULT NULL,
  `class_winter` char(1) DEFAULT NULL,
  `class_spring` char(1) DEFAULT NULL,
  `class_summer` char(1) DEFAULT NULL,
  `class_prereq` varchar(1000) DEFAULT NULL,
  `class_OffAsNeed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maclasses`
--

INSERT INTO `maclasses` (`class_ID`, `class_title`, `class_credits`, `class_des`, `class_fall`, `class_winter`, `class_spring`, `class_summer`, `class_prereq`, `class_OffAsNeed`) VALUES
('MA139', 'Applied Calculus', 3, 'For students in business, social or life sciences. Functions, limits, differentiation, and integration of elementary functions. Emphasizes applications.', 'X', '', 'X', '', 'ACT Math subscore of 24 or MA 115 or MA 116 or MA 137', ''),
('MA223', 'Elementary Probability & Statistics', 3, 'Introduction to the basic ideas of statistics: descriptive measures, elementary probability, distributions, estimation, hypothesis testing, correlation, and linear regression.', 'X', '', 'X', '', 'MA 115 or MA 116 or MA 137 or ACT math subscore of 24.  ', ''),
('MA464', 'Mathematical Cryptography', 3, 'Course will cover basic concepts of secure communication, classical cryptography and cryptoanalysis, monoalphabetic and polyalphabetic ciphers, Shannons theory of secrecy, modern private-key cryptosystems such as DES and AES, and public-key cryptosystems such and RSA.', 'X', '', 'X', '', 'MA223 or MA250', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_S0` varchar(15) NOT NULL,
  `student_fn` varchar(50) NOT NULL,
  `student_ln` varchar(50) NOT NULL,
  `student_grade` varchar(50) NOT NULL,
  `student_major` varchar(50) NOT NULL,
  `student_minor` varchar(50) DEFAULT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_SEkey` varchar(50) NOT NULL,
  `student_credits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_S0`, `student_fn`, `student_ln`, `student_grade`, `student_major`, `student_minor`, `student_email`, `student_SEkey`, `student_credits`) VALUES
('S01234352', 'Ethan', 'Limbaugh', 'Senior', 'Cybersecurity', '', 'ealimba2a@semo.edu', 'ealimba2a', 115),
('S02001759', 'Gavin', 'Spytek', 'Junior', 'Cybersecurity', 'Computer Science', 'glspytek1s@semo.edu', 'glspytek1s', 88),
('S02001760', 'Paige', 'Emmerich', 'Sophomore', 'Computer Science', '', 'peemerich2d@semo.edu', 'peemmer2d', 30),
('S02003423', 'Ryan', 'Lee', 'Freshman', 'Cybersecurity', 'Musical Theater', 'rflee3g@semo.edu', 'rflee3g', 0),
('S02221433', 'Nathan', 'Kiehl', 'Junior', 'Computer Science', '', 'nckiehl1f@semo.edu', 'nnckiehl1f', 90),
('S06664833', 'Josh', 'Lenz', 'Freshman', 'Computer Science', 'Cybersecurity', 'jmlenz1q@semo.edu', 'jmlenz1q', 17);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
