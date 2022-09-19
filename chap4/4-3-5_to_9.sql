select M.mem_id, M.mem_name, sum(B.amount * B.price) '총 구매액',
	case 
		when (sum(price * amount) >= 1500) then '최우수고객'
        when (sum(price * amount) >= 1000) then '우수고객'
		when (sum(price * amount) >= 1) then '일반고객'
        else '유령고객'
	end '회원등급'
	from buy B
		right outer join member M
        on M.mem_id = B.mem_id
    group by mem_id
    order by sum(amount * price) desc;