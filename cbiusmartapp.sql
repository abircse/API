-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2018 at 04:52 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbiusmartapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `academiccalender`
--

CREATE TABLE `academiccalender` (
  `id` int(11) NOT NULL,
  `month` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academiccalender`
--

INSERT INTO `academiccalender` (`id`, `month`, `title`, `day`) VALUES
(1, 'January', 'Admission Festival 2018', '05th January to 10th January'),
(2, 'February', 'International Mother Language Day', '21th February'),
(3, 'March', 'Independent Day', '26th March'),
(4, 'April', 'Fool Day', '01th April'),
(5, 'May', 'International Workers Day', '01th May'),
(6, 'June', 'National Forest Day', '05th June'),
(7, 'July', 'National Anthem Day', '26th July'),
(8, 'August', 'International Selection Day', '20August');

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `image`, `name`, `designation`, `email`, `phone`, `section`) VALUES
(1, 'http://192.168.43.109/cbiu/api/adminimage/img1.png', 'LION MUHAMMAD MUJIBOR RAHMAN', 'SECRETARY BOT', 'lionm@cbiu.ac.bd', '+8801752156657', 'TOP-MANAGEMENT'),
(2, 'http://192.168.43.109/cbiu/api/adminimage/img2.png', 'ABDUS SABUR', 'Director of FINANCE', 'sabur@cbiu.ac.bd', '+8801682148802', 'DIRECTOR');

-- --------------------------------------------------------

--
-- Table structure for table `classchedule`
--

CREATE TABLE `classchedule` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `coursecode` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classchedule`
--

INSERT INTO `classchedule` (`id`, `department`, `semester`, `day`, `time`, `subject`, `room`, `coursecode`, `teacher`) VALUES
(1, 'cse', '8th', 'saturday', '10.30AM to 11.30AM', 'Software Engineering', '307', 'CSE: 4206', 'Anandeep Barua'),
(2, 'cse', '8th', 'saturday', '11.30 AM-01.00 PM', 'Artificial Inteligence', '305', 'CSE: 4207', 'Ripon Kanti Paul'),
(3, 'cse', '1st', 'saturday', '10.30AM to 11.30AM', 'Computer Architechture', '306', 'CSE: 4208', 'D. Toufiq SAYED'),
(4, 'cse', '3rd', 'saturday', '11.30 AM-01.00 PM', 'Artificial Inteligence', '305', 'CSE: 4207', 'Ripon Kanti Paul'),
(5, 'cse', '5th', 'monday', '10.30AM - 12.00PM', 'NEURAL NETWORK', '410', 'CSE-4203', 'Ripon Kanti pAUL');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `department`, `course_name`, `credit`) VALUES
(1, 'cse', 'B.sc. in Computer Science & Engineering', 160);

-- --------------------------------------------------------

--
-- Table structure for table `departmentspiner`
--

