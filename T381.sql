/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t381`;
CREATE DATABASE IF NOT EXISTS `t381` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t381`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'meirongxiangm_types', '美容项目类型', 1, '美容项目类型1', NULL, NULL, '2023-05-03 06:41:32'),
	(2, 'meirongxiangm_types', '美容项目类型', 2, '美容项目类型2', NULL, NULL, '2023-05-03 06:41:32'),
	(3, 'meirongxiangm_types', '美容项目类型', 3, '美容项目类型3', NULL, NULL, '2023-05-03 06:41:32'),
	(4, 'meirongxiangm_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-05-03 06:41:32'),
	(5, 'meirongxiangm_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-05-03 06:41:32'),
	(6, 'meirongxiangm_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-05-03 06:41:32'),
	(7, 'meirongxiangm_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-05-03 06:41:32'),
	(8, 'meirongxiangm_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-05-03 06:41:32'),
	(9, 'meirongxiangm_order_types', '订单类型', 103, '已完成', NULL, NULL, '2023-05-03 06:41:32'),
	(10, 'meirongxiangm_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-05-03 06:41:32'),
	(11, 'meirongshi_xingji_types', '美容师类型', 1, '美容师类型1', NULL, NULL, '2023-05-03 06:41:32'),
	(12, 'meirongshi_xingji_types', '美容师类型', 2, '美容师类型2', NULL, NULL, '2023-05-03 06:41:32'),
	(13, 'meirongshi_xingji_types', '美容师类型', 3, '美容师类型3', NULL, NULL, '2023-05-03 06:41:32'),
	(14, 'meirongshi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-05-03 06:41:32'),
	(15, 'meirongshi_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-05-03 06:41:32'),
	(16, 'meirongshi_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-05-03 06:41:32'),
	(17, 'meirongshi_order_types', '订单类型', 103, '已完成', NULL, NULL, '2023-05-03 06:41:32'),
	(18, 'meirongshi_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-05-03 06:41:32'),
	(19, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-05-03 06:41:32'),
	(20, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-05-03 06:41:32'),
	(21, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-05-03 06:41:32'),
	(22, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-05-03 06:41:32'),
	(23, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-05-03 06:41:32'),
	(24, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.99', '2023-05-03 06:41:32'),
	(25, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2023-05-03 06:41:33'),
	(26, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.94', '2023-05-03 06:41:33'),
	(27, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-05-03 06:41:33'),
	(28, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-05-03 06:41:33');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongshi_id` int DEFAULT NULL COMMENT '美容师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `meirongshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 104, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(2, '帖子标题2', 2, NULL, NULL, '发布内容2', 299, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, '帖子标题3', 1, NULL, NULL, '发布内容3', 468, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', 62, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', 31, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(6, '帖子标题6', 3, NULL, NULL, '发布内容6', 263, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(7, '帖子标题7', 1, NULL, NULL, '发布内容7', 162, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(8, '帖子标题8', 2, NULL, NULL, '发布内容8', 139, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(9, '帖子标题9', 3, NULL, NULL, '发布内容9', 343, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(10, '帖子标题10', 3, NULL, NULL, '发布内容10', 266, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(11, '帖子标题11', 3, NULL, NULL, '发布内容11', 107, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(12, '帖子标题12', 2, NULL, NULL, '发布内容12', 310, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(13, '帖子标题13', 2, NULL, NULL, '发布内容13', 373, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(14, '帖子标题14', 1, NULL, NULL, '发布内容14', 236, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(15, NULL, 1, NULL, NULL, '1111111111111111111', 14, 2, '2023-05-03 07:06:27', NULL, '2023-05-03 07:06:27'),
	(18, NULL, NULL, 1, NULL, '2222222222', 14, 2, '2023-05-03 07:07:49', NULL, '2023-05-03 07:07:49'),
	(19, NULL, NULL, NULL, 1, '2333333333333333333333', 14, 2, '2023-05-03 07:11:11', NULL, '2023-05-03 07:11:11'),
	(20, NULL, 1, NULL, NULL, '666', 14, 2, '2024-08-13 06:02:45', NULL, '2024-08-13 06:02:45');

DROP TABLE IF EXISTS `meirongshi`;
CREATE TABLE IF NOT EXISTS `meirongshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `meirongshi_name` varchar(200) DEFAULT NULL COMMENT '美容师名称 Search111 ',
  `meirongshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `meirongshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `meirongshi_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `meirongshi_photo` varchar(200) DEFAULT NULL COMMENT '美容师照片 ',
  `meirongshi_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `meirongshi_xingji_types` int DEFAULT NULL COMMENT '美容师类型',
  `meirongshi_content` longtext COMMENT '美容师介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='美容师';

DELETE FROM `meirongshi`;
INSERT INTO `meirongshi` (`id`, `username`, `password`, `meirongshi_name`, `meirongshi_phone`, `meirongshi_email`, `meirongshi_new_money`, `meirongshi_photo`, `meirongshi_price`, `meirongshi_xingji_types`, `meirongshi_content`, `create_time`) VALUES
	(1, '美容师1', '123456', '美容师名称1', '17703786901', '1@qq.com', 179.46, 'upload/meirongshi1.jpg', 306, 3, '美容师介绍1', '2023-05-03 06:42:07'),
	(2, '美容师2', '123456', '美容师名称2', '17703786902', '2@qq.com', 342.72, 'upload/meirongshi2.jpg', 468, 3, '美容师介绍2', '2023-05-03 06:42:07'),
	(3, '美容师3', '123456', '美容师名称3', '17703786903', '3@qq.com', 408.10, 'upload/meirongshi3.jpg', 332, 1, '美容师介绍3', '2023-05-03 06:42:07');

DROP TABLE IF EXISTS `meirongshi_collection`;
CREATE TABLE IF NOT EXISTS `meirongshi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirongshi_id` int DEFAULT NULL COMMENT '美容师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongshi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='美容师收藏';

DELETE FROM `meirongshi_collection`;
INSERT INTO `meirongshi_collection` (`id`, `meirongshi_id`, `yonghu_id`, `meirongshi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 3, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(2, 2, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, 2, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(4, 3, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(5, 3, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(6, 2, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(7, 2, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(8, 1, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(9, 2, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(10, 2, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(11, 2, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(12, 1, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(13, 1, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(15, 3, 1, 1, '2024-08-13 06:02:50', '2024-08-13 06:02:50');

DROP TABLE IF EXISTS `meirongshi_liuyan`;
CREATE TABLE IF NOT EXISTS `meirongshi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirongshi_id` int DEFAULT NULL COMMENT '美容师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongshi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='美容师留言';

DELETE FROM `meirongshi_liuyan`;
INSERT INTO `meirongshi_liuyan` (`id`, `meirongshi_id`, `yonghu_id`, `meirongshi_liuyan_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(2, 2, 2, '留言内容2', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, 3, 2, '留言内容3', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(4, 3, 1, '留言内容4', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(5, 3, 3, '留言内容5', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(6, 3, 1, '留言内容6', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(7, 2, 2, '留言内容7', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(8, 2, 1, '留言内容8', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(9, 2, 1, '留言内容9', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(10, 3, 2, '留言内容10', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(11, 2, 2, '留言内容11', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(12, 1, 1, '留言内容12', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(13, 2, 2, '留言内容13', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(14, 3, 3, '留言内容14', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(15, 2, 1, '111111111', '2023-05-03 07:06:46', '2023-05-03 07:06:46');

DROP TABLE IF EXISTS `meirongshi_order`;
CREATE TABLE IF NOT EXISTS `meirongshi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirongshi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `meirongshi_id` int DEFAULT NULL COMMENT '美容师',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongshi_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `meirongshi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meirongshi_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `meirongshi_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='美容师预约';

DELETE FROM `meirongshi_order`;
INSERT INTO `meirongshi_order` (`id`, `meirongshi_order_uuid_number`, `meirongshi_id`, `yonghu_id`, `meirongshi_order_time`, `meirongshi_order_true_price`, `meirongshi_order_types`, `meirongshi_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1683096843662', 1, 1, '2023-05-03 06:54:00', 179.46, 103, 1, '2023-05-03 06:54:04', '2023-05-03 06:54:04'),
	(2, '1683097571706', 2, 1, '2023-05-04 05:00:00', 342.72, 102, 1, '2023-05-03 07:06:12', '2023-05-03 07:06:12');

DROP TABLE IF EXISTS `meirongxiangm`;
CREATE TABLE IF NOT EXISTS `meirongxiangm` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meirongxiangm_name` varchar(200) DEFAULT NULL COMMENT '美容项目名称  Search111 ',
  `meirongxiangm_photo` varchar(200) DEFAULT NULL COMMENT '美容项目照片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `meirongxiangm_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `meirongxiangm_types` int DEFAULT NULL COMMENT '美容项目类型 Search111',
  `meirongxiangm_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `meirongxiangm_clicknum` int DEFAULT NULL COMMENT '美容项目热度',
  `meirongxiangm_content` longtext COMMENT '美容项目介绍 ',
  `meirongxiangm_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目';

DELETE FROM `meirongxiangm`;
INSERT INTO `meirongxiangm` (`id`, `meirongxiangm_name`, `meirongxiangm_photo`, `zan_number`, `cai_number`, `meirongxiangm_new_money`, `meirongxiangm_types`, `meirongxiangm_price`, `meirongxiangm_clicknum`, `meirongxiangm_content`, `meirongxiangm_delete`, `insert_time`, `create_time`) VALUES
	(1, '美容项目名称1', 'upload/meirong1.jpg', 449, 144, 375.06, 1, 51, 96, '美容项目介绍1', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(2, '美容项目名称2', 'upload/meirong2.jpg', 285, 167, 58.10, 3, 248, 407, '美容项目介绍2', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, '美容项目名称3', 'upload/meirong3.jpg', 311, 68, 267.73, 1, 133, 324, '美容项目介绍3', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(4, '美容项目名称4', 'upload/meirong4.jpg', 219, 247, 183.74, 1, 389, 31, '美容项目介绍4', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(5, '美容项目名称5', 'upload/meirong5.jpg', 386, 118, 191.70, 2, 116, 77, '美容项目介绍5', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(6, '美容项目名称6', 'upload/meirong6.jpg', 389, 483, 462.55, 3, 498, 389, '美容项目介绍6', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(7, '美容项目名称7', 'upload/meirong7.jpg', 201, 327, 375.06, 3, 369, 318, '美容项目介绍7', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(8, '美容项目名称8', 'upload/meirong1.jpg', 9, 501, 388.29, 2, 495, 284, '美容项目介绍8', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(9, '美容项目名称9', 'upload/meirong2.jpg', 363, 320, 389.38, 1, 315, 121, '美容项目介绍9', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(10, '美容项目名称10', 'upload/meirong3.jpg', 165, 427, 413.38, 2, 154, 283, '美容项目介绍10', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(11, '美容项目名称11', 'upload/meirong4.jpg', 310, 48, 280.00, 3, 399, 408, '美容项目介绍11', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(12, '美容项目名称12', 'upload/meirong5.jpg', 90, 397, 299.43, 1, 376, 50, '美容项目介绍12', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(13, '美容项目名称13', 'upload/meirong6.jpg', 323, 66, 315.68, 2, 237, 79, '美容项目介绍13', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(14, '美容项目名称14', 'upload/meirong7.jpg', 500, 101, 348.50, 2, 418, 234, '美容项目介绍14', 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07');

DROP TABLE IF EXISTS `meirongxiangm_collection`;
CREATE TABLE IF NOT EXISTS `meirongxiangm_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirongxiangm_id` int DEFAULT NULL COMMENT '美容项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongxiangm_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目收藏';

DELETE FROM `meirongxiangm_collection`;
INSERT INTO `meirongxiangm_collection` (`id`, `meirongxiangm_id`, `yonghu_id`, `meirongxiangm_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, 3, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(4, 4, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(5, 5, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(6, 6, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(8, 8, 2, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(9, 9, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(10, 10, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(11, 11, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(12, 12, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(13, 13, 3, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(14, 14, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07');

DROP TABLE IF EXISTS `meirongxiangm_liuyan`;
CREATE TABLE IF NOT EXISTS `meirongxiangm_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirongxiangm_id` int DEFAULT NULL COMMENT '美容项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongxiangm_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目留言';

DELETE FROM `meirongxiangm_liuyan`;
INSERT INTO `meirongxiangm_liuyan` (`id`, `meirongxiangm_id`, `yonghu_id`, `meirongxiangm_liuyan_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(2, 2, 3, '留言内容2', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, 3, 1, '留言内容3', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(4, 4, 1, '留言内容4', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(5, 5, 2, '留言内容5', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(6, 6, 3, '留言内容6', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(7, 7, 1, '留言内容7', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(8, 8, 2, '留言内容8', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(9, 9, 2, '留言内容9', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(10, 10, 3, '留言内容10', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(11, 11, 3, '留言内容11', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(12, 12, 2, '留言内容12', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(13, 13, 1, '留言内容13', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(14, 14, 2, '留言内容14', '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(15, 6, 1, '22222222', '2023-05-03 07:07:08', '2023-05-03 07:07:08');

DROP TABLE IF EXISTS `meirongxiangm_order`;
CREATE TABLE IF NOT EXISTS `meirongxiangm_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirongxiangm_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `meirongxiangm_id` int DEFAULT NULL COMMENT '美容项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meirongxiangm_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `meirongxiangm_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meirongxiangm_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `meirongxiangm_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='美容项目订单';

DELETE FROM `meirongxiangm_order`;
INSERT INTO `meirongxiangm_order` (`id`, `meirongxiangm_order_uuid_number`, `meirongxiangm_id`, `yonghu_id`, `meirongxiangm_order_time`, `meirongxiangm_order_true_price`, `meirongxiangm_order_types`, `meirongxiangm_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1683097553192', 2, 1, '2023-05-06 07:05:49', 58.10, 103, 1, '2023-05-03 07:05:53', '2023-05-03 07:05:53'),
	(2, '1723528979553', 11, 1, '2024-08-13 06:02:58', 280.00, 101, 1, '2024-08-13 06:03:00', '2024-08-13 06:03:00');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告通知';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-05-03 06:42:07', '公告详情1', '2023-05-03 06:42:07'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-05-03 06:42:07', '公告详情2', '2023-05-03 06:42:07'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-05-03 06:42:07', '公告详情3', '2023-05-03 06:42:07'),
	(4, '公告标题4', 1, 'upload/news4.jpg', '2023-05-03 06:42:07', '公告详情4', '2023-05-03 06:42:07'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-05-03 06:42:07', '公告详情5', '2023-05-03 06:42:07'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-05-03 06:42:07', '公告详情6', '2023-05-03 06:42:07'),
	(7, '公告标题7', 2, 'upload/news7.jpg', '2023-05-03 06:42:07', '公告详情7', '2023-05-03 06:42:07'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-05-03 06:42:07', '公告详情8', '2023-05-03 06:42:07'),
	(9, '公告标题9', 2, 'upload/news9.jpg', '2023-05-03 06:42:07', '公告详情9', '2023-05-03 06:42:07'),
	(10, '公告标题10', 1, 'upload/news10.jpg', '2023-05-03 06:42:07', '公告详情10', '2023-05-03 06:42:07'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-05-03 06:42:07', '公告详情11', '2023-05-03 06:42:07'),
	(12, '公告标题12', 3, 'upload/news12.jpg', '2023-05-03 06:42:07', '公告详情12', '2023-05-03 06:42:07'),
	(13, '公告标题13', 3, 'upload/news13.jpg', '2023-05-03 06:42:07', '公告详情13', '2023-05-03 06:42:07'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-05-03 06:42:07', '公告详情14', '2023-05-03 06:42:07');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '8dqfpnk7o64keeoa37luau35mndb43ku', '2023-05-03 06:49:11', '2024-08-13 07:02:33'),
	(2, 1, 'a1', 'meirongshi', '美容师', 'mmybzl5hy3xb2cfbszutulqg3609kdvw', '2023-05-03 07:07:24', '2024-08-13 07:02:19'),
	(3, 1, 'admin', 'users', '管理员', '0z2v24s5hg69xjvxd1kwn0nqohlfccuh', '2023-05-03 07:08:21', '2024-08-13 07:00:56');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-05-03 06:41:32');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int DEFAULT NULL COMMENT '会员等级',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_new_jifen`, `huiyuandengji_types`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 94.22, 1048.27, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 867.14, 171.88, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', 246.60, 18.98, 1, 1, '2023-05-03 06:42:07', '2023-05-03 06:42:07');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
