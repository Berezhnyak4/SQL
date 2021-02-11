
SELECT * FROM tbl.storehouses_products
  ORDER BY CASE WHEN value = 0 THEN 123456789 ELSE value END;