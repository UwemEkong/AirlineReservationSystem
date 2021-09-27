CREATE SCHEMA IF NOT EXISTS `Software` DEFAULT CHARACTER SET utf8 ;
USE `Software` ;
DROP DATABASE IF EXISTS `Software`;
CREATE DATABASE IF NOT EXISTS `Software`;
USE `Software`;
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
  `userID` int NOT NULL AUTO_INCREMENT,
  `paymentInfo` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
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
INSERT INTO Flight VALUES ('001', '150', '150.0', 'Chicago, ORD', 'Miami, MIA','9/18/2021 - 10:45AM', '9/18/2021 - 3:30PM','150');
INSERT INTO Flight VALUES ('002', '150', '150.0', 'Chicago, MDW', 'Los Angeles, LAX','9/18/2021 - 10:45AM', '9/18/2021 - 12:50PM','150');
INSERT INTO Flight VALUES ('003', '150', '200.0', 'Chicago, MDW', 'Las Vegas, LAS','9/20/2021 - 11:45AM', '9/20/2021 - 1:45PM','150');
INSERT INTO Flight VALUES ('004', '150', '185.0', 'Los Angeles, LAX', 'Chicago, ORD','9/21/2021 - 7:00AM', '9/18/2021 - 11:00PM','150');
INSERT INTO Flight VALUES ('005', '150', '150.0', 'Chicago, ORD', 'Miami, MIA','9/18/2021 - 10:45AM', '9/18/2021 - 3:30PM','200');
INSERT INTO Member VALUES ('001', '**** **** **** 1234', 'adamLikesFlying1!','Adam', 'Chap', 'adam@fly.com', 'AdamFly');
INSERT INTO Member VALUES ('002', '**** **** **** 1235', 'uwemhatesFlying1!','Uwem', 'Ekong', 'uwem@fly.com', 'UwemFly');
INSERT INTO Member VALUES ('003', '**** **** **** 4234', 'mirskyLikesFlying1!','Dr.', 'Mirsky', 'mirsky@fly.com', 'MirskyFly');
INSERT INTO Admin VALUES ('1', 'SallyAirportLady', 'flyingAdmin!','$60,000.', 'Sally', 'Airplane');