SELECT U.DisplayName, MAX(P.CreationDate) AS LastPostDate
FROM Users U
JOIN Posts P ON U.Id = P.OwnerUserId
GROUP BY U.DisplayName;
-- A��klama: Kullan�c�lar�n en son g�nderi tarihlerini getirir.



SELECT Users.DisplayName, MAX(Posts.CreationDate) AS LastPostDate
FROM Users INNER JOIN Posts ON Users.Id = Posts.OwnerUserId
GROUP BY Users.DisplayName;
-- A��klama: Kullan�c�lar�n en son g�nderi tarihlerini farkl� bir yaz�m tarz�yla getirir.
