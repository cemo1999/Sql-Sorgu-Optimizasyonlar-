SELECT P.Title, COUNT(V.Id) AS VoteCount
FROM Posts P
JOIN Votes V ON P.Id = V.PostId
GROUP BY P.Title
HAVING COUNT(V.Id) > 100;
-- Açýklama: 100'den fazla oy almýþ gönderilerin baþlýklarýný ve oy sayýlarýný getirir.

SELECT Posts.Title, COUNT(Votes.Id) AS VoteCount
FROM Posts
INNER JOIN Votes ON Posts.Id = Votes.PostId
GROUP BY Posts.Title
HAVING COUNT(Votes.Id) > 100;
-- Açýklama: En çok oylanan gönderileri, alternatif bir yazým tarzýyla listeler.