CREATE TABLE `departmentspiner` (
  `id` int(11) NOT NULL,
  `departments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departmentspiner`
--

INSERT INTO `departmentspiner` (`id`, `departments`) VALUES
(1, 'All Department'),
(2, 'Department of Computer Science & Engineering '),
(3, 'Department of Business Administration'),
(4, 'Department of Law'),
(5, 'Department of English'),
(6, 'Department of Islamic Studies'),
(7, 'Department of Library Science');

-- --------------------------------------------------------

--
-- Table structure for table `deptinfo`
--

CREATE TABLE `deptinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `faculties_no` int(11) NOT NULL,
  `gratuatedbatch_no` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  `short_note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deptinfo`
--

INSERT INTO `deptinfo` (`id`, `name`, `head`, `faculties_no`, `gratuatedbatch_no`, `student_no`, `short_note`) VALUES
(1, 'Computer Science & Engineering', 'D. Mussarraf Hossain', 5, 1, 100, 'The best technical faculty of cbiu'),
(2, 'Business Administration', 'Mr. Rajidul Hoque Sumon', 18, 1, 300, 'The business based advance faculty of cbiu'),
(3, 'Department of Law', 'mr xxxxxx', 10, 2, 200, 'The law based departmnt');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `details` varchar(255) NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `date`, `location`, `time`, `details`, `imageurl`) VALUES
(1, 'ANDROID TRAINING', '2018-07-12', 'CBIU Auditorium, CBIU', '11:00:00', 'Dear, cbiu student, we are going to grad opeing ANDROID TRAINING', 'http://192.168.43.109/cbiu/api/event/event1.png'),
(2, 'TRAINING ON WEB', '2018-07-12', 'CBIU COMPUTER LAB1, CBIU', '11:00:00', 'Dear, cbiu student, we are going to grad opeing TRAINING ON WEB', 'http://192.168.43.109/cbiu/api/event/event2.jpg'),
(5, 'Android Training', '2018-07-12', 'CBIU Auditorium, CBIU', '11:00:00', 'Dear, cbiu student, we are going to grad opeing ANDROID TRAINING', 'http://192.168.43.109/cbiu/api/event/event1.png'),
(6, 'Future Web Technology Seminar', '2018-07-12', 'CBIU COMPUTER LAB1, CBIU', '11:00:00', 'Dear, cbiu student, we are going to grad opeing TRAINING ON WEB', 'http://192.168.43.109/cbiu/api/event/event2.jpg'),
(7, '1st Convocation of CBIU', '2018-07-12', 'CBIU new Campus, CBIU', '11:00:00', 'Dear, cbiu student, we are going to arrange for the first time in our university for gratuated convocation ', 'http://192.168.43.109/cbiu/api/event/convo.jpg'),
(8, 'Programing Contest 2018', '2018-07-12', 'CBIU Lab2, CBIU', '11:00:00', 'Dear, cbiu student, we are going to arrange programing contest.Team name given below\r\n\r\n1. Android Ninja\r\n2. Kotlin Py\r\n3. Asp.net guy', 'http://192.168.43.109/cbiu/api/event/programingclub.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `Name`, `Position`, `Department`, `Email`, `Phone`) VALUES
(1, 'Mussarof Hussain', 'Associate Professor & Head', 'Department of Computer Science & Engineering', 'mussarof@cbiu.ac.bd', '+8801682148802'),
(2, 'Mohammad Faisal', 'Assistant Professor ', 'Department of Computer Science & Engineering', 'faisal@cbiu.ac.bd', '+8801752156657'),
(3, 'Rajidul Hoque', 'Assistant Professor & Head', 'Department of Business Administration', 'rajidul@cbiu.ac.bd', '+8801685456443'),
(4, 'Kazi Nur e Jannat', 'Lecturer', 'Department of Business Administration', 'kazijannat@cbiu.ac.bd', '+8801752446778');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `details` varchar(255) NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`id`, `title`, `date`, `details`, `imageurl`) VALUES
(1, 'ADMISSION FESTIVAL ', '2018-06-12', 'ADMISSION FESTIVAL 2018 IS GOING ON IN CBIU CAPMUS ', 'http://192.168.43.109/cbiu/api/gallery/a1.jpg'),
(2, 'ABIR WORKSTATION', '2018-06-29', 'ADMISSION FESTIVAL 2018 IS GOING ON IN CBIU CAPMUS ', 'http://192.168.43.109/cbiu/api/gallery/a2.jpg'),
(3, 'ADMISSION FESTIVAL ', '2018-06-12', 'ADMISSION FESTIVAL 2018 IS GOING ON IN CBIU CAPMUS ', 'http://192.168.43.109/cbiu/api/gallery/a3.jpg'),
(4, 'ABIR WORKSTATION', '2018-06-29', 'ADMISSION FESTIVAL 2018 IS GOING ON IN CBIU CAPMUS ', 'http://192.168.43.109/cbiu/api/gallery/a4.jpg'),
(5, 'ABIR WORKSTATION', '2018-06-29', 'ADMISSION FESTIVAL 2018 IS GOING ON IN CBIU CAPMUS ', 'http://192.168.43.109/cbiu/api/gallery/a5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `fileurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `department`, `title`, `date`, `fileurl`) VALUES
(1, 'CSE', 'Class Schedule Summer 18', '2018-05-04', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a1.pdf'),
(2, 'BBA', 'Class Schedule Mid term', '2018-05-29', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a2.pdf'),
(3, 'ADMIN OFFICE', 'Enrollment Deadline in 208th june, 2018', '2018-05-04', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a3.xlsx'),
(4, 'CENTRAL NOTICE', 'Pohela Baishak Celebration Meeting 2018', '2018-05-29', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a4.docx'),
(5, 'CENTRAL NOTICE', 'Pohela Baishak Celebration Meeting 2018', '2018-05-29', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a4.docx'),
(6, 'CENTRAL NOTICE', 'Pohela Baishak Celebration Meeting 2018', '2018-05-29', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a4.docx'),
(7, 'CENTRAL NOTICE', 'Pohela Baishak Celebration Meeting 2018', '2018-05-29', 'http://www.coxtunes.com/client_mobile_app_project/education/cbiu/api/pdftest/a4.docx');

-- --------------------------------------------------------

--
-- Table structure for table `noticespiner`
--

CREATE TABLE `noticespiner` (
  `id` int(11) NOT NULL,
  `departments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `noticespiner`
--

INSERT INTO `noticespiner` (`id`, `departments`) VALUES
(1, 'ALL NOTICE'),
(2, 'CSE'),
(3, 'BBA'),
(4, 'ENGLISH'),
(5, 'CENTRAL NOTICE'),
(6, 'REGISTER OFFICE'),
(7, 'VC OFFICE'),
(8, 'EXAM CONTROLLER OFFICE');

-- --------------------------------------------------------

--
-- Table structure for table `schedulespiner`
--

CREATE TABLE `schedulespiner` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulespiner`
--

INSERT INTO `schedulespiner` (`id`, `department`) VALUES
(1, 'cse'),
(2, 'bba'),
(3, 'eng'),
(4, 'law'),
(5, 'bhtm'),
(6, 'istudies'),
(9, 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `bloodgroup` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone(personal)` varchar(255) NOT NULL,
  `phone(home)` varchar(255) NOT NULL,
  `ssc` varchar(255) NOT NULL,
  `hsc` varchar(255) NOT NULL,
  `diploma` varchar(255) NOT NULL,
  `honours` varchar(255) NOT NULL,
  `masters` varchar(255) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `enrollment` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father`, `mother`, `address`, `sex`, `bloodgroup`, `religion`, `email`, `phone(personal)`, `phone(home)`, `ssc`, `hsc`, `diploma`, `honours`, `masters`, `studentid`, `course`, `department`, `batch`, `enrollment`, `level`) VALUES
(1, 'Nayeem Shiddiki Abir', 'Abdul Malek', 'Shamshunnaher', 'Khurushkul Coxsbazar BD', 'Male', 'B+', 'Islam', 'abircoxsbazar@gmail.com', '+8801682148802', '+8801822159272', '4.06', '2.88', 'no', 'Running', 'no', '140020300013', 'Bsc in CSE', 'Computer Science & Engineering', '02', 'Summer, 14', 'regular'),
(2, 'Anwar Hossain Bappy', 'M M AHMAED', 'AMERA BEGUM', 'EDIGAH', 'Male', 'B+', 'Islam', 'anWARr@gmail.com', '+8801682148802', '+8801822159272', '4.06', '2.88', 'no', 'Running', 'no', '140020300015', 'Bsc in CSE', 'Computer Science & Engineering', '02', 'Summer, 14', 'regular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academiccalender`
--
ALTER TABLE `academiccalender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classchedule`
--
ALTER TABLE `classchedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departmentspiner`
--
ALTER TABLE `departmentspiner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptinfo`
--
ALTER TABLE `deptinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticespiner`
--
ALTER TABLE `noticespiner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedulespiner`
--
ALTER TABLE `schedulespiner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academiccalender`
--
ALTER TABLE `academiccalender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classchedule`
--
ALTER TABLE `classchedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departmentspiner`
--
ALTER TABLE `departmentspiner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deptinfo`
--
ALTER TABLE `deptinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `noticespiner`
--
ALTER TABLE `noticespiner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schedulespiner`
--
ALTER TABLE `schedulespiner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
