-- 1. Fetch users by DisplayName
SELECT * FROM Users WHERE DisplayName LIKE 'John%';

-- A��klama: Bu sorgu, Users tablosunda 'John' ile ba�layan DisplayName alan�na sahip t�m kullan�c�lar� getirir.

-- 2. Fetch posts by Title
SELECT * FROM Posts WHERE Title LIKE '%SQL%';

-- A��klama: Bu sorgu, Posts tablosunda ba�l���nda 'SQL' ifadesi ge�en t�m g�nderileri getirir.

-- 3. Fetch comments by Text
SELECT * FROM Comments WHERE Text LIKE '%database%';

-- A��klama: Bu sorgu, Comments tablosunda metninde 'database' ge�en t�m yorumlar� getirir.

-- 4. Fetch votes by CreationDate
SELECT * FROM Votes WHERE CreationDate > '2020-01-01';

-- A��klama: Bu sorgu, Votes tablosunda 1 Ocak 2020 tarihinden sonra olu�turulmu� t�m oylar� getirir.

-- 5. Fetch posts by OwnerUserId
SELECT * FROM Posts WHERE OwnerUserId = 1;

-- A��klama: Bu sorgu, Posts tablosunda OwnerUserId de�eri 1 olan t�m g�nderileri getirir.

-- 6. Fetch users by Reputation
SELECT * FROM Users WHERE Reputation > 1000;

-- A��klama: Bu sorgu, Users tablosunda Reputation de�eri 1000'den b�y�k olan t�m kullan�c�lar� getirir.

-- 7. Fetch posts by Tags
SELECT * FROM Posts WHERE Tags LIKE '%sql%';

-- A��klama: Bu sorgu, Posts tablosunda etiketlerinde 'sql' ifadesi ge�en t�m g�nderileri getirir.

-- 8. Fetch comments by PostId
SELECT * FROM Comments WHERE PostId = 1;

-- A��klama: Bu sorgu, Comments tablosunda PostId de�eri 1 olan t�m yorumlar� getirir.

-- 9. Fetch votes by VoteTypeId
SELECT * FROM Votes WHERE VoteTypeId = 2;

-- A��klama: Bu sorgu, Votes tablosunda VoteTypeId de�eri 2 olan t�m oylar� getirir.

-- 10. Fetch users by CreationDate
SELECT * FROM Users WHERE CreationDate < '2020-01-01';

-- A��klama: Bu sorgu, Users tablosunda 1 Ocak 2020 tarihinden �nce olu�turulmu� t�m kullan�c�lar� getirir.
