INSERT INTO Client (
    ClientID,
    NIF,
    ClientName,
    BirthDate,
    CPoints
)
VALUES (
    0,
    280727909,
    "Maria Miguel Diogo Figueiredo",
    02-04-2001,
    '25'
);

INSERT INTO Client (
    ClientID,
    NIF,
    ClientName,
    BirthDate,
    CPoints
)
VALUES (
    1,
    250323906,
    "Ana Rita Antunes Ramada",
    18-10-2001,
    '50'
);

INSERT INTO Client (
    ClientID,
    NIF,
    ClientName,
    BirthDate,
    CPoints
)
VALUES (
    2,
    237439581,
    "Joaquim da Costa Silva",
    15-09-1998,
    '0'
);

INSERT INTO Client (
    ClientID,
    NIF,
    ClientName,
    BirthDate,
    CPoints
)
VALUES (
    3,
    248420593,
    "Inês Maria Costa",
    5-12-1980,
    '0'
);

INSERT INTO Client (
    ClientID,
    NIF,
    ClientName,
    BirthDate,
    CPoints
)
VALUES (
    4,
    266423604,
    "Margarida Fernandes Coelho",
    27-07-2000,
    '25'
);

INSERT INTO Ticket(
    TicketID,
    TType,
    TPrice,
    TPoints
)
VALUES (
    0,
    "Bebé",
    0.0,
    0
);

INSERT INTO Ticket(
    TicketID,
    TType,
    TPrice,
    TPoints
)
VALUES (
    1,
    "Criança",
    14.50,
    15
);

INSERT INTO Ticket(
    TicketID,
    TType,
    TPrice,
    TPoints
)
VALUES (
    2,
    "Adulto",
    22.50,
    25
);

INSERT INTO Ticket(
    TicketID,
    TType,
    TPrice,
    TPoints
)
VALUES (
    3,
    "Sénior",
    16.0,
    15
);

INSERT INTO Ticket(
    TicketID,
    TType,
    TPrice,
    TPoints
)
VALUES (
    4,
    "Grupo",
    18.50,
    20
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketID   
)
VALUES (
    02-04-2021,
    22.50,
    0,
    2
);

INSERT INTO ActivityType(
    ActivityTypeID,
    AtName,
    AtPrice,
    Duration
)
VALUES (
    0,
    "Festa da Banana",
    3,
    20
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    0,
    "2021-04-02 11:00",
    "2021-04-02 11:20",
    0
);




INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    0,
    0
);



INSERT INTO ActivityZone(
    ActivityZoneID,
    AtZName
)
VALUES (
    0,
    "Ilha dos Primatas"
);


INSERT INTO Located(
    ActivityTypeID,
    ActivityZoneID
)
VALUES (
    0,
    0
);

INSERT INTO Zone(
    ZoneID,
    ZName,
    ZOpeningTime,
    ZClosingTime
)
VALUES (
    0,
    "A",
    "09:00:00",
    "20:00:00"
);

INSERT INTO Habitat(
    HabitatID,
    HName,
    HOpeningTime,
    HClosingTime,
    ZoneID
)
VALUES (
    0,
    "Templo dos Primatas",
    "10:00:00",
    "19:00:00",
    0
);



INSERT INTO AnimalGroup(
    AnimalGroupID,
    AGroupName
)
VALUES (
    0,
    "Primatas"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    0,
    "Familiar"
);



INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    0,
    "Omnívora"
);

INSERT INTO Reproduction(
    ReproductionID,
    RepName
)
VALUES (
    0,
    "Vívipara"
);


INSERT INTO Activeness (
    ActivenessID,
    ActivenessName
)
VALUES (
    0,
    "Diurna"
);

INSERT INTO Species(
    SpeciesID,
    CommonName,
    ScientificName,
    AverageWeight,
    AverageHeight,
    AverageLength,
    NumberCubs,
    Gestation,
    SexualMaturity,
    HabitatID,
    SocialLifeID,
    DietID,
    ActivityID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    0,
    "Chimpanzé",
    "Pan troglodytes",
    60,
    95,
    NULL,
    1,
    "7-8 meses",
    "7 anos",
    0,
    0,
    0,
    0,
    0,
    0
);

INSERT INTO Animal(
    AnimalID,
    AnimalName,
    BirthDate,
    AWeight,
    AHeight,
    ALength,
    SpeciesID
)
VALUES (
    0,
    "George",
    17-05-1987,
    60,
    100,
    NULL,
    0
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    0,
    0
);
