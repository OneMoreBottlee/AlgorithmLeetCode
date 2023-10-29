-- 가장 많은 영화를 평가한 사용자 이름 찾기
SELECT name results
FROM (SELECT U.user_id, name, COUNT(DISTINCT movie_id) cnt
      FROM MovieRating M, Users U
      WHERE M.user_id = U.user_id
      GROUP BY U.user_id, name
      ORDER BY cnt DESC, name)
WHERE ROWNUM = 1

UNION ALL

-- 2020년 2월 가장 높은 평점의 영화 찾기
SELECT title results
FROM (SELECT M.movie_id, M.title, AVG(MR.rating) mv_avg
      FROM MovieRating MR, Movies M
      WHERE MR.movie_id = M.movie_id AND TO_CHAR(MR.created_at, 'YYYY-MM') = '2020-02'
      GROUP BY M.movie_id, M.title
      ORDER BY mv_avg DESC, M.title)
WHERE ROWNUM = 1