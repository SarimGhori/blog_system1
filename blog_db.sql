-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2025 at 10:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'programing'),
(2, 'programing'),
(3, 'programing'),
(4, 'python'),
(5, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `category_id`, `created_at`) VALUES
(1, 'python language', '🔹 Option 1: Beginner Python Post\r\n\r\nCaption:\r\n\r\nPython is one of the easiest and most powerful programming languages 🐍\r\nPerfect for beginners because of its simple syntax and wide use.\r\n\r\nStart learning Python today and build your future in tech 🚀\r\n#Python #LearnPython #Programming #CodingLife\r\n\r\n🔹 Option 2: Motivational Python Post\r\n\r\nCaption:\r\n\r\nEvery expert developer was once a beginner 💡\r\nStart your coding journey with Python today!\r\n\r\nprint(\"Hello, Python World!\")\r\n\r\n\r\nConsistency is the key 🔥\r\n#PythonDeveloper #CodingMotivation #PythonLove\r\n\r\n🔹 Option 3: Educational Python Post\r\n\r\nCaption:\r\n\r\nWhy should you learn Python? 🤔\r\n✔ Web Development\r\n✔ Data Science\r\n✔ Artificial Intelligence\r\n✔ Automation\r\n✔ Game Development\r\n\r\nOne language. Endless possibilities 🚀\r\n#PythonProgramming #TechSkills #FutureTech\r\n\r\n🔹 Option 4: Short & Catchy Post\r\n\r\nLearn Python today.\r\nBuild your future tomorrow 🐍🚀\r\n\r\n#Python #DeveloperLife\r\n\r\n🔹 Option 5: Quote Style Post\r\n\r\n“Python is not just a language,\r\nit’s a powerful tool to turn ideas into reality.”\r\n\r\n#PythonQuotes #CodeYourFuture', 'python.jpg', 0, '2025-12-27 09:32:04'),
(2, 'python', '🔹 Option 1: Beginner Python Post\r\n\r\nCaption:\r\n\r\nPython is one of the easiest and most powerful programming languages 🐍\r\nPerfect for beginners because of its simple syntax and wide use.\r\n\r\nStart learning Python today and build your future in tech 🚀\r\n#Python #LearnPython #Programming #CodingLife\r\n\r\n🔹 Option 2: Motivational Python Post\r\n\r\nCaption:\r\n\r\nEvery expert developer was once a beginner 💡\r\nStart your coding journey with Python today!\r\n\r\nprint(\"Hello, Python World!\")\r\n\r\n\r\nConsistency is the key 🔥\r\n#PythonDeveloper #CodingMotivation #PythonLove\r\n\r\n🔹 Option 3: Educational Python Post\r\n\r\nCaption:\r\n\r\nWhy should you learn Python? 🤔\r\n✔ Web Development\r\n✔ Data Science\r\n✔ Artificial Intelligence\r\n✔ Automation\r\n✔ Game Development\r\n\r\nOne language. Endless possibilities 🚀\r\n#PythonProgramming #TechSkills #FutureTech\r\n\r\n🔹 Option 4: Short & Catchy Post\r\n\r\nLearn Python today.\r\nBuild your future tomorrow 🐍🚀\r\n\r\n#Python #DeveloperLife\r\n\r\n🔹 Option 5: Quote Style Post\r\n\r\n“Python is not just a language,\r\nit’s a powerful tool to turn ideas into reality.”\r\n\r\n#PythonQuotes #CodeYourFuture', 'python.jpg', 4, '2025-12-27 09:33:20'),
(3, 'java', 'What is Java?\r\n\r\nJava is a programming language.\r\nIt is used to make software, websites, mobile apps, and games.\r\n\r\nWhy use Java?\r\n\r\nEasy to learn\r\n\r\nSecure\r\n\r\nWorks on all systems (Windows, Mac, Linux)\r\n\r\nUsed in Android apps and big companies\r\n\r\nJava Features\r\n\r\nObject Oriented\r\n\r\nPlatform Independent\r\n\r\nFast\r\n\r\nSecure\r\n\r\nFirst Java Program\r\nclass Hello {\r\n    public static void main(String[] args) {\r\n        System.out.println(\"Hello World\");\r\n    }\r\n}\r\n\r\nJava Variables\r\n\r\nUsed to store data.\r\n\r\nint age = 20;\r\nString name = \"Ali\";\r\n\r\nData Types\r\n\r\nint → numbers\r\n\r\nfloat → decimal numbers\r\n\r\nchar → single letter\r\n\r\nString → text\r\n\r\nboolean → true / false\r\n\r\nJava If Statement\r\nint age = 18;\r\n\r\nif(age >= 18){\r\n    System.out.println(\"You can vote\");\r\n}\r\n\r\nJava Loop (for)\r\nfor(int i=1; i<=5; i++){\r\n    System.out.println(i);\r\n}\r\n\r\nJava Method\r\nstatic void hello(){\r\n    System.out.println(\"Hello Java\");\r\n}\r\n\r\nJava Class & Object\r\nclass Student {\r\n    int id;\r\n    String name;\r\n}\r\n\r\nWhere Java is Used\r\n\r\nAndroid Apps\r\n\r\nWeb Applications\r\n\r\nBanking Systems\r\n\r\nDesktop Software', '', 5, '2025-12-27 09:37:24'),
(4, 'java', 'What is Java?\r\n\r\nJava is a programming language.\r\nIt is used to make software, websites, mobile apps, and games.\r\n\r\nWhy use Java?\r\n\r\nEasy to learn\r\n\r\nSecure\r\n\r\nWorks on all systems (Windows, Mac, Linux)\r\n\r\nUsed in Android apps and big companies\r\n\r\nJava Features\r\n\r\nObject Oriented\r\n\r\nPlatform Independent\r\n\r\nFast\r\n\r\nSecure\r\n\r\nFirst Java Program\r\nclass Hello {\r\n    public static void main(String[] args) {\r\n        System.out.println(\"Hello World\");\r\n    }\r\n}\r\n\r\nJava Variables\r\n\r\nUsed to store data.\r\n\r\nint age = 20;\r\nString name = \"Ali\";\r\n\r\nData Types\r\n\r\nint → numbers\r\n\r\nfloat → decimal numbers\r\n\r\nchar → single letter\r\n\r\nString → text\r\n\r\nboolean → true / false\r\n\r\nJava If Statement\r\nint age = 18;\r\n\r\nif(age >= 18){\r\n    System.out.println(\"You can vote\");\r\n}\r\n\r\nJava Loop (for)\r\nfor(int i=1; i<=5; i++){\r\n    System.out.println(i);\r\n}\r\n\r\nJava Method\r\nstatic void hello(){\r\n    System.out.println(\"Hello Java\");\r\n}\r\n\r\nJava Class & Object\r\nclass Student {\r\n    int id;\r\n    String name;\r\n}\r\n\r\nWhere Java is Used\r\n\r\nAndroid Apps\r\n\r\nWeb Applications\r\n\r\nBanking Systems\r\n\r\nDesktop Software', 'java.png', 5, '2025-12-27 09:40:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
