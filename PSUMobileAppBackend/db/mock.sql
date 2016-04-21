-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2016 at 07:51 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mock`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_records`
--

DROP TABLE IF EXISTS `academic_records`;
CREATE TABLE IF NOT EXISTS `academic_records` (
  `STUDENT_ID` int(10) UNSIGNED NOT NULL,
  `MAJOR_ID` int(10) UNSIGNED NOT NULL,
  `CUM_GPA` double UNSIGNED NOT NULL,
  `SEMESTER` int(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`STUDENT_ID`,`SEMESTER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_records`
--

INSERT INTO `academic_records` (`STUDENT_ID`, `MAJOR_ID`, `CUM_GPA`, `SEMESTER`) VALUES
(212210282, 2, 3.99, 20151),
(212210188, 1, 3.1, 20151),
(214110962, 1, 3.51, 20151);

-- --------------------------------------------------------

--
-- Table structure for table `sis_courses`
--

DROP TABLE IF EXISTS `sis_courses`;
CREATE TABLE IF NOT EXISTS `sis_courses` (
  `COURSE_NO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `COURSE_CODE` varchar(7) NOT NULL,
  `COURSE_NAME` varchar(200) DEFAULT NULL,
  `COURSE_NAME_S` varchar(200) NOT NULL,
  `CRD_HRS` int(2) UNSIGNED NOT NULL,
  PRIMARY KEY (`COURSE_NO`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sis_courses`
--

INSERT INTO `sis_courses` (`COURSE_NO`, `COURSE_CODE`, `COURSE_NAME`, `COURSE_NAME_S`, `CRD_HRS`) VALUES
(1, 'CS340', NULL, 'Introduction to Databases', 3),
(2, 'CS330', NULL, 'Operating Systems', 3),
(3, 'CS320', NULL, 'Programming Languages: Paradigms and Concepts', 3),
(4, 'CS210', NULL, 'Data Structures and Algorithms', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sis_major`
--

DROP TABLE IF EXISTS `sis_major`;
CREATE TABLE IF NOT EXISTS `sis_major` (
  `MAJOR_NO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FACULTY_NO` int(10) UNSIGNED NOT NULL,
  `DEPT_NO` int(10) UNSIGNED NOT NULL,
  `MAJOR_NAME` varchar(200) DEFAULT NULL,
  `MAJOR_NAME_S` varchar(200) NOT NULL,
  PRIMARY KEY (`MAJOR_NO`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sis_major`
--

INSERT INTO `sis_major` (`MAJOR_NO`, `FACULTY_NO`, `DEPT_NO`, `MAJOR_NAME`, `MAJOR_NAME_S`) VALUES
(1, 1, 1, NULL, 'Computer Science'),
(2, 1, 1, NULL, 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

DROP TABLE IF EXISTS `students_info`;
CREATE TABLE IF NOT EXISTS `students_info` (
  `STUDENT_ID` int(9) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NATIONAL_ID` int(10) UNSIGNED NOT NULL,
  `FIRST_NAME` varchar(200) NOT NULL,
  `MID_NAME` varchar(200) NOT NULL,
  `LAST_NAME` varchar(200) NOT NULL,
  `WEB_PASSWORD` char(32) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`),
  UNIQUE KEY `NATIONAL_ID` (`NATIONAL_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=214110963 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`STUDENT_ID`, `NATIONAL_ID`, `FIRST_NAME`, `MID_NAME`, `LAST_NAME`, `WEB_PASSWORD`) VALUES
(212210282, 2178228272, 'Ala''a', 'Adnan', 'Ezziddin', '31299df29122e8e391c14c921898fa4c'),
(214110962, 1117868297, 'Saud', 'Faisal', 'Al-Saud', '1caaa0b8b09be1f0348e992eda3fa990'),
(212210188, 1092977659, 'Khalid', 'Theeb', 'Al Gahtani', '36da3f27dc10676e56921efea46c0fc3');

-- --------------------------------------------------------

--
-- Table structure for table `student_absence`
--

DROP TABLE IF EXISTS `student_absence`;
CREATE TABLE IF NOT EXISTS `student_absence` (
  `SEMESTER` int(5) NOT NULL,
  `COURSE_NO` int(11) NOT NULL,
  `STUDENT_ID` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_absence`
--

INSERT INTO `student_absence` (`SEMESTER`, `COURSE_NO`, `STUDENT_ID`) VALUES
(20152, 1, 212210282),
(20152, 1, 212210282),
(20152, 1, 214110962),
(20152, 1, 212210282);

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
CREATE TABLE IF NOT EXISTS `student_course` (
  `STUDENT_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `SEMESTER` int(5) UNSIGNED NOT NULL,
  `COURSE_NO` int(10) UNSIGNED NOT NULL,
  `LETTER_GRADE` varchar(2) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=214110963 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`STUDENT_ID`, `SEMESTER`, `COURSE_NO`, `LETTER_GRADE`) VALUES
(212210282, 20152, 1, ''),
(212210188, 20152, 1, ''),
(214110962, 20152, 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
