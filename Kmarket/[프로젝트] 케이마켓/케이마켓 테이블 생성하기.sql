#날짜 : 2021/07/20
#이름 : 김철학
#내용 : 케이마켓 테이블 설계

CREATE TABLE `km_category1` (
	`cate1`	TINYINT PRIMARY KEY,
	`title`	VARCHAR(100)
);
CREATE TABLE `km_category2` (	
	`cate1`	TINYINT,
	`cate2`	TINYINT,
	`title`	VARCHAR(100)
);

CREATE TABLE `km_member` (
	`type`		TINYINT,
	`uid`		VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`gender`	TINYINT,
	`hp`		CHAR(13),
	`email`	VARCHAR(100),
	`point`	INT DEFAULT 0,
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`company`	 VARCHAR(20),
	`ceo`			 VARCHAR(20),
	`bizRegNum`	 CHAR(12),
	`commRepNum` VARCHAR(100),
	`tel`			 VARCHAR(20),
	`manager`	 VARCHAR(20),
	`managerHp`  CHAR(13),
	`fax`			 VARCHAR(20),
	`ip`			 VARCHAR(100),
	`leaveDate`	 DATETIME,
	`rdate`		 DATETIME,
	`etc1`		 INT,
	`etc2`		 INT,
	`etc3`		 VARCHAR(100),
	`etc4`		 VARCHAR(100),
	`etc5`		 VARCHAR(100)
);

CREATE TABLE `km_terms` (
	`terms`		TEXT,
	`privacy`	TEXT,
	`location`	TEXT,
	`finance`	TEXT,
	`tax`			TEXT
);
CREATE TABLE `km_point` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(20),
	`code`	INT,
	`price`	INT,
	`point`	INT,
	`rdate`	DATETIME
);
CREATE TABLE `km_product` (
	`code`		INT(10) ZEROFILL AUTO_INCREMENT PRIMARY KEY,
	`cate1`		TINYINT,
	`cate2`		TINYINT,
	`name`		VARCHAR(100),
	`descript`	VARCHAR(100),
	`company`	VARCHAR(100),
	`seller`		VARCHAR(20),
	`price`		INT,
	`discount`	TINYINT,
	`point`		INT,
	`stock`		INT,
	`sold`		INT,
	`delivery`	INT,
	`hit`			INT,
	`score`		INT,
	`review`		INT,
	`thumb1`		VARCHAR(255),
	`thumb2`		VARCHAR(255),
	`thumb3`		VARCHAR(255),
	`detail`		VARCHAR(255),
	`status`		VARCHAR(20),
	`dutyFree`	VARCHAR(20),
	`receipt`	VARCHAR(20),
	`bizClass`	VARCHAR(20),
	`origin`		VARCHAR(20),
	`ip`			VARCHAR(100),
	`rdate`		DATETIME,
	`etc1`		INT,
	`etc2`		INT,
	`etc3`		VARCHAR(100),
	`etc4`		VARCHAR(100),
	`etc5`		VARCHAR(100)
);
CREATE TABLE `km_product_cart` (
	`cartId`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`			VARCHAR(20),
	`productCode` 	INT,
	`count`			INT,
	`price`			INT,
	`discount`		INT,
	`point`			INT,
	`delivery`		INT,
	`total`			INT,
	`rdate`			DATETIME
);
CREATE TABLE `km_product_order` (
	`orderId`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`			VARCHAR(20),
	`count`			INT DEFAULT 0,
	`price`			INT DEFAULT 0,
	`discount`		INT DEFAULT 0,
	`point`			INT DEFAULT 0,
	`applyPoint`	INT DEFAULT 0,
	`delivery`		INT DEFAULT 0,
	`total`			INT DEFAULT 0,
	`orderer`		VARCHAR(20),
	`hp`			CHAR(13),
	`zip`			CHAR(5),
	`addr1`			VARCHAR(255),
	`addr2`			VARCHAR(255),
	`payment`   	TINYINT,
	`complete`		TINYINT,
	`rdate`			DATETIME,
	`completeDate`	DATETIME
);

CREATE TABLE `km_product_order_detail` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`orderId` INT,
	`productCode` INT
);

CREATE TABLE `km_product_review` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`code`		INT,
	`content`	VARCHAR(255),
	`uid`			VARCHAR(20),
	`rating`		TINYINT,
	`regip`			VARCHAR(100),
	`rdate`		DATETIME
);

