SELECT 
IF (from_users_id = 66, to_users_id, from_users_id) as resp_id,
COUNT(*) AS massages
FROM vk.messages

WHERE 
  to_users_id = 1 AND
  from_users_id OR from_users_id = 1 AND
  to_users_id IN (
     SELECT IF(from_users_id = 1, to_users_id, from_users_id) as friend_id
     FROM friend_requests
     WHERE
     status = 1 AND (from_users_id = 1 OR to_users_id = 1)
)
GROUP BY resp_id
ORDER BY massages DESC
LIMIT 1
