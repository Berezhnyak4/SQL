SELECT
  count(*) as total_likes
FROM likes
WHERE
  users_id IN (
    SELECT * FROM
    (SELECT
      users_id
            FROM profiles
            ORDER by birthday DESC
            LIMIT 10) as q    
  )
;