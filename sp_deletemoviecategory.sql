DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_deletemoviecategory`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletemoviecategory`($categoryid INT, $userid INT)
BEGIN
		UPDATE `moviecategories`
		SET `deleted`=1, `datedeleted`=NOW(), `deletedby`=$userid
		WHERE `categoryid`=$categoryid;
	END$$

DELIMITER ; 