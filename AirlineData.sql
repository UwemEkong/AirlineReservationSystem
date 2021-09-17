CREATE DATABASE `Software` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `Admin` (
  `userID` int NOT NULL,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `salary` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `suerName_UNIQUE` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Flight` (
  `flightID` int NOT NULL,
  `AvailableSeats` int NOT NULL,
  `Price` double NOT NULL,
  `DepartureCity` varchar(45) NOT NULL,
  `ArrivalCity` varchar(45) NOT NULL,
  `DepartureTime` varchar(45) NOT NULL,
  `ArrivalTime` varchar(45) NOT NULL,
  `FlightCapacity` int NOT NULL,
  PRIMARY KEY (`flightID`),
  UNIQUE KEY `flightID_UNIQUE` (`flightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Member` (
  `userID` varchar(45) NOT NULL,
  `paymentInfo` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Payment` (
  `tripID` int NOT NULL,
  `paymentInfo` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`tripID`),
  UNIQUE KEY `tripID_UNIQUE` (`tripID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Trip` (
  `tripID` int NOT NULL,
  `FlightList` varchar(90) NOT NULL,
  `userID` int NOT NULL,
  PRIMARY KEY (`tripID`),
  UNIQUE KEY `tripID_UNIQUE` (`tripID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;