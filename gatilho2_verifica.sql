.mode columns
.header on
.nullvalue NULL

--Primeiro exemplo: deixa adicionar
.print ''
.print 'Espécies na Floresta Siberiana antes de adicionar a chita'
.print ''

delete from Species where scientificname = "Acinonyx jubatus";
SELECT commonname, habitatid, animalgroupid from Species where (Species.HabitatID = 2);


INSERT INTO Species(
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
    "Chita",
    "Acinonyx jubatus",
    40,
    120,
    94,
    "1 a 8 crias",
    "3 meses",
    "2 a 3 anos",
    2, -- 2, 3 e 4 funciona
    2,
    2,
    0,
    0,  
    2
);

.print ''
.print 'Espécies na Floresta Siberiana depois de adicionar a chita'
.print ''

SELECT commonname, habitatid, animalgroupid from Species where (Species.HabitatID = 2);
.print '-----SEGUNDO EXEMPLO-----'

--Segundo exemplo: impede de adicionar
.print ''
.print 'Espécies na Amazónia antes de adicionar a chita'
.print ''

delete from Species where scientificname = "Acinonyx jubatus";
SELECT commonname, habitatid, animalgroupid from Species where (Species.HabitatID = 1);

INSERT INTO Species(
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
    "Chita",
    "Acinonyx jubatus",
    40,
    120,
    94,
    "1 a 8 crias",
    "3 meses",
    "2 a 3 anos",
    1, -- 2, 3 e 4 funciona
    2,
    2,
    0,
    0,  
    2
);

.print ''
.print 'Espécies na Amazónia depois de tentar adicionar a chita'
.print ''

SELECT commonname, habitatid, animalgroupid from Species where (Species.HabitatID = 1);