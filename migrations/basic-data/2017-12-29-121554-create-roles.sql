INSERT INTO `wame_role` (`id`, `inherit_id`, `name`, `status`)
VALUES
	(1, NULL, 'guest', 1),
	(2, 1, 'client', 1),
	(3, 2, 'moderator', 1),
	(4, 3, 'admin', 1);
