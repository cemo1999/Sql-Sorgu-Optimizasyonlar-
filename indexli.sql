-- 1. Fetch users by DisplayName
SELECT * FROM Users WHERE DisplayName LIKE 'John%';

-- Açýklama: Bu sorgu, Users tablosunda 'John' ile baþlayan DisplayName alanýna sahip tüm kullanýcýlarý getirir.

-- 2. Fetch posts by Title
SELECT * FROM Posts WHERE Title LIKE '%SQL%';

-- Açýklama: Bu sorgu, Posts tablosunda baþlýðýnda 'SQL' ifadesi geçen tüm gönderileri getirir.

-- 3. Fetch comments by Text
SELECT * FROM Comments WHERE Text LIKE '%database%';

-- Açýklama: Bu sorgu, Comments tablosunda metninde 'database' geçen tüm yorumlarý getirir.

-- 4. Fetch votes by CreationDate
SELECT * FROM Votes WHERE CreationDate > '2020-01-01';

-- Açýklama: Bu sorgu, Votes tablosunda 1 Ocak 2020 tarihinden sonra oluþturulmuþ tüm oylarý getirir.

-- 5. Fetch posts by OwnerUserId
SELECT * FROM Posts WHERE OwnerUserId = 1;

-- Açýklama: Bu sorgu, Posts tablosunda OwnerUserId deðeri 1 olan tüm gönderileri getirir.

-- 6. Fetch users by Reputation
SELECT * FROM Users WHERE Reputation > 1000;

-- Açýklama: Bu sorgu, Users tablosunda Reputation deðeri 1000'den büyük olan tüm kullanýcýlarý getirir.

-- 7. Fetch posts by Tags
SELECT * FROM Posts WHERE Tags LIKE '%sql%';

-- Açýklama: Bu sorgu, Posts tablosunda etiketlerinde 'sql' ifadesi geçen tüm gönderileri getirir.

-- 8. Fetch comments by PostId
SELECT * FROM Comments WHERE PostId = 1;

-- Açýklama: Bu sorgu, Comments tablosunda PostId deðeri 1 olan tüm yorumlarý getirir.

-- 9. Fetch votes by VoteTypeId
SELECT * FROM Votes WHERE VoteTypeId = 2;

-- Açýklama: Bu sorgu, Votes tablosunda VoteTypeId deðeri 2 olan tüm oylarý getirir.

-- 10. Fetch users by CreationDate
SELECT * FROM Users WHERE CreationDate < '2020-01-01';

-- Açýklama: Bu sorgu, Users tablosunda 1 Ocak 2020 tarihinden önce oluþturulmuþ tüm kullanýcýlarý getirir.
