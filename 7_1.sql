SELECT 
	u.id,
    u.name,
    o.order
 FROM shop.orders AS o
 JOIN
	shop.users AS u
ON
	o.id_user = u.id;