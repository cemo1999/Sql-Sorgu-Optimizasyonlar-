SELECT P.Title, COUNT(C.Id) AS CommentCount
FROM Posts P
JOIN Comments C ON P.Id = C.PostId
GROUP BY P.Title
HAVING COUNT(C.Id) > 50;
-- A��klama: 50'den fazla yorumu olan g�nderileri getirir.

SELECT Posts.Title, COUNT(Comments.Id) AS CommentCount
FROM Posts
INNER JOIN Comments ON Posts.Id = Comments.PostId
GROUP BY Posts.Title
HAVING COUNT(Comments.Id) > 50;
-- A��klama: Ayn� veri setini alternatif bir sorgu yap�s�yla listeler.
