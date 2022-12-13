/*
	group by
	
	count()는 ()안에 들어가는 동일한 행의 갯수가 몇개인지 알려준다.
	sum()은 ()안에 들어가는 총 수량을 알려준다.
	min() 괄호안에 들어가는 동일한 이름을 가진 행중 최소값
	max() 괄호안에 들어가는 동일한 이름을 가진 행중 최대값
*/
SELECT
	COUNT(order_id),
	SUM(stock),
	MIN(stock),
	MAX(stock),
	SUM(stock) / COUNT(1),
	AVG(stock) /* 총 수량의 평균 */
FROM
	order_mst
GROUP BY /* group by를 사용시 연산이 들어가야 한다. */
	product_name; 
	
/*----------------------------------------*/		

SELECT
	product_name,
	SUM(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
	
/*----------------------------------------*/	

SELECT
	product_name,
	price * stock AS total_price
FROM
	order_mst;

/*----------------------------------------*/	

SELECT
	product_name,
	COUNT(order_id) AS order_count,
	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock) /* 총 수량의 평균 */
FROM
	order_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING
	max_stock > 49
ORDER BY /* count 순위를 정렬 */
	order_count DESC,
	stock_sum DESC /* desc는 큰 값 부터 내림차순으로 표시 */ 
LIMIT 0, 2; /* limit이 하나면 위에서부터의 갯수를 의미, 인자가 두개면 0번 인덱스 부터 2개라는 의미 */

/*----------------------------------------*/	

SELECT
	*
FROM
	order_mst
LIMIT 3, 3; /* 페이징처리 사용시 쓰임groupby_studysubquery_study */