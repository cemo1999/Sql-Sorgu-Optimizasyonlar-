SELECT U.DisplayName, P.Title
FROM Users U
JOIN Posts P ON U.Id = P.OwnerUserId
WHERE U.DisplayName LIKE 'John%' AND P.CreationDate > '2020-01-01';
-- Açýklama: 'John%' ile baþlayan kullanýcý adlarýna sahip ve 1 Ocak 2020'den sonra oluþturulmuþ gönderileri getirir.

SELECT Users.DisplayName, Posts.Title
FROM Users
INNER JOIN Posts ON Users.Id = Posts.OwnerUserId
WHERE Users.DisplayName LIKE 'John%' AND Posts.CreationDate > '2020-01-01';
-- Açýklama: Ayný koþullarý farklý bir yazým tarzýyla ifade eder.
