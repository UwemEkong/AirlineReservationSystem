CREATE SCHEMA IF NOT EXISTS `Software` DEFAULT CHARACTER SET utf8 ;
USE `Software` ;
DROP DATABASE IF EXISTS `Software`;
CREATE DATABASE IF NOT EXISTS `Software`;
USE `Software`;
CREATE TABLE `Flight` (
                          `flightID` int NOT NULL AUTO_INCREMENT,
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
CREATE TABLE `User` (
                          `userID` int NOT NULL AUTO_INCREMENT,
                          `paymentInfo` varchar(45) NOT NULL,
                          `password` varchar(45) NOT NULL,
                          `firstName` varchar(45) NOT NULL,
                          `lastName` varchar(45) NOT NULL,
                          `email` varchar(45) NOT NULL,
                          `userName` varchar(45) NOT NULL,
                          `userType` varchar(45) NOT NULL,
                          PRIMARY KEY (`userID`),
                          UNIQUE KEY `userID_UNIQUE` (`userID`),
                          UNIQUE KEY `userName_UNIQUE` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Payment` (
                           `tripID` int NOT NULL AUTO_INCREMENT,
                           `paymentInfo` varchar(45) NOT NULL,
                           `status` varchar(45) NOT NULL,
                           PRIMARY KEY (`tripID`),
                           UNIQUE KEY `tripID_UNIQUE` (`tripID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `Trip` (
                        `tripID` int NOT NULL AUTO_INCREMENT,
                        `flightID` int NOT NULL,
                        `userID` int NOT NULL,
                        PRIMARY KEY (`tripID`),
                        UNIQUE KEY `tripID_UNIQUE` (`tripID`),
                        FOREIGN KEY (flightID) REFERENCES Flight(flightID),
                        FOREIGN KEY (userID) REFERENCES User(userID))
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE Trip ADD UNIQUE `unique_index`(`flightID`, `userID`);

INSERT INTO Flight VALUES ('1', '147', '150.0', 'Chicago, ORD', 'Miami, MIA','9/18/2021 - 10:45AM', '9/18/2021 - 3:30PM','150');
INSERT INTO Flight VALUES ('2', '147', '150.0', 'Chicago, MDW', 'Los Angeles, LAX','9/18/2021 - 10:45AM', '9/18/2021 - 12:50PM','150');
INSERT INTO Flight VALUES ('3', '147', '200.0', 'Chicago, MDW', 'Las Vegas, LAS','9/20/2021 - 11:45AM', '9/20/2021 - 1:45PM','150');
INSERT INTO Flight VALUES ('4', '147', '185.0', 'Los Angeles, LAX', 'Chicago, ORD','9/21/2021 - 7:00AM', '9/18/2021 - 11:00PM','150');
INSERT INTO Flight VALUES ('5', '147', '150.0', 'Chicago, ORD', 'Miami, MIA','9/18/2021 - 10:45AM', '9/18/2021 - 3:30PM','200');

INSERT INTO User VALUES ('1', '**** **** **** 1234', '-1608273556','Adam', 'Chap', 'adam@fly.com', 'AdamFly', 'MEMBER');
INSERT INTO User VALUES ('2', '**** **** **** 1235', '662437374','Uwem', 'Ekong', 'uwem@fly.com', 'UwemFly', 'MEMBER');
INSERT INTO User VALUES ('3', '**** **** **** 4234', '2102421360','Dr.', 'Mirsky', 'mirsky@fly.com', 'MirskyFly', 'MEMBER');
INSERT INTO User VALUES ('4', '**** **** **** 7432', '1283624987','Niraj', 'Patel', 'niraj@fly.com', 'NirajFly', 'MEMBER');
INSERT INTO User VALUES ('5', '**** **** **** 5497', '-1236563714','Gil', 'Gurkirat', 'gil@fly.com', 'GilFly', 'MEMBER');
INSERT INTO User VALUES ('6', '**** **** **** 5498', '-2012365279','Sally', 'Airplane', 'sally@fly.com', 'SallyAirportLady', 'ADMIN');

# PASSWORDS
# adamLikesFlying1!
# uwemhatesFlying1!
# mirskyLikesFlying1!
# nirajLikesFlying1!
# gilhatesFlying1!
# flyingAdmin!