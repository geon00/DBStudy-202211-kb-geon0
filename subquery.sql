INSERT INTO
	board_mst
VALUES
	(0, '제목1', '게시글 내용1', 0, 1),
	(0, '제목2', '게시글 내용2', 0, 1),
	(0, '제목3', '게시글 내용3', 0, 1),
	(0, '제목1', '게시글 내용1', 0, 2),
	(0, '제목2', '게시글 내용2', 0, 2),
	(0, '제목3', '게시글 내용3', 0, 2),
	(0, '제목4', '게시글 내용4', 0, 1),
	(0, '제목5', '게시글 내용5', 0, 1),
	(0, '제목6', '게시글 내용6', 0, 1),
	(0, '제목4', '게시글 내용4', 0, 2),
	(0, '제목5', '게시글 내용5', 0, 2),
	(0, '제목6', '게시글 내용6', 0, 2);
	
/*
	subquery사용예
	
	subquery select 사용시 행마다 select가 돈다.
	select문에서 supquery를 사용하는 것 보다 from에서 사용하는 것이 더 빠르다.
*/	

SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id)
FROM
	board_mst bm

/*-----------------------------------*/
	
SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM /* 위의subquery select보다 좋게 사용한 예시  */
	board_mst bm
	LEFT OUTER JOIN (SELECT
		writer_id,
		COUNT(1) AS writer_count
	FROM
		board_mst bm
	GROUP BY
		writer_id) wc ON(wc.writer_id = bm.writer_id);
		
/* 실행 시간을 알려주는 코드 */
SHOW PROFILES;

SET profiling = 1;