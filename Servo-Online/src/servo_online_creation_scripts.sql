create database servo_online;

use servo_online;

CREATE TABLE `organization` (
  `id` char(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `lastupdatedtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `id` char(50) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `lastupdatedtime` timestamp NULL DEFAULT NULL,
  `orgid_fk` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `usertype` (
  `id` char(50) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `orders` (
  `id` char(50) NOT NULL,
  `userid_fk` varchar(50) NOT NULL,
  `orderPlacedDate` date DEFAULT NULL,
  `orderDeliveredDate` date DEFAULT NULL,
  `orderAmount` varchar(45) DEFAULT NULL,
  `orderstatus` varchar(45) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT NULL,
  `lastupdatedtime` timestamp NULL DEFAULT NULL,
  `productid` char(50) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_fk_idx` (`userid_fk`),
  KEY `productid_idx` (`productid`),
  CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userid_fk` FOREIGN KEY (`userid_fk`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `product` (
  `id` char(50) NOT NULL,
  `skucode` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `salesprice` varchar(255) DEFAULT NULL,
  `productamount` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `orgid_fk` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `orderstatus` (
  `id` varchar(100) NOT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `servo_online`.`usertype`(`id`,`role`) VALUES (1,'customer');
INSERT INTO `servo_online`.`usertype`(`id`,`role`) VALUES (2,'operator');
INSERT INTO `servo_online`.`usertype`(`id`,`role`) VALUES (3,'administrator');


INSERT INTO `servo_online`.`orderstatus`(`id`,`order_status`) VALUES(1,'new order');
INSERT INTO `servo_online`.`orderstatus`(`id`,`order_status`) VALUES(2,'cancel');
INSERT INTO `servo_online`.`orderstatus`(`id`,`order_status`) VALUES(3,'delete');
INSERT INTO `servo_online`.`orderstatus`(`id`,`order_status`) VALUES(4,'completely processed');
INSERT INTO `servo_online`.`orderstatus`(`id`,`order_status`) VALUES(5,'partially processed');





