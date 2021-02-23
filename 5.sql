SELECT 
	id,
    (SELECT COUNT(*) FROM messages WHERE from_users_id = users.id OR to_users_id = users.id) AS c_mes
FROM vk.users;
