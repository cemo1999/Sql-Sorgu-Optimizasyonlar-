SELECT P.Title, COUNT(C.Id) AS CommentCount
FROM Posts P
JOIN Comments C ON P.Id = C.PostId
GROUP BY P.Title
HAVING COUNT(C.Id) > 50;
-- Açýklama: 50'den fazla yorumu olan gönderileri getirir.

SELECT Posts.Title, COUNT(Comments.Id) AS CommentCount
FROM Posts
INNER JOIN Comments ON Posts.Id = Comments.PostId
GROUP BY Posts.Title
HAVING COUNT(Comments.Id) > 50;
-- Açýklama: Ayný veri setini alternatif bir sorgu yapýsýyla listeler.
