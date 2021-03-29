
PRAGMA foreign_keys = ON;


DROP TABLE IF EXISTS Client;
CREATE TABLE Client(
    ClientID INTEGER PRIMARY KEY AUTOINCREMENT,
    NIF INTEGER UNIQUE,
    ClientName CHAR(30) NOT NULL,
    BirthDate DATE,
    CPoints INTEGER CONSTRAINT CPointsMin CHECK(CPoints >= 0)
);

DROP TABLE IF EXISTS Ticket;
CREATE TABLE Ticket(
    TicketID INTEGER PRIMARY KEY AUTOINCREMENT,
    Type CHAR(30) UNIQUE NOT NULL,
    TPrice REAL NOT NULL CONSTRAINT TPriceMin CHECK (TPrice >= 0.0),
    TPoints INTEGER NOT NULL CONSTRAINT TPointsMin CHECK (TPoints >= 0.0)
);

DROP TABLE IF EXISTS TicketEntry;
CREATE TABLE TicketEntry(
    TDate DATE NOT NULL,
    TEPricePaid REAL NOT NULL CONSTRAINT TEPricePaidMin CHECK (TEPricePaid >= 0.0),
    ClientID INTEGER NOT NULL REFERENCES Client(ClientID),
    TicketID INTEGER NOT NULL REFERENCES Ticket(TicketID)   
);

DROP TABLE IF EXISTS Activity;
CREATE TABLE Activity(
    ActivityID INTEGER PRIMARY KEY AUTOINCREMENT,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    ActivityTypeID INTEGER NOT NULL REFERENCES ActivityType(ActivityTypeID),
    CONSTRAINT AStartBefEnd CHECK (StartTime < EndTime)
);

DROP TABLE IF EXISTS Participates;
CREATE TABLE Participates(
    AnimalID INTEGER NOT NULL REFERENCES Animal(AnimalID),
    ActivityID INTEGER NOT NULL REFERENCES Activity(ActivityID)   
);

DROP TABLE IF EXISTS ActivityTicket;
CREATE TABLE ActivityTicket(
    ActivityID INTEGER NOT NULL REFERENCES Activity(ActivityID),
    ClientID INTEGER NOT NULL REFERENCES Client(ClientID)   
);

DROP TABLE IF EXISTS ActivityType;
CREATE TABLE ActivityType(
    ActivityTypeID INTEGER PRIMARY KEY AUTOINCREMENT,
    AtName CHAR(30) UNIQUE,
    AtPrice REAL NOT NULL CONSTRAINT AtPriceMin CHECK(AtPrice >= 0),
    Duration INTEGER NOT NULL CONSTRAINT DurationMin CHECK(Duration >= 0)
);

DROP TABLE IF EXISTS ActivityZone;
CREATE TABLE ActivityZone(
    ActivityZoneID INTEGER PRIMARY KEY AUTOINCREMENT,
    AtZName TEXT
);

DROP TABLE IF EXISTS Located;
CREATE TABLE Located(
    ActivityTypeID  INTEGER NOT NULL REFERENCES ActivityType(ActivityTypeID),
    ActivityZoneID INTEGER NOT NULL REFERENCES ActivityZone(ActivityZoneID),
    PRIMARY KEY(ActivityTypeID,ActivityZoneID)
);

DROP TABLE IF EXISTS Habitat;
CREATE TABLE Habitat(
    Habitat INTEGER PRIMARY KEY AUTOINCREMENT,
    HName TEXT,
    HOpeningTime TIME,
    HClosingTime TIME,
    ZoneID INTEGER NOT NULL REFERENCES Zone(ZoneID),
    CONSTRAINT HOpenBefClose CHECK (ZOpeningTime < ZClosingTime)
);

DROP TABLE IF EXISTS Zone;
CREATE TABLE Zone(
    ZoneID INTEGER PRIMARY KEY AUTOINCREMENT,
    ZName CHAR(30) UNIQUE,
    ZOpeningTime TIME,
    ZClosingTime TIME,
    CONSTRAINT ZOpenBefClsoe CHECK (ZOpeningTime < ZClosingTime)
);



DROP TABLE IF EXISTS Animal;
CREATE TABLE Animal(
    AnimalID INTEGER PRIMARY KEY AUTOINCREMENT,
    AnimalName CHAR(30),
    BirthDate DATE,
    AWeight REAL CONSTRAINT AWeightMin CHECK (AWeight >= 0.0),
    AHeight REAL CONSTRAINT AHeightMin CHECK (AHeight >= 0.0),
    ALength REAL CONSTRAINT ALengthMin CHECK (ALength >= 0.0),
    SpeciesID INTEGER NOT NULL  REFERENCES Species(SpeciesID)
);

DROP TABLE IF EXISTS Species;
CREATE TABLE Species(
    SpeciesID INTEGER PRIMARY KEY AUTOINCREMENT,
    CommonName CHAR(30) NOT NULL ,
    ScientificName  CHAR(30) NOT NULL UNIQUE,
    AverageWeight REAL CONSTRAINT SAvWeightMin CHECK (AverageWeight >= 0.0),
    AverageHeight REAL CONSTRAINT SAvHeightMin CHECK (AverageHeight >= 0.0),
    AverageLength REAL CONSTRAINT SAvLengthMin CHECK (AverageLength >= 0.0),
    NumberCubs INTEGER CONSTRAINT NumberCubsMin CHECK (NumberCubs >= 0),
    Gestation INTEGER CONSTRAINT GestationMin CHECK (Gestation >= 0),
    SexualMaturity INTEGER CONSTRAINT SexualMatMin CHECK (SexualMaturity >= 0),
    HabitatID INTEGER NOT NULL REFERENCES Habitat(HabitatID),
    SocialLifeID INTEGER REFERENCES SocialLife(SocialLifeID),
    DietID INTEGER REFERENCES Diet(DietID),
    ActivityID INTEGER REFERENCES Activity(ActivityID),
    ReproductionID INTEGER REFERENCES Reproduction(ReproductionID),
    AnimalGroupID INTEGER NOT NULL REFERENCES AnimalGroup(AnimalGroupID)
);

DROP TABLE IF EXISTS AnimalGroup;
CREATE TABLE AnimalGroup(
    AnimalGroupID INTEGER PRIMARY KEY AUTOINCREMENT,
    AGroupName CHAR(30) NOT NULL
);

DROP TABLE IF EXISTS SocialLife;
CREATE TABLE SocialLife(
    SocialLifeID INTEGER PRIMARY KEY AUTOINCREMENT,
    SLifeName CHAR(30) NOT NULL
);


DROP TABLE IF EXISTS Diet;
CREATE TABLE Diet(
    DietID INTEGER PRIMARY KEY AUTOINCREMENT,
    DietName CHAR(30) NOT NULL
);

DROP TABLE IF EXISTS Reproduction;
CREATE TABLE Reproduction(
    ReproductionID INTEGER PRIMARY KEY AUTOINCREMENT,
    RepName CHAR(30) NOT NULL
);

DROP TABLE IF EXISTS Activeness;
CREATE TABLE Activeness (
    ActivenessID INTEGER PRIMARY KEY AUTOINCREMENT,
    ActivenessName CHAR(30) NOT NULL
);