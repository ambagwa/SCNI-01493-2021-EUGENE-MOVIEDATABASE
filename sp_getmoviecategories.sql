DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_getmoviecategories`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getmoviecategories`()
BEGIN
		SELECT c.*, CONCAT(`firstname`,' ',`lastname`) addedby
		FROM `moviecategories` c
		JOIN `users` s ON s.`userid`=c.`addedby` -- Shows which fields connect the two tables together
		WHERE `deleted`=0
		ORDER BY `categoryname`;
		
		/*SELECT c.*, CONCAT(`firstname`,' ',`lastname`) addedby
		FROM `moviecategories` c, `users` s 
		where s.`userid`=c.`addedby`*/
	END$$

DELIMITER ; 