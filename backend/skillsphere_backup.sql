-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: skillsphere_db
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_email` varchar(150) NOT NULL,
  `action` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `course_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK78p8ehqn8u3d0lb14d8x4l7n4` (`user_id`,`lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_roadmaps`
--

DROP TABLE IF EXISTS `career_roadmaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career_roadmaps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coding_practice_topics_json` text,
  `description` text,
  `estimated_duration` varchar(255) DEFAULT NULL,
  `interview_prep_json` text,
  `projects_json` text,
  `recommended_certifications_json` text,
  `recommended_courses_json` text,
  `required_skills_json` text,
  `role_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdqckh9ufa5y32si8jvcbgf2nv` (`role_key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_roadmaps`
--

LOCK TABLES `career_roadmaps` WRITE;
/*!40000 ALTER TABLE `career_roadmaps` DISABLE KEYS */;
INSERT INTO `career_roadmaps` VALUES (2,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Full Stack Developer.','6 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Full Stack Developer\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','fullstack','Full Stack Developer'),(3,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Java Backend Specialist.','5 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Java Backend Specialist\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','java','Java Backend Specialist'),(4,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Frontend Architect (React & Web3).','4 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Frontend Architect (React & Web3)\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','frontend','Frontend Architect (React & Web3)'),(5,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Microservices & Cloud Backend.','5 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Microservices & Cloud Backend\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','backend','Microservices & Cloud Backend'),(6,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Python & AI Engineer.','6 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Python & AI Engineer\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','python','Python & AI Engineer'),(7,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Data Analyst & BI Specialist.','4 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Data Analyst & BI Specialist\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','data-analyst','Data Analyst & BI Specialist'),(8,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Data Scientist & ML Engineer.','7 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Data Scientist & ML Engineer\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','data-scientist','Data Scientist & ML Engineer'),(9,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Cloud Solutions Architect (AWS/GCP).','5 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Cloud Solutions Architect (AWS/GCP)\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','cloud','Cloud Solutions Architect (AWS/GCP)'),(10,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for DevOps & CI/CD Engineer.','5 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified DevOps & CI/CD Engineer\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','devops','DevOps & CI/CD Engineer'),(11,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for UI/UX & Product Designer.','3 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified UI/UX & Product Designer\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','ui-ux','UI/UX & Product Designer'),(12,'[\"Arrays & Strings\", \"Linked Lists & Trees\", \"Dynamic Programming\", \"System Design\"]','Structured mastery path covering foundational to enterprise-level production skills for Software Test & QA Automation.','4 Months','[\"Top 50 Behavioral & Technical Questions\", \"Live System Design Mock Interviews\", \"LeetCode Medium Speed Run\"]','[\"E-Commerce Microservices Platform\", \"Real-Time Analytics Dashboard\", \"Automated CI/CD Pipeline\"]','[\"SkillSphere Certified Software Test & QA Automation\", \"AWS Certified Developer\"]','[\"Full Stack Development\", \"Database Management\", \"Java Enterprise Systems\"]','[\"HTML/CSS/JS\", \"Data Structures & Algorithms\", \"Git/GitHub\", \"REST APIs\", \"Database Design\"]','qa-engineer','Software Test & QA Automation');
/*!40000 ALTER TABLE `career_roadmaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKt8o6pivur7nn124jehx7cygw5` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `completion_percentage` double DEFAULT NULL,
  `completion_date` datetime(6) DEFAULT NULL,
  `course_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issue_date` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `certificate_id` varchar(50) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `learning_hours` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `qr_code` varchar(500) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKyxv051awcglka45r27ju9vit` (`certificate_id`),
  KEY `FKs5rftqrsgkog7h4piv3f7a9s6` (`course_id`),
  KEY `FK7r2246nn5x0qohtuga20gyebs` (`student_id`),
  CONSTRAINT `FK7r2246nn5x0qohtuga20gyebs` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKs5rftqrsgkog7h4piv3f7a9s6` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_badges`
--

DROP TABLE IF EXISTS `coding_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coding_badges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unlocked_at` datetime(6) DEFAULT NULL,
  `badge_description` varchar(255) NOT NULL,
  `badge_key` varchar(255) NOT NULL,
  `badge_title` varchar(255) NOT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_badges`
--

LOCK TABLES `coding_badges` WRITE;
/*!40000 ALTER TABLE `coding_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `coding_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_leaderboard`
--

