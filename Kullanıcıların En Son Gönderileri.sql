SELECT U.DisplayName, MAX(P.CreationDate) AS LastPostDate
FROM Users U
JOIN Posts P ON U.Id = P.OwnerUserId
GROUP BY U.DisplayName;
-- Açýklama: Kullanýcýlarýn en son gönderi tarihlerini getirir.



SELECT Users.DisplayName, MAX(Posts.CreationDate) AS LastPostDate
FROM Users INNER JOIN Posts ON Users.Id = Posts.OwnerUserId
GROUP BY Users.DisplayName;
-- Açýklama: Kullanýcýlarýn en son gönderi tarihlerini farklý bir yazým tarzýyla getirir.
