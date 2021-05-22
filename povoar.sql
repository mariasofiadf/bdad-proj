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
    "1988-09-15",
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
    0, --Maria
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-14",
    22.50,
    0, --Maria
    2 --Adulto
);


INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-06-05",
    22.50,
    0, --Maria
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-05",
    22.50,
    1, --Rita
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-10",
    22.50,
    1, --Rita
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-31",
    22.50,
    1, --Rita
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-06-05",
    22.50,
    1, --Rita
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
    22.50,
    2, --Joaquim
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
    2, --Inês
    1 --Criança
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-15",
    22.50,
    2, --Joaquim
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-15",
    14.50,
    2, --Inês
    1 --Criança
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-01",
    22.50,
    2, --Joaquim
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-01",
    14.50,
    2, --Inês
    1 --Criança
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-21",
    22.50,
    2, --Joaquim
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-21",
    14.50,
    2, --Inês
    1 --Criança
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-06-05",
    22.50,
    2, --Joaquim
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-06-05",
    14.50,
    2, --Inês
    1 --Criança
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-04-20",
    22.50,
    3, --Margarida
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-05",
    22.50,
    3, --Margarida
    2 --Adulto
);

INSERT INTO TicketEntry(
    TDate,
    TEPricePaid,
    ClientID,
    TicketTypeID   
)
VALUES (
    "2021-05-16",
    22.50,
    3, --Margarida
    2 --Adulto
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

INSERT INTO ActivityType(
    ActivityTypeID,
    AtName,
    AtPrice,
    Duration
)
VALUES (
    2,
    "Alimentação dos Tigres",
    4,
    40
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
    "2021-04-05 11:00",
    "2021-04-05 11:30",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    3,
    "2021-04-05 15:30",
    "2021-04-05 16:00",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    4,
    "2021-05-10 11:00",
    "2021-05-10 11:30",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    5,
    "2021-05-10 15:30",
    "2021-05-10 16:00",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    6,
    "2021-05-14 11:00",
    "2021-05-14 11:30",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    7,
    "2021-05-14 15:30",
    "2021-05-14 16:00",
    0
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    8,
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
    9,
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
    10,
    "2021-04-15 10:00",
    "2021-04-15 10:30",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    11,
    "2021-04-15 14:30",
    "2021-04-15 15:00",
    1
);


INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    12,
    "2021-04-20 10:00",
    "2021-04-20 10:30",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    13,
    "2021-04-20 14:30",
    "2021-04-20 15:00",
    1
);


INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    14,
    "2021-05-01 10:00",
    "2021-05-01 10:30",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    15,
    "2021-05-01 14:30",
    "2021-05-01 15:00",
    1
);


INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    16,
    "2021-05-05 10:00",
    "2021-05-05 10:30",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    17,
    "2021-05-05 14:30",
    "2021-05-05 15:00",
    1
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    18,
    "2021-05-01 10:00",
    "2021-05-01 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    19,
    "2021-05-06 10:00",
    "2021-05-06 10:40",
    2
);
INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    20,
    "2021-05-11 10:00",
    "2021-05-11 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    21,
    "2021-05-16 10:00",
    "2021-05-16 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    22,
    "2021-05-21 10:00",
    "2021-05-21 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    23,
    "2021-05-26 10:00",
    "2021-05-26 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    24,
    "2021-05-26 10:00",
    "2021-05-26 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    25,
    "2021-05-31 10:00",
    "2021-05-31 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    26,
    "2021-06-05 10:00",
    "2021-06-05 10:40",
    2
);

INSERT INTO Activity(
    ActivityID,
    StartTime,
    EndTime,
    ActivityTypeID
)
VALUES (
    27,
    "2021-04-26 10:00",
    "2021-04-26 10:40",
    2
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    0,
    0 --Maria
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    6,
    0 --Maria
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    7,
    0 --Maria
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    27,
    0 --Maria
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    4,
    0 --Maria
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    2,
    1 --Rita
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    3,
    1 --Rita
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    4,
    1 --Rita
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    5,
    1 --Rita
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    25,
    1 --Rita
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    26,
    1 --Rita
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    8,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    8,
    3 --Inês
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    9,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    9,
    3 --Inês
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    10,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    10,
    3 --Inês
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    11,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    11,
    3 --Inês
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    14,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    14,
    3 --Inês
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    15,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    15,
    3 --Inês
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    22,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    22,
    3 --Inês
);


INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    26,
    2 --Joaquim
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    26,
    3 --Inês
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    12,
    4 --Margarida
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    13,
    4 --Margarida
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    16,
    4 --Margarida
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    17,
    4 --Margarida
);

INSERT INTO ActivityTicket(
    ActivityID,
    ClientID
)
VALUES (
    21,
    4 --Margarida
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

INSERT INTO Habitat(
    HabitatID,
    HName,
    HOpeningTime,
    HClosingTime,
    ZoneID
)
VALUES (
    5,
    "Oasis Africano",
    "09:00:00",
    "17:30:00",
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

INSERT INTO AnimalGroup(
    AnimalGroupID,
    AGroupName
)
VALUES (
    3,
    "Mamiforos Hérbívoros"
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
    7,
    "Tigre-branco",
    "Panthera tigris",
    195,
    95,
    260,
    "3 crias",
    "3 a 4 meses",
    "3 a 5 anos",
    2,
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
    8,
    "Tigre-de-sumatra",
    "Panthera tigris sumatrae",
    100,
    73,
    230,
    "2 a 3 crias",
    "4 meses",
    "3 a 5 anos",
    2,
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
    9,
    "Rinoceronte-branco",
    "Ceratotherium simum",
    3000,
    180,
    380,
    "1 cria",
    "16 meses",
    "7 a 10 anos",
    5,
    5,
    3,
    0,
    0,
    3
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
    10,
    "Zebra-de-grevy",
    "Equus grevyi",
    430,
    150,
    280,
    "1 cria",
    "12 a 14 meses",
    "3 anos",
    5,
    3,
    3,
    0,
    0,
    3
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
    11,
    "Avestruz",
    "Struthio camelus",
    115,
    240,
    120,
    "15 a 60 ovos",
    "35 a 45 dias",
    "2 a 4 anos",
    5,
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
    9,
    "Zoey",
    "2012-08-27",
    160,
    90,
    250,
    7
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
    10,
    "Maggie",
    "2016-08-05",
    85,
    70,
    220,
    8
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
    11,
    "Marty",
    "2010-05-30",
    400,
    150,
    230,
    10
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
    12,
    "Rosie",
    "2013-02-25",
    200,
    125,
    190,
    10
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
    13,
    "Max",
    "2019-12-25",
    80,
    40,
    60,
    10
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
    14,
    "Manny",
    "2005-10-05",
    2800,
    175,
    375,
    9
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
    15,
    "Ellie",
    "2005-10-05",
    2500,
    150,
    330,
    9
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
    16,
    "Birdy",
    "2010-10-05",
    125,
    260,
    140,
    11
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
    0, --George
    2
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    7, --Rei Julien
    3
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    0, --George
    4
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    7, --Rei Julien
    5
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    0, --George
    5
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    7, --Rei Julien
    6
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    0,
    7--George
    
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    7, --Rei Julien
    7
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Blue
    8 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Blue
    8 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Jade
    9  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    8, --Zazu
    9  --Last photos of the day
);


INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Blue
    9 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Jade
    10  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Blue
    11 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Jade
    11  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    8, --Zazu
    12  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Blue
    13 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Jade
    14  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    8, --Zazu
    15  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Blue
    15 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Jade
    16  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    8, --Zazu
    16  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    2, --Blue
    17 --First photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    1, --Jade
    17  --Last photos of the day
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    18  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    19  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    20  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    21  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    22  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    23  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    24  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    25  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    26  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    3, --Richard Parker
    27  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    9, --Zoey
    20  --Tiger Feeding
);


INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    9, --Zoey
    23  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    9, --Zoey
    25  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    9, --Zoey
    27  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    10, --Maggie
    20  --Tiger Feeding
);

INSERT INTO Participates(
    AnimalID,
    ActivityID
)
VALUES (
    10, --Maggie
    25  --Tiger Feeding
);









