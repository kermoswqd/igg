-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-20 05:13:11
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igg`
--
CREATE DATABASE IF NOT EXISTS `igg` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `igg`;

-- --------------------------------------------------------

--
-- 表的结构 `igg_index_carousel`
--

DROP TABLE IF EXISTS `igg_index_carousel`;
CREATE TABLE `igg_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL
  -- `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `igg_index_carousel`
--

TRUNCATE TABLE `igg_index_carousel`;
--
-- 转存表中的数据 `igg_index_carousel`
--

INSERT INTO `igg_index_carousel` (`cid`, `img`, `title`) VALUES
(1, 'banner1.jpg', '轮播广告商品1'),
(2, 'banner2.jpg', '轮播广告商品2'),
(3, 'banner3.jpg', '轮播广告商品3'),
(4, 'banner4.jpg', '轮播广告商品3');
-- --------------------------------------------------------


-- --
-- -- 插入之前先把表清空（truncate） `igg_index_product`
-- --
DROP TABLE IF EXISTS `igg_img`;
CREATE TABLE `igg_img` (
  `cid` int(11) NOT NULL,
  `cateId` int(11) NOT NULL,
  `carouselImg` varchar(128) DEFAULT NULL,
  `detailImg` varchar(128) DEFAULT NULL
  -- `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `igg_index_carousel`
--

TRUNCATE TABLE `igg_img`;
--
-- 转存表中的数据 `igg_index_carousel`
--

INSERT INTO `igg_img` (`cid`, `cateId`, `carouselImg`, `detailImg`) VALUES
(NULL,1, '1c (1).jpg', '1d (1).jpg'),
(NULL,1, '1c (2).jpg', '1d (2).jpg'),
(NULL,1, '1c (3).jpg', '1d (3).jpg'),
(NULL,1, '1c (4).jpg', '1d (4).jpg'),
(NULL,1, '1c (5).jpg', '1d (5).jpg'),
(NULL,2, '2c (1).jpg', '2d (1).jpg'),
(NULL,2, '2c (2).jpg', '2d (2).jpg'),
(NULL,2, '2c (3).jpg', '2d (3).jpg'),
(NULL,2, '2c (4).jpg', '2d (4).jpg'),
(NULL,2, '2c (5).jpg', '2d (5).jpg');

-- TRUNCATE TABLE `igg_product`;
-- --

