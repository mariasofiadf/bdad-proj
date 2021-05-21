PRAGMA	foreign_keys=ON;

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
    "2001-04-02",
    25
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
    "2001-10-18",
    50
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
    "1998-09-15",
    0
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
    "2015-12-06",
    0
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
    "2000-07-27",
    25
);

INSERT INTO TicketType(
    TicketTypeID,
    TName,
    TPrice,
    TPoints
)
VALUES (
    0,
    "Bebé",
    0.0,
    0
);

INSERT INTO TicketType(
    TicketTypeID,
    TName,
    TPrice,
    TPoints
)
VALUES (
    1,
    "Criança",
    14.50,
    15
);

INSERT INTO TicketType(
    TicketTypeID,
    TName,
    TPrice,
    TPoints
)
VALUES (
    2,
    "Adulto",
    22.50,
    25
);

INSERT INTO TicketType(
    TicketTypeID,
    TName,
    TPrice,
    TPoints
)
VALUES (
    3,
    "Sénior",
    16.0,
    15
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-02",
    22.50,
    0,
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-25",
    22.50,
    0,
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-26",
    22.50,
    3,
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID
)
VALUES (
    "2021-04-02",
    16.0,
    1,
    3 --Senior
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID
)
VALUES (
    "2021-04-04",
    22.50,
    2,
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID
)
VALUES (
    "2021-04-04",
    14.50,
    3,
    1 --Criança
);


INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-06-02",
    22.50,
    0,
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID
)
VALUES (
    "2021-05-04",
    22.50,
    2,
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID
)
VALUES (
    "2021-05-04",
    14.50,
    3,
    1 --Criança
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
    30
);

