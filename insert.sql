/* 
 Create Read Update Delete(CRUD)
 
 INSERT(추가) - C
 SELECT(조회) - R
 UPDATE(수정) - U
 DELETE(삭제) - D
 
 카멜표기벅 사용x 스네이크 표기법 사용
 DB에서는 '가 문자열이다.
 파란글씨 기준으로 잘라 줄바꿈 / 컬럼이 많은 경우 ,다음 줄바꿈
 useruser(id, product_name, product_price) VALUES에 순서대로 들어가 있으면 생략가능 
 */
 
 INSERT INTO product_mst
 VALUES
 (0, '스타벅스 블랙  머그컵2221', 20000),
 (0, '스타벅스 화이트  머그컵2221', 15000),
 (0, '스타벅스 블루  머그컵2221', 20000);
 
 SELECT/*선택, 입력순서가 중요*/
  	id,
  	product_name,
  	product_price
 FROM product_mst;
 
 INSERT INTO student_mst
 VALUES
 (0, '임지현', 1, 80), 
 (0, '신경수', 2, 90),
 (0, '고희주', 3, 75),
 (0, '문승주', 1, 85),
 (0, '장건녕', 2, 95),
 (0, '박수현', 3, 90),
 (0, '황석민', 1, 80),
 (0, '박준현', 2, 85),
 (0, '이승아', 3, 90),
 (0, '김수현', 1, 75);
 
SELECT
 	id,
 	`name`, /*`중복되는 이름이 있을경우 사용 */
 	student_year,
 	score
FROM
 	student_mst
WHERE
 	student_year = 1 and score > 80 /* 데이터를 조회시 사용 */ /* or 사용 예 */  	
 	OR (student_year = 3 AND score = 75);
 	
 /*`중복되는 이름이 있을경우 사용 */

WHERE
	`name` LIKE '%수%' AND `name` NOT LIKE '%수';
	/* %는 앞에 뭐가오든지 상관없다는 표시, ! / not은 부정하는 의미*/
	
	

WHERE
	student_year not IN (1, 2);
	
	
WHERE
	score not BETWEEN 80 AND 90; /* between ~사시에 있는 값들 불러오기 */


SELECT
 	id,
 	`name`, 
 	student_year,
 	score
FROM
 	student_mst
WHERE
	`name` is NOT NULL;
	
UPDATE student_mst
SET score = 80
WHERE `NAME` = '박준현'; 

/*
2학년 중에 성적이 80 ~ 90 사이인 학생들의 점수를 100으로 바꿔라
*/

UPDATE 
	student_mst
SET
	score = 100  
WHERE 
	student_year = 2 
	AND score BETWEEN 80 AND 90;
	
/*-----------------------------------------------------------*/

DELETE
FROM
	student_mst
WHERE
	score < 80;