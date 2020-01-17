/********************************************************************/
/*  Date	Name	Description                                     */
/*  --------------------------------------------------------------- */
/*                                                                  */
/*  1/17/2020  JWokersien   Initial deployment of EJDBscrip.put.    */
/********************************************************************/
DROP DATABASE IF EXISTS ej;
CREATE DATABASE ej;
USE ej;

#Create statement
CREATE TABLE IF NOT EXISTS employee
(
	employeeID	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	firstName	VARCHAR(255) NOT NULL,
	lastName	VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS visitor
(
	visitorID 		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	visitorName		VARCHAR(255) NOT NULL,
	visitorEmail	VARCHAR(255) NOT NULL,
	visitorMsg		VARCHAR(500) NOT NULL,
	phone			VARCHAR(15) NOT NULL,
	bdate			DATE NOT NULL,
	news			BOOLEAN NOT NULL,
	slider  		TINYINT NOT NULL,
	employeeID		INT NOT NULL REFERENCES employee(employeeID)
);

INSERT INTO employee
	(firstName, lastName)
VALUES
	('Buster', 	'Bronco'),
	('Joe', 	'Vandal'),
	('Aubie', 	'Tiger'),
	('Ralphie', 'Buffalo'),
	('Bucky', 	'Badger'),
	('Cocky', 	'Gamecock'),
	('Sparty', 	'Spartan'),
	('Gus', 	'Gorilla'),
	('Sebastian', 'Ibis'),
	('Brutus', 	'Buckeye'),
	('Pistol', 	'Pete'),
	('Archibald', 'Eagle'),
	('Baby', 	'Jay'),
	('Big', 	'Blue'),
	('Boss', 	'Hogg'),
	('Buddy', 	'Bronco'),
	('Captain', 'Cane'),
	('Duke', 	'Dog'),
	('Fighting', 'Pickle'),
	('Benny', 	'Bengal');

INSERT INTO visitor
	(visitorName, visitorEmail, visitorMsg, phone, bdate, news, slider, employeeID)
VALUES
	('Mickey', 'mickey@me.com', 'Hello', '208-111-1234', '1999/1/20', 0, 1, 1),
	('Minnie', 'minnie@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Daisy', 'daisy@me.com', 'Duck', '208-111-5234', '1989/1/20', 0, 1, 1),
	('Donald', 'don@me.com', 'The duck', '205-123-1234', '2010/1/20', 0, 1, 1),
	('Huey', 'huey@me.com', '1234', '208-122-1234', '2003/3/20', 0, 1, 1),
	('Dewey', 'dewey@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Louie', 'louie@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Elmer', 'elmer@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Goofy', 'goofy@me.com', 'Bye', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Winnie', 'winnie@me.com', 'the pooh', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Pluto', 'pluto@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Chip', 'chip@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Dale', 'dale@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Clarabelle', 'clara@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Scrooge', 'scrooge@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Ludwig', 'lud@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Max', 'max@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Mortimer', 'mort@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Figaro', 'figaro@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1),
	('Horace', 'horace@me.com', 'Hi', '208-123-1234', '2000/1/20', 0, 1, 1);
	
	