INSERT INTO ActivityType(
    ActivityTypeID,
    AtName,
    AtPrice,
    Duration
)
VALUES (
    1,
    "Foto com as Araras",
    5,
    30
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
    "2021-04-02 11:30",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    1,
    "2021-04-02 15:30",
    "2021-04-02 16:00",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    2,
    "2021-04-04 10:00",
    "2021-04-04 10:30",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    3,
    "2021-04-04 14:30",
    "2021-04-04 15:00",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    4,
    "2021-04-06 14:30",
    "2021-04-06 15:00",
    0
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    4,
    0
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    3, -- Jade, Fotos
    0 -- Maria
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    0,
    0
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    1,
    1
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    2,
    2
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    2,
    3
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

INSERT INTO Zone(
    ZoneID,
    ZName,
    ZOpeningTime,
    ZClosingTime
)
VALUES (
    1,
    "B",
    "09:00:00",
    "19:00:00"
);

INSERT INTO Zone(
    ZoneID,
    ZName,
    ZOpeningTime,
    ZClosingTime
)
VALUES (
    2,
    "C",
    "09:00:00",
    "20:00:00"
);

INSERT INTO ActivityZone(
    ActivityZoneID,
    AtZName,
    ZoneID
)
VALUES (
    0,
    "Ilha dos Primatas",
    0
);

INSERT INTO ActivityZone(
    ActivityZoneID,
    AtZName,
    ZoneID
)
VALUES (
    1,
    "Estúdio das Araras",
    2
);


INSERT INTO Located(
    ActivityTypeID,
    ActivityZoneID
)
VALUES (
    1,
    1
);

INSERT INTO Located(
    ActivityTypeID,
    ActivityZoneID
)
VALUES (
    0,
    0
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

INSERT INTO Habitat(
    HabitatID,
    HName,
    HOpeningTime,
    HClosingTime,
    ZoneID
)
VALUES (
    1,
    "Amazónia",
    "09:00:00",
    "19:00:00",
    2
);

INSERT INTO Habitat(
    HabitatID,
    HName,
    HOpeningTime,
    HClosingTime,
    ZoneID
)
VALUES (
    2,
    "Floresta Siberiana",
    "09:00:00",
    "17:30:00",
    1
);

INSERT INTO Habitat(
    HabitatID,
    HName,
    HOpeningTime,
    HClosingTime,
    ZoneID
)
VALUES (
    3,
    "Floresta do Jaguar",
    "10:00:00",
    "18:30:00",
    1
);

INSERT INTO Habitat(
    HabitatID,
    HName,
    HOpeningTime,
    HClosingTime,
    ZoneID
)
VALUES (
    4,
    "Savana",
    "10:00:00",
    "18:30:00",
    1
);



INSERT INTO AnimalGroup(
    AnimalGroupID,
    AGroupName
)
VALUES (
    0,
    "Primatas"
);

INSERT INTO AnimalGroup(
    AnimalGroupID,
    AGroupName
)
VALUES (
    1,
    "Aves"
);

INSERT INTO AnimalGroup(
    AnimalGroupID,
    AGroupName
)
VALUES (
    2,
    "Felinos"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    0,
    "Familiar"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    1,
    "Casal e Bando"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    2,
    "Solitária"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    3,
    "Gregária"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    4,
    "Bando"
);

INSERT INTO SocialLife(
    SocialLifeID,
    SLifeName
)
VALUES (
    5,
    "Gregária Solitária"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    0,
    "Omnívora"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    1,
    "Frugívora"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    2,
    "Carnívora"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    3,
    "Herbívora"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    4,
    "Insectívora"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    5,
    "Granívora"
);

INSERT INTO Diet(
    DietID,
    DietName
)
VALUES (
    6,
    "Piscívora"
);

INSERT INTO Reproduction(
    ReproductionID,
    RepName
)
VALUES (
    0,
    "Vívipara"
);

INSERT INTO Reproduction(
    ReproductionID,
    RepName
)
VALUES (
    1,
    "Ovípora"
);

INSERT INTO Reproduction(
    ReproductionID,
    RepName
)
VALUES (
    2,
    "Ovovivípara"
);


INSERT INTO Activeness (
    ActivenessID,
    ActivenessName
)
VALUES (
    0,
    "Diurna"
);

INSERT INTO Activeness (
    ActivenessID,
    ActivenessName
)
VALUES (
    1,
    "Crepuscular"
);

INSERT INTO Activeness (
    ActivenessID,
    ActivenessName
)
VALUES (
    2,
    "Crepuscular e Noturna"
);

INSERT INTO Activeness (
    ActivenessID,
    ActivenessName
)
VALUES (
    3,
    "Noturna"
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
    ActivenessID,
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
    "1 cria",
    "7 a 8 meses",
    "7 anos",
    0,
    0,
    0,
    0,
    0,
    0
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
    ActivenessID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    1,
    "Arara-jacinta",
    "Anodorhynchus hyacinthinus",
    1.6,
    NULL,
    100,
    "2 a 3 ovos",
    "27 a 30 dias",
    "3 anos",
    1,
    1,
    1,
    0,
    1,
    1
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
    ActivenessID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    2,
    "Tigre-da-sibéria",
    "Panthera tigris altaica",
    200,
    100,
    260,
    "2 crias",
    "3 a 4 meses",
    "3 a 5 anos",
    2,
    2,
    2,
    1,
    0,
    2
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
    ActivenessID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    3,
    "Jaguar",
    "Panthera onca onca",
    75,
    90,
    143,
    "1 a 4 crias",
    "3 a 4 meses",
    "2 a 4 anos",
    3,
    2,
    2,
    2,
    0,
    2
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
    ActivenessID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    4,
    "Leão-africano",
    "Panthera leo bleyenberghi",
    180,
    120,
    205,
    "6 crias",
    "3,5 meses",
    "3 a 5 anos",
    4,
    0,
    2,
    1,
    0,
    2
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
    ActivenessID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    5,
    "Lémure-de-cauda-anelada",
    "Lemur catta",
    2.75,
    NULL,
    60,
    "1 a 2 crias",
    "4 a 5 meses",
    "2 anos",
    0,
    3,
    3,
    0,
    0,
    0
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
    ActivenessID,
    ReproductionID,
    AnimalGroupID
)
VALUES (
    6,
    "Tucano-toco",
    "Ramphastos toco",
    0.540,
    NULL,
    56,
    "4 a 6 ovos",
    "16 a 20 dias",
    "1 ano",
    1,
    4,
    0,
    0,
    1,
    1
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
    "1987-05-17",
    60,
    100,
    NULL,
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
    7,
    "Rei Julien",
    "2010-11-05",
    2.8,
    NULL,
    50,
    5
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
    1,
    "Blu",
    "2000-10-18",
    1.5,
    NULL,
    105,
    1
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
    2,
    "Jade",
    "2005-01-15",
    1.3,
    NULL,
    90,
    1
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
    3,
    "Richard Parker",
    "2005-01-15",
    250,
    100,
    270,
    2
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
    4,
    "Speedy",
    "2015-08-28",
    90,
    95,
    160,
    3
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
    5,
    "Simba",
    "2010-09-02",
    200,
    120,
    190,
    4
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
    6,
    "Kiara",
    "2012-05-13",
    170,
    120,
    180,
    4
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
    8,
    "Zazu",
    "2012-05-13",
    0.550,
    NULL,
    58,
    6
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    0, --George
    0
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    7, --Rei Julien
    0
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    0, --George
    1
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    7, --Rei Julien
    1
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Blue
    2 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Jade
    3  --Last photos of the day
);

