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

INSERT INTO User VALUES ('1', '**** **** **** 1234', 'adamLikesFlying1!','Adam', 'Chap', 'adam@fly.com', 'AdamFly', 'MEMBER');
INSERT INTO User VALUES ('2', '**** **** **** 1235', 'uwemhatesFlying1!','Uwem', 'Ekong', 'uwem@fly.com', 'UwemFly', 'MEMBER');
INSERT INTO User VALUES ('3', '**** **** **** 4234', 'mirskyLikesFlying1!','Dr.', 'Mirsky', 'mirsky@fly.com', 'MirskyFly', 'MEMBER');
INSERT INTO User VALUES ('4', '**** **** **** 7432', 'nirajLikesFlying1!','Niraj', 'Patel', 'niraj@fly.com', 'NirajFly', 'MEMBER');
INSERT INTO User VALUES ('5', '**** **** **** 5497', 'gilhatesFlying1!','Gil', 'Gurkirat', 'gil@fly.com', 'GilFly', 'MEMBER');
INSERT INTO User VALUES ('6', '**** **** **** 5498', 'flyingAdmin!','Sally', 'Airplane', 'sally@fly.com', 'SallyAirportLady', 'ADMIN');

/* Flights on 11/01/2021
*/
INSERT INTO Flight VALUES ('1', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('2', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('3', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('4', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('5', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('6', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('7', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('8', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('9', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('10', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('11', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('12', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('13', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('14', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('15', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('16', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('17', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('18', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('19', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('20', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('21', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('22', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('23', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('24', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('25', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('26', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('27', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('28', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('29', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('30', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('31', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('32', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('33', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('34', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('35', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('36', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('37', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('38', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('39', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('40', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('41', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('42', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('43', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('44', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('45', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('46', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('47', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('48', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('49', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('50', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('51', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('52', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('53', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('54', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('55', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('56', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('57', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('58', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('59', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('60', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('61', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('62', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('63', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('64', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('65', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('66', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('67', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('68', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('69', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('70', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('71', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('72', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('73', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('74', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('75', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('76', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('77', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('78', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('79', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('80', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('81', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('82', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('83', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('84', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('85', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('86', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('87', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('88', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('89', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('90', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('91', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('92', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('93', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('94', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('95', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('96', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('97', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('98', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('99', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('100', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('101', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('102', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('103', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('104', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('105', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('106', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('107', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('108', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('109', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('110', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/01/2021 - 2:00PM'
                          ,'11/01/2021 - 7:00PM'
                          ,'150');

/* Randomize Prices (200 - 500)
*/
UPDATE flight
SET Price = RAND()*(300)+200
WHERE flightID > 0;
UPDATE flight
SET Price = TRUNCATE(Price, 0)
WHERE flightID > 0;

/* Old Flights Needed To Not Break Testing
*/
INSERT INTO Flight VALUES ('10001', '147', '150.0', 'Chicago, ORD', 'Miami, MIA','9/18/2021 - 10:45AM', '9/18/2021 - 3:30PM','150');
INSERT INTO Flight VALUES ('10002', '147', '150.0', 'Chicago, MDW', 'Los Angeles, LAX','9/18/2021 - 10:45AM', '9/18/2021 - 12:50PM','150');
INSERT INTO Flight VALUES ('10003', '147', '200.0', 'Chicago, MDW', 'Las Vegas, LAS','9/20/2021 - 11:45AM', '9/20/2021 - 1:45PM','150');
INSERT INTO Flight VALUES ('10004', '147', '185.0', 'Los Angeles, LAX', 'Chicago, ORD','9/21/2021 - 7:00AM', '9/18/2021 - 11:00PM','150');
INSERT INTO Flight VALUES ('10005', '147', '150.0', 'Chicago, ORD', 'Miami, MIA','9/18/2021 - 10:45AM', '9/18/2021 - 3:30PM','200');