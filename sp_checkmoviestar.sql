DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_checkmoviestar`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkmoviestar`($starid INT, $referenceno VARCHAR(50))
BEGIN
		SELECT * FROM `stars`
		WHERE `starid`!=$starid AND `referenceno`=$referenceno;
	END$$

DELIMITER ; 