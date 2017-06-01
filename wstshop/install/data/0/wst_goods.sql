SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `wst_goods`;
CREATE TABLE `wst_goods` (
  `goodsId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsSn` varchar(20) NOT NULL,
  `productNo` varchar(20) NOT NULL,
  `goodsName` varchar(50) NOT NULL,
  `goodsImg` varchar(150) NOT NULL,
  `marketPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `shopPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `warnStock` int(11) NOT NULL DEFAULT '0',
  `goodsStock` int(11) NOT NULL DEFAULT '0',
  `goodsUnit` char(10) NOT NULL,
  `goodsTips` text,
  `isSale` tinyint(4) NOT NULL DEFAULT '1',
  `isBest` tinyint(4) NOT NULL DEFAULT '0',
  `isHot` tinyint(4) NOT NULL DEFAULT '0',
  `isNew` tinyint(4) NOT NULL DEFAULT '0',
  `isRecom` tinyint(4) DEFAULT '0',
  `goodsCatIdPath` varchar(255) DEFAULT NULL,
  `goodsCatId` int(11) NOT NULL,
  `brandId` int(11) DEFAULT '0',
  `goodsDesc` text NOT NULL,
  `saleNum` int(11) NOT NULL DEFAULT '0',
  `saleTime` datetime NOT NULL,
  `visitNum` int(11) DEFAULT '0',
  `appraiseNum` int(11) DEFAULT '0',
  `gallery` text,
  `goodsSeoKeywords` varchar(200) DEFAULT NULL,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`goodsId`),
  KEY `goodsStatus` (`dataFlag`,`isSale`) USING BTREE,
  KEY `goodsCatIdPath` (`goodsCatIdPath`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;