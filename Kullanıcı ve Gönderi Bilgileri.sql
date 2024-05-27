SELECT U.DisplayName, P.Title
FROM Users U
JOIN Posts P ON U.Id = P.OwnerUserId
WHERE U.DisplayName LIKE 'John%' AND P.CreationDate > '2020-01-01';
-- A��klama: 'John%' ile ba�layan kullan�c� adlar�na sahip ve 1 Ocak 2020'den sonra olu�turulmu� g�nderileri getirir.

SELECT Users.DisplayName, Posts.Title
FROM Users
INNER JOIN Posts ON Users.Id = Posts.OwnerUserId
WHERE Users.DisplayName LIKE 'John%' AND Posts.CreationDate > '2020-01-01';
-- A��klama: Ayn� ko�ullar� farkl� bir yaz�m tarz�yla ifade eder.
