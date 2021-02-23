SELECT *,
(SELECT gender FROM profiles WHERE users_id = likes.users_id) AS gender

FROM vk.likes;
ORDER BY gender  DESC