
PRAGMA foreign_keys = ON;


DROP TABLE IF EXISTS Client1;
CREATE TABLE Client1(
    ClientID INTEGER PRIMARY KEY,
    NIF INTEGER,
    Points INTEGER
);


DROP TABLE IF EXISTS Client2;
CREATE TABLE Client2(
    NIF INTEGER PRIMARY KEY,
    ClientName CHAR(30),
    BirthDate DATE
);

DROP TABLE IF EXISTS Ticket1;
CREATE TABLE Ticket1(
    Type CHAR(30) PRIMARY KEY,
    Price REAL,
    Points INTEGER
);

DROP TABLE IF EXISTS Ticket2;
CREATE TABLE Ticket2(
    TicketID INTEGER PRIMARY KEY,
    Type CHAR(30)
);

DROP TABLE IF EXISTS TicketEntry;
CREATE TABLE TicketEntry(
    TicketEntryID INTEGER PRIMARY KEY,
    TDate DATE,
    PricePaid REAL,
    ClientID INTEGER REFERENCES Client1(ClientID),
    TicketID INTEGER REFERENCES Ticket2(TicketID)   
);

DROP TABLE IF EXISTS Activity;
CREATE TABLE Activity(
    ActivityID INTEGER PRIMARY KEY,
    StartTime DATE,
    EndTime DATE,
    AtDate DATE,
    ActivityTypeID INTEGER REFERENCES ActivityType(ActivityTypeID)
);

DROP TABLE IF EXISTS Participates;
CREATE TABLE Participates(
    AnimalID INTEGER REFERENCES Animal(AnimalID),
    ActivityID INTEGER REFERENCES Activity(ActivityID)   
);

DROP TABLE IF EXISTS ActivityTicket;
CREATE TABLE ActivityTicket(
    ActivityTicketID INTEGER PRIMARY KEY,
    ActivityID INTEGER REFERENCES Activity(ActivityID)   ,
    ClientID INTEGER REFERENCES Client(ClientID)   
);

DROP TABLE IF EXISTS ActivityType1;
CREATE TABLE ActivityType1(
    ActivityTypeID INTEGER PRIMARY KEY,
    AtName CHAR(30) REFERENCES ActivityType2(AtName)
);

DROP TABLE IF EXISTS ActivityType2;
CREATE TABLE ActivityType2(
    AtName INTEGER PRIMARY KEY,
    AtPrice REAL,
    Duration INTEGER
);



--Check later ( ActivityZone1 and  ActivityZone2)
DROP TABLE IF EXISTS ActivityZone;
CREATE TABLE ActivityZone(
    ActivityZoneID INTEGER PRIMARY KEY,
    AtZName INTEGER
);

DROP TABLE IF EXISTS Located;
CREATE TABLE Located(
    ActivityTypeID INTEGER REFERENCES ActivityType(ActivityTypeID),
    ActivityZoneID INTEGER REFERENCES ActivityZone(ActivityZoneID),
    PRIMARY KEY(ActivityTypeID,ActivityZoneID)
);

DROP TABLE IF EXISTS Habitat;
CREATE TABLE Habitat(
    Habitat INTEGER PRIMARY KEY,
    HName TEXT,
    OpeningTime DATE,
    ClosingTime DATE,
    ZoneID INTEGER REFERENCES Zone(ZoneID)
);

DROP TABLE IF EXISTS Zone1;
CREATE TABLE Zone1(
    ZName CHAR(30) PRIMARY KEY,
    OpeningTime DATE,
    ClosingTime DATE
);

DROP TABLE IF EXISTS Zone2;
CREATE TABLE Zone2(
    ZoneID INTEGER PRIMARY KEY,
    ZName CHAR(30) REFERENCES Zone1(ZName)
);



DROP TABLE IF EXISTS Animal;
CREATE TABLE Animal(
    AnimalID INTEGER PRIMARY KEY,
    AnimalName CHAR(30),
    BirthDate DATE,
    AWeight REAL CHECK (AWeight >= 0.0),
    AHeight REAL CHECK (AHeight >= 0.0),
    ALength REAL CHECK (ALength >= 0.0),
    SpeciesID INTEGER REFERENCES Species(SpeciesID)
);

DROP TABLE IF EXISTS Species;
CREATE TABLE Species(
    SpeciesID INTEGER PRIMARY KEY,
    CommonName CHAR(30),
    ScientificName CHAR(30),
    AverageWeight REAL CHECK (AverageWeight >= 0.0),
    AverageHeight REAL CHECK (AverageHeight >= 0.0),
    AverageLength REAL CHECK (AverageLength >= 0.0),
    NumberCubs INTEGER CHECK (NumberCubs >= 0),
    Gestation INTEGER CHECK (Gestation >= 0),
    SexualMaturity INTEGER CHECK (SexualMaturity >= 0),
    HabitatID INTEGER REFERENCES Habitat(HabitatID),
    SocialLifeID INTEGER REFERENCES SocialLife(SocialLifeID),
    DietID INTEGER REFERENCES Diet(DietID),
    ActivityID INTEGER REFERENCES Activity(ActivityID),
    ReproductionID INTEGER REFERENCES Reproduction(ReproductionID),
    AnimalGroupID INTEGER REFERENCES AnimalGroup(AnimalGroupID)
);

DROP TABLE IF EXISTS AnimalGroup;
CREATE TABLE AnimalGroup(
    AnimalGroupID INTEGER PRIMARY KEY,
    AGroupName CHAR(30)
);

DROP TABLE IF EXISTS SocialLife;
CREATE TABLE SocialLife(
    SocialLifeID INTEGER PRIMARY KEY,
    SLifeName CHAR(30)
);


DROP TABLE IF EXISTS Diet;
CREATE TABLE Diet(
    DietID INTEGER PRIMARY KEY,
    DietName CHAR(30)
);

DROP TABLE IF EXISTS Reproduction;
CREATE TABLE Reproduction(
    ReproductionID INTEGER PRIMARY KEY,
    RepName CHAR(30)
);

DROP TABLE IF EXISTS Activeness;
CREATE TABLE Activeness (
    ActivenessID INTEGER PRIMARY KEY,
    ActivenessName CHAR(30)
);