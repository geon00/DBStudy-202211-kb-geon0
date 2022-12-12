/* 
	left outer join 왼쪽을 기준으로

	1=1 = true 모든 경우의 수를 출력
	1=0 = false 
	조건이 일치하지 않으면 null값으로 나온다.
	db_study
	AS는 테이블의 별명을 지어주는 것이다.
	AS를 생략해도 적용이된다. 테이블 명 뒤에
	대상이 앞에 오고 값은 뒤에
*/

SELECT
	*
FROM 
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON (ud.id = um.id);
SELECT
	*
FROM
	user_dtl;
	

SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	LEFT OUTER JOIN user_mst um ON (um.id = om.user_id)
	
SELECT
	*
FROM
	user_mst um
	LEFT OUTER join order_mst om ON (om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id);