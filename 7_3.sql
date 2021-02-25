SELECT 
f.idflights,
c.citis AS 'from',
(SELECT citis FROM shop.citis WHERE label = `to`) AS `to`
FROM shop.flights AS f
JOIN
	shop.citis AS c
ON
	 f.from = c.label;