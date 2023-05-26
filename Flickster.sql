CREATE DATABASE `flickster` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `review` (
  `reviewID` int NOT NULL,
  `reviewedDate` date DEFAULT NULL,
  `movie` varchar(45) DEFAULT NULL,
  `review` varchar(200) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `userID` int DEFAULT NULL,
  PRIMARY KEY (`reviewID`),
  KEY `FK_UserName` (`userID`),
  CONSTRAINT `FK_UserName` FOREIGN KEY (`userID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
