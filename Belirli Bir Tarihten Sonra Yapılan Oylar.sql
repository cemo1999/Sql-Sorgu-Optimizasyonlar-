SELECT V.Id, V.CreationDate
FROM Votes V
WHERE V.CreationDate > '2020-01-01';
-- A��klama: 1 Ocak 2020'den sonra yap�lan oylar� listeler.



SELECT Id, CreationDate
FROM Votes WHERE CreationDate > '2020-01-01';
-- A��klama: Ayn� oylama tarihini farkl� bir yaz�m tarz�yla listeler.
