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

/* Flights on 11/04/2021
*/
INSERT INTO Flight VALUES ('111', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('112', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('113', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('114', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('115', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('116', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('117', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('118', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('119', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('120', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('121', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('122', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('123', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('124', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('125', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('126', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('127', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('128', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('129', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('130', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('131', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('132', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('133', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('134', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('135', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('136', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('137', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('138', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('139', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('140', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('141', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('142', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('143', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('144', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('145', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('146', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('147', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('148', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('149', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('150', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('151', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('152', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('153', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('154', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('155', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('156', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('157', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('158', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('159', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('160', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('161', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('162', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('163', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('164', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('165', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('166', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('167', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('168', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('169', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('170', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('171', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('172', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('173', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('174', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('175', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('176', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('177', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('178', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('179', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('180', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('181', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('182', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('183', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('184', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('185', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('186', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('187', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('188', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('189', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('190', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('191', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('192', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('193', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('194', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('195', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('196', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('197', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('198', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('199', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('200', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('201', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('202', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('203', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('204', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('205', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('206', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('207', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('208', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('209', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('210', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('211', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('212', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('213', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('214', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('215', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('216', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('217', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('218', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('219', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('220', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/04/2021 - 2:00PM'
                          ,'11/04/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/07/2021
*/
INSERT INTO Flight VALUES ('221', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('222', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('223', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('224', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('225', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('226', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('227', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('228', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('229', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('230', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('231', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('232', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('233', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('234', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('235', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('236', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('237', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('238', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('239', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('240', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('241', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('242', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('243', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('244', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('245', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('246', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('247', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('248', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('249', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('250', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('251', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('252', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('253', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('254', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('255', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('256', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('257', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('258', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('259', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('260', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('261', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('262', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('263', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('264', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('265', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('266', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('267', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('268', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('269', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('270', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('271', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('272', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('273', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('274', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('275', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('276', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('277', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('278', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('279', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('280', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('281', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('282', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('283', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('284', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('285', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('286', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('287', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('288', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('289', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('290', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('291', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('292', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('293', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('294', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('295', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('296', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('297', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('298', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('299', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('300', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('301', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('302', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('303', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('304', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('305', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('306', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('307', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('308', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('309', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('310', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('311', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('312', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('313', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('314', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('315', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('316', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('317', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('318', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('319', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('320', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('321', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('322', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('323', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('324', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('325', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('326', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('327', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('328', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('329', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('330', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/07/2021 - 2:00PM'
                          ,'11/07/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/10/2021
*/
INSERT INTO Flight VALUES ('331', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('332', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('333', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('334', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('335', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('336', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('337', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('338', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('339', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('340', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('341', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('342', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('343', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('344', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('345', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('346', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('347', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('348', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('349', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('350', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('351', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('352', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('353', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('354', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('355', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('356', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('357', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('358', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('359', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('360', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('361', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('362', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('363', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('364', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('365', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('366', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('367', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('368', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('369', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('370', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('371', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('372', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('373', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('374', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('375', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('376', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('377', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('378', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('379', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('380', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('381', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('382', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('383', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('384', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('385', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('386', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('387', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('388', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('389', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('390', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('391', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('392', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('393', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('394', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('395', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('396', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('397', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('398', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('399', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('400', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('401', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('402', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('403', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('404', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('405', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('406', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('407', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('408', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('409', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('410', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('411', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('412', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('413', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('414', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('415', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('416', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('417', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('418', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('419', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('420', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('421', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('422', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('423', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('424', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('425', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('426', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('427', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('428', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('429', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('430', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('431', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('432', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('433', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('434', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('435', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('436', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('437', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('438', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('439', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('440', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/10/2021 - 2:00PM'
                          ,'11/10/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/13/2021
*/
INSERT INTO Flight VALUES ('441', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('442', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('443', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('444', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('445', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('446', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('447', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('448', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('449', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('450', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('451', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('452', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('453', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('454', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('455', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('456', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('457', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('458', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('459', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('460', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('461', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('462', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('463', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('464', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('465', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('466', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('467', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('468', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('469', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('470', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('471', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('472', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('473', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('474', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('475', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('476', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('477', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('478', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('479', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('480', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('481', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('482', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('483', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('484', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('485', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('486', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('487', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('488', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('489', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('490', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('491', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('492', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('493', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('494', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('495', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('496', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('497', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('498', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('499', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('500', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('501', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('502', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('503', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('504', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('505', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('506', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('507', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('508', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('509', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('510', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('511', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('512', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('513', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('514', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('515', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('516', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('517', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('518', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('519', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('520', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('521', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('522', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('523', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('524', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('525', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('526', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('527', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('528', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('529', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('530', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('531', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('532', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('533', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('534', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('535', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('536', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('537', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('538', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('539', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('540', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('541', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('542', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('543', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('544', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('545', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('546', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('547', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('548', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('549', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('550', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/13/2021 - 2:00PM'
                          ,'11/13/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/16/2021
*/
INSERT INTO Flight VALUES ('551', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('552', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('553', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('554', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('555', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('556', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('557', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('558', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('559', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('560', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('561', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('562', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('563', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('564', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('565', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('566', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('567', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('568', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('569', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('570', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('571', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('572', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('573', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('574', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('575', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('576', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('577', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('578', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('579', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('580', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('581', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('582', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('583', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('584', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('585', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('586', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('587', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('588', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('589', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('590', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('591', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('592', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('593', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('594', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('595', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('596', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('597', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('598', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('599', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('600', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('601', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('602', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('603', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('604', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('605', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('606', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('607', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('608', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('609', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('610', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('611', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('612', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('613', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('614', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('615', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('616', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('617', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('618', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('619', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('620', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('621', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('622', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('623', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('624', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('625', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('626', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('627', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('628', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('629', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('630', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('631', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('632', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('633', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('634', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('635', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('636', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('637', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('638', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('639', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('640', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('641', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('642', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('643', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('644', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('645', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('646', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('647', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('648', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('649', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('650', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('651', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('652', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('653', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('654', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('655', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('656', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('657', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('658', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('659', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('660', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/16/2021 - 2:00PM'
                          ,'11/16/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/19/2021
*/
INSERT INTO Flight VALUES ('661', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('662', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('663', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('664', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('665', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('666', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('667', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('668', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('669', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('670', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('671', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('672', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('673', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('674', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('675', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('676', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('677', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('678', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('679', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('680', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('681', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('682', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('683', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('684', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('685', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('686', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('687', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('688', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('689', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('690', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('691', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('692', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('693', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('694', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('695', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('696', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('697', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('698', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('699', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('700', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('701', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('702', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('703', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('704', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('705', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('706', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('707', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('708', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('709', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('710', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('711', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('712', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('713', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('714', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('715', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('716', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('717', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('718', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('719', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('720', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('721', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('722', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('723', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('724', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('725', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('726', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('727', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('728', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('729', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('730', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('731', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('732', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('733', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('734', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('735', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('736', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('737', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('738', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('739', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('740', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('741', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('742', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('743', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('744', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('745', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('746', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('747', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('748', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('749', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('750', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('751', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('752', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('753', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('754', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('755', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('756', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('757', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('758', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('759', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('760', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('761', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('762', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('763', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('764', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('765', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('766', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('767', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('768', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('769', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('770', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/19/2021 - 2:00PM'
                          ,'11/19/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/22/2021
*/
INSERT INTO Flight VALUES ('771', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('772', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('773', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('774', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('775', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('776', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('777', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('778', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('779', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('780', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('781', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('782', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('783', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('784', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('785', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('786', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('787', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('788', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('789', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('790', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('791', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('792', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('793', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('794', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('795', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('796', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('797', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('798', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('799', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('800', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('801', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('802', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('803', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('804', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('805', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('806', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('807', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('808', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('809', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('810', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('811', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('812', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('813', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('814', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('815', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('816', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('817', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('818', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('819', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('820', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('821', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('822', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('823', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('824', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('825', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('826', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('827', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('828', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('829', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('830', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('831', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('832', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('833', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('834', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('835', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('836', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('837', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('838', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('839', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('840', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('841', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('842', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('843', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('844', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('845', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('846', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('847', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('848', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('849', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('850', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('851', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('852', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('853', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('854', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('855', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('856', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('857', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('858', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('859', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('860', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('861', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('862', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('863', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('864', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('865', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('866', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('867', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('868', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('869', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('870', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('871', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('872', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('873', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('874', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('875', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('876', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('877', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('878', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('879', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('880', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/22/2021 - 2:00PM'
                          ,'11/22/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/25/2021
*/
INSERT INTO Flight VALUES ('881', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('882', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('883', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('884', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('885', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('886', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('887', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('888', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('889', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('890', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('891', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('892', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('893', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('894', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('895', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('896', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('897', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('898', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('899', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('900', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('901', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('902', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('903', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('904', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('905', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('906', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('907', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('908', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('909', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('910', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('911', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('912', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('913', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('914', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('915', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('916', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('917', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('918', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('919', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('920', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('921', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('922', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('923', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('924', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('925', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('926', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('927', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('928', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('929', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('930', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('931', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('932', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('933', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('934', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('935', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('936', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('937', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('938', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('939', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('940', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('941', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('942', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('943', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('944', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('945', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('946', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('947', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('948', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('949', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('950', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('951', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('952', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('953', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('954', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('955', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('956', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('957', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('958', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('959', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('960', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('961', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('962', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('963', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('964', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('965', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('966', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('967', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('968', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('969', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('970', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('971', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('972', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('973', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('974', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('975', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('976', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('977', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('978', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('979', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('980', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('981', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('982', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('983', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('984', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('985', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('986', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('987', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('988', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('989', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('990', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/25/2021 - 2:00PM'
                          ,'11/25/2021 - 7:00PM'
                          ,'150');

/* Flights on 11/28/2021
*/
INSERT INTO Flight VALUES ('991', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('992', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('993', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('994', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('995', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('996', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('997', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('998', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('999', '150', '200.0',
                           'Atlanta, ATL'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1000', '150', '200.0',
                           'Atlanta, ATL'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1001', '150', '200.0',
                           'Dallas, DFW'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1002', '150', '200.0',
                           'Dallas, DFW'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1003', '150', '200.0',
                           'Dallas, DFW'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1004', '150', '200.0',
                           'Dallas, DFW'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1005', '150', '200.0',
                           'Dallas, DFW'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1006', '150', '200.0',
                           'Dallas, DFW'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1007', '150', '200.0',
                           'Dallas, DFW'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1008', '150', '200.0',
                           'Dallas, DFW'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1009', '150', '200.0',
                           'Dallas, DFW'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1010', '150', '200.0',
                           'Dallas, DFW'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1011', '150', '200.0',
                           'Denver, DEN'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1012', '150', '200.0',
                           'Denver, DEN'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1013', '150', '200.0',
                           'Denver, DEN'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1014', '150', '200.0',
                           'Denver, DEN'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1015', '150', '200.0',
                           'Denver, DEN'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1016', '150', '200.0',
                           'Denver, DEN'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1017', '150', '200.0',
                           'Denver, DEN'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1018', '150', '200.0',
                           'Denver, DEN'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1019', '150', '200.0',
                           'Denver, DEN'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1020', '150', '200.0',
                           'Denver, DEN'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1021', '150', '200.0',
                           'Chicago, ORD'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1022', '150', '200.0',
                           'Chicago, ORD'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1023', '150', '200.0',
                           'Chicago, ORD'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1024', '150', '200.0',
                           'Chicago, ORD'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1025', '150', '200.0',
                           'Chicago, ORD'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1026', '150', '200.0',
                           'Chicago, ORD'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1027', '150', '200.0',
                           'Chicago, ORD'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1028', '150', '200.0',
                           'Chicago, ORD'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1029', '150', '200.0',
                           'Chicago, ORD'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1030', '150', '200.0',
                           'Chicago, ORD'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1031', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1032', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1033', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1034', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1035', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1036', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1037', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1038', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1039', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1040', '150', '200.0',
                           'Los Angeles, LAX'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1041', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1042', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1043', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1044', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1045', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1046', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1047', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1048', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1049', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1050', '150', '200.0',
                           'Las Vegas, LAS'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1051', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1052', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1053', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1054', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1055', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1056', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1057', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1058', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1059', '150', '200.0',
                           'Phoenix, PHX'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1060', '150', '200.0',
                           'Phoenix, PHX'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1061', '150', '200.0',
                           'Orlando, MCO'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1062', '150', '200.0',
                           'Orlando, MCO'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1063', '150', '200.0',
                           'Orlando, MCO'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1064', '150', '200.0',
                           'Orlando, MCO'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1065', '150', '200.0',
                           'Orlando, MCO'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1066', '150', '200.0',
                           'Orlando, MCO'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1067', '150', '200.0',
                           'Orlando, MCO'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1068', '150', '200.0',
                           'Orlando, MCO'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1069', '150', '200.0',
                           'Orlando, MCO'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1070', '150', '200.0',
                           'Orlando, MCO'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1071', '150', '200.0',
                           'Seattle, SEA'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1072', '150', '200.0',
                           'Seattle, SEA'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1073', '150', '200.0',
                           'Seattle, SEA'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1074', '150', '200.0',
                           'Seattle, SEA'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1075', '150', '200.0',
                           'Seattle, SEA'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1076', '150', '200.0',
                           'Seattle, SEA'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1077', '150', '200.0',
                           'Seattle, SEA'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1078', '150', '200.0',
                           'Seattle, SEA'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1079', '150', '200.0',
                           'Seattle, SEA'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1080', '150', '200.0',
                           'Seattle, SEA'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1081', '150', '200.0',
                           'Miami, MIA'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1082', '150', '200.0',
                           'Miami, MIA'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1083', '150', '200.0',
                           'Miami, MIA'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1084', '150', '200.0',
                           'Miami, MIA'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1085', '150', '200.0',
                           'Miami, MIA'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1086', '150', '200.0',
                           'Miami, MIA'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1087', '150', '200.0',
                           'Miami, MIA'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1088', '150', '200.0',
                           'Miami, MIA'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1089', '150', '200.0',
                           'Miami, MIA'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1090', '150', '200.0',
                           'Miami, MIA'
                          ,'San Francisco, SFO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1091', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Atlanta, ATL'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1092', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Dallas, DFW'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1093', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Denver, DEN'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1094', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Chicago, ORD'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1095', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Los Angeles, LAX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1096', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Las Vegas, LAS'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1097', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Phoenix, PHX'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1098', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Orlando, MCO'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1099', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Seattle, SEA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
                          ,'150');
INSERT INTO Flight VALUES ('1100', '150', '200.0',
                           'San Francisco, SFO'
                          ,'Miami, MIA'
                          ,'11/28/2021 - 2:00PM'
                          ,'11/28/2021 - 7:00PM'
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