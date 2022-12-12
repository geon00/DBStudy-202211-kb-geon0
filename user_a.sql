/*
  insert는 동시에 일어나야 한다.user_mst_after_insertuser_mst_after_insert
  /*user_mst에 데이터를 넣는 작업*/
\*/
INSERT INTO 
	user_mst
VALUES 
	(0, 'aaa', '1234', '장건녕', 'bbb@naver.com', NOW(), NOW()), 
	(0, 'bbb', '1234', '장건녕', 'bbb@naver.com', NOW(), NOW()),
	(0, 'ccc', '1234', '장건녕', 'bbb@naver.com', NOW(), NOW()),
	(0, 'ddd', '1234', '장건녕', 'bbb@naver.com', NOW(), NOW());
	
DELETE 
FROM
	user_mst
WHERE
	id = 1 order_dtlorder_mst;