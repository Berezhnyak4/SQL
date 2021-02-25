SELECT 
p.id,
p.name,
p.price,
c.name
FROM 
	shop.catalogs AS c
JOIN
	shop.products AS p
ON
	c.id = p.catalog_id;