DROP TABLE IF EXISTS `igg_allproduct`;
CREATE TABLE `igg_allproduct` (
  `pid` int(11) NOT NULL,
  `cateid` varchar(256) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `desc` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `igg_index_product`
--
-- select * from igg_img ,igg_product where igg_img.cid=igg_product.pid

-- select cateId,carouselImg,detailImg 
TRUNCATE TABLE `igg_allproduct`;
--

INSERT INTO `igg_allproduct` (`pid`, `cateid`,`price`, `img`,`title`, `desc`) VALUES
(1,'1','852.00','1.jpg','异界引路人场景手办','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(2,'1','389.00','2.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(3,'1','153.00','3.jpg',' 《王国纪元》环游记晴雨伞','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(4,'1','78.00','4.jpg','英雄集结鼠标垫','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(5,'1','85.00','5.jpg','王国纪元 X GAEL MONFILS联名款泡泡骚手机支架 ','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(6,'1','25.00','6.jpg',' 大脚雪怪钥匙扣','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(7,'1','1412.00','7.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(8,'1','85.00','8.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(9,'1','368.00','9.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(10,'1','368.00','10.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(11,'1','888.00','11.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(12,'1','248.00','12.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(13,'1','415.00','13.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(14,'1','195.00','14.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(15,'1','195.00','15.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(16,'1','78.00','16.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(17,'1','338.00','17.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(18,'1','258.00','18.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(19,'1','228.00','19.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>'),
(20,'1','208.00','20.jpg','《王国纪元》膳魔师保温杯','<p></p><p>所属游戏: 王国纪元</p><p></p><p></p>');

DROP TABLE IF EXISTS `igg_product`;
CREATE TABLE `igg_product` (
  `pid` int(11) NOT NULL,
  `cateid` varchar(256) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img1` varchar(256) DEFAULT NULL,
  `img2` varchar(256) DEFAULT NULL,
  `img3` varchar(256) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `desc` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `igg_index_product`
--

TRUNCATE TABLE `igg_product`;
--

INSERT INTO `igg_product` (`pid`, `cateid`,`price`, `img1`,`img2`, `img3`,`title`, `desc`) VALUES
(1,'latest','389.00','1_1.jpg','1_2.jpg','1_3.jpg', '《王国纪元》膳魔师保温杯','<p>抱枕毯采用小恶魔为原型，兼具毛毯功能；亲肤的法兰绒材质，有它陪伴战斗，属性加成，所向披靡！</p><p>所属游戏: 王国纪元</p><p>产品材质: 法兰绒</p><p>抱枕尺寸: 400 x 400MM</p>'),
(2,'latest','153.00','2_1.jpg','2_2.jpg','2_3.jpg', ' 《王国纪元》环游记晴雨伞','<p>抗风，防雨，防紫外线，一键开收</p><p>所属游戏: 王国纪元</p><p>产品款式: 三折自动伞</p><p>伞布面料: 碰击布50D 400T</p>'),
(3,'latest','78.00','3_1.jpg','3_2.jpg','3_3.jpg', '英雄集结鼠标垫','<p>抱枕毯采用小恶魔为原型，兼具毛毯功能；亲肤的法兰绒材质，有它陪伴战斗，属性加成，所向披靡！</p><p>所属游戏: 王国纪元</p><p>产品材质: 法兰绒</p><p>抱枕尺寸: 400 x 400MM</p>'),
(4,'latest','25.00','4_1.jpg','4_2.jpg','4_3.jpg', '大脚雪怪钥匙扣','<p>化敌为友？野外Boss为您所用！</p><p>所属游戏: 王国纪元</p><p>产品材质: 锌合金</p><p>产品尺寸: 45(L) x 78(W) x 5(D) MM</p>'),
(5,'hot','85.00','5_1.jpg','5_2.jpg','5_3.jpg', '海洋之音鼠标垫','<p>所属游戏: 王国纪元</p><p>主要材质: 优质莱卡布面、环保硅胶</p><p>产品尺寸: 260(L) x 210(W) x 30(D) MM</p><p>温馨提示: 本产品用料安全，因密封包装可能存在材质和印刷颜料的轻微异味，于避光处通风24小时即可有效祛除。</p>'),
(6,'hot','415.00','6_1.jpg','6_2.jpg','6_3.jpg', '王国纪元精品背包系列 - 大帝款','<p>所属游戏: 王国纪元</p><p>主要材质: 人造革</p><p>产品尺寸: 430(L) x 330(W) x 100(H) MM</p><p>包装尺寸: 450(L) x 350(W) x 100(H) MM'),
(7,'hot','138.00','7-1.jpg','7-2.jpg','7-3.jpg', ' 小恶魔趣味抱枕毯','<p>抱枕毯采用小恶魔为原型，兼具毛毯功能；亲肤的法兰绒材质，有它陪伴战斗，属性加成，所向披靡！</p><p>所属游戏: 王国纪元</p><p>产品材质: 法兰绒</p><p>抱枕尺寸: 400 x 400MM</p>'),
(8,'hot','78.00','8-1.jpg','8-2.jpg','8-3.jpg', ' 英雄集结鼠标垫','<p>王国纪元，众英雄集结，新款鼠标垫上架！</p><p>所属游戏: 王国纪元</p><p>主要材质: 佳绩布面料、天然橡胶泡发底面</p><p>产品重量: 0.446KG</p>');























-- DROP TABLE IF EXISTS `igg_allproduct`;
-- CREATE TABLE `igg_allproduct` (
--   `pid` int(11) NOT NULL,
--   `cateid` varchar(256) NOT NULL,
--   `price` decimal(10,2) DEFAULT NULL,
--   `img` varchar(256) DEFAULT NULL,
--   `title` varchar(64) DEFAULT NULL,
--   `desc` varchar(128) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- -- 插入之前先把表清空（truncate） `igg_index_product`


-- TRUNCATE TABLE `igg_allproduct`;
-- --





-- --
-- -- 插入之前先把表清空（truncate） `igg_index_carousel`
-- --

-- TRUNCATE TABLE `igg_img`;
-- --
-- -- 转存表中的数据 `igg_index_carousel`
-- --

--------------------------------------------------------

--
-- 表的结构 `igg_laptop`
--

-- 插入之前先把表清空（truncate） `igg_order_detail`
--
-------------------------------------------------

--
-- 表的结构 `igg_receiver_address`
--


--
-- 插入之前先把表清空（truncate） `igg_receiver_address`
--

--
-- 插入之前先把表清空（truncate） `igg_shoppingcart_item`
--
--------

--
-- 表的结构 `igg_user`
--

DROP TABLE IF EXISTS `igg_user`;
CREATE TABLE `igg_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `igg_user`
--

TRUNCATE TABLE `igg_user`;
--
-- 转存表中的数据 `igg_user`
--

INSERT INTO `igg_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', 1),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0),
(5, 'formosa', '12345678', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igg_index_carousel`
--
ALTER TABLE `igg_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
--
ALTER TABLE `igg_product`
  ADD PRIMARY KEY (`pid`);

--
--


--
ALTER TABLE `igg_user`
  ADD PRIMARY KEY (`uid`);

--
--

--
-- 使用表AUTO_INCREMENT `igg_index_carousel`
--
ALTER TABLE `igg_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `igg_index_product`
--
ALTER TABLE `igg_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--


--
-- 使用表AUTO_INCREMENT `igg_user`
--
ALTER TABLE `igg_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