DROP TABLE IF EXISTS `coding_leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coding_leaderboard` (
  `rank_position` int DEFAULT NULL,
  `solved_count` int DEFAULT NULL,
  `streak_days` int DEFAULT NULL,
  `xp_points` int DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKhyp4nxk4mggylmqne0q94urfl` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_leaderboard`
--

LOCK TABLES `coding_leaderboard` WRITE;
/*!40000 ALTER TABLE `coding_leaderboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `coding_leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_progress`
--

DROP TABLE IF EXISTS `coding_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coding_progress` (
  `best_score` int DEFAULT NULL,
  `current_streak` int DEFAULT NULL,
  `daily_goal_questions` int DEFAULT NULL,
  `leaderboard_rank` int DEFAULT NULL,
  `practice_time_seconds` int DEFAULT NULL,
  `questions_attempted` int DEFAULT NULL,
  `questions_solved` int DEFAULT NULL,
  `xp_points` int DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9orn72754nn0661btg9ypk8wh` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_progress`
--

LOCK TABLES `coding_progress` WRITE;
/*!40000 ALTER TABLE `coding_progress` DISABLE KEYS */;
INSERT INTO `coding_progress` VALUES (0,1,5,1,0,0,0,0,1,'2026-08-07 14:44:33.275913',NULL,'test1@gmail.com');
/*!40000 ALTER TABLE `coding_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_questions`
--

DROP TABLE IF EXISTS `coding_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coding_questions` (
  `expected_time_minutes` int DEFAULT NULL,
  `xp_reward` int DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `constraints_text` text,
  `correct_answer` varchar(255) DEFAULT NULL,
  `course_title` varchar(255) NOT NULL,
  `default_language` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `hints_json` text,
  `input_format` text,
  `module_name` varchar(255) NOT NULL,
  `options_json` text,
  `output_format` text,
  `question_type` varchar(255) NOT NULL,
  `sample_input` text,
  `sample_output` text,
  `solution_code` text,
  `starter_code` text,
  `tags_csv` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_questions`
--

LOCK TABLES `coding_questions` WRITE;
/*!40000 ALTER TABLE `coding_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `coding_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_submissions`
--

DROP TABLE IF EXISTS `coding_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coding_submissions` (
  `execution_time_ms` int DEFAULT NULL,
  `memory_usage_mb` double DEFAULT NULL,
  `passed_test_cases` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `total_test_cases` int DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `submitted_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `explanation` text,
  `language` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `submitted_code` text NOT NULL,
  `suggested_improvements` text,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_submissions`
--

LOCK TABLES `coding_submissions` WRITE;
/*!40000 ALTER TABLE `coding_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `coding_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_test_cases`
--

DROP TABLE IF EXISTS `coding_test_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coding_test_cases` (
  `is_hidden` bit(1) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `expected_output` text NOT NULL,
  `input_data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_test_cases`
--

LOCK TABLES `coding_test_cases` WRITE;
/*!40000 ALTER TABLE `coding_test_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `coding_test_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) DEFAULT NULL,
  `screenshot_url` varchar(1000) DEFAULT NULL,
  `admin_reply` text,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `priority` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES ('2026-08-07 15:43:43.554132',1,'2026-08-07 15:46:12.843355','','','General','test 1234','Medium','Pending','test1@gmail.com','test1','this is for testing');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_certificates`
--

DROP TABLE IF EXISTS `contest_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_certificates` (
  `rank_position` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `contest_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `certificate_id` varchar(255) NOT NULL,
  `contest_title` varchar(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKpccbadgstpyy7ggk2dasp2g7h` (`certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_certificates`
--

LOCK TABLES `contest_certificates` WRITE;
/*!40000 ALTER TABLE `contest_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_discussions`
--

DROP TABLE IF EXISTS `contest_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_discussions` (
  `likes_count` int DEFAULT NULL,
  `contest_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) DEFAULT NULL,
  `comment_text` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_discussions`
--

LOCK TABLES `contest_discussions` WRITE;
/*!40000 ALTER TABLE `contest_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_leaderboard`
--

DROP TABLE IF EXISTS `contest_leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_leaderboard` (
  `penalty_time` int DEFAULT NULL,
  `problems_solved` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `submission_count` int DEFAULT NULL,
  `contest_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_submission_at` datetime(6) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_leaderboard`
--

LOCK TABLES `contest_leaderboard` WRITE;
/*!40000 ALTER TABLE `contest_leaderboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_participants`
--

DROP TABLE IF EXISTS `contest_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_participants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `time_taken` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3l1iketg9qjipqd33tua1ddex` (`user_id`),
  CONSTRAINT `FK3l1iketg9qjipqd33tua1ddex` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_participants`
--

LOCK TABLES `contest_participants` WRITE;
/*!40000 ALTER TABLE `contest_participants` DISABLE KEYS */;
INSERT INTO `contest_participants` VALUES (1,'2026-07-28 15:33:52.106555',0,'0h 0m',10),(2,'2026-07-28 15:44:38.804333',1000,'1h 12m',19),(3,'2026-07-28 15:44:39.005097',950,'1h 15m',20),(4,'2026-07-28 15:44:39.157456',950,'1h 22m',21),(5,'2026-07-28 15:44:39.318971',900,'1h 45m',22),(6,'2026-07-28 15:44:39.528839',850,'1h 50m',23),(7,'2026-07-28 15:44:39.728632',800,'1h 55m',24),(8,'2026-07-28 15:44:39.878957',750,'1h 58m',25),(9,'2026-07-28 15:44:40.066771',700,'2h 00m',26),(10,'2026-07-28 15:44:40.280821',680,'2h 05m',27),(11,'2026-07-28 15:44:40.451238',650,'2h 10m',28),(12,'2026-07-28 15:44:40.600937',600,'2h 15m',29),(13,'2026-07-28 15:44:40.755469',550,'2h 20m',30);
/*!40000 ALTER TABLE `contest_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_questions`
--

DROP TABLE IF EXISTS `contest_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_questions` (
  `marks` int DEFAULT NULL,
  `memory_limit_mb` int DEFAULT NULL,
  `time_limit_seconds` int DEFAULT NULL,
  `contest_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `constraints_text` text,
  `difficulty` varchar(255) DEFAULT NULL,
  `input_format` text,
  `output_format` text,
  `problem_statement` text NOT NULL,
  `sample_explanation` text,
  `sample_input` text,
  `sample_output` text,
  `tags_csv` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_questions`
--

LOCK TABLES `contest_questions` WRITE;
/*!40000 ALTER TABLE `contest_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_registrations`
--

DROP TABLE IF EXISTS `contest_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_registrations` (
  `contest_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `registered_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_registrations`
--

LOCK TABLES `contest_registrations` WRITE;
/*!40000 ALTER TABLE `contest_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_submissions`
--

DROP TABLE IF EXISTS `contest_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_submissions` (
  `execution_time_ms` int DEFAULT NULL,
  `memory_usage_mb` double DEFAULT NULL,
  `passed_test_cases` int DEFAULT NULL,
  `penalty_minutes` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `total_test_cases` int DEFAULT NULL,
  `contest_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `submitted_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `submitted_code` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_submissions`
--

LOCK TABLES `contest_submissions` WRITE;
/*!40000 ALTER TABLE `contest_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_test_cases`
--

DROP TABLE IF EXISTS `contest_test_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_test_cases` (
  `is_hidden` bit(1) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `expected_output` text NOT NULL,
  `input_data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_test_cases`
--

LOCK TABLES `contest_test_cases` WRITE;
/*!40000 ALTER TABLE `contest_test_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_test_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contests`
--

DROP TABLE IF EXISTS `contests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contests` (
  `duration_minutes` int DEFAULT NULL,
  `question_count` int DEFAULT NULL,
  `total_marks` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `end_time` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_time` datetime(6) NOT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `rules_text` text,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contests`
--

LOCK TABLES `contests` WRITE;
/*!40000 ALTER TABLE `contests` DISABLE KEYS */;
/*!40000 ALTER TABLE `contests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_modules`
--

DROP TABLE IF EXISTS `course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_modules` (
  `active` bit(1) NOT NULL,
  `module_order` int NOT NULL,
  `week_number` int NOT NULL,
  `course_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) DEFAULT NULL,
  `reference_book` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtn63pa8l33002k4xuwkcuefll` (`course_id`),
  CONSTRAINT `FKtn63pa8l33002k4xuwkcuefll` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_modules`
--

LOCK TABLES `course_modules` WRITE;
/*!40000 ALTER TABLE `course_modules` DISABLE KEYS */;
INSERT INTO `course_modules` VALUES (_binary '',1,1,1,'2026-08-07 14:38:07.615952',1,'Master modern Web standards with HTML5 semantic architecture, CSS3 flexbox/grid layout systems, responsive mobile-first typography, and WCAG accessibility standards to craft production-ready user interfaces.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design',NULL),(_binary '',2,1,1,'2026-08-07 14:38:07.667645',2,'Master modern JavaScript ES6+ features including arrow functions, async/await, DOM event delegation, closures, modules, and API data fetching pipelines for dynamic web applications.',NULL,'Module 2: JavaScript ES6+ & Dynamic Web Logic',NULL),(_binary '',3,1,1,'2026-08-07 14:38:07.696973',3,'Explore React 18 component architecture, JSX rendering patterns, virtual DOM diffing, props flow, useState/useEffect hook lifecycle, and state management for scalable frontend apps.',NULL,'Module 3: React.js Essentials & Component Architecture',NULL),(_binary '',1,1,2,'2026-08-07 14:38:07.755609',4,'Getting started with the fundamentals of React.',NULL,'Introduction to React',NULL),(_binary '',2,1,2,'2026-08-07 14:38:07.785722',5,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in React',NULL),(_binary '',3,1,2,'2026-08-07 14:38:07.816981',6,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: React',NULL),(_binary '',1,1,3,'2026-08-07 14:38:07.862561',7,'Getting started with the fundamentals of Java.',NULL,'Introduction to Java',NULL),(_binary '',2,1,3,'2026-08-07 14:38:07.885902',8,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Java',NULL),(_binary '',3,1,3,'2026-08-07 14:38:07.914751',9,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Java',NULL),(_binary '',1,1,4,'2026-08-07 14:38:07.967585',10,'Getting started with the fundamentals of Database.',NULL,'Introduction to Database',NULL),(_binary '',2,1,4,'2026-08-07 14:38:07.989701',11,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Database',NULL),(_binary '',3,1,4,'2026-08-07 14:38:08.018962',12,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Database',NULL),(_binary '',1,1,5,'2026-08-07 14:38:08.063665',13,'Getting started with the fundamentals of Python.',NULL,'Introduction to Python',NULL),(_binary '',2,1,5,'2026-08-07 14:38:08.085601',14,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Python',NULL),(_binary '',3,1,5,'2026-08-07 14:38:08.111996',15,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Python',NULL),(_binary '',1,1,6,'2026-08-07 14:38:08.146383',16,'Getting started with the fundamentals of Data Science.',NULL,'Introduction to Data Science',NULL),(_binary '',2,1,6,'2026-08-07 14:38:08.167269',17,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Data Science',NULL),(_binary '',3,1,6,'2026-08-07 14:38:08.197978',18,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Data Science',NULL),(_binary '',1,1,7,'2026-08-07 14:38:08.263964',19,'Getting started with the fundamentals of Machine Learning.',NULL,'Introduction to Machine Learning',NULL),(_binary '',2,1,7,'2026-08-07 14:38:08.284621',20,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Machine Learning',NULL),(_binary '',3,1,7,'2026-08-07 14:38:08.311706',21,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Machine Learning',NULL),(_binary '',1,1,8,'2026-08-07 14:38:08.374992',22,'Getting started with the fundamentals of UI/UX Design.',NULL,'Introduction to UI/UX Design',NULL),(_binary '',2,1,8,'2026-08-07 14:38:08.394922',23,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in UI/UX Design',NULL),(_binary '',3,1,8,'2026-08-07 14:38:08.421483',24,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: UI/UX Design',NULL),(_binary '',1,1,9,'2026-08-07 14:38:08.453604',25,'Getting started with the fundamentals of DevOps.',NULL,'Introduction to DevOps',NULL),(_binary '',2,1,9,'2026-08-07 14:38:08.473720',26,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in DevOps',NULL),(_binary '',3,1,9,'2026-08-07 14:38:08.499480',27,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: DevOps',NULL),(_binary '',1,1,10,'2026-08-07 14:38:08.530228',28,'Getting started with the fundamentals of Cyber Security.',NULL,'Introduction to Cyber Security',NULL),(_binary '',2,1,10,'2026-08-07 14:38:08.549679',29,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Cyber Security',NULL),(_binary '',3,1,10,'2026-08-07 14:38:08.572976',30,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Cyber Security',NULL),(_binary '',1,1,11,'2026-08-07 14:38:08.600416',31,'Getting started with the fundamentals of Node.js.',NULL,'Introduction to Node.js',NULL),(_binary '',2,1,11,'2026-08-07 14:38:08.619991',32,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Node.js',NULL),(_binary '',3,1,11,'2026-08-07 14:38:08.654606',33,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Node.js',NULL),(_binary '',1,1,12,'2026-08-07 14:38:08.698190',34,'Getting started with the fundamentals of Cloud Computing.',NULL,'Introduction to Cloud Computing',NULL),(_binary '',2,1,12,'2026-08-07 14:38:08.717894',35,'Deep dive into the main concepts and practical applications.',NULL,'Core Concepts in Cloud Computing',NULL),(_binary '',3,1,12,'2026-08-07 14:38:08.741072',36,'A comprehensive quiz to test your mastery of the entire course.',NULL,'Final Assessment: Cloud Computing',NULL),(_binary '',4,1,1,'2026-08-07 15:42:45.337923',38,'Build asynchronous backend microservices with Node.js event loops, Express middleware, RESTful endpoint architecture, JWT authentication, and robust error handling.',NULL,'Module 4: Node.js, Express & RESTful APIs',NULL),(_binary '',5,1,1,'2026-08-07 15:42:45.486533',40,'Learn relational and NoSQL database engineering, schema normalization, complex SQL joins, indexing strategies, MongoDB Mongoose ORM, and query performance optimization.',NULL,'Module 5: Database Integration & Capstone Application',NULL),(_binary '',4,1,1,'2026-08-07 15:42:46.174958',41,'Learn relational and NoSQL database engineering, schema normalization, complex SQL joins, indexing strategies, MongoDB Mongoose ORM, and query performance optimization.',NULL,'Module 5: Database Integration & Capstone Application',NULL),(_binary '',5,1,1,'2026-08-07 15:42:46.234974',42,'Learn relational and NoSQL database engineering, schema normalization, complex SQL joins, indexing strategies, MongoDB Mongoose ORM, and query performance optimization.',NULL,'Module 5: Database Integration & Capstone Application',NULL);
/*!40000 ALTER TABLE `course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_reviews`
--

DROP TABLE IF EXISTS `course_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_reviews` (
  `helpful_count` int NOT NULL,
  `is_verified` bit(1) NOT NULL,
  `rating` int NOT NULL,
  `course_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `profile_image` varchar(1000) DEFAULT NULL,
  `review_text` text NOT NULL,
  `review_title` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKgqigtk2u63vpsna6bhm8ivj3c` (`course_id`,`student_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_reviews`
--

LOCK TABLES `course_reviews` WRITE;
/*!40000 ALTER TABLE `course_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `badge_color` varchar(255) DEFAULT NULL,
  `level` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `full_description` text,
  `rating_avg` decimal(3,2) DEFAULT NULL,
  `rating_count` int DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `image_url` varchar(2000) DEFAULT NULL,
  `learning_outcomes` varchar(2000) DEFAULT NULL,
  `prerequisites` varchar(2000) DEFAULT NULL,
  `skill` varchar(255) NOT NULL,
  `total_hours` int DEFAULT NULL,
  `total_lessons` int DEFAULT NULL,
  `total_quizzes` int DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Full Stack Development','BESTSELLER','bg-orange-500','Beginner','12 Weeks',4.8,'1.2K',29999,NULL,NULL,NULL,NULL,'Learn to build complete web applications from frontend to backend. This comprehensive course covers HTML, CSS, JavaScript, React, Node.js, Express, and MongoDB. You\'ll build real-world projects including an e-commerce platform, a social media dashboard, and a real-time chat application. By the end, you\'ll be able to design, develop, and deploy full-stack web applications independently.','/images/full-stack-development.svg','Build responsive websites with HTML/CSS/JS, Create dynamic UIs with React, Build RESTful APIs with Node.js and Express, Work with MongoDB databases, Deploy applications to the cloud, Implement authentication and authorization','Basic computer literacy, No prior coding experience needed','Web Development',60,42,12,NULL),(2,'React.js Essentials','POPULAR','bg-blue-500','Beginner','6 Weeks',4.7,'836',14999,NULL,NULL,NULL,NULL,'Master React.js from the ground up. This course takes you from React fundamentals through advanced patterns including hooks, context, reducers, and performance optimization. You\'ll build a complete project management application with drag-and-drop, real-time updates, and responsive design. Learn component architecture, state management, routing, and testing best practices.','/images/reactjs-essentials.svg','Understand React component lifecycle, Master React Hooks (useState/useEffect/useContext), Build reusable component libraries, Implement client-side routing with React Router, Manage global state effectively, Write unit tests for React components','Basic JavaScript knowledge, Understanding of HTML/CSS','React',36,28,8,NULL),(3,'Java Programming','TRENDING','bg-emerald-500','Intermediate','8 Weeks',4.6,'1.1K',19999,NULL,NULL,NULL,NULL,'A deep dive into Java programming covering core concepts, object-oriented programming, data structures, algorithms, and enterprise application development. You\'ll work with Spring Boot to build production-ready APIs, connect to databases with JPA/Hibernate, and implement security with Spring Security. Includes hands-on projects and coding challenges to reinforce learning.','/images/java-programming.svg','Write clean object-oriented Java code, Implement common data structures and algorithms, Build REST APIs with Spring Boot, Work with databases using JPA/Hibernate, Implement authentication with Spring Security, Write unit and integration tests','Basic programming concepts, Understanding of any programming language','Java',48,35,10,NULL),(4,'Database Management','NEW','bg-fuchsia-500','Intermediate','5 Weeks',4.5,'654',12999,NULL,NULL,NULL,NULL,'Learn relational and NoSQL database design, optimization, and administration. This course covers MySQL, PostgreSQL, and MongoDB with real-world scenarios. You\'ll master SQL queries, database normalization, indexing strategies, transaction management, and performance tuning. Build practical projects including a data warehouse and a scalable document store.','/images/database-management.svg','Design normalized database schemas, Write complex SQL queries and joins, Optimize queries with indexing, Manage transactions and concurrency, Work with MongoDB document databases, Implement backup and recovery strategies','Basic SQL knowledge, Understanding of data types','Database',30,22,7,NULL),(5,'Python Programming','BESTSELLER','bg-teal-500','Beginner','7 Weeks',4.9,'2.1K',16999,NULL,NULL,NULL,NULL,'From zero to Python proficiency. This course covers Python syntax, data types, control flow, functions, OOP, file handling, and popular libraries like NumPy, Pandas, and Matplotlib. Build automation scripts, data analysis pipelines, and a web scraper. Perfect for beginners looking to start their programming journey or professionals wanting to add Python to their toolkit.','/images/python-programming.svg','Write Python programs from scratch, Work with data using NumPy and Pandas, Create visualizations with Matplotlib, Build web scrapers and automation scripts, Understand object-oriented programming, Handle files and exceptions effectively','No prior experience required, Basic math skills','Python',42,32,9,NULL),(6,'Data Science & Analytics','HOT','bg-violet-500','Intermediate','10 Weeks',4.7,'920',34999,NULL,NULL,NULL,NULL,'Transform raw data into actionable insights. Learn the complete data science workflow: data collection, cleaning, exploratory analysis, statistical modeling, and visualization. Work with Python, Pandas, Scikit-learn, and Tableau. Capstone projects include a customer churn prediction model and an interactive analytics dashboard.','/images/data-science.svg','Perform exploratory data analysis, Build predictive models with Scikit-learn, Create interactive dashboards, Apply statistical methods to real data, Clean and preprocess messy datasets, Communicate findings with compelling visualizations','Python basics, Basic statistics knowledge','Data Science',55,40,11,NULL),(7,'Machine Learning Fundamentals','TRENDING','bg-pink-500','Advanced','10 Weeks',4.8,'745',39999,NULL,NULL,NULL,NULL,'Understand and implement core machine learning algorithms. This course covers supervised learning (regression, classification), unsupervised learning (clustering, dimensionality reduction), and an introduction to deep learning with TensorFlow. Work on real datasets and build models for image classification, sentiment analysis, and recommendation systems.','/images/machine-learning.svg','Implement supervised learning algorithms, Build clustering and dimensionality reduction models, Create neural networks with TensorFlow, Evaluate and tune model performance, Build end-to-end ML pipelines, Deploy models to production','Python proficiency, Statistics and linear algebra basics, Data Science fundamentals','Machine Learning',52,38,10,NULL),(8,'UI/UX Design Masterclass','NEW','bg-sky-500','Beginner','6 Weeks',4.6,'512',18999,NULL,NULL,NULL,NULL,'Design beautiful, user-centered digital experiences. Learn design thinking, wireframing, prototyping, user research, and visual design principles. Master Figma for creating pixel-perfect designs and interactive prototypes. Build a complete design system and portfolio-ready case studies for web and mobile applications.','/images/ui-ux-design.svg','Apply design thinking methodology, Create wireframes and prototypes in Figma, Conduct user research and usability testing, Build a complete design system, Design responsive web and mobile interfaces, Present design decisions with case studies','No design experience needed, Creative mindset','UI/UX Design',32,24,6,NULL),(9,'DevOps Engineering','POPULAR','bg-green-500','Advanced','9 Weeks',4.7,'680',24999,NULL,NULL,NULL,NULL,'Master the tools and practices that bridge development and operations. Learn Docker, Kubernetes, CI/CD pipelines with Jenkins and GitHub Actions, infrastructure as code with Terraform, and monitoring with Prometheus and Grafana. Deploy and manage applications on AWS and GCP with automated scaling and zero-downtime deployments.','/images/devops.svg','Containerize applications with Docker, Orchestrate containers with Kubernetes, Build CI/CD pipelines, Implement infrastructure as code, Set up monitoring and alerting, Deploy to AWS and GCP','Linux command line basics, Basic networking concepts, Experience with any programming language','DevOps',48,34,9,NULL),(10,'Cyber Security Essentials','HOT','bg-amber-500','Intermediate','8 Weeks',4.5,'430',27999,NULL,NULL,NULL,NULL,'Protect systems, networks, and data from cyber threats. This course covers network security, cryptography, ethical hacking, vulnerability assessment, and incident response. Learn to use industry tools like Wireshark, Metasploit, and Burp Suite. Prepare for real-world security challenges with hands-on labs and capture-the-flag exercises.','/images/cyber-security.svg','Identify common vulnerabilities and threats, Perform penetration testing, Implement network security measures, Understand cryptographic principles, Respond to security incidents, Use industry-standard security tools','Basic networking knowledge, Linux command line familiarity','Cyber Security',42,30,8,NULL),(11,'Node.js Backend Development','POPULAR','bg-lime-500','Intermediate','7 Weeks',4.6,'890',15999,NULL,NULL,NULL,NULL,'Build scalable and performant server-side applications with Node.js. Cover Express.js, REST API design, authentication with JWT, real-time communication with WebSockets, database integration with MongoDB and PostgreSQL, and microservices architecture. Deploy production-ready backends with Docker and cloud platforms.','/images/nodejs.svg','Build RESTful APIs with Express.js, Implement JWT authentication, Work with WebSockets for real-time apps, Integrate MongoDB and PostgreSQL, Design microservices architecture, Deploy with Docker and cloud platforms','JavaScript fundamentals, Basic understanding of HTTP','Node.js',40,30,8,NULL),(12,'Cloud Computing with AWS','NEW','bg-indigo-500','Advanced','8 Weeks',4.8,'560',21999,NULL,NULL,NULL,NULL,'Master cloud computing concepts and AWS services. Learn to architect, deploy, and manage applications on Amazon Web Services. Cover EC2, S3, Lambda, DynamoDB, CloudFormation, and more. Build a multi-tier web application on AWS with auto-scaling, load balancing, and high availability. Prepares you for the AWS Solutions Architect certification.','/images/cloud-computing.svg','Design cloud architectures on AWS, Deploy and manage EC2 instances, Build serverless applications with Lambda, Implement storage solutions with S3 and DynamoDB, Set up auto-scaling and load balancing, Prepare for AWS certification exam','Basic networking, Linux command line, Any programming language experience','Cloud Computing',44,32,10,NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `completed` bit(1) NOT NULL,
  `progress` int NOT NULL,
  `course_id` bigint DEFAULT NULL,
  `enrolled_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKg1muiskd02x66lpy6fqcj6b9q` (`user_id`,`course_id`),
  KEY `FKho8mcicp4196ebpltdn9wl6co` (`course_id`),
  CONSTRAINT `FK3hjx6rcnbmfw368sxigrpfpx0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKho8mcicp4196ebpltdn9wl6co` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (_binary '\0',40,1,'2026-08-07 15:42:42.184466',1,10,'PAID');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `avatar_url` varchar(1000) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK1p61qho6k9oewkyd5uv1aniv7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_progress`
--

DROP TABLE IF EXISTS `lesson_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_progress` (
  `completed` bit(1) NOT NULL,
  `enrollment_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkx3nc17yyecdqwfgdydqmc24x` (`enrollment_id`),
  KEY `FKqwr70bkn0j6gok1y4op9jns8y` (`lesson_id`),
  CONSTRAINT `FKkx3nc17yyecdqwfgdydqmc24x` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollments` (`id`),
  CONSTRAINT `FKqwr70bkn0j6gok1y4op9jns8y` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_progress`
--

LOCK TABLES `lesson_progress` WRITE;
/*!40000 ALTER TABLE `lesson_progress` DISABLE KEYS */;
INSERT INTO `lesson_progress` VALUES (_binary '',1,1,1),(_binary '',1,2,2),(_binary '',1,3,3),(_binary '',1,4,37),(_binary '',1,5,40),(_binary '',1,6,50);
/*!40000 ALTER TABLE `lesson_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `active` bit(1) NOT NULL,
  `lesson_order` int NOT NULL,
  `course_id` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `module_id` bigint NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK17ucc7gjfjddsyi0gvstkqeat` (`course_id`),
  KEY `FKqfp7ioroqawsicj32pxfnggm8` (`module_id`),
  CONSTRAINT `FK17ucc7gjfjddsyi0gvstkqeat` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FKqfp7ioroqawsicj32pxfnggm8` FOREIGN KEY (`module_id`) REFERENCES `course_modules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (_binary '',1,1,'2026-08-07 14:38:07.637004',1,1,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Web Development</h3><p>Welcome to the beginning of your journey into the world of Web Development. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Web Development, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Web Development, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Web Development. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',1,1,'2026-08-07 14:38:07.673331',2,2,'Master the most important techniques used in Web Development.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Web Development</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Web Development, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Web Development.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/mU6anWqZJcc'),(_binary '',2,1,'2026-08-07 14:38:07.681054',3,2,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Web Development is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Web Development. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Web Development.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/Q33KBiDriJY'),(_binary '',1,2,'2026-08-07 14:38:07.765364',4,4,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of React</h3><p>Welcome to the beginning of your journey into the world of React. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach React, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For React, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for React. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/bMknfKXIFA8'),(_binary '',1,2,'2026-08-07 14:38:07.792210',5,5,'Master the most important techniques used in React.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in React</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In React, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to React.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/Ke90Tje7VS0'),(_binary '',2,2,'2026-08-07 14:38:07.799392',6,5,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, React is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of React. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using React.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/SqcY0GlETPk'),(_binary '',1,3,'2026-08-07 14:38:07.868659',7,7,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Java</h3><p>Welcome to the beginning of your journey into the world of Java. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Java, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Java, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Java. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/eIrMbAQSU34'),(_binary '',1,3,'2026-08-07 14:38:07.891797',8,8,'Master the most important techniques used in Java.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Java</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Java, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Java.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/grEKMHGYyns'),(_binary '',2,3,'2026-08-07 14:38:07.898428',9,8,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Java is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Java. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Java.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/A74TOX803D0'),(_binary '',1,4,'2026-08-07 14:38:07.973699',10,10,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Database</h3><p>Welcome to the beginning of your journey into the world of Database. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Database, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Database, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Database. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/HXV3zeJZ1EQ'),(_binary '',1,4,'2026-08-07 14:38:07.996787',11,11,'Master the most important techniques used in Database.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Database</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Database, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Database.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/7S_tz1z_5bA'),(_binary '',2,4,'2026-08-07 14:38:08.003946',12,11,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Database is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Database. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Database.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/ztHopE5Wnpc'),(_binary '',1,5,'2026-08-07 14:38:08.069132',13,13,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Python</h3><p>Welcome to the beginning of your journey into the world of Python. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Python, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Python, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Python. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/_uQrJ0TkZlc'),(_binary '',1,5,'2026-08-07 14:38:08.091138',14,14,'Master the most important techniques used in Python.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Python</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Python, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Python.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/kqtD5dpn9C8'),(_binary '',2,5,'2026-08-07 14:38:08.096586',15,14,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Python is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Python. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Python.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/t8pPdKYpowI'),(_binary '',1,6,'2026-08-07 14:38:08.152671',16,16,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Data Science</h3><p>Welcome to the beginning of your journey into the world of Data Science. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Data Science, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Data Science, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Data Science. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/ua-CiDNNj30'),(_binary '',1,6,'2026-08-07 14:38:08.173764',17,17,'Master the most important techniques used in Data Science.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Data Science</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Data Science, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Data Science.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/KdgQvgE3ji4'),(_binary '',2,6,'2026-08-07 14:38:08.180141',18,17,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Data Science is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Data Science. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Data Science.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/X3paOmcrTjQ'),(_binary '',1,7,'2026-08-07 14:38:08.269849',19,19,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Machine Learning</h3><p>Welcome to the beginning of your journey into the world of Machine Learning. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Machine Learning, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Machine Learning, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Machine Learning. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/7eh4d6sabA0'),(_binary '',1,7,'2026-08-07 14:38:08.289537',20,20,'Master the most important techniques used in Machine Learning.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Machine Learning</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Machine Learning, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Machine Learning.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/i_LwzRmA_08'),(_binary '',2,7,'2026-08-07 14:38:08.296834',21,20,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Machine Learning is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Machine Learning. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Machine Learning.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/Gv9_4yMHFhI'),(_binary '',1,8,'2026-08-07 14:38:08.378780',22,22,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of UI/UX Design</h3><p>Welcome to the beginning of your journey into the world of UI/UX Design. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach UI/UX Design, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For UI/UX Design, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for UI/UX Design. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/c9Wg6Cb_YlU'),(_binary '',1,8,'2026-08-07 14:38:08.401717',23,23,'Master the most important techniques used in UI/UX Design.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in UI/UX Design</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In UI/UX Design, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to UI/UX Design.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/zHAa-m16NQk'),(_binary '',2,8,'2026-08-07 14:38:08.407285',24,23,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, UI/UX Design is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of UI/UX Design. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using UI/UX Design.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/85gJMUEcnK0'),(_binary '',1,9,'2026-08-07 14:38:08.460812',25,25,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of DevOps</h3><p>Welcome to the beginning of your journey into the world of DevOps. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach DevOps, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For DevOps, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for DevOps. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/hQcFE0RD0cQ'),(_binary '',1,9,'2026-08-07 14:38:08.479929',26,26,'Master the most important techniques used in DevOps.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in DevOps</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In DevOps, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to DevOps.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/Xrgk023l4lI'),(_binary '',2,9,'2026-08-07 14:38:08.484930',27,26,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, DevOps is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of DevOps. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using DevOps.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/9pZ2xglTXO0'),(_binary '',1,10,'2026-08-07 14:38:08.536360',28,28,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Cyber Security</h3><p>Welcome to the beginning of your journey into the world of Cyber Security. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Cyber Security, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Cyber Security, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Cyber Security. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/inWWhr5tnEA'),(_binary '',1,10,'2026-08-07 14:38:08.555366',29,29,'Master the most important techniques used in Cyber Security.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Cyber Security</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Cyber Security, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Cyber Security.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/lpa8uy4u0R8'),(_binary '',2,10,'2026-08-07 14:38:08.560827',30,29,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Cyber Security is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Cyber Security. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Cyber Security.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/3Kq1MIfTWCE'),(_binary '',1,11,'2026-08-07 14:38:08.606944',31,31,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Node.js</h3><p>Welcome to the beginning of your journey into the world of Node.js. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Node.js, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Node.js, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Node.js. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/Oe421EPjeBE'),(_binary '',1,11,'2026-08-07 14:38:08.629566',32,32,'Master the most important techniques used in Node.js.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Node.js</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Node.js, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Node.js.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/fBNz5xF-Kx4'),(_binary '',2,11,'2026-08-07 14:38:08.636852',33,32,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Node.js is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Node.js. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Node.js.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/w-7RQ46RgxU'),(_binary '',1,12,'2026-08-07 14:38:08.703062',34,34,'Overview of what you will learn.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 1: Foundations of Cloud Computing</h3><p>Welcome to the beginning of your journey into the world of Cloud Computing. Just as a sturdy building requires a solid foundation, mastering any technical skill requires a deep understanding of its core principles. In this chapter, we will explore the historical context, the primary problems this technology was created to solve, and the basic syntax and structure you will encounter daily.</p><p>When you first approach Cloud Computing, it might seem overwhelming. However, by breaking it down into fundamental components, you will quickly see the underlying logic. We begin by setting up the necessary environment—a crucial step that ensures you have the right tools to write, test, and deploy your work. Think of this as preparing your workshop before beginning to craft.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.1 The Core Philosophy</h4><p>Every technology has a guiding philosophy. For Cloud Computing, the emphasis is on efficiency, readability, and scalability. As you read through the documentation and community guidelines, you\'ll notice a strong preference for code that is not only functional but also elegant. The best developers don\'t just write code that computers can understand; they write code that other humans can maintain.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1.2 Initial Setup and First Steps</h4><p>Your first task is to install the core dependencies and configure your integrated development environment (IDE). Once set up, you will write your first \'Hello World\' program. While this seems trivial, it proves that your entire toolchain—from the editor to the compiler or interpreter—is functioning correctly. Below, you will find a reference video that visually walks you through this setup process.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To deepen your understanding of these foundations, we highly recommend reading <em>\"Clean Code\"</em> by Robert C. Martin and the official documentation for Cloud Computing. These resources provide excellent theoretical background to supplement this course.</p></div>','10:00','Welcome to the course','https://www.youtube.com/embed/a9__D53WsUs'),(_binary '',1,12,'2026-08-07 14:38:08.723389',35,35,'Master the most important techniques used in Cloud Computing.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 2: Essential Techniques in Cloud Computing</h3><p>With the foundations in place, it is time to turn our attention to the essential techniques that separate a novice from a practitioner. In Cloud Computing, these techniques involve understanding data structures, control flow, and modular design. As you progress through this chapter, you will transition from writing simple scripts to engineering robust solutions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.1 Managing State and Control Flow</h4><p>At the heart of any application is the way it handles data and logic. You will learn how to structure conditional statements, loops, and recursive functions to process information efficiently. We will also discuss the concept of \'state\'—how an application remembers information between different actions. Mishandling state is a common source of bugs, so we will emphasize immutable data patterns and predictable state transitions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2.2 Error Handling and Edge Cases</h4><p>A truly professional application doesn\'t just work when everything goes right; it gracefully handles situations when things go wrong. We will cover try-catch mechanisms, defensive programming, and logging strategies. Anticipating edge cases—those unlikely but possible scenarios—is what makes software resilient. Ensure you review the reference material below to see how these techniques are applied in a real-world debugging session.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>For further study on essential techniques, consider reading <em>\"The Pragmatic Programmer\"</em> by Andrew Hunt and David Thomas. It is a timeless piece that applies wonderfully to Cloud Computing.</p></div>','45:00','Essential Techniques','https://www.youtube.com/embed/k1RI5locZE4'),(_binary '',2,12,'2026-08-07 14:38:08.728965',36,35,'Taking your skills to the next level.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Chapter 3: Advanced Architecture & Scalability</h3><p>Welcome to the final conceptual chapter of this module. Having mastered both the basics and the essential techniques, you are now ready to tackle architectural patterns and scalability. In enterprise environments, Cloud Computing is rarely used in isolation; it is part of a larger ecosystem. Here, we will study how to design systems that can handle increased load without sacrificing performance.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.1 Design Patterns</h4><p>Design patterns are proven solutions to common software design problems. We will explore patterns such as the Singleton, Factory, and Observer patterns, contextualizing them within the framework of Cloud Computing. By adopting these patterns, you avoid reinventing the wheel and ensure your codebase remains scalable and understandable to other developers.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>3.2 Performance Optimization</h4><p>Scalability isn\'t just about throwing more servers at a problem; it starts with efficient code. We will dive into memory management, asynchronous processing, and caching strategies. You\'ll learn how to profile your applications to identify bottlenecks. The concluding reference video will demonstrate a live profiling session where a sluggish application is optimized to run lightning fast.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>Recommended Reading</h4><p>To master scalable architectures, we suggest reading <em>\"Designing Data-Intensive Applications\"</em> by Martin Kleppmann. This book will solidify your understanding of high-performance system design using Cloud Computing.</p></div>','50:00','Advanced Application','https://www.youtube.com/embed/Z3SQb_s0Zts'),(_binary '',1,1,'2026-08-07 15:42:45.190022',37,3,'Explore React 18 component architecture, JSX rendering patterns, virtual DOM diffing, props flow, useState/useEffect hook lifecycle, and state management for scalable frontend apps.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 3: React.js Essentials & Component Architecture - Core Architectural Concepts</h3><p class=\'text-base text-[#B8B8C7]\'>Welcome to this module! This lesson provides an in-depth exploration of core mechanics, fundamental syntax, and industry best practices for <strong>Module 3: React.js Essentials & Component Architecture</strong>.</p><div class=\'grid grid-cols-1 md:grid-cols-2 gap-4 my-6\'><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-pink-400 uppercase tracking-wider mb-2\'>🎯 Core Objectives</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Understand fundamental design choices, memory lifecycle, syntax structures, and system execution order.</p></div><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-purple-300 uppercase tracking-wider mb-2\'>🚀 Industry Application</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Apply these principles to build scalable software components capable of handling high throughput in production.</p></div></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Conceptual Deep Dive & Fundamentals</h4><p class=\'text-sm text-[#B8B8C7] leading-relaxed\'>Mastering <strong>Module 3: React.js Essentials & Component Architecture</strong> requires understanding both high-level design patterns and underlying mechanics. Throughout this lesson, pay close attention to component composition, scope management, and clean code conventions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2. Key Takeaways & Best Practices</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200 bg-purple-950/20 p-4 rounded-xl border border-purple-800/30\'><li>Always maintain modular responsibility separation between application layers</li><li>Leverage built-in tools, developer utilities, and static analysis for early error detection</li><li>Ensure comprehensive unit test coverage and document public interface contracts</li></ul></div>','20:00','React.js Essentials & Component Architecture - Foundations','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',2,1,'2026-08-07 15:42:45.224813',40,3,'Practical implementation, real-world scenario architecture, and hands-on coding lab for Module 3: React.js Essentials & Component Architecture.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 3: React.js Essentials & Component Architecture - Hands-on Interactive Lab</h3><p class=\'text-base text-[#B8B8C7]\'>In this intensive practical lab, you will apply the core principles covered in this module by building a production-ready feature step-by-step. Focus on clean code structure, error handling, and performance optimization.</p><div class=\'p-4 rounded-xl bg-purple-950/40 border border-purple-800/40 my-4\'><h4 class=\'text-lg text-pink-400 font-bold mb-2\'>🧪 Lab Objectives & Requirements</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200\'><li>Implement modular code structure adhering to industry design patterns</li><li>Integrate input validation, edge-case checks, and structured logging</li><li>Optimize resource consumption, DOM updates, and API payloads</li><li>Run automated unit tests to verify solution correctness</li></ul></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Implementation Walkthrough</h4><p class=\'text-sm text-[#B8B8C7]\'>Follow the step-by-step guidance below to construct your solution, inspect execution traces, and verify compliance with production benchmarks.</p></div>','35:00','React.js Essentials & Component Architecture - Hands-on Lab','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',1,1,'2026-08-07 15:42:45.394476',41,38,'Build asynchronous backend microservices with Node.js event loops, Express middleware, RESTful endpoint architecture, JWT authentication, and robust error handling.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 4: Node.js, Express & RESTful APIs - Core Architectural Concepts</h3><p class=\'text-base text-[#B8B8C7]\'>Welcome to this module! This lesson provides an in-depth exploration of core mechanics, fundamental syntax, and industry best practices for <strong>Module 4: Node.js, Express & RESTful APIs</strong>.</p><div class=\'grid grid-cols-1 md:grid-cols-2 gap-4 my-6\'><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-pink-400 uppercase tracking-wider mb-2\'>🎯 Core Objectives</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Understand fundamental design choices, memory lifecycle, syntax structures, and system execution order.</p></div><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-purple-300 uppercase tracking-wider mb-2\'>🚀 Industry Application</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Apply these principles to build scalable software components capable of handling high throughput in production.</p></div></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Conceptual Deep Dive & Fundamentals</h4><p class=\'text-sm text-[#B8B8C7] leading-relaxed\'>Mastering <strong>Module 4: Node.js, Express & RESTful APIs</strong> requires understanding both high-level design patterns and underlying mechanics. Throughout this lesson, pay close attention to component composition, scope management, and clean code conventions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2. Key Takeaways & Best Practices</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200 bg-purple-950/20 p-4 rounded-xl border border-purple-800/30\'><li>Always maintain modular responsibility separation between application layers</li><li>Leverage built-in tools, developer utilities, and static analysis for early error detection</li><li>Ensure comprehensive unit test coverage and document public interface contracts</li></ul></div>','20:00','Node.js, Express & RESTful APIs - Foundations','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',2,1,'2026-08-07 15:42:45.408640',44,38,'Practical implementation, real-world scenario architecture, and hands-on coding lab for Module 4: Node.js, Express & RESTful APIs.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 4: Node.js, Express & RESTful APIs - Hands-on Interactive Lab</h3><p class=\'text-base text-[#B8B8C7]\'>In this intensive practical lab, you will apply the core principles covered in this module by building a production-ready feature step-by-step. Focus on clean code structure, error handling, and performance optimization.</p><div class=\'p-4 rounded-xl bg-purple-950/40 border border-purple-800/40 my-4\'><h4 class=\'text-lg text-pink-400 font-bold mb-2\'>🧪 Lab Objectives & Requirements</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200\'><li>Implement modular code structure adhering to industry design patterns</li><li>Integrate input validation, edge-case checks, and structured logging</li><li>Optimize resource consumption, DOM updates, and API payloads</li><li>Run automated unit tests to verify solution correctness</li></ul></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Implementation Walkthrough</h4><p class=\'text-sm text-[#B8B8C7]\'>Follow the step-by-step guidance below to construct your solution, inspect execution traces, and verify compliance with production benchmarks.</p></div>','35:00','Node.js, Express & RESTful APIs - Hands-on Lab','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',1,1,'2026-08-07 15:42:45.522784',45,40,'Learn relational and NoSQL database engineering, schema normalization, complex SQL joins, indexing strategies, MongoDB Mongoose ORM, and query performance optimization.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 5: Database Integration & Capstone Application - Core Architectural Concepts</h3><p class=\'text-base text-[#B8B8C7]\'>Welcome to this module! This lesson provides an in-depth exploration of core mechanics, fundamental syntax, and industry best practices for <strong>Module 5: Database Integration & Capstone Application</strong>.</p><div class=\'grid grid-cols-1 md:grid-cols-2 gap-4 my-6\'><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-pink-400 uppercase tracking-wider mb-2\'>🎯 Core Objectives</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Understand fundamental design choices, memory lifecycle, syntax structures, and system execution order.</p></div><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-purple-300 uppercase tracking-wider mb-2\'>🚀 Industry Application</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Apply these principles to build scalable software components capable of handling high throughput in production.</p></div></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Conceptual Deep Dive & Fundamentals</h4><p class=\'text-sm text-[#B8B8C7] leading-relaxed\'>Mastering <strong>Module 5: Database Integration & Capstone Application</strong> requires understanding both high-level design patterns and underlying mechanics. Throughout this lesson, pay close attention to component composition, scope management, and clean code conventions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2. Key Takeaways & Best Practices</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200 bg-purple-950/20 p-4 rounded-xl border border-purple-800/30\'><li>Always maintain modular responsibility separation between application layers</li><li>Leverage built-in tools, developer utilities, and static analysis for early error detection</li><li>Ensure comprehensive unit test coverage and document public interface contracts</li></ul></div>','20:00','Database Integration & Capstone Application - Foundations','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',2,1,'2026-08-07 15:42:45.532720',47,40,'Practical implementation, real-world scenario architecture, and hands-on coding lab for Module 5: Database Integration & Capstone Application.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 5: Database Integration & Capstone Application - Hands-on Interactive Lab</h3><p class=\'text-base text-[#B8B8C7]\'>In this intensive practical lab, you will apply the core principles covered in this module by building a production-ready feature step-by-step. Focus on clean code structure, error handling, and performance optimization.</p><div class=\'p-4 rounded-xl bg-purple-950/40 border border-purple-800/40 my-4\'><h4 class=\'text-lg text-pink-400 font-bold mb-2\'>🧪 Lab Objectives & Requirements</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200\'><li>Implement modular code structure adhering to industry design patterns</li><li>Integrate input validation, edge-case checks, and structured logging</li><li>Optimize resource consumption, DOM updates, and API payloads</li><li>Run automated unit tests to verify solution correctness</li></ul></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Implementation Walkthrough</h4><p class=\'text-sm text-[#B8B8C7]\'>Follow the step-by-step guidance below to construct your solution, inspect execution traces, and verify compliance with production benchmarks.</p></div>','35:00','Database Integration & Capstone Application - Hands-on Lab','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',1,1,'2026-08-07 15:42:45.739394',49,3,'Explore React 18 component architecture, JSX rendering patterns, virtual DOM diffing, props flow, useState/useEffect hook lifecycle, and state management for scalable frontend apps.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 3: React.js Essentials & Component Architecture - Core Architectural Concepts</h3><p class=\'text-base text-[#B8B8C7]\'>Welcome to this module! This lesson provides an in-depth exploration of core mechanics, fundamental syntax, and industry best practices for <strong>Module 3: React.js Essentials & Component Architecture</strong>.</p><div class=\'grid grid-cols-1 md:grid-cols-2 gap-4 my-6\'><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-pink-400 uppercase tracking-wider mb-2\'>🎯 Core Objectives</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Understand fundamental design choices, memory lifecycle, syntax structures, and system execution order.</p></div><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-purple-300 uppercase tracking-wider mb-2\'>🚀 Industry Application</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Apply these principles to build scalable software components capable of handling high throughput in production.</p></div></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Conceptual Deep Dive & Fundamentals</h4><p class=\'text-sm text-[#B8B8C7] leading-relaxed\'>Mastering <strong>Module 3: React.js Essentials & Component Architecture</strong> requires understanding both high-level design patterns and underlying mechanics. Throughout this lesson, pay close attention to component composition, scope management, and clean code conventions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2. Key Takeaways & Best Practices</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200 bg-purple-950/20 p-4 rounded-xl border border-purple-800/30\'><li>Always maintain modular responsibility separation between application layers</li><li>Leverage built-in tools, developer utilities, and static analysis for early error detection</li><li>Ensure comprehensive unit test coverage and document public interface contracts</li></ul></div>','20:00','React.js Essentials & Component Architecture - Foundations','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',2,1,'2026-08-07 15:42:46.155360',50,3,'Practical implementation, real-world scenario architecture, and hands-on coding lab for Module 3: React.js Essentials & Component Architecture.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 3: React.js Essentials & Component Architecture - Hands-on Interactive Lab</h3><p class=\'text-base text-[#B8B8C7]\'>In this intensive practical lab, you will apply the core principles covered in this module by building a production-ready feature step-by-step. Focus on clean code structure, error handling, and performance optimization.</p><div class=\'p-4 rounded-xl bg-purple-950/40 border border-purple-800/40 my-4\'><h4 class=\'text-lg text-pink-400 font-bold mb-2\'>🧪 Lab Objectives & Requirements</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200\'><li>Implement modular code structure adhering to industry design patterns</li><li>Integrate input validation, edge-case checks, and structured logging</li><li>Optimize resource consumption, DOM updates, and API payloads</li><li>Run automated unit tests to verify solution correctness</li></ul></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Implementation Walkthrough</h4><p class=\'text-sm text-[#B8B8C7]\'>Follow the step-by-step guidance below to construct your solution, inspect execution traces, and verify compliance with production benchmarks.</p></div>','35:00','React.js Essentials & Component Architecture - Hands-on Lab','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',1,1,'2026-08-07 15:42:46.196222',51,41,'Build asynchronous backend microservices with Node.js event loops, Express middleware, RESTful endpoint architecture, JWT authentication, and robust error handling.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 4: Node.js, Express & RESTful APIs - Core Architectural Concepts</h3><p class=\'text-base text-[#B8B8C7]\'>Welcome to this module! This lesson provides an in-depth exploration of core mechanics, fundamental syntax, and industry best practices for <strong>Module 4: Node.js, Express & RESTful APIs</strong>.</p><div class=\'grid grid-cols-1 md:grid-cols-2 gap-4 my-6\'><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-pink-400 uppercase tracking-wider mb-2\'>🎯 Core Objectives</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Understand fundamental design choices, memory lifecycle, syntax structures, and system execution order.</p></div><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-purple-300 uppercase tracking-wider mb-2\'>🚀 Industry Application</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Apply these principles to build scalable software components capable of handling high throughput in production.</p></div></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Conceptual Deep Dive & Fundamentals</h4><p class=\'text-sm text-[#B8B8C7] leading-relaxed\'>Mastering <strong>Module 4: Node.js, Express & RESTful APIs</strong> requires understanding both high-level design patterns and underlying mechanics. Throughout this lesson, pay close attention to component composition, scope management, and clean code conventions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2. Key Takeaways & Best Practices</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200 bg-purple-950/20 p-4 rounded-xl border border-purple-800/30\'><li>Always maintain modular responsibility separation between application layers</li><li>Leverage built-in tools, developer utilities, and static analysis for early error detection</li><li>Ensure comprehensive unit test coverage and document public interface contracts</li></ul></div>','20:00','Node.js, Express & RESTful APIs - Foundations','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',2,1,'2026-08-07 15:42:46.205768',52,41,'Practical implementation, real-world scenario architecture, and hands-on coding lab for Module 4: Node.js, Express & RESTful APIs.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 4: Node.js, Express & RESTful APIs - Hands-on Interactive Lab</h3><p class=\'text-base text-[#B8B8C7]\'>In this intensive practical lab, you will apply the core principles covered in this module by building a production-ready feature step-by-step. Focus on clean code structure, error handling, and performance optimization.</p><div class=\'p-4 rounded-xl bg-purple-950/40 border border-purple-800/40 my-4\'><h4 class=\'text-lg text-pink-400 font-bold mb-2\'>🧪 Lab Objectives & Requirements</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200\'><li>Implement modular code structure adhering to industry design patterns</li><li>Integrate input validation, edge-case checks, and structured logging</li><li>Optimize resource consumption, DOM updates, and API payloads</li><li>Run automated unit tests to verify solution correctness</li></ul></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Implementation Walkthrough</h4><p class=\'text-sm text-[#B8B8C7]\'>Follow the step-by-step guidance below to construct your solution, inspect execution traces, and verify compliance with production benchmarks.</p></div>','35:00','Node.js, Express & RESTful APIs - Hands-on Lab','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',1,1,'2026-08-07 15:42:46.253097',53,42,'Learn relational and NoSQL database engineering, schema normalization, complex SQL joins, indexing strategies, MongoDB Mongoose ORM, and query performance optimization.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 5: Database Integration & Capstone Application - Core Architectural Concepts</h3><p class=\'text-base text-[#B8B8C7]\'>Welcome to this module! This lesson provides an in-depth exploration of core mechanics, fundamental syntax, and industry best practices for <strong>Module 5: Database Integration & Capstone Application</strong>.</p><div class=\'grid grid-cols-1 md:grid-cols-2 gap-4 my-6\'><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-pink-400 uppercase tracking-wider mb-2\'>🎯 Core Objectives</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Understand fundamental design choices, memory lifecycle, syntax structures, and system execution order.</p></div><div class=\'p-4 rounded-xl bg-purple-950/30 border border-purple-800/30\'><h5 class=\'text-sm font-bold text-purple-300 uppercase tracking-wider mb-2\'>🚀 Industry Application</h5><p class=\'text-xs text-purple-200 leading-relaxed\'>Apply these principles to build scalable software components capable of handling high throughput in production.</p></div></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Conceptual Deep Dive & Fundamentals</h4><p class=\'text-sm text-[#B8B8C7] leading-relaxed\'>Mastering <strong>Module 5: Database Integration & Capstone Application</strong> requires understanding both high-level design patterns and underlying mechanics. Throughout this lesson, pay close attention to component composition, scope management, and clean code conventions.</p><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>2. Key Takeaways & Best Practices</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200 bg-purple-950/20 p-4 rounded-xl border border-purple-800/30\'><li>Always maintain modular responsibility separation between application layers</li><li>Leverage built-in tools, developer utilities, and static analysis for early error detection</li><li>Ensure comprehensive unit test coverage and document public interface contracts</li></ul></div>','20:00','Database Integration & Capstone Application - Foundations','https://www.youtube.com/embed/zJSY8tbf_ys'),(_binary '',2,1,'2026-08-07 15:42:46.261147',54,42,'Practical implementation, real-world scenario architecture, and hands-on coding lab for Module 5: Database Integration & Capstone Application.','<div class=\'space-y-6 text-violet-100/90 leading-relaxed\'><h3 class=\'text-2xl text-violet-300 font-bold mb-4\'>Module 5: Database Integration & Capstone Application - Hands-on Interactive Lab</h3><p class=\'text-base text-[#B8B8C7]\'>In this intensive practical lab, you will apply the core principles covered in this module by building a production-ready feature step-by-step. Focus on clean code structure, error handling, and performance optimization.</p><div class=\'p-4 rounded-xl bg-purple-950/40 border border-purple-800/40 my-4\'><h4 class=\'text-lg text-pink-400 font-bold mb-2\'>🧪 Lab Objectives & Requirements</h4><ul class=\'list-disc list-inside space-y-2 text-sm text-purple-200\'><li>Implement modular code structure adhering to industry design patterns</li><li>Integrate input validation, edge-case checks, and structured logging</li><li>Optimize resource consumption, DOM updates, and API payloads</li><li>Run automated unit tests to verify solution correctness</li></ul></div><h4 class=\'text-xl text-violet-200 font-semibold mt-6 mb-3\'>1. Implementation Walkthrough</h4><p class=\'text-sm text-[#B8B8C7]\'>Follow the step-by-step guidance below to construct your solution, inspect execution traces, and verify compliance with production benchmarks.</p></div>','35:00','Database Integration & Capstone Application - Hands-on Lab','https://www.youtube.com/embed/zJSY8tbf_ys');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_quizzes`
--

DROP TABLE IF EXISTS `module_quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_quizzes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `module_id` bigint NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqrd8m1y8701vqcabwgk08dufd` (`module_id`),
  CONSTRAINT `FK4rn4mg415wsgsfu4fgra5yxow` FOREIGN KEY (`module_id`) REFERENCES `course_modules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_quizzes`
--

LOCK TABLES `module_quizzes` WRITE;
/*!40000 ALTER TABLE `module_quizzes` DISABLE KEYS */;
INSERT INTO `module_quizzes` VALUES (1,1,'Test your knowledge on the introductory concepts.','Basics Quiz'),(2,2,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(3,3,'This exam comprises 20 questions covering all course materials.','Final Exam'),(4,4,'Test your knowledge on the introductory concepts.','Basics Quiz'),(5,5,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(6,6,'This exam comprises 20 questions covering all course materials.','Final Exam'),(7,7,'Test your knowledge on the introductory concepts.','Basics Quiz'),(8,8,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(9,9,'This exam comprises 20 questions covering all course materials.','Final Exam'),(10,10,'Test your knowledge on the introductory concepts.','Basics Quiz'),(11,11,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(12,12,'This exam comprises 20 questions covering all course materials.','Final Exam'),(13,13,'Test your knowledge on the introductory concepts.','Basics Quiz'),(14,14,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(15,15,'This exam comprises 20 questions covering all course materials.','Final Exam'),(16,16,'Test your knowledge on the introductory concepts.','Basics Quiz'),(17,17,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(18,18,'This exam comprises 20 questions covering all course materials.','Final Exam'),(19,19,'Test your knowledge on the introductory concepts.','Basics Quiz'),(20,20,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(21,21,'This exam comprises 20 questions covering all course materials.','Final Exam'),(22,22,'Test your knowledge on the introductory concepts.','Basics Quiz'),(23,23,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(24,24,'This exam comprises 20 questions covering all course materials.','Final Exam'),(25,25,'Test your knowledge on the introductory concepts.','Basics Quiz'),(26,26,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(27,27,'This exam comprises 20 questions covering all course materials.','Final Exam'),(28,28,'Test your knowledge on the introductory concepts.','Basics Quiz'),(29,29,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(30,30,'This exam comprises 20 questions covering all course materials.','Final Exam'),(31,31,'Test your knowledge on the introductory concepts.','Basics Quiz'),(32,32,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(33,33,'This exam comprises 20 questions covering all course materials.','Final Exam'),(34,34,'Test your knowledge on the introductory concepts.','Basics Quiz'),(35,35,'Test your knowledge on the advanced concepts.','Advanced Quiz'),(36,36,'This exam comprises 20 questions covering all course materials.','Final Exam'),(38,38,'Assess your understanding of Module 4: Node.js, Express & RESTful APIs','Module 4: Node.js, Express & RESTful APIs Quiz'),(40,40,'Assess your understanding of Module 5: Database Integration & Capstone Application','Module 5: Database Integration & Capstone Application Quiz'),(41,41,'Assess your understanding of Module 4: Node.js, Express & RESTful APIs','Module 4: Node.js, Express & RESTful APIs Quiz'),(42,42,'Assess your understanding of Module 5: Database Integration & Capstone Application','Module 5: Database Integration & Capstone Application Quiz');
/*!40000 ALTER TABLE `module_quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `is_read` bit(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `message` varchar(500) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9y21adhxn0ayjhfocscqox7bh` (`user_id`),
  CONSTRAINT `FK9y21adhxn0ayjhfocscqox7bh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (_binary '','2026-08-07 15:42:42.251818',1,10,'You\'ve successfully enrolled in \"Full Stack Development\". Happy learning!','Enrolled in a new course','ENROLLMENT');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `verified` bit(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expiry_date` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk3ndxg5xp6v7wd4gjyusp15gq` (`user_id`),
  CONSTRAINT `FKk3ndxg5xp6v7wd4gjyusp15gq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_attempts`
--

DROP TABLE IF EXISTS `practice_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice_attempts` (
  `accuracy_pct` double DEFAULT NULL,
  `passed` bit(1) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `score` int DEFAULT NULL,
  `total_marks` int DEFAULT NULL,
  `attempted_at` datetime(6) DEFAULT NULL,
  `course_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_attempts`
--

LOCK TABLES `practice_attempts` WRITE;
/*!40000 ALTER TABLE `practice_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `practice_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_questions`
--

DROP TABLE IF EXISTS `practice_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice_questions` (
  `marks` int DEFAULT NULL,
  `course_id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment_details` text,
  `correct_answer` text,
  `difficulty` varchar(255) DEFAULT NULL,
  `evaluation_criteria` text,
  `explanation` text,
  `hints` text,
  `module_name` varchar(255) NOT NULL,
  `question_text` text NOT NULL,
  `question_type` varchar(255) NOT NULL,
  `scenario_details` text,
  `topic_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_questions`
--

LOCK TABLES `practice_questions` WRITE;
/*!40000 ALTER TABLE `practice_questions` DISABLE KEYS */;
INSERT INTO `practice_questions` VALUES (10,1,'2026-08-08 14:45:20.133275',1,NULL,'Statelessness and standardized HTTP protocol interaction','Medium',NULL,'RESTful APIs leverage standard HTTP methods (GET, POST, PUT, DELETE) and stateless communication, enabling high scalability.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','What is the primary advantage of using RESTful APIs in modern application design?','MCQ',NULL,'Core Fundamentals'),(10,1,'2026-08-08 14:45:20.133275',2,NULL,'Statelessness and standardized HTTP protocol interaction','Medium',NULL,'RESTful APIs leverage standard HTTP methods (GET, POST, PUT, DELETE) and stateless communication, enabling high scalability.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','What is the primary advantage of using RESTful APIs in modern application design?','MCQ',NULL,'Core Fundamentals'),(10,1,'2026-08-08 14:45:20.313571',3,NULL,'False','Easy',NULL,'State must always be updated using setState() or the useState setter function to schedule a component re-render.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','In React, modifying component state directly (e.g. this.state.count = 5) triggers an immediate UI re-render.','TRUE_FALSE',NULL,'Architecture & State'),(10,1,'2026-08-08 14:45:20.306234',4,NULL,'False','Easy',NULL,'State must always be updated using setState() or the useState setter function to schedule a component re-render.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','In React, modifying component state directly (e.g. this.state.count = 5) triggers an immediate UI re-render.','TRUE_FALSE',NULL,'Architecture & State'),(15,1,'2026-08-08 14:45:20.306234',5,NULL,'ACID guarantees Atomicity, Consistency, Isolation, and Durability across database commits.','Hard',NULL,'ACID properties ensure that all database modifications either commit completely or roll back safely without corruption.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','Explain how database transactions guarantee the ACID properties in enterprise applications.','SHORT_ANSWER',NULL,'Data Management & ORM'),(15,1,'2026-08-08 14:45:20.313571',6,NULL,'ACID guarantees Atomicity, Consistency, Isolation, and Durability across database commits.','Hard',NULL,'ACID properties ensure that all database modifications either commit completely or roll back safely without corruption.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','Explain how database transactions guarantee the ACID properties in enterprise applications.','SHORT_ANSWER',NULL,'Data Management & ORM'),(20,1,'2026-08-08 14:45:20.306234',7,NULL,'O(n) linear scan solution','Medium',NULL,'Iterate through elements while keeping track of current max and global max sum.','Keep track of max_ending_here and max_so_far.','Module 1: HTML5, CSS3 & Responsive Web Design','Write a function to find the maximum sum of a contiguous subarray (Kadane\'s Algorithm).','CODING',NULL,'Algorithmic Implementation'),(20,1,'2026-08-08 14:45:20.313571',8,NULL,'O(n) linear scan solution','Medium',NULL,'Iterate through elements while keeping track of current max and global max sum.','Keep track of max_ending_here and max_so_far.','Module 1: HTML5, CSS3 & Responsive Web Design','Write a function to find the maximum sum of a contiguous subarray (Kadane\'s Algorithm).','CODING',NULL,'Algorithmic Implementation'),(20,1,'2026-08-08 14:45:20.306234',9,NULL,'Implement database connection pooling, Redis caching for hot data, and load balancing across microservices.','Hard',NULL,'Horizontal scaling, read-replicas, and Redis cache layer insulate primary database servers from sudden spikes.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','Real-World Scenario: Your e-commerce website experiences a 10x traffic spike during a holiday flash sale. Outline how you would scale database connections and prevent server bottlenecks.','SCENARIO',NULL,'System Design & Architecture'),(20,1,'2026-08-08 14:45:20.313571',10,NULL,'Implement database connection pooling, Redis caching for hot data, and load balancing across microservices.','Hard',NULL,'Horizontal scaling, read-replicas, and Redis cache layer insulate primary database servers from sudden spikes.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','Real-World Scenario: Your e-commerce website experiences a 10x traffic spike during a holiday flash sale. Outline how you would scale database connections and prevent server bottlenecks.','SCENARIO',NULL,'System Design & Architecture'),(25,1,'2026-08-08 14:45:20.309477',11,'Objective: Demonstrate REST API validation and password hashing.\nDeliverable: Working code snippet or Github repo link.\nEvaluation Rubric: Validation rules (20%), BCrypt usage (40%), Clean response format (40%).',NULL,'Hard',NULL,'Spring Boot @Valid and BCryptPasswordEncoder offer production grade authentication foundation.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','Mini Assignment: Build a lightweight REST endpoint that validates user registration payload, encrypts password with BCrypt, and returns a JSON response.','MINI_ASSIGNMENT',NULL,'Hands-on Project Deliverable'),(25,1,'2026-08-08 14:45:20.313571',12,'Objective: Demonstrate REST API validation and password hashing.\nDeliverable: Working code snippet or Github repo link.\nEvaluation Rubric: Validation rules (20%), BCrypt usage (40%), Clean response format (40%).',NULL,'Hard',NULL,'Spring Boot @Valid and BCryptPasswordEncoder offer production grade authentication foundation.',NULL,'Module 1: HTML5, CSS3 & Responsive Web Design','Mini Assignment: Build a lightweight REST endpoint that validates user registration payload, encrypts password with BCrypt, and returns a JSON response.','MINI_ASSIGNMENT',NULL,'Hands-on Project Deliverable');
/*!40000 ALTER TABLE `practice_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_results`
--

DROP TABLE IF EXISTS `practice_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice_results` (
  `is_correct` bit(1) DEFAULT NULL,
  `marks_awarded` int DEFAULT NULL,
  `attempt_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `user_answer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_results`
--

LOCK TABLES `practice_results` WRITE;
/*!40000 ALTER TABLE `practice_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `practice_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_options`
--

DROP TABLE IF EXISTS `question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_options` (
  `is_correct` bit(1) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `option_label` varchar(255) NOT NULL,
  `option_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_options`
--

LOCK TABLES `question_options` WRITE;
/*!40000 ALTER TABLE `question_options` DISABLE KEYS */;
INSERT INTO `question_options` VALUES (_binary '\0',1,2,'A','Tightly coupled client-server execution'),(_binary '\0',2,1,'A','Tightly coupled client-server execution'),(_binary '',3,2,'B','Statelessness and standardized HTTP protocol interaction'),(_binary '',4,1,'B','Statelessness and standardized HTTP protocol interaction'),(_binary '\0',5,1,'C','Mandatory XML data payload structure'),(_binary '\0',6,2,'C','Mandatory XML data payload structure'),(_binary '\0',7,2,'D','Single thread execution limitation'),(_binary '\0',8,1,'D','Single thread execution limitation');
/*!40000 ALTER TABLE `question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_questions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quiz_id` bigint NOT NULL,
  `optiona` varchar(500) DEFAULT NULL,
  `optionb` varchar(500) DEFAULT NULL,
  `optionc` varchar(500) DEFAULT NULL,
  `optiond` varchar(500) DEFAULT NULL,
  `question_text` varchar(1000) NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpqvrm88ysd0vyyolx8t89obq1` (`quiz_id`),
  CONSTRAINT `FKpqvrm88ysd0vyyolx8t89obq1` FOREIGN KEY (`quiz_id`) REFERENCES `module_quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,1,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(2,1,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Web Development?','A'),(3,2,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Web Development?','C'),(4,2,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(5,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Web Development?','B'),(6,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Web Development?','C'),(7,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Web Development?','D'),(8,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Web Development?','A'),(9,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Web Development?','B'),(10,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Web Development?','C'),(11,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Web Development?','D'),(12,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Web Development?','A'),(13,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Web Development?','B'),(14,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Web Development?','C'),(15,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Web Development?','D'),(16,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Web Development?','A'),(17,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Web Development?','B'),(18,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Web Development?','C'),(19,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Web Development?','D'),(20,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Web Development?','A'),(21,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Web Development?','B'),(22,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Web Development?','C'),(23,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Web Development?','D'),(24,3,'A foundational principle of Web Development','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Web Development?','A'),(25,4,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(26,4,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn React?','A'),(27,5,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in React?','C'),(28,5,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(29,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in React?','B'),(30,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in React?','C'),(31,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in React?','D'),(32,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in React?','A'),(33,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in React?','B'),(34,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in React?','C'),(35,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in React?','D'),(36,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in React?','A'),(37,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in React?','B'),(38,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in React?','C'),(39,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in React?','D'),(40,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in React?','A'),(41,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in React?','B'),(42,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in React?','C'),(43,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in React?','D'),(44,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in React?','A'),(45,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in React?','B'),(46,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in React?','C'),(47,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in React?','D'),(48,6,'A foundational principle of React','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in React?','A'),(49,7,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(50,7,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Java?','A'),(51,8,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Java?','C'),(52,8,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(53,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Java?','B'),(54,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Java?','C'),(55,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Java?','D'),(56,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Java?','A'),(57,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Java?','B'),(58,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Java?','C'),(59,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Java?','D'),(60,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Java?','A'),(61,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Java?','B'),(62,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Java?','C'),(63,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Java?','D'),(64,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Java?','A'),(65,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Java?','B'),(66,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Java?','C'),(67,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Java?','D'),(68,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Java?','A'),(69,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Java?','B'),(70,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Java?','C'),(71,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Java?','D'),(72,9,'A foundational principle of Java','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Java?','A'),(73,10,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(74,10,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Database?','A'),(75,11,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Database?','C'),(76,11,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(77,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Database?','B'),(78,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Database?','C'),(79,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Database?','D'),(80,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Database?','A'),(81,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Database?','B'),(82,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Database?','C'),(83,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Database?','D'),(84,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Database?','A'),(85,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Database?','B'),(86,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Database?','C'),(87,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Database?','D'),(88,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Database?','A'),(89,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Database?','B'),(90,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Database?','C'),(91,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Database?','D'),(92,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Database?','A'),(93,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Database?','B'),(94,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Database?','C'),(95,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Database?','D'),(96,12,'A foundational principle of Database','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Database?','A'),(97,13,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(98,13,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Python?','A'),(99,14,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Python?','C'),(100,14,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(101,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Python?','B'),(102,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Python?','C'),(103,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Python?','D'),(104,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Python?','A'),(105,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Python?','B'),(106,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Python?','C'),(107,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Python?','D'),(108,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Python?','A'),(109,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Python?','B'),(110,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Python?','C'),(111,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Python?','D'),(112,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Python?','A'),(113,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Python?','B'),(114,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Python?','C'),(115,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Python?','D'),(116,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Python?','A'),(117,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Python?','B'),(118,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Python?','C'),(119,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Python?','D'),(120,15,'A foundational principle of Python','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Python?','A'),(121,16,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(122,16,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Data Science?','A'),(123,17,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Data Science?','C'),(124,17,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(125,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Data Science?','B'),(126,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Data Science?','C'),(127,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Data Science?','D'),(128,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Data Science?','A'),(129,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Data Science?','B'),(130,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Data Science?','C'),(131,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Data Science?','D'),(132,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Data Science?','A'),(133,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Data Science?','B'),(134,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Data Science?','C'),(135,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Data Science?','D'),(136,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Data Science?','A'),(137,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Data Science?','B'),(138,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Data Science?','C'),(139,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Data Science?','D'),(140,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Data Science?','A'),(141,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Data Science?','B'),(142,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Data Science?','C'),(143,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Data Science?','D'),(144,18,'A foundational principle of Data Science','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Data Science?','A'),(145,19,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(146,19,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Machine Learning?','A'),(147,20,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Machine Learning?','C'),(148,20,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(149,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Machine Learning?','B'),(150,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Machine Learning?','C'),(151,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Machine Learning?','D'),(152,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Machine Learning?','A'),(153,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Machine Learning?','B'),(154,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Machine Learning?','C'),(155,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Machine Learning?','D'),(156,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Machine Learning?','A'),(157,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Machine Learning?','B'),(158,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Machine Learning?','C'),(159,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Machine Learning?','D'),(160,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Machine Learning?','A'),(161,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Machine Learning?','B'),(162,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Machine Learning?','C'),(163,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Machine Learning?','D'),(164,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Machine Learning?','A'),(165,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Machine Learning?','B'),(166,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Machine Learning?','C'),(167,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Machine Learning?','D'),(168,21,'A foundational principle of Machine Learning','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Machine Learning?','A'),(169,22,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(170,22,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn UI/UX Design?','A'),(171,23,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in UI/UX Design?','C'),(172,23,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(173,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in UI/UX Design?','B'),(174,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in UI/UX Design?','C'),(175,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in UI/UX Design?','D'),(176,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in UI/UX Design?','A'),(177,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in UI/UX Design?','B'),(178,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in UI/UX Design?','C'),(179,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in UI/UX Design?','D'),(180,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in UI/UX Design?','A'),(181,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in UI/UX Design?','B'),(182,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in UI/UX Design?','C'),(183,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in UI/UX Design?','D'),(184,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in UI/UX Design?','A'),(185,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in UI/UX Design?','B'),(186,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in UI/UX Design?','C'),(187,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in UI/UX Design?','D'),(188,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in UI/UX Design?','A'),(189,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in UI/UX Design?','B'),(190,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in UI/UX Design?','C'),(191,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in UI/UX Design?','D'),(192,24,'A foundational principle of UI/UX Design','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in UI/UX Design?','A'),(193,25,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(194,25,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn DevOps?','A'),(195,26,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in DevOps?','C'),(196,26,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(197,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in DevOps?','B'),(198,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in DevOps?','C'),(199,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in DevOps?','D'),(200,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in DevOps?','A'),(201,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in DevOps?','B'),(202,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in DevOps?','C'),(203,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in DevOps?','D'),(204,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in DevOps?','A'),(205,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in DevOps?','B'),(206,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in DevOps?','C'),(207,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in DevOps?','D'),(208,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in DevOps?','A'),(209,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in DevOps?','B'),(210,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in DevOps?','C'),(211,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in DevOps?','D'),(212,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in DevOps?','A'),(213,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in DevOps?','B'),(214,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in DevOps?','C'),(215,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in DevOps?','D'),(216,27,'A foundational principle of DevOps','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in DevOps?','A'),(217,28,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(218,28,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Cyber Security?','A'),(219,29,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Cyber Security?','C'),(220,29,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(221,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Cyber Security?','B'),(222,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Cyber Security?','C'),(223,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Cyber Security?','D'),(224,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Cyber Security?','A'),(225,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Cyber Security?','B'),(226,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Cyber Security?','C'),(227,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Cyber Security?','D'),(228,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Cyber Security?','A'),(229,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Cyber Security?','B'),(230,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Cyber Security?','C'),(231,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Cyber Security?','D'),(232,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Cyber Security?','A'),(233,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Cyber Security?','B'),(234,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Cyber Security?','C'),(235,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Cyber Security?','D'),(236,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Cyber Security?','A'),(237,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Cyber Security?','B'),(238,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Cyber Security?','C'),(239,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Cyber Security?','D'),(240,30,'A foundational principle of Cyber Security','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Cyber Security?','A'),(241,31,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(242,31,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Node.js?','A'),(243,32,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Node.js?','C'),(244,32,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(245,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Node.js?','B'),(246,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Node.js?','C'),(247,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Node.js?','D'),(248,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Node.js?','A'),(249,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Node.js?','B'),(250,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Node.js?','C'),(251,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Node.js?','D'),(252,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Node.js?','A'),(253,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Node.js?','B'),(254,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Node.js?','C'),(255,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Node.js?','D'),(256,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Node.js?','A'),(257,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Node.js?','B'),(258,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Node.js?','C'),(259,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Node.js?','D'),(260,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Node.js?','A'),(261,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Node.js?','B'),(262,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Node.js?','C'),(263,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Node.js?','D'),(264,33,'A foundational principle of Node.js','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Node.js?','A'),(265,34,'Advanced techniques','Introduction and basics','Final capstone project','Nothing in particular','What is the primary focus of this first module?','B'),(266,34,'Yes, definitely!','Maybe later.','Not sure.','No.','Are you ready to learn Cloud Computing?','A'),(267,35,'Printing \'Hello World\'','Using standard libraries safely','Implementing complex architectural patterns','Reading the documentation','Which of the following is considered an advanced technique in Cloud Computing?','C'),(268,35,'By writing more lines of code','By applying proper design patterns and caching','By ignoring edge cases','Performance is automatically handled','How can you optimize performance and scalability?','B'),(269,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 1: Which of the following best describes concept 1 in Cloud Computing?','B'),(270,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 2: Which of the following best describes concept 2 in Cloud Computing?','C'),(271,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 3: Which of the following best describes concept 3 in Cloud Computing?','D'),(272,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 4: Which of the following best describes concept 4 in Cloud Computing?','A'),(273,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 5: Which of the following best describes concept 5 in Cloud Computing?','B'),(274,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 6: Which of the following best describes concept 6 in Cloud Computing?','C'),(275,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 7: Which of the following best describes concept 7 in Cloud Computing?','D'),(276,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 8: Which of the following best describes concept 8 in Cloud Computing?','A'),(277,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 9: Which of the following best describes concept 9 in Cloud Computing?','B'),(278,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 10: Which of the following best describes concept 10 in Cloud Computing?','C'),(279,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 11: Which of the following best describes concept 11 in Cloud Computing?','D'),(280,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 12: Which of the following best describes concept 12 in Cloud Computing?','A'),(281,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 13: Which of the following best describes concept 13 in Cloud Computing?','B'),(282,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 14: Which of the following best describes concept 14 in Cloud Computing?','C'),(283,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 15: Which of the following best describes concept 15 in Cloud Computing?','D'),(284,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 16: Which of the following best describes concept 16 in Cloud Computing?','A'),(285,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 17: Which of the following best describes concept 17 in Cloud Computing?','B'),(286,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 18: Which of the following best describes concept 18 in Cloud Computing?','C'),(287,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 19: Which of the following best describes concept 19 in Cloud Computing?','D'),(288,36,'A foundational principle of Cloud Computing','An advanced implementation detail','A common anti-pattern to avoid','An obsolete practice','Question 20: Which of the following best describes concept 20 in Cloud Computing?','A'),(290,38,'Master production concepts and best practices','Avoid writing code','Learn irrelevant theoretical syntax','None of the above','What is the main objective of Module 4: Node.js, Express & RESTful APIs?','A'),(291,40,'Master production concepts and best practices','Avoid writing code','Learn irrelevant theoretical syntax','None of the above','What is the main objective of Module 5: Database Integration & Capstone Application?','A'),(293,41,'Master production concepts and best practices','Avoid writing code','Learn irrelevant theoretical syntax','None of the above','What is the main objective of Module 4: Node.js, Express & RESTful APIs?','A'),(294,42,'Master production concepts and best practices','Avoid writing code','Learn irrelevant theoretical syntax','None of the above','What is the main objective of Module 5: Database Integration & Capstone Application?','A');
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenue_reports`
--

DROP TABLE IF EXISTS `revenue_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revenue_reports` (
  `total_amount` double NOT NULL,
  `total_transactions` int NOT NULL,
  `generated_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `period_name` varchar(255) NOT NULL,
  `report_title` varchar(255) NOT NULL,
  `report_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenue_reports`
--

LOCK TABLES `revenue_reports` WRITE;
/*!40000 ALTER TABLE `revenue_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `revenue_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` text,
  `created_at` datetime(6) NOT NULL,
  `rating` int NOT NULL,
  `course_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKccbfc9u1qimejr5ll7yuxbtqs` (`course_id`),
  KEY `FKcgy7qjc1r99dp117y9en6lxye` (`user_id`),
  CONSTRAINT `FKccbfc9u1qimejr5ll7yuxbtqs` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `FKcgy7qjc1r99dp117y9en6lxye` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_enrollments`
--

DROP TABLE IF EXISTS `student_enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_enrollments` (
  `avg_quiz_score` double DEFAULT NULL,
  `coding_score` double DEFAULT NULL,
  `completion_percentage` double DEFAULT NULL,
  `easy_solved` int DEFAULT NULL,
  `hard_solved` int DEFAULT NULL,
  `lessons_completed` int DEFAULT NULL,
  `medium_solved` int DEFAULT NULL,
  `modules_completed` int DEFAULT NULL,
  `problems_solved` int DEFAULT NULL,
  `quizzes_attempted` int DEFAULT NULL,
  `time_spent_hours` double DEFAULT NULL,
  `total_lessons` int DEFAULT NULL,
  `total_modules` int DEFAULT NULL,
  `total_xp` int DEFAULT NULL,
  `enrollment_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_active` datetime(6) DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `certificate_status` varchar(255) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) NOT NULL,
  `current_lesson` varchar(255) DEFAULT NULL,
  `current_module` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `instructor_name` varchar(255) DEFAULT NULL,
  `learning_status` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_enrollments`
--

LOCK TABLES `student_enrollments` WRITE;
/*!40000 ALTER TABLE `student_enrollments` DISABLE KEYS */;
INSERT INTO `student_enrollments` VALUES (92.5,88,75,15,3,18,10,4,28,8,38.5,24,6,1450,'2026-07-23 15:45:49.460541',1,'2026-08-07 15:45:49.460541',101,'Generated','PSG College of Technology','Full Stack Web Development','Lesson 4.2: JPA Entity Mapping','Module 4: Spring Boot REST APIs','kavipriya@skillsphere.edu','Dr. Alex Morgan','In Progress','+91 98765 43210','Kavipriya S'),(92.5,88,75,15,3,18,10,4,28,8,38.5,24,6,1450,'2026-07-23 15:45:49.460541',2,'2026-08-07 15:45:49.460541',101,'Generated','PSG College of Technology','Full Stack Web Development','Lesson 4.2: JPA Entity Mapping','Module 4: Spring Boot REST APIs','kavipriya@skillsphere.edu','Dr. Alex Morgan','In Progress','+91 98765 43210','Kavipriya S'),(92.5,88,75,15,3,18,10,4,28,8,38.5,24,6,1450,'2026-07-23 15:45:49.460541',3,'2026-08-07 15:45:49.460541',101,'Generated','PSG College of Technology','Full Stack Web Development','Lesson 4.2: JPA Entity Mapping','Module 4: Spring Boot REST APIs','kavipriya@skillsphere.edu','Dr. Alex Morgan','In Progress','+91 98765 43210','Kavipriya S'),(92.5,88,75,15,3,18,10,4,28,8,38.5,24,6,1450,'2026-07-23 15:45:49.462550',4,'2026-08-07 15:45:49.462550',101,'Generated','PSG College of Technology','Full Stack Web Development','Lesson 4.2: JPA Entity Mapping','Module 4: Spring Boot REST APIs','kavipriya@skillsphere.edu','Dr. Alex Morgan','In Progress','+91 98765 43210','Kavipriya S'),(96,94,100,20,7,24,18,6,45,10,62,24,6,2800,'2026-07-08 15:45:49.462550',5,'2026-08-06 15:45:49.462550',102,'Generated','Stanford University','Java Programming Masterclass','Course Completed','Module 6: Final Capstone','alex.r@skillsphere.edu','Dr. Alex Morgan','Completed','+1 555 019 2831','Alex Rivera'),(96,94,100,20,7,24,18,6,45,10,62,24,6,2800,'2026-07-08 15:45:49.460541',6,'2026-08-06 15:45:49.460541',102,'Generated','Stanford University','Java Programming Masterclass','Course Completed','Module 6: Final Capstone','alex.r@skillsphere.edu','Dr. Alex Morgan','Completed','+1 555 019 2831','Alex Rivera'),(96,94,100,20,7,24,18,6,45,10,62,24,6,2800,'2026-07-08 15:45:49.460541',7,'2026-08-06 15:45:49.460541',102,'Generated','Stanford University','Java Programming Masterclass','Course Completed','Module 6: Final Capstone','alex.r@skillsphere.edu','Dr. Alex Morgan','Completed','+1 555 019 2831','Alex Rivera'),(96,94,100,20,7,24,18,6,45,10,62,24,6,2800,'2026-07-08 15:45:49.460541',8,'2026-08-06 15:45:49.460541',102,'Generated','Stanford University','Java Programming Masterclass','Course Completed','Module 6: Final Capstone','alex.r@skillsphere.edu','Dr. Alex Morgan','Completed','+1 555 019 2831','Alex Rivera'),(85,82,60,10,2,12,6,3,18,5,24,20,5,950,'2026-07-18 15:45:49.460541',9,'2026-08-05 15:45:49.460541',103,'Not Generated','IIT Madras','Python for Data Science','Lesson 3.1: Data Cleaning with Pandas','Module 3: Pandas DataFrames','priya.s@skillsphere.edu','Dr. Victoria Vance','In Progress','+91 91234 56789','Priya Sharma'),(85,82,60,10,2,12,6,3,18,5,24,20,5,950,'2026-07-18 15:45:49.460541',10,'2026-08-05 15:45:49.460541',103,'Not Generated','IIT Madras','Python for Data Science','Lesson 3.1: Data Cleaning with Pandas','Module 3: Pandas DataFrames','priya.s@skillsphere.edu','Dr. Victoria Vance','In Progress','+91 91234 56789','Priya Sharma'),(85,82,60,10,2,12,6,3,18,5,24,20,5,950,'2026-07-18 15:45:49.460541',11,'2026-08-05 15:45:49.460541',103,'Not Generated','IIT Madras','Python for Data Science','Lesson 3.1: Data Cleaning with Pandas','Module 3: Pandas DataFrames','priya.s@skillsphere.edu','Dr. Victoria Vance','In Progress','+91 91234 56789','Priya Sharma'),(85,82,60,10,2,12,6,3,18,5,24,20,5,950,'2026-07-18 15:45:49.462550',12,'2026-08-05 15:45:49.462550',103,'Not Generated','IIT Madras','Python for Data Science','Lesson 3.1: Data Cleaning with Pandas','Module 3: Pandas DataFrames','priya.s@skillsphere.edu','Dr. Victoria Vance','In Progress','+91 91234 56789','Priya Sharma'),(90,86,80,12,2,16,8,4,22,6,41,20,5,1600,'2026-06-23 15:45:49.460541',13,'2026-07-30 15:45:49.460541',104,'Generated','MIT','Cloud Computing with AWS','Lesson 5.2: API Gateway Integration','Module 5: Serverless Lambda','m.chen@skillsphere.edu','Dr. Victoria Vance','In Progress','+1 555 382 1092','Michael Chen'),(90,86,80,12,2,16,8,4,22,6,41,20,5,1600,'2026-06-23 15:45:49.462550',14,'2026-07-30 15:45:49.462550',104,'Generated','MIT','Cloud Computing with AWS','Lesson 5.2: API Gateway Integration','Module 5: Serverless Lambda','m.chen@skillsphere.edu','Dr. Victoria Vance','In Progress','+1 555 382 1092','Michael Chen'),(90,86,80,12,2,16,8,4,22,6,41,20,5,1600,'2026-06-23 15:45:49.460541',15,'2026-07-30 15:45:49.460541',104,'Generated','MIT','Cloud Computing with AWS','Lesson 5.2: API Gateway Integration','Module 5: Serverless Lambda','m.chen@skillsphere.edu','Dr. Victoria Vance','In Progress','+1 555 382 1092','Michael Chen'),(90,86,80,12,2,16,8,4,22,6,41,20,5,1600,'2026-06-23 15:45:49.460541',16,'2026-07-30 15:45:49.460541',104,'Generated','MIT','Cloud Computing with AWS','Lesson 5.2: API Gateway Integration','Module 5: Serverless Lambda','m.chen@skillsphere.edu','Dr. Victoria Vance','In Progress','+1 555 382 1092','Michael Chen'),(70,65,12.5,4,0,2,1,0,5,2,6.5,16,4,300,'2026-06-08 15:45:49.462550',17,'2026-07-26 15:45:49.462550',105,'Not Generated','Oxford University','UI/UX Design with Figma','Lesson 1.2: Typography Guidelines','Module 1: Design Systems','s.jenkins@skillsphere.edu','Sarah Jenkins','In Progress','+44 7700 900077','Sarah Jenkins'),(70,65,12.5,4,0,2,1,0,5,2,6.5,16,4,300,'2026-06-08 15:45:49.460541',18,'2026-07-26 15:45:49.460541',105,'Not Generated','Oxford University','UI/UX Design with Figma','Lesson 1.2: Typography Guidelines','Module 1: Design Systems','s.jenkins@skillsphere.edu','Sarah Jenkins','In Progress','+44 7700 900077','Sarah Jenkins'),(70,65,12.5,4,0,2,1,0,5,2,6.5,16,4,300,'2026-06-08 15:45:49.460541',19,'2026-07-26 15:45:49.460541',105,'Not Generated','Oxford University','UI/UX Design with Figma','Lesson 1.2: Typography Guidelines','Module 1: Design Systems','s.jenkins@skillsphere.edu','Sarah Jenkins','In Progress','+44 7700 900077','Sarah Jenkins'),(70,65,12.5,4,0,2,1,0,5,2,6.5,16,4,300,'2026-06-08 15:45:49.461550',20,'2026-07-26 15:45:49.461550',105,'Not Generated','Oxford University','UI/UX Design with Figma','Lesson 1.2: Typography Guidelines','Module 1: Design Systems','s.jenkins@skillsphere.edu','Sarah Jenkins','In Progress','+44 7700 900077','Sarah Jenkins');
/*!40000 ALTER TABLE `student_enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_notes`
--

DROP TABLE IF EXISTS `student_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_notes` (
  `course_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `note_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_notes`
--

LOCK TABLES `student_notes` WRITE;
/*!40000 ALTER TABLE `student_notes` DISABLE KEYS */;
INSERT INTO `student_notes` VALUES (1,'2026-08-08 14:37:52.561999',1,3,'2026-08-08 14:37:52.561999',1,'this is my notes');
/*!40000 ALTER TABLE `student_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subscribed_at` datetime(6) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKe65wvbb19pmpo5f1u3w216i5j` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `amount` double NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_date` datetime(6) DEFAULT NULL,
  `course_name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6plyfbm3wy6ds7hongoml5xbk` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'STUDENT',
  `provider` varchar(20) NOT NULL DEFAULT 'LOCAL',
  `google_id` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(1000) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `github_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `portfolio_url` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `google_id` (`google_id`),
  UNIQUE KEY `UKovh8xmu9ac27t18m56gri58i1` (`google_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kartik Saini','kartiksaini@gmail.com','$2a$10$yAFTIqsuK0bha/X4rQmiCOaHfumb3yRtSaxQwWmiS3hgwTMbQLn6q','STUDENT','LOCAL',NULL,'2026-07-10 07:37:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(2,'Harshit Raj','harshitraj@gmail.com','$2a$10$ADCRWEuO1R7wDIlqTyd80unOXmf64/bzDCttbO2EkeJG6WrELFb4m','STUDENT','LOCAL',NULL,'2026-07-10 07:37:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(3,'Kavipriya','kavipriya@gmail.com','$2a$10$mybSFT1w8lV2Cu.pK2XncOYoyEi7ALXJ2OpCJXHK6p/bDHXN9vD7K','STUDENT','LOCAL',NULL,'2026-07-10 07:38:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(4,'Gayathri','gayathri@gmail.com','$2a$10$oQgI0y8MuxTw/lLc76XddOxY.bpK9ztSYZQLsHjF1iNR783dR9DjC','STUDENT','LOCAL',NULL,'2026-07-10 07:38:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(5,'Kartik','kartik@gmail.com','$2a$10$Zmmv8jaTf4JdeQRKQlRad.dFW7WTc2BxkI/IbmN7xv8i6fAj83TMC','STUDENT','LOCAL',NULL,'2026-07-10 14:39:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(6,'kartik','kartik1@gmail.com','$2a$10$bqsLXIFyo5oZRLmOpE3AX.7OAsGwWKX65vtaPzhSwIgGL43969WIC','STUDENT','LOCAL',NULL,'2026-07-10 15:00:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(7,'Bhanu Laldii','bhanu@gmail.com','$2a$10$B2herHBpoD0LHjMfwDTmXu/JPgal1fif68Zx5wE0C9EQbEy4PCwrW','STUDENT','LOCAL',NULL,'2026-07-13 15:12:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(9,'k','test@gmail.com','$2a$10$BbYEjHZnVnNZXKk60Kh4MOY68n5LYMs6XdhQ5Uu4qZaWGUaS86ipe','STUDENT','LOCAL',NULL,'2026-07-16 15:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(10,'test id','test1@gmail.com','$2a$10$nTpmVqpTgHvYdyELJLZyouCiZ0yiDBBMmPTlhTaWYONLLydP1yLqq','STUDENT','LOCAL',NULL,'2026-07-19 15:10:48','Rajasthan','https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&auto=format&fit=crop&q=80','I turn bugs into features. Full-stack dev by day, keyboard collector by night. Let\'s build something cool together.','github.com/profile/test1','linkedin.com/in/test1-profile','9554465565','portfolio.me',_binary '',NULL,NULL,'ACTIVE'),(11,'SkillSphere Admin','admin@skillsphere.com','$2a$10$RHnmBBRUeUAHG6YO2AjA0eoV.gQQZAvl/HKAFc/X5NbB5ZAksbxDe','ADMIN','LOCAL',NULL,'2026-07-19 16:11:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(12,'SkillSphere Admin','admin@gmail.com','$2a$10$8kwppMEV.qAxpNw8QbJ/h.dY1FBHy0DWAOkYIUgy6ROTumQ6Sg7gq','ADMIN','LOCAL',NULL,'2026-07-22 05:52:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(13,'Test User','test44@example.com','$2a$10$HMQAD8Jh4/4jFCxTncr/d.6cUtr29ZDrB6jXTWoQeo3zZ2jYcl2p2','STUDENT','LOCAL',NULL,'2026-07-22 15:51:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(14,'Test User','test55@example.com','$2a$10$swIH10aZi2xpKTZ6wsmGReQbzws1Dbbg.4Zuxr3Ne9tqenEZ9k0fa','STUDENT','LOCAL',NULL,'2026-07-22 15:51:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(15,'Test User2','test88@example.com','$2a$10$lKJRjupb9tywdwWzvUZ8F.8iwjZ0XBiQjG/ln5jk2lW1eGVE0Ya16','STUDENT','LOCAL',NULL,'2026-07-22 15:52:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(16,'Test Student','teststudent99@test.com','$2a$10$mIWlYZ6huylON89BovFHPuPWwmxtTNZmIA/ztaYH.wxXvxBJ.G1vC','STUDENT','LOCAL',NULL,'2026-07-23 05:11:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(17,'Fresh User','freshuser2026@test.com','$2a$10$JzKki4f/zkfSqD102z3w1u8t6Q20xGioB0QIQnBXV3ZrE6EBE9TrS','STUDENT','LOCAL',NULL,'2026-07-23 05:12:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(18,'Pass Test','primuskartik@gmail.com','$2a$10$mjk71pmPnO1hCU9zMNredenih64yCOjulqftuVNPX/1PcYRjOqkTG','STUDENT','LOCAL',NULL,'2026-07-23 06:24:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(19,'Alex Chen','alex_contest@example.com','$2a$10$vXUIpv1TYMFlYaPNGp.mJ.Cji.fyH34jE2iga/dc1LKIEsnGqoF4i','STUDENT','LOCAL',NULL,'2026-07-28 15:44:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(20,'Sarah Jenkins','sarah_contest@example.com','$2a$10$YYdeLEQ79c.UW655DGfHmexwq84LFkcJxBQ.Snz209rPq94M5Hxly','STUDENT','LOCAL',NULL,'2026-07-28 15:44:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(21,'Mike Ross','mike_contest@example.com','$2a$10$4z0MOhVq8kmfUP3rFt5YN.nZ6ruyWLb6aAymstML17M4u8zvLV/SO','STUDENT','LOCAL',NULL,'2026-07-28 15:44:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(22,'Emily Watson','emily_contest@example.com','$2a$10$Iy8F2.nvZPUV3bd2OC.20uIzl3P1qV8Wy/PY.wXCGcrkiHFLXa4aa','STUDENT','LOCAL',NULL,'2026-07-28 15:44:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(23,'David Kim','david_contest@example.com','$2a$10$VCTXr5ADGrEplFqb3Z8dAOeyYCkXLGiIPLrPuU1VCZMd1QAC6.ZlK','STUDENT','LOCAL',NULL,'2026-07-28 15:44:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(24,'Jessica Lee','jessica_contest@example.com','$2a$10$OtDpq2e7z/OxKjRYhbfmmey6sic2tmY8VcmWhO2oKBopq7M89PnOW','STUDENT','LOCAL',NULL,'2026-07-28 15:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(25,'Tom Holland','tom_contest@example.com','$2a$10$cvw2A6ucRKx/RMut4vy9Buw5hGafMsLLuX/PIahuzgWpKLNOWc0J2','STUDENT','LOCAL',NULL,'2026-07-28 15:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(26,'Zendaya','zendaya_contest@example.com','$2a$10$EYvpd.PfvnZlfRhTfAMJBe7SUIn9AwxqTtmEB7jj4wd35s5P.UEHK','STUDENT','LOCAL',NULL,'2026-07-28 15:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(27,'Chris Evans','chris_contest@example.com','$2a$10$45fd9mLRE0Vyc3jbqD.IzeYk7ceyk5r0SzNssIoib2TYojEbPlppu','STUDENT','LOCAL',NULL,'2026-07-28 15:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(28,'Scarlett Johansson','scarlett_contest@example.com','$2a$10$RytZkTmPjGOT.7S4nDlKdegpBVMsq1MDhYIXQuqvgYWNTPFWf8et.','STUDENT','LOCAL',NULL,'2026-07-28 15:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(29,'Robert Downey','robert_contest@example.com','$2a$10$i6WuU7XebjN5eQTv.W.F5uoaziGAyxCeUV485iXN20qbCcw9eGFCq','STUDENT','LOCAL',NULL,'2026-07-28 15:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(30,'Mark Ruffalo','mark_contest@example.com','$2a$10$JkG2QvQZ/qbnytjG4xQvoOdhJcNMJJWnKOFLJR8nb5Lkyid5A6arO','STUDENT','LOCAL',NULL,'2026-07-28 15:44:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE'),(31,'kk','test69@gmail.com','$2a$10$hWzXG0WCauTQv0hZ2RTMq.sVahgA915OAMJ/xt8yXxEsu2oHYil0C','STUDENT','LOCAL',NULL,'2026-08-03 16:19:48','','https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&auto=format&fit=crop&q=80','','','','','',_binary '','Computer Science','3','ACTIVE'),(32,'Student','gayatrisenthamarai@gmail.com','$2a$10$Ry8HnIspAJxLKVw.AoMwR.kPoGJuHkwesjeqaWb.Pcj30Nva8DVSS','STUDENT','LOCAL',NULL,'2026-08-07 14:36:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '',NULL,NULL,'ACTIVE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `course_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `saved_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKlclcbuwpdp9s40mu8ayo8pv0l` (`user_id`,`course_id`),
  KEY `FKkc0tlqnbib2jgbshqrwcjag4g` (`course_id`),
  CONSTRAINT `FK330pyw2el06fn5g28ypyljt16` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKkc0tlqnbib2jgbshqrwcjag4g` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 21:13:59
