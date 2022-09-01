-- Yanira Manzano
-- Database Concepts: Project

create database Grocery_Store_Sales_Records;
use Grocery_Store_Sales_Records;


CREATE TABLE CUSTOMER(
  Customer_ID 		INT 			NOT NULL AUTO_INCREMENT,
  Last_Name 		char(25) 		NOT NULL,
  First_Name 		char(25) 		NOT NULL,
  State 			char(10) 		NOT NULL,
  Country 			char(10) 		NOT NULL,
  PRIMARY KEY (Customer_ID)
);
   
CREATE TABLE PRODUCT(
  Product_Name 		char(25) 		NOT NULL  	PRIMARY KEY,
  Uni_Price		 	decimal(10,2) 	NOT NULL
);
    
Create table ORDERING(
	Customer_ID		INT				NOT NULL,
	Product_Name  	Char(25)		NOT NULL,
    Order_Date		Varchar(25)		NOT NULL,
    Quantity		Char(25)		NOT NULL,
	CONSTRAINT 			C_P_PK 			PRIMARY KEY(Product_Name, Customer_ID),
	CONSTRAINT 			C_P_CUSTOMER_FK    FOREIGN KEY(Customer_ID)
							REFERENCES CUSTOMER(Customer_ID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
	CONSTRAINT 			C_P_PRODUCT_FK  FOREIGN KEY(Product_Name)
							REFERENCES PRODUCT(Product_Name)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
);
    
    
    
/*****   CUSTOMER VALUES   **************************************************************/
INSERT INTO CUSTOMER VALUES(
DEFAULT,'TEMPLIN', 'PETER', 'UT', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT,'GUSSOFF', 'SEAN', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'MOYERS', 'TYLER', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'ABRAHAM', 'SIMONE', 'WY', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'MONTGOMERY', 'JOHN', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'SCOTT', 'LAUREN', 'AZ', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'CHAN', 'KEVIN', 'AZ', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'DELLOSSO', 'KAREN', 'NV', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'EMSELLEM', 'ANDREW', 'AZ', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'FINGERMAN', 'KEVIN', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'LOSHAK', 'AMANDA', '0', 'FRANCE');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'CHAN', 'WILLIAM', 'NY', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'WANG', 'CORT', 'CA', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'ROY', 'DYLAN', 'KY', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'TRAN', 'ZACHARY', 'TX', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'GALANTE', 'MAX', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'MURATOVA', 'LISA', 'AZ', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'HEINCHON', 'BRYCE', 'NV', 'CANADA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'SCHWARTZ', 'ELIZABETH', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'DWECK', 'NAVIN', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'HOAK', 'BEN', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'ARGUETA', 'KALEIGH', 'CA', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'GOSWAMI', 'NICHOLAS', 'AZ', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'OLEARY', 'DAVID', '0', 'CANADA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'GREENE', 'DAQUAN', 'NV', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'MCQUEEN', 'TAYLOR', 'CO', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'YANG', 'IAN', '0', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'CARLIN', 'MANUEL', 'NV', 'USA');

INSERT INTO CUSTOMER VALUES(
DEFAULT, 'GREENIE', 'PAIGE', '0', 'MEXICO');



/*****   PRODUCT VALUES   **************************************************************/
INSERT INTO PRODUCT VALUES(
'apple', '0.45');
INSERT INTO PRODUCT VALUES(
'avocado', '1.25');
INSERT INTO PRODUCT VALUES(
'grapefruit', '1.5');
INSERT INTO PRODUCT VALUES(
'watermelon', '2.75');
INSERT INTO PRODUCT VALUES(
'pear', '0.7');


/*****   ORDERING VALUES   **************************************************************/
INSERT INTO ORDERING VALUES
(1, 'apple', '07/01/2011', '1'),
(2, 'apple', '07/01/2011', '1'),
(2, 'avocado', '07/01/2011', '2'),
(3, 'avocado', '07/01/2011', '2'),
(4, 'grapefruit', '07/01/2011', '5'),
(5, 'avocado', '07/01/2011', '4'),
(6, 'watermelon', '07/01/2011', '4'),
(7, 'pear', '07/01/2011', '1'),
(8, 'apple', '07/01/2011', '3'),
(9, 'grapefruit', '07/01/2011', '1'),
(9, 'avocado', '07/01/2011', '1'),
(9, 'watermelon', '07/01/2011', '4'),
(10, 'pear', '07/01/2011', '4'),
(11, 'apple', '07/01/2011', '3'),
(12, 'apple', '07/01/2011', '4'),
(13, 'apple', '07/01/2011', '3'),
(14, 'pear', '07/01/2011', '2'),
(15, 'watermelon', '07/01/2011', '4'),
(16, 'watermelon', '07/01/2011', '3'),
(17, 'avocado', '07/01/2011', '2'),
(18, 'grapefruit', '07/01/2011', '1'),
(19, 'watermelon', '07/01/2011', '1'),
(20, 'pear', '07/01/2011', '1'),
(21, 'watermelon', '07/01/2011', '1'),
(22, 'grapefruit', '07/01/2011', '1'),
(22, 'pear', '07/01/2011', '1'),
(23, 'pear', '07/01/2011', '1'),
(24, 'apple', '07/01/2011', '1'),
(25, 'apple', '07/01/2011', '1'),
(26, 'apple', '07/01/2011', '1'),
(27, 'watermelon', '07/01/2011', '1'),
(28, 'apple', '07/01/2011', '2'),
(28, 'grapefruit', '07/01/2011', '1'),
(29, 'apple', '07/01/2011', '1');
