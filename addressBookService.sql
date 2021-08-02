CREATE DATABASE addressBookService;
SHOW DATABASES;
USE addressBookService;
CREATE TABLE addressBook ( firstName VARCHAR(30) NOT NULL, 
lastName VARCHAR(20) NOT NULL, address VARCHAR(70) NOT NULL, city VARCHAR(10) NOT NULL, 
state VARCHAR(10) NOT NULL, zip INT(6), phonenumber VARCHAR(10) );
ALTER TABLE addressBook DROP COLUMN zip;
ALTER TABLE addressBook ADD COLUMN zip VARCHAR(6) AFTER state;
INSERT INTO addressBook VALUES ( "DEEPAK", "KUMAR", "GAYA", "GAYA", "BIHAR", "805127", "8503987671" );
SELECT firstName FROM addressBook WHERE fistName = "DEEPAK";

INSERT INTO addressBook  VALUES ( "DEEPAK", "KUMAR", "GAYA", "GAYA", "BIHAR", "805127", "8503987671" );
DELETE FROM  addressBook  WHERE phoneNumber = "12122";
INSERT INTO addressBook VALUES ("CHANDAN", "KUMAR", "PATNA", "AARA", "BIHAR", "800001",  "6376780172");

SET SQL_SAFE_UPDATES = 0;
DELETE FROM addressBookService.addressBook WHERE firstName = 'DEEPAK';
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM addressBookService.AddressBook;