DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_savemoviecategory`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savemoviecategory`($categoryid INT, $categoryname VARCHAR(50), $categorydescription VARCHAR(1000), $userid INT)
BEGIN
		-- If categoryid is 0, create a new category and if not, update the category that is in the table
		IF $categoryid=0 THEN
			INSERT INTO `moviecategories` (`categoryname`,`categorydescription`,`dateadded`,`addedby`)
			VALUES($categoryname, $categorydescription, NOW(), $userid);
		ELSE
			UPDATE `moviecategories` 
			SET `categoryname`=$categoryname, `categorydescription`=$categorydescription
			WHERE `categoryid`=$categoryid;
		END IF;
	END$$

DELIMITER ; 