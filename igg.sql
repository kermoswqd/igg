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
(NULL,2, '2c (5).jpg', '2d (5).jpg'),
(NULL,3, '3c (1).jpg', '3d (1).jpg'),
(NULL,3, '3c (2).jpg', '3d (2).jpg'),
(NULL,3, '3c (3).jpg', '3d (3).jpg'),
(NULL,3, '3c (4).jpg', '3d (4).jpg'),
(NULL,3, '3c (5).jpg', '3d (5).jpg'),
(NULL,4, '4c (1).jpg', '4d (1).jpg'),
(NULL,4, '4c (2).jpg', '4d (2).jpg'),
(NULL,4, '4c (3).jpg', '4d (3).jpg'),
(NULL,4, '4c (4).jpg', '4d (4).jpg'),
(NULL,4, '4c (5).jpg', '4d (5).jpg'),
(NULL,5, '5c (1).jpg', '5d (1).jpg'),
(NULL,5, '5c (2).jpg', '5d (2).jpg'),
(NULL,5, '5c (3).jpg', '5d (3).jpg'),
(NULL,5, '5c (4).jpg', '5d (4).jpg'),
(NULL,5, '5c (5).jpg', '5d (5).jpg'),
(NULL,6, '6c (1).jpg', '6d (1).jpg'),
(NULL,6, '6c (2).jpg', '6d (2).jpg'),
(NULL,6, '6c (3).jpg', '6d (3).jpg'),
(NULL,6, '6c (4).jpg', '6d (4).jpg'),
(NULL,6, '6c (5).jpg', '6d (5).jpg'),
(NULL,7, '7c (1).jpg', '7d (1).jpg'),
(NULL,7, '7c (2).jpg', '7d (2).jpg'),
(NULL,7, '7c (3).jpg', '7d (3).jpg'),
(NULL,7, '7c (4).jpg', '7d (4).jpg'),
(NULL,7, '7c (5).jpg', '7d (5).jpg'),
(NULL,8, '8c (1).jpg', '8d (1).jpg'),
(NULL,8, '8c (2).jpg', '8d (2).jpg'),
(NULL,8, '8c (3).jpg', '8d (3).jpg'),
(NULL,8, '8c (4).jpg', '8d (4).jpg'),
(NULL,8, '8c (5).jpg', '8d (5).jpg'),
(NULL,9, '9c (1).jpg', '9d (1).jpg'),
(NULL,9, '9c (2).jpg', '9d (2).jpg'),
(NULL,9, '9c (3).jpg', '9d (3).jpg'),
(NULL,9, '9c (4).jpg', '9d (4).jpg'),
(NULL,9, '9c (5).jpg', '9d (5).jpg'),
(NULL,10, '10c (1).jpg', '10d (1).jpg'),
(NULL,10, '10c (2).jpg', '10d (2).jpg'),
(NULL,10, '10c (3).jpg', '10d (3).jpg'),
(NULL,10, '10c (4).jpg', '10d (4).jpg'),
(NULL,10, '10c (5).jpg', '10d (5).jpg'),
(NULL,11, '11c (1).jpg', '11d (1).jpg'),
(NULL,11, '11c (2).jpg', '11d (2).jpg'),
(NULL,11, '11c (3).jpg', '11d (3).jpg'),
(NULL,11, '11c (4).jpg', '11d (4).jpg'),
(NULL,11, '11c (5).jpg', '11d (5).jpg'),
(NULL,12, '12c (1).jpg', '12d (1).jpg'),
(NULL,12, '12c (2).jpg', '12d (2).jpg'),
(NULL,12, '12c (3).jpg', '12d (3).jpg'),
(NULL,12, '12c (4).jpg', '12d (4).jpg'),
(NULL,12, '12c (5).jpg', '12d (5).jpg'),
(NULL,13, '13c (1).jpg', '13d (1).jpg'),
(NULL,13, '13c (2).jpg', '13d (2).jpg'),
(NULL,13, '13c (3).jpg', '13d (3).jpg'),
(NULL,13, '13c (4).jpg', '13d (4).jpg'),
(NULL,13, '13c (5).jpg', '13d (5).jpg'),
(NULL,14, '14c (1).jpg', '14d (1).jpg'),
(NULL,14, '14c (2).jpg', '14d (2).jpg'),
(NULL,14, '14c (3).jpg', '14d (3).jpg'),
(NULL,14, '14c (4).jpg', '14d (4).jpg'),
(NULL,14, '14c (5).jpg', '14d (5).jpg'),
(NULL,15, '15c (1).jpg', '15d (1).jpg'),
(NULL,15, '15c (2).jpg', '15d (2).jpg'),
(NULL,15, '15c (3).jpg', '15d (3).jpg'),
(NULL,15, '15c (4).jpg', '15d (4).jpg'),
(NULL,15, '15c (5).jpg', '15d (5).jpg'),
(NULL,16, '16c (1).jpg', '16d (1).jpg'),
(NULL,16, '16c (2).jpg', '16d (2).jpg'),
(NULL,16, '16c (3).jpg', '16d (3).jpg'),
(NULL,16, '16c (4).jpg', '16d (4).jpg'),
(NULL,16, '16c (5).jpg', '16d (5).jpg'),
(NULL,17, '17c (1).jpg', '17d (1).jpg'),
(NULL,17, '17c (2).jpg', '17d (2).jpg'),
(NULL,17, '17c (3).jpg', '17d (3).jpg'),
(NULL,17, '17c (4).jpg', '17d (4).jpg'),
(NULL,17, '17c (5).jpg', '17d (5).jpg'),
(NULL,18, '18c (1).jpg', '18d (1).jpg'),
(NULL,18, '18c (2).jpg', '18d (2).jpg'),
(NULL,18, '18c (3).jpg', '18d (3).jpg'),
(NULL,18, '18c (4).jpg', '18d (4).jpg'),
(NULL,18, '18c (5).jpg', '18d (5).jpg'),
(NULL,19, '19c (1).jpg', '19d (1).jpg'),
(NULL,19, '19c (2).jpg', '19d (2).jpg'),
(NULL,19, '19c (3).jpg', '19d (3).jpg'),
(NULL,19, '19c (4).jpg', '19d (4).jpg'),
(NULL,19, '19c (5).jpg', '19d (5).jpg'),
(NULL,20, '20c (1).jpg', '20d (1).jpg'),
(NULL,20, '20c (2).jpg', '20d (2).jpg'),
(NULL,20, '20c (3).jpg', '20d (3).jpg'),
(NULL,20, '20c (4).jpg', '20d (4).jpg'),
(NULL,20, '20c (5).jpg', '20d (5).jpg');

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
(1,'1','852.00','1.jpg','异界引路人场景手办','<p>限量珍藏</p><p>所属游戏: 王国纪元</p><p>主要材质: PU</p><p>产品尺寸: 138(L) x 90(W) x 100(H) MM</p>'),
(2,'1','389.00','2.jpg','《王国纪元》膳魔师保温杯','<p>王国纪元×膳魔师：百年品牌，冷暖相伴；最强领主，称霸奇观。</p><p>所属游戏: 王国纪元</p><p>容 量: 500ml</p><p>重量: 约210g</p>'),
(3,'1','153.00','3.jpg',' 《王国纪元》环游记晴雨伞','<p>抗风，防雨，防紫外线，一键开收</p><p>所属游戏: 王国纪元</p><p>伞布面料: 碰击布50D 400T</p><p>伞骨材质: 铝+玻璃纤维</p>'),
(4,'1','78.00','4.jpg','英雄集结鼠标垫','<p>王国纪元，众英雄集结，新款鼠标垫上架！</p><p>所属游戏: 王国纪元</p><p>主要材质: 佳绩布面料、天然橡胶泡发底面</p><p>产品尺寸: 800(L) x 300(W) x 3(D) MM</p>'),
(5,'1','85.00','5.jpg','王国纪元 X GAEL MONFILS联名款泡泡骚手机支架 ','<p>产品款式: 三折自动伞</p><p>所属游戏: 王国纪元</p><p>伞布面料: 碰击布50D 400T</p><p>伞骨材质: 铝+玻璃纤维</p>'),
(6,'1','25.00','6.jpg',' 大脚雪怪钥匙扣','<p>化敌为友？野外Boss为您所用！</p><p>所属游戏: 王国纪元</p><p>产品材质: 锌合金</p><p>产品尺寸: 45(L) x 78(W) x 5(D) MM</p>'),
(7,'1','1412.00','7.jpg',' 英雄手办胜利版套组','<p>主要材质: 佳绩布面料、天然橡胶泡发底面</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.446KG</p><p>产品尺寸: 800(L) x 300(W) x 3(D) MM</p>'),
(8,'1','85.00','8.jpg','海洋之音鼠标垫','<p>主要材质: 优质莱卡布面、环保硅胶</p><p>所属游戏: 王国纪元</p><p>产品尺寸: 260(L) x 210(W) x 30(D) MM</p><p>产品尺寸: 40(L) x 40(W) MM</p>'),
(9,'1','368.00','9.jpg','冰霜翼龙马克杯','<p>神奇的魔物在这里</p><p>所属游戏: 王国纪元</p><p>材质: 陶瓷、PVC</p><p>款式: 冰霜翼龙</p>'),
(10,'1','368.00','10.jpg','格里芬马克杯','<p>神奇的魔物在这里</p><p>所属游戏: 王国纪元</p><p>款式: 格里芬</p><p>材质: 陶瓷、PVC</p>'),
(11,'1','888.00','11.jpg','魔物马克杯套装','<p>神奇的魔物在这里</p><p>所属游戏: 王国纪元</p><p>材质: 陶瓷、PVC</p><p>商品包含: 2个小肚脐马克杯+3个魔物挂件</p>'),
(12,'1','248.00','12.jpg','大个子胜利手办','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.55 KG</p><p>包装尺寸: 135(W) x 115(D) x 165(H) MM</p>'),
(13,'1','415.00','13.jpg','王国纪元精品背包系列-大帝款','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>主要材质: 人造革</p><p>产品尺寸: 430(L) x 330(W) x 100(H) MM</p>'),
(14,'1','195.00','14.jpg','玫瑰骑士手办 胜利版','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.4 KG</p><p>产品尺寸: 70(W) x 70(D) x 155(H) MM</p>'),
(15,'1','195.00','15.jpg','小恶魔手办胜利版','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.35 KG</p><p>产品尺寸: 70(W) x 70(D) x 100(H) MM</p>'),
(16,'1','78.00','16.jpg','英雄远征鼠标垫','<p>主要材质: 佳绩布面料、天然橡胶泡发底面</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.446kg</p><p>产品尺寸: 800(L) x 300(W) x 3(D) MM</p>'),
(17,'1','338.00','17.jpg','仙境守护者手办 胜利版','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.55 KG</p><p>产品尺寸: 110(W) x 105(D) x 115(H) MM</p>'),
(18,'1','258.00','18.jpg','大脚雪怪马克杯挂件','<p>神奇的魔物在这里</p><p>所属游戏: 王国纪元</p><p>款式: 大脚雪怪</p><p>尺寸: 75(W) x 65(H) x 45(D) MM</p>'),
(19,'1','228.00','19.jpg','誓言骑士手办 胜利版','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.5 KG</p><p>产品尺寸: 90(W) x 80(D) x 200(H) MM</p>'),
(20,'1','208.00','20.jpg','光明之子手办 胜利版','<p>主要材质: PVC、ABS</p><p>所属游戏: 王国纪元</p><p>产品重量: 0.4 KG</p><p>产品尺寸: 75(W) x 70(D) x 85(H) MM</p>');

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
(1,'latest','389.00','1.jpg','1_2.jpg','1_3.jpg', '异界引路人场景手办','<p>抱枕毯采用小恶魔为原型，兼具毛毯功能；亲肤的法兰绒材质，有它陪伴战斗，属性加成，所向披靡！</p><p>所属游戏: 王国纪元</p><p>产品材质: 法兰绒</p><p>抱枕尺寸: 400 x 400MM</p>'),
(2,'latest','153.00','2.jpg','2_2.jpg','2_3.jpg', '《王国纪元》膳魔师保温杯 ','<p>抗风，防雨，防紫外线，一键开收</p><p>所属游戏: 王国纪元</p><p>产品款式: 三折自动伞</p><p>伞布面料: 碰击布50D 400T</p>'),
(3,'latest','78.00','3.jpg','3_2.jpg','3_3.jpg', '《王国纪元》环游记晴雨伞','<p>抱枕毯采用小恶魔为原型，兼具毛毯功能；亲肤的法兰绒材质，有它陪伴战斗，属性加成，所向披靡！</p><p>所属游戏: 王国纪元</p><p>产品材质: 法兰绒</p><p>抱枕尺寸: 400 x 400MM</p>'),
(5,'latest','25.00','5.jpg','4_2.jpg','4_3.jpg', '英雄集结鼠标垫','<p>化敌为友？野外Boss为您所用！</p><p>所属游戏: 王国纪元</p><p>产品材质: 锌合金</p><p>产品尺寸: 45(L) x 78(W) x 5(D) MM</p>'),
(7,'hot','85.00','7.jpg','5_2.jpg','5_3.jpg', '王国纪元 X GAEL MONFILS联名款泡泡骚手机支架','<p>所属游戏: 王国纪元</p><p>主要材质: 优质莱卡布面、环保硅胶</p><p>产品尺寸: 260(L) x 210(W) x 30(D) MM</p><p>温馨提示: 本产品用料安全，因密封包装可能存在材质和印刷颜料的轻微异味，于避光处通风24小时即可有效祛除。</p>'),
(9,'hot','415.00','9.jpg','6_2.jpg','6_3.jpg', '大脚雪怪钥匙扣','<p>所属游戏: 王国纪元</p><p>主要材质: 人造革</p><p>产品尺寸: 430(L) x 330(W) x 100(H) MM</p><p>包装尺寸: 450(L) x 350(W) x 100(H) MM'),
(10,'hot','138.00','10.jpg','7-2.jpg','7-3.jpg', ' 英雄手办胜利版套组','<p>抱枕毯采用小恶魔为原型，兼具毛毯功能；亲肤的法兰绒材质，有它陪伴战斗，属性加成，所向披靡！</p><p>所属游戏: 王国纪元</p><p>产品材质: 法兰绒</p><p>抱枕尺寸: 400 x 400MM</p>'),
(12,'hot','78.00','12.jpg','8-2.jpg','8-3.jpg', ' 海洋之音鼠标垫','<p>王国纪元，众英雄集结，新款鼠标垫上架！</p><p>所属游戏: 王国纪元</p><p>主要材质: 佳绩布面料、天然橡胶泡发底面</p><p>产品重量: 0.446KG</p>');























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
