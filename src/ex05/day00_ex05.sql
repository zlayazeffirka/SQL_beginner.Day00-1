SELECT
    (SELECT name from person where id = person_order.person_id
	 and (menu_id = 13 or menu_id = 14 or menu_id = 18)
	 and order_date = '2022-01-07') as NAME
FROM person_order
WHERE (SELECT name from person where id = person_order.person_id
	 and (menu_id = 13 or menu_id = 14 or menu_id = 18)
	 and order_date = '2022-01-07') is not null;

