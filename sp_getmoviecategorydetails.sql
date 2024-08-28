DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_getmoviecategorydetails`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getmoviecategorydetails`($categoryid INT)
BEGIN
		SELECT * 
		FROM `moviecategories`
		WHERE `categoryid`=$categoryid;
	END$$

DELIMITER ; 