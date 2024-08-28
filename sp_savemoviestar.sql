DELIMITER $$

USE `movies_database`$$

DROP PROCEDURE IF EXISTS `sp_savemoviestar`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savemoviestar`($starid INT,$referenceno VARCHAR(50), $firstname VARCHAR(50),$middlename VARCHAR(50), $lastname VARCHAR(50),
	$gender VARCHAR(10), $dob DATE, $mugshot VARCHAR(1000), $nationalityid INT, $userid INT)
BEGIN
		IF $starid = 0 THEN
			INSERT INTO `stars`(`referenceno`,`firstname`,`middlename`,`lastname`,`gender`,`dob`,`mugshot`,
			`nationalityid`,`dateadded`,`addedby`)
			VALUES($referenceno,$firstname,$middlename,$lastname,$gender,$dob,$mugshot,$nationalityid,NOW(),$userid);
		ELSE
			UPDATE `stars`
			SET `referenceno`=$referenceno,`firstname`=$firstname,`middlename`=$middlename,`lastname`=$lastname,
			`gender`=$gender,`dob`=$dob,`nationalityid`=$nationalityid
			WHERE `starid`=$starid;
		END IF;
	END$$

DELIMITER ; 