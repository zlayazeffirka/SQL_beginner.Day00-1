SELECT
    id, name,
	case
		when age >= 10 and age <= 20
			then 'interval #1'
		else
			case
				when age > 20 and age < 24
					then 'interval #2'
				else
					'interval #3'
			end
	end as interval_info
FROM person
order by interval_info

