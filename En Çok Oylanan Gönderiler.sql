SELECT P.Title, COUNT(V.Id) AS VoteCount
FROM Posts P
JOIN Votes V ON P.Id = V.PostId
GROUP BY P.Title
HAVING COUNT(V.Id) > 100;
-- A��klama: 100'den fazla oy alm�� g�nderilerin ba�l�klar�n� ve oy say�lar�n� getirir.

SELECT Posts.Title, COUNT(Votes.Id) AS VoteCount
FROM Posts
INNER JOIN Votes ON Posts.Id = Votes.PostId
GROUP BY Posts.Title
HAVING COUNT(Votes.Id) > 100;
-- A��klama: En �ok oylanan g�nderileri, alternatif bir yaz�m tarz�yla listeler.
