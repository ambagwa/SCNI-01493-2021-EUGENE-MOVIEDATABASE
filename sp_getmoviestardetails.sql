DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_getmoviestardetails`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getmoviestardetails`($starid INT)
BEGIN
		SELECT * FROM `stars`
		WHERE `starid`=$starid;
	END$$

DELIMITER ; 