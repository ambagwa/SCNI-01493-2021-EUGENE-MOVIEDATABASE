DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_checkmoviecategory`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkmoviecategory`($categoryid INT, $categoryname VARCHAR(50))
BEGIN
		SELECT * 
		FROM `moviecategories` 
		WHERE `categoryid`!=$categoryid AND `categoryname`=$categoryname
		AND `deleted`=0;
	END$$

DELIMITER ; 