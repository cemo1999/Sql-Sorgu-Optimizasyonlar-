SELECT V.Id, V.CreationDate
FROM Votes V
WHERE V.CreationDate > '2020-01-01';
-- Açýklama: 1 Ocak 2020'den sonra yapýlan oylarý listeler.



SELECT Id, CreationDate
FROM Votes WHERE CreationDate > '2020-01-01';
-- Açýklama: Ayný oylama tarihini farklý bir yazým tarzýyla listeler.
