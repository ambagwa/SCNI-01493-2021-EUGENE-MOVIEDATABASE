DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_deletemoviestar`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletemoviestar`($starid INT, $userid INT)
BEGIN
		UPDATE `stars`
		SET `deleted`=1,`dateadded`=NOW(),`deletedby`=$userid
		WHERE `starid`=$starid;
	END$$

DELIMITER ; 