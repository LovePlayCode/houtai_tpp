/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : tpp

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 09/08/2022 17:45:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` varchar(255) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL,
  `u_title` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `u_image` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `u_praise` varchar(255) DEFAULT NULL COMMENT '获得点赞',
  `com_date` varchar(255) DEFAULT NULL COMMENT '评价时间',
  `u_star` varchar(255) DEFAULT NULL COMMENT '用户评价',
  `comment` varchar(900) DEFAULT NULL COMMENT '评价内容',
  `mc_id` varchar(255) DEFAULT NULL COMMENT '属于哪个热评标签',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评价表;';

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` (`c_id`, `t_id`, `u_title`, `u_image`, `u_praise`, `com_date`, `u_star`, `comment`, `mc_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('305431123', '1355078', 't**0', 'https://gw.alicdn.com/TB1e4rMt8Bh1e4jSZFhXXcC9VXa-240-240.png', '805', '2022-07-25 21:24:08.000000', '10', '非常好看，腾哥走硬核科幻片比搞笑片更厉害，冲就行了！！', 'SHOW', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `comment` (`c_id`, `t_id`, `u_title`, `u_image`, `u_praise`, `com_date`, `u_star`, `comment`, `mc_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('305456064', '1355078', '丹**哦', 'https://gw.alicdn.com/i3/112969325/O1CN01j606Z22IktwbqRSfr_!!112969325-0-userheaderimgshow.jpg', '879', '2022-07-26 11:57:38.000000', '10', '其实看之前没有抱着特别大的期待，一个是近几年确实没有看到过自己很喜欢的电影，一个是夏洛确实也算是开麻天花板一样的存在了，但是看完我想说，在我心里，《独行月球》是超过《夏洛特烦恼》的。喜剧的内核是悲剧，这句话经常会在喜剧演员的采访中听到，作为一个乐观的悲观主义，可以理解这句话的意义，但从未直观的感受过，我觉得独月让我感受到了，至少在我心里这部电影不是一部纯喜剧，看到结尾的时候我好想说“开心麻花，我没惹你们任何人”，但很神奇，出了影院，我是开心的，并不会被这个结局扎心，或许这就是开麻的高明之处吧。腾哥一如既往的好笑，而且越正经越好笑也是很奇怪，丽姐好适合马蓝星这个角色，别说独孤月了，我也好爱她，毕竟干练又不失温柔的指挥长谁能不爱呢。你是如何认识到自己平庸的？是否想过要挣脱平庸的枷锁？其实，当每一个平凡人，在该站出来的时候站出来，点亮一束光，平凡人就成为了英雄。不能展开说了，感觉自己要剧透，大家进影院去看吧，《独行月球》入股不亏！', 'SHOW', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `comment` (`c_id`, `t_id`, `u_title`, `u_image`, `u_praise`, `com_date`, `u_star`, `comment`, `mc_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('305477347', '1355078', '谜**猪', 'https://gw.alicdn.com/TB1ZbSH4AL0gK0jSZFtXXXQCXXa-240-240.png', '629', '2022-07-27 21:28:12.000000', '10', '用最认真的特效，讲最浪漫的喜剧～', 'SHOW', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `comment` (`c_id`, `t_id`, `u_title`, `u_image`, `u_praise`, `com_date`, `u_star`, `comment`, `mc_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('305478078', '1355078', '夏**卜', 'https://gw.alicdn.com/i1/6000000000697/TB2lN1gjXOWBuNjy0FiXXXFxVXa_!!0-mytaobao.jpg', '602', '2022-07-27 10:49:04.000000', '10', '真心很棒，推荐大家去看。第一次想二刷的电影，前半部分非常的搞笑，哈哈哈。沈马yyds', 'SHOW', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `comment` (`c_id`, `t_id`, `u_title`, `u_image`, `u_praise`, `com_date`, `u_star`, `comment`, `mc_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('305986304', '1355078', '嘻**西', 'https://gw.alicdn.com/i4/TB2STdjuRjTBKNjSZFNXXasFXXa_!!0-mytaobao.jpg', '191', '2022-08-02 20:52:40.000000', '10', '实在是意想不到的观影感受，本来是觉得很扯的剧情，但是狠狠的代入电影了，开心麻花在成长，无数次泪水盈满，最后也是流着泪离开影院真的满满的悲伤，不是剧情而是一直真的深陷独孤月的痛苦，没有什么大义或者英雄的感动，就是真的被带入了独孤月的孤单，宇宙那么大….突然理解喜剧的核心是悲剧，上次看什么哭都不记得了但是这次为了独孤月', 'SHOW', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for m_movie
-- ----------------------------
DROP TABLE IF EXISTS `m_movie`;
CREATE TABLE `m_movie` (
  `t_id` varchar(255) NOT NULL COMMENT '电影详情主键',
  `t_title` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `t_score` varchar(255) DEFAULT NULL COMMENT '电影评分',
  `t_persons` varchar(255) DEFAULT NULL COMMENT '评价人数',
  `t_director` varchar(255) DEFAULT NULL COMMENT '导演',
  `t_actors` varchar(255) DEFAULT NULL COMMENT '演员',
  `t_image` varchar(255) DEFAULT NULL COMMENT '电影图片链接或地址',
  `t_type` varchar(255) DEFAULT NULL COMMENT '电影类型',
  `openTime` varchar(255) DEFAULT NULL COMMENT '上映时间',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影首页表';

-- ----------------------------
-- Records of m_movie
-- ----------------------------
BEGIN;
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1344331', '一直一直都很喜欢你', '8.3', '2224 人评', '吴家凯, 张智鸿', '周依然,吴念轩,汤加文,翁楚汉,吴彦姝', 'https://gw.alicdn.com/i2/O1CN01UiuUB11gWI2nh6oqm_!!6000000004149-0-alipicbeacon.jpg', '爱情', '2022-07-22 08:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1346863', '外太空的莫扎特', '9.0', '6.1万 人评', '陈思诚', '黄渤,荣梓杉,莫扎特,姚晨', 'https://gw.alicdn.com/i2/O1CN012GG4oW1mNwWAbxffI_!!6000000004943-0-alipicbeacon.jpg', '家庭,奇幻,喜剧', '2022-07-15 17:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1355078', '独行月球', '0', '0', '张吃鱼', '沈腾,马丽,常远,李诚儒,黄才伦,辣目洋子', 'https://gw.alicdn.com/i3/O1CN01fhjYgd1wuaupGm1eg_!!6000000006368-0-alipicbeacon.jpg', '喜剧,科幻', '2022-07-29 09:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1369013', '海底小纵队：洞穴大冒险', '8.8', '1.2万 人评', '布莱尔.西蒙斯, 周沁', '郭盛,苏俣,方宇,曹凯,特瑞萨·加拉赫,周湘宁,郭盛', 'https://gw.alicdn.com/i3/O1CN011yczvW1KogOvfSoz4_!!6000000001211-0-alipicbeacon.jpg', '冒险,动画,喜剧', '2022-07-09', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1374316', '人生大事', '9.5', '34.2万 人评', '刘江江', '朱一龙,杨恩又,王戈,刘陆,罗京民', 'https://gw.alicdn.com/i4/O1CN01EOBHTV21mPumeC0Ju_!!6000000007027-0-alipicbeacon.jpg', '剧情,家庭', '2022-06-24 18:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1378073', '开心超人之英雄的心', '0', '0', '黄伟明, 何思恩, 何赞贤, 黄雅婷, 李薇薇', '刘红韵,邓玉婷,严彦子,祖晴', 'https://gw.alicdn.com/i4/O1CN01l2ieW61bAhI58FIc7_!!6000000003425-0-alipicbeacon.jpg', '动画,喜剧,科幻', '2022-07-22 09:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1419624', '隐入尘烟', '9.2', '1.2万 人评', '李睿珺', '海清,武仁林', 'https://gw.alicdn.com/i2/O1CN01duNWiW1HDdW8WG6ac_!!6000000000724-0-alipicbeacon.jpg', '剧情,爱情', '2022-07-08', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('180265', '七人乐队', '0', '0', '洪金宝, 许鞍华, 谭家明, 袁和平, 杜琪峰, 林岭东, 徐克', '洪天明,吴镇宇,马赛,余香凝', 'https://gw.alicdn.com/i3/O1CN01yLAqqL1PkcyApVky3_!!6000000001879-0-alipicbeacon.jpg', '剧情', '2022-07-29 18:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('511507', '侏罗纪世界3', '7.9', '21.5万 人评', '科林·特莱沃若', '克里斯·帕拉特,布莱斯·达拉斯·霍华德,山姆·尼尔,劳拉·邓恩', 'https://gw.alicdn.com/i3/O1CN018va4OM1vpGgYpdMAX_!!6000000006221-0-alipicbeacon.jpg', '动作,科幻,冒险', '2022-06-10', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `m_movie` (`t_id`, `t_title`, `t_score`, `t_persons`, `t_director`, `t_actors`, `t_image`, `t_type`, `openTime`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('534395', '神探大战', '9.2', '17.2万 人评', '韦家辉', '刘青云,蔡卓妍,林峯', 'https://gw.alicdn.com/i3/O1CN01GPQ3OC1aMJiqpjpRG_!!6000000003315-0-alipicbeacon.jpg', '犯罪,动作,悬疑', '2022-07-08 18:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for m_session
-- ----------------------------
DROP TABLE IF EXISTS `m_session`;
CREATE TABLE `m_session` (
  `ms_id` varchar(255) NOT NULL,
  `start_time` varchar(255) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(255) DEFAULT NULL COMMENT '结束时间',
  `s_id` varchar(255) DEFAULT NULL COMMENT '关联日期场次表',
  `t_id` varchar(255) DEFAULT NULL,
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场次表;';

-- ----------------------------
-- Records of m_session
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for movie_artisarts
-- ----------------------------
DROP TABLE IF EXISTS `movie_artisarts`;
CREATE TABLE `movie_artisarts` (
  `ma_id` varchar(255) DEFAULT NULL,
  `t_id` varchar(255) DEFAULT NULL COMMENT '对应电影表id',
  `a_id` varchar(255) DEFAULT NULL COMMENT '对应演职表',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影与演职人员对应表;';

-- ----------------------------
-- Records of movie_artisarts
-- ----------------------------
BEGIN;
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c8642700-0d96-11ed-899e-6a05845fd4d4', '511507', '1098276', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86427aa-0d96-11ed-899e-6a05845fd4d4', '511507', '971784', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86427d2-0d96-11ed-899e-6a05845fd4d4', '511507', '920988', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86427fa-0d96-11ed-899e-6a05845fd4d4', '511507', '930841', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c8642822-0d96-11ed-899e-6a05845fd4d4', '511507', '2242752', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c8642840-0d96-11ed-899e-6a05845fd4d4', '511507', '925777', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c864285e-0d96-11ed-899e-6a05845fd4d4', '511507', '3593338', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c864287c-0d96-11ed-899e-6a05845fd4d4', '511507', '2368484', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c864289a-0d96-11ed-899e-6a05845fd4d4', '511507', '1879816', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86428b8-0d96-11ed-899e-6a05845fd4d4', '511507', '1190036', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86428d6-0d96-11ed-899e-6a05845fd4d4', '511507', '916213', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86428f4-0d96-11ed-899e-6a05845fd4d4', '511507', '1092885', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c8642912-0d96-11ed-899e-6a05845fd4d4', '511507', '926972', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c8642930-0d96-11ed-899e-6a05845fd4d4', '511507', '2227906', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c864294e-0d96-11ed-899e-6a05845fd4d4', '511507', '901781', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c864296c-0d96-11ed-899e-6a05845fd4d4', '511507', '1322165', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c864298a-0d96-11ed-899e-6a05845fd4d4', '511507', '1459358', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86429a8-0d96-11ed-899e-6a05845fd4d4', '511507', '2063767', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86429c6-0d96-11ed-899e-6a05845fd4d4', '511507', '949648', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('c86429e4-0d96-11ed-899e-6a05845fd4d4', '511507', '1881587', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205255c0-1316-11ed-bb17-6a05845fd4d3', '1355078', '1993475', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525660-1316-11ed-bb17-6a05845fd4d3', '1355078', '1248946', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2052569c-1316-11ed-bb17-6a05845fd4d3', '1355078', '2063720', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205256ce-1316-11ed-bb17-6a05845fd4d3', '1355078', '1258470', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205256ec-1316-11ed-bb17-6a05845fd4d3', '1355078', '2227097', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525714-1316-11ed-bb17-6a05845fd4d3', '1355078', '2419278', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525746-1316-11ed-bb17-6a05845fd4d3', '1355078', '3995911', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525764-1316-11ed-bb17-6a05845fd4d3', '1355078', '2064419', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2052578c-1316-11ed-bb17-6a05845fd4d3', '1355078', '2227263', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205257b4-1316-11ed-bb17-6a05845fd4d3', '1355078', '2227261', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205257d2-1316-11ed-bb17-6a05845fd4d3', '1355078', '4211860', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205257f0-1316-11ed-bb17-6a05845fd4d3', '1355078', '2103173', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2052580e-1316-11ed-bb17-6a05845fd4d3', '1355078', '3594643', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525836-1316-11ed-bb17-6a05845fd4d3', '1355078', '1249176', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525854-1316-11ed-bb17-6a05845fd4d3', '1355078', '1525226', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525872-1316-11ed-bb17-6a05845fd4d3', '1355078', '4092600', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('20525890-1316-11ed-bb17-6a05845fd4d3', '1355078', '2163034', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205258b8-1316-11ed-bb17-6a05845fd4d3', '1355078', '2274395', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205258d6-1316-11ed-bb17-6a05845fd4d3', '1355078', '2424179', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_artisarts` (`ma_id`, `t_id`, `a_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('205258fe-1316-11ed-bb17-6a05845fd4d3', '1355078', '2225033', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for movie_cinema
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema`;
CREATE TABLE `movie_cinema` (
  `mn_id` varchar(255) NOT NULL COMMENT '关系主键id',
  `c_id` varchar(255) DEFAULT NULL COMMENT '电影院主键',
  `t_id` varchar(255) DEFAULT NULL COMMENT '电影主键',
  `s_id` varchar(255) DEFAULT NULL,
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`mn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影院与电影多对多关系表;';

-- ----------------------------
-- Records of movie_cinema
-- ----------------------------
BEGIN;
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ccb2-14a1-11ed-ab3b-6a05845fd4d3', '4283', '170753', '3c90c2e4-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90e80a-14a1-11ed-ab3b-6a05845fd4d3', '4283', '170753', '3c90c384-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90f46c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '170753', '3c90c3b6-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ff84-14a1-11ed-ab3b-6a05845fd4d3', '4283', '169572', '3c90c3de-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c910ac4-14a1-11ed-ab3b-6a05845fd4d3', '4283', '169572', '3c90c406-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9117da-14a1-11ed-ab3b-6a05845fd4d3', '4283', '169572', '3c90c424-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9123ba-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1433821', '3c90c44c-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91356c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '37097', '3c90c46a-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c914516-14a1-11ed-ab3b-6a05845fd4d3', '4283', '37097', '3c90c488-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c915056-14a1-11ed-ab3b-6a05845fd4d3', '4283', '180265', '3c90c4a6-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c915c54-14a1-11ed-ab3b-6a05845fd4d3', '4283', '180265', '3c90c4c4-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c916730-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1378073', '3c90c4ec-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9171da-14a1-11ed-ab3b-6a05845fd4d3', '4283', '8397', '3c90c514-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c917d7e-14a1-11ed-ab3b-6a05845fd4d3', '4283', '8397', '3c90c532-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c918828-14a1-11ed-ab3b-6a05845fd4d3', '4283', '325899', '3c90c550-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91926e-14a1-11ed-ab3b-6a05845fd4d3', '4283', '325899', '3c90c5b4-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c919cdc-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1354885', '3c90c5dc-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91a74a-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1354885', '3c90c5fa-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91b15e-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c622-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91bb7c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c640-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91c590-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c65e-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91cfcc-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c67c-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91dc4c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c69a-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91e6d8-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c6b8-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91f13c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c6d6-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c91fb5a-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c708-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9205e6-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c726-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92100e-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1355078', '3c90c744-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c921a40-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c762-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c922472-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c780-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c922f94-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c79e-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9239b2-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c7c6-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9243ee-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c7e4-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c924e20-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c802-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c925834-14a1-11ed-ab3b-6a05845fd4d3', '4283', '534395', '3c90c820-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92627a-14a1-11ed-ab3b-6a05845fd4d3', '4283', '511507', '3c90c83e-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c926edc-14a1-11ed-ab3b-6a05845fd4d3', '4283', '511507', '3c90c85c-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c927b02-14a1-11ed-ab3b-6a05845fd4d3', '4283', '40245', '3c90c884-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9288ae-14a1-11ed-ab3b-6a05845fd4d3', '4283', '40245', '3c90c8ac-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92986c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '40245', '3c90c8ca-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92a488-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1374316', '3c90c8e8-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92b07c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1374316', '3c90c906-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92bc66-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1374316', '3c90c924-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92c85a-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1374316', '3c90c94c-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92d476-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1346863', '3c90c96a-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92e088-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1346863', '3c90c988-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92ec72-14a1-11ed-ab3b-6a05845fd4d3', '4283', '73501', '3c90c9a6-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c92f80c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '73501', '3c90c9c4-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c930400-14a1-11ed-ab3b-6a05845fd4d3', '4283', '73501', '3c90c9e2-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c930fb8-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1419624', '3c90ca0a-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c931b5c-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1419624', '3c90ca28-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c932732-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1419624', '3c90ca50-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c9332fe-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1339562', '3c90ca6e-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_cinema` (`mn_id`, `c_id`, `t_id`, `s_id`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c933ed4-14a1-11ed-ab3b-6a05845fd4d3', '4283', '1339562', '3c90ca8c-14a1-11ed-ab3b-6a05845fd4d3', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for movie_commenttype
-- ----------------------------
DROP TABLE IF EXISTS `movie_commenttype`;
CREATE TABLE `movie_commenttype` (
  `mc_id` varchar(255) NOT NULL COMMENT '电影热评标签',
  `t_id` varchar(255) DEFAULT NULL COMMENT '电影id',
  `mc_title` varchar(255) DEFAULT NULL COMMENT '热评名称',
  `countSum` varchar(255) DEFAULT NULL,
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影热评标签;';

-- ----------------------------
-- Records of movie_commenttype
-- ----------------------------
BEGIN;
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ed46-16fe-11ed-b740-6a05845fd4d3', '1355078', '全部', '0', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ee86-16fe-11ed-b740-6a05845fd4d3', '1355078', '最新', '0', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40eeb8-16fe-11ed-b740-6a05845fd4d3', '1355078', '好评', '3w+', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40eee0-16fe-11ed-b740-6a05845fd4d3', '1355078', '差评', '3540', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40eefe-16fe-11ed-b740-6a05845fd4d3', '1355078', '影评达人', '168', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ef1c-16fe-11ed-b740-6a05845fd4d3', '1355078', '有图', '4907', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ef3a-16fe-11ed-b740-6a05845fd4d3', '1355078', '购票', '4w+', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ef62-16fe-11ed-b740-6a05845fd4d3', '1355078', '百分百含腾量', '464', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ef80-16fe-11ed-b740-6a05845fd4d3', '1355078', '跨越宇宙的浪漫', '246', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `movie_commenttype` (`mc_id`, `t_id`, `mc_title`, `countSum`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('aa40ef9e-16fe-11ed-b740-6a05845fd4d3', '1355078', '开心麻花YYDS', '208', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for movie_detail
-- ----------------------------
DROP TABLE IF EXISTS `movie_detail`;
CREATE TABLE `movie_detail` (
  `d_id` varchar(255) NOT NULL COMMENT '主键',
  `showName` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `duration` varchar(255) DEFAULT NULL COMMENT '电影演出时间',
  `type` varchar(255) DEFAULT NULL COMMENT '电影类型',
  `description` varchar(255) DEFAULT NULL COMMENT '电影详情介绍',
  `openTime` varchar(255) DEFAULT NULL COMMENT '上映时间',
  `wantCount` varchar(255) DEFAULT NULL COMMENT '想看人数',
  `easterEggsInfo` varchar(255) DEFAULT NULL COMMENT '观影贴士',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=';';

-- ----------------------------
-- Records of movie_detail
-- ----------------------------
BEGIN;
INSERT INTO `movie_detail` (`d_id`, `showName`, `duration`, `type`, `description`, `openTime`, `wantCount`, `easterEggsInfo`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1355078', '独行月球', '122', '喜剧,科幻', '人类为抵御小行星的撞击，拯救地球，在月球部署了月盾计划。陨石提前来袭，全员紧急撤离时，维修工独孤月（沈腾 饰）因为意外，错过了领队马蓝星（马丽 饰）的撤离通知，一个人落在了月球。不料月盾计划失败，独孤月成为了“宇宙最后的人类”，开始了他在月球上破罐子破摔的生活……', '2022-07-29 09:00', '578301', '片尾字幕中有一个彩蛋', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `p_id` varchar(255) NOT NULL COMMENT '主键',
  `p_count` varchar(255) DEFAULT NULL COMMENT '评价人数',
  `avera_star` varchar(255) DEFAULT NULL COMMENT '平均评价星级',
  `one_star` varchar(255) DEFAULT NULL COMMENT '1星',
  `two_star` varchar(255) DEFAULT NULL,
  `three_star` varchar(255) DEFAULT NULL,
  `four_star` varchar(255) DEFAULT NULL,
  `five_star` varchar(255) DEFAULT NULL,
  `want_watch` varchar(255) DEFAULT NULL COMMENT '想看',
  `fined_watch` varchar(255) DEFAULT NULL COMMENT '看过',
  `t_id` varchar(255) DEFAULT NULL COMMENT '电影id',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='淘票票口碑';

-- ----------------------------
-- Records of praise
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for s_movie
-- ----------------------------
DROP TABLE IF EXISTS `s_movie`;
CREATE TABLE `s_movie` (
  `s_id` varchar(255) NOT NULL COMMENT '场次主键',
  `s_date` varchar(255) DEFAULT NULL COMMENT '场次日期',
  `s_startdate` varchar(255) DEFAULT NULL COMMENT '电影开始时间',
  `s_endstart` varchar(255) DEFAULT NULL COMMENT '电影结束时间',
  `type` varchar(255) DEFAULT NULL COMMENT '电影类型(2D或者3D)',
  `s_hall` varchar(255) DEFAULT NULL COMMENT '电影院厅位',
  `price` decimal(24,1) DEFAULT NULL COMMENT '价格',
  `order_date` datetime DEFAULT NULL COMMENT '时间戳 用于进行数据排序',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='场次表;';

-- ----------------------------
-- Records of s_movie
-- ----------------------------
BEGIN;
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c2e4-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c384-14a1-11ed-ab3b-6a05845fd4d3', '周六07-30', '19:00', '21:00', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-07-30 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c3b6-14a1-11ed-ab3b-6a05845fd4d3', '周二08-02', '19:30', '21:30', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-08-02 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c3de-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c406-14a1-11ed-ab3b-6a05845fd4d3', '周四08-04', '19:30', '21:08', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-08-04 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c424-14a1-11ed-ab3b-6a05845fd4d3', '周日08-07', '16:30', '18:08', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-08-07 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c44c-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c46a-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c488-14a1-11ed-ab3b-6a05845fd4d3', '周六07-30', '16:45', '18:19', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-07-30 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c4a6-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c4c4-14a1-11ed-ab3b-6a05845fd4d3', '后天07-29', '21:45', '23:36', '粤语 2D', '3号厅', 4500.0, '2022-07-29 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c4ec-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c514-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c532-14a1-11ed-ab3b-6a05845fd4d3', '周日07-31', '20:00', '21:46', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-07-31 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c550-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c5b4-14a1-11ed-ab3b-6a05845fd4d3', '周日07-31', '14:00', '15:40', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-07-31 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c5dc-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c5fa-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '15:35', '17:11', '国语 2D', '3号厅', 3500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c622-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c640-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '18:45', '20:47', '国语 2D', '2号厅', 5500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c65e-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '19:20', '21:22', '国语 2D', '1号 4K激光厅', 5500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c67c-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '20:20', '22:22', '国语 2D', '3号厅', 5500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c69a-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '21:10', '23:12', '国语 2D', '2号厅', 4500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c6b8-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '21:40', '23:42', '国语 2D', '1号 4K激光厅', 4500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c6d6-14a1-11ed-ab3b-6a05845fd4d3', '后天07-29', '12:25', '14:27', '国语 2D', '3号厅', 4900.0, '2022-07-29 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c708-14a1-11ed-ab3b-6a05845fd4d3', '后天07-29', '14:45', '16:47', '国语 2D', '3号厅', 4900.0, '2022-07-29 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c726-14a1-11ed-ab3b-6a05845fd4d3', '后天07-29', '17:05', '19:07', '国语 2D', '3号厅', 4900.0, '2022-07-29 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c744-14a1-11ed-ab3b-6a05845fd4d3', '后天07-29', '19:25', '21:27', '国语 2D', '3号厅', 5500.0, '2022-07-29 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c762-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '17:00', '18:41', '粤语 2D', '1号 4K激光厅', 4900.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c780-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '19:00', '20:41', '粤语 2D', '1号 4K激光厅', 5500.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c79e-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '21:20', '23:01', '粤语 2D', '2号厅', 4500.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c7c6-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '11:15', '12:56', '粤语 2D', '1号 4K激光厅', 4500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c7e4-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '13:15', '14:56', '粤语 2D', '1号 4K激光厅', 4900.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c802-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '15:15', '16:56', '粤语 2D', '1号 4K激光厅', 4900.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c820-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '17:15', '18:56', '粤语 2D', '1号 4K激光厅', 4900.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c83e-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '17:35', '20:02', '英语 3D', '3号厅', 5800.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c85c-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '17:35', '20:02', '英语 3D', '3号厅', 5800.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c884-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c8ac-14a1-11ed-ab3b-6a05845fd4d3', '周六08-06', '19:30', '21:09', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-08-06 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c8ca-14a1-11ed-ab3b-6a05845fd4d3', '周日08-07', '19:00', '20:39', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-08-07 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c8e8-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '16:35', '18:27', '国语 2D', '2号厅', 4900.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c906-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '21:00', '22:52', '国语 2D', '1号 4K激光厅', 4500.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c924-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '10:50', '12:42', '国语 2D', '3号厅', 4500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c94c-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '16:35', '18:27', '国语 2D', '2号厅', 4900.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c96a-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c988-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '11:25', '13:41', '国语 2D', '2号厅', 4500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c9a6-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c9c4-14a1-11ed-ab3b-6a05845fd4d3', '周六07-30', '14:30', '16:16', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-07-30 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90c9e2-14a1-11ed-ab3b-6a05845fd4d3', '周五08-05', '19:30', '21:16', '粤语 2D', '1号 4K激光厅', 8500.0, '2022-08-05 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ca0a-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '18:45', '20:58', '国语 2D', '2号厅', 5500.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ca28-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '20:20', '22:33', '国语 2D', '3号厅', 5500.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ca50-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '14:00', '16:13', '国语 2D', '2号厅', 4900.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ca6e-14a1-11ed-ab3b-6a05845fd4d3', '今天07-27', '0', '0', '0', '0', 0.0, '2022-07-27 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `s_movie` (`s_id`, `s_date`, `s_startdate`, `s_endstart`, `type`, `s_hall`, `price`, `order_date`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3c90ca8c-14a1-11ed-ab3b-6a05845fd4d3', '明天07-28', '13:00', '15:09', '国语 2D', '3号厅', 3500.0, '2022-07-28 00:00:00', '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for t_cinema
-- ----------------------------
DROP TABLE IF EXISTS `t_cinema`;
CREATE TABLE `t_cinema` (
  `c_id` varchar(255) NOT NULL COMMENT '电影院主键ID',
  `c_title` varchar(255) DEFAULT NULL COMMENT '电影院名称',
  `c_address` varchar(255) DEFAULT NULL COMMENT '电影院地址',
  `c_label` varchar(255) DEFAULT NULL COMMENT '电影院标签',
  `c_oldprice` decimal(24,1) DEFAULT NULL COMMENT '电影院旧价格',
  `c_newprice` decimal(24,1) DEFAULT NULL COMMENT '电影院新人价格',
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电影院详细信息';

-- ----------------------------
-- Records of t_cinema
-- ----------------------------
BEGIN;
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4283', '北京百老汇电影中心（万国城店）', '东城区香河园路1号当代MOMA北区T4座', '特惠票,可改签,3D眼镜收费,观影小食,艺术影厅,可停车,', 3500.0, 3500.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4284', '北京中影国际影城（昌平永旺店）', '昌平区北清路1号永旺国际商城3楼（生命科学园站下车即到', '特惠票,可退票,可改签,CINITY厅,120帧,可停车,', 3590.0, 3590.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4285', '保利国际影城-北京万源店', '丰台区东高地万源北路航天万源广场五楼', '限时特价票,可改签,可停车,', 1990.0, 3000.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4299', 'UME影城（华星IMAX店）', '海淀区双榆树科学院南路44号（双安商场对面）', '特惠票,可改签,IMAX厅,杜比全景声厅,可停车,', 5000.0, 5000.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4326', 'UME影城（安贞DTSX店）', '东城区北三环东路36号环球贸易中心E座B1/F1/F3', '特惠票,可改签,4DX厅,realD厅,可停车,', 3980.0, 4990.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4354', '大料国际影城', '大兴区亦庄经济开发区文化园东路6号', '特惠票,可退票,可改签,VIP厅,可停车,', 2900.0, 2900.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4374', '首都电影院西单店（LED+LUXE）', '西城区西单北大街甲131号大悦城商场十层', '特惠票,MX4D厅,LUXE厅,可停车,', 5800.0, 5800.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4376', 'UME影城（双井CGS激光巨幕店）', '朝阳区东三环中路 双井桥北富力广场4层、6层', '特惠票,可改签,4DX厅,DMAX,可停车,', 4500.0, 4500.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4377', '北京世纪东都影城', '朝阳区东四环中路195号华腾新天地5层', '限时特价票,可退票,可改签,观影小食,VIP厅,', 1990.0, 4300.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
INSERT INTO `t_cinema` (`c_id`, `c_title`, `c_address`, `c_label`, `c_oldprice`, `c_newprice`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4388', '北京百老汇影城（apm店）', '东城区东城区王府井大街138号apm商场6层', '限时特价票,可改签,3D眼镜收费,realD厅,艺术影厅,可停车,', 1990.0, 3500.0, '1', '2022-07-23 17:45:30', '2022-07-23 17:45:30');
COMMIT;

-- ----------------------------
-- Table structure for t_directors
-- ----------------------------
DROP TABLE IF EXISTS `t_directors`;
CREATE TABLE `t_directors` (
  `d_id` varchar(255) NOT NULL COMMENT '主键',
  `d_title` varchar(255) DEFAULT NULL COMMENT '导演名称',
  `d_englishname` varchar(255) DEFAULT NULL COMMENT '导演英文名称',
  `d_height` varchar(255) DEFAULT NULL COMMENT '导演身高',
  `d_nativeplace` varchar(255) DEFAULT NULL COMMENT '导演籍贯',
  `d_touxie` varchar(255) DEFAULT NULL COMMENT '导演头衔',
  `d_detail` varchar(255) DEFAULT NULL COMMENT '导演简介',
  `d_image` varchar(255) DEFAULT NULL COMMENT '导演图片地址',
  `d_type` int(10) DEFAULT '1' COMMENT '区分是演员还是导演(1是演员 0是导演)',
  `roleName` varchar(255) DEFAULT NULL,
  `REVISION` varchar(32) DEFAULT NULL COMMENT '乐观锁',
  `CREATED_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATED_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演职人员;';

-- ----------------------------
-- Records of t_directors
-- ----------------------------
BEGIN;
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1248946', '马丽', 'Li Ma', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i1/O1CN013t2kf728eodzDLINo_!!6000000007958-0-alipicbeacon.jpg', 1, '马蓝星', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1249176', '黄品沅', 'Ruomeng Huang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i3/TB16T5iAxD1gK0jSZFKXXcJrVXa_.jpg', 1, '守塔人', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1258470', '李诚儒', 'Chengru Li', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i1/O1CN01XWraUR25meSn3Ifmo_!!6000000007569-0-alipicbeacon.jpg', 1, '孙光阳', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1525226', '杨皓宇', 'Haoyu Yang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i1/TB1dDXxDAvoK1RjSZPfXXXPKFXa_.jpg', 1, '面试官', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('1993475', '沈腾', 'Teng Shen', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/O1CN01Aq4r7S1osHrGoWypo_!!6000000005280-0-alipicbeacon.jpg', 1, '独孤月', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2063720', '常远', 'Yuan Chang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i2/O1CN01SVGJRr1of0OBytv9J_!!6000000005251-0-alipicbeacon.jpg', 1, '朱皮特', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2064419', '黄子韬', 'Z.TAO', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i1/TB1o8SBufb2gK0jSZK9XXaEgFXa_.jpg', 1, '一号线艺人', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2103173', '史彭元', 'Pengyuan Shi', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/O1CN01oqF1Ni1pkKjOf5BUF_!!6000000005398-0-alipicbeacon.jpg', 1, '哥哥', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2163034', '杜晓宇', 'Xiao-yu Du', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i2/TB1Fv5DtHY1gK0jSZTEXXXDQVXa_.jpg', 1, '天文学专家', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2225033', '张吃鱼', 'Chiyu Zhang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/O1CN01FVTfH324GlGsmya5T_!!6000000007364-0-alipicbeacon.jpg', 0, '导演', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2227097', '黄才伦', 'Cailun Huang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i3/TB1Ki43D9rqK1RjSZK9XXXyypXa_.jpg', 1, '葫芦丝儿', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2227261', '高海宝', 'Haibao Gao', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i3/O1CN01woBwsk1bKm0ZUegl9_!!6000000003447-0-alipicbeacon.jpg', 1, '八级钳工', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2227263', '王成思', 'Chengsi Wang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i3/O1CN01sCMenD1KPUcaPmThQ_!!6000000001156-0-alipicbeacon.jpg', 1, '经纪人', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2274395', '陶亮', 'Liang Tao', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/TB1O2aaD9zqK1RjSZFHXXb3CpXa_.jpg', 1, '工程师甲', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2419278', '辣目洋子', 'Jackie Li', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/TB1DKmbDZbpK1RjSZFyXXX_qFXa_.jpg', 1, '魏辣丝', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('2424179', '王赞', 'Zan Wang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/TB12KyGl46I8KJjSszfXXaZVXXa_.jpg', 1, '工程师乙', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3594643', '张熙然', 'Xiran Zhang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/O1CN015yxqs41hKfcEiWQxT_!!6000000004259-0-alipicbeacon.jpg', 1, '妹妹', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('3995911', '郝瀚', 'Han Hao', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i1/O1CN01E5Sycf1CmpsobbYAh_!!6000000000124-0-alipicbeacon.jpg', 1, '金刚鼠', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4092600', '徐志胜', 'ZhiSheng Xu', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i4/O1CN0151bEX920y2LwFBQ4n_!!6000000006917-0-alipicbeacon.jpg', 1, '脱口秀演员', NULL, NULL, NULL);
INSERT INTO `t_directors` (`d_id`, `d_title`, `d_englishname`, `d_height`, `d_nativeplace`, `d_touxie`, `d_detail`, `d_image`, `d_type`, `roleName`, `REVISION`, `CREATED_TIME`, `UPDATED_TIME`) VALUES ('4211860', '杨铮', 'Zheng Yang', NULL, NULL, NULL, NULL, 'https://gw.alicdn.com/i1/O1CN01viPRvl1EjkRakUTXR_!!6000000000388-0-alipicbeacon.jpg', 1, '三级钳工', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
