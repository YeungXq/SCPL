/*
SQLyog Enterprise v12.08 (32 bit)
MySQL - 5.6.41 : Database - xy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `xy`;

/*Table structure for table `xy_post` */

DROP TABLE IF EXISTS `xy_post`;

CREATE TABLE `xy_post` (
  `post_id` varchar(32) NOT NULL COMMENT '贴子唯一标识符',
  `user_id` varchar(32) NOT NULL COMMENT '用户唯一标识符',
  `post_type` int(3) NOT NULL DEFAULT '123' COMMENT '贴子类型',
  `post_title` varchar(50) NOT NULL COMMENT '贴子标题',
  `post_content` longtext NOT NULL COMMENT '贴子内容',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_status` int(1) NOT NULL DEFAULT '0' COMMENT '贴子状态(0:发表,1:修改,2:删除)',
  PRIMARY KEY (`post_id`),
  KEY `xy_post_create_time_pindex` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='贴子';

/*Data for the table `xy_post` */

insert  into `xy_post`(`post_id`,`user_id`,`post_type`,`post_title`,`post_content`,`create_time`,`post_status`) values ('0294a8a299ca4d6bb7fb60ee13b687ef','92aa2e75ba6f413888bebf0392baab17',123,'13','<p>1212121212123333333333333333333</p>','2019-06-02 18:32:31',0),('061f56ddc3924f1a8c7eeed486f174d3','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'22','<p>22<br></p>','2019-06-09 21:14:34',0),('24ff30933e2b40e5b60852bd26dbe191','92aa2e75ba6f413888bebf0392baab17',123,'17','<p>17<span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span><span style=\"font-size: 1rem;\">17</span></p>','2019-06-02 18:33:54',0),('3913307a5c854851a9b0fc6e8b135bcb','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'28','<p>28<br></p>','2019-06-09 21:15:24',0),('47056480589b48128e9ccfb1bdd3fa68','92aa2e75ba6f413888bebf0392baab17',123,'111','<p>111111111</p>','2019-06-02 15:50:15',0),('5a270e50977f4f7d91b56d95ef38f135','92aa2e75ba6f413888bebf0392baab17',123,'再来一个','<p>再来一个<span style=\"font-size: 1rem;\">再来一个</span><span style=\"font-size: 1rem;\">再来一个</span><span style=\"font-size: 1rem;\">再来一个</span><span style=\"font-size: 1rem;\">再来一个</span><span style=\"font-size: 1rem;\">再来一个3423424243244</span></p>','2019-05-31 15:54:08',1),('5e79d533bcae46d1b981b7439f83a2cd','92aa2e75ba6f413888bebf0392baab17',123,'15','<p>15<span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span><span style=\"font-size: 1rem;\">15</span></p>','2019-06-02 18:33:18',0),('6400f057b61a469091cfe8f8c6b33af0','92aa2e75ba6f413888bebf0392baab17',123,'14','<p>141414<span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span><span style=\"font-size: 1rem;\">14</span></p>','2019-06-02 18:32:48',0),('6c80f7caf74441c3bf0d97b3b0181a2f','92aa2e75ba6f413888bebf0392baab17',123,'19','<p>19<span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span><span style=\"font-size: 1rem;\">19</span></p>','2019-06-02 18:35:21',0),('7259ba17e15b4090a9f39092ce916404','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'25','<p>25<br></p>','2019-06-09 21:15:03',0),('7c65ee6e8d7d47ffadc13e1ae7b57edc','92aa2e75ba6f413888bebf0392baab17',123,'7','<p>77777777</p>','2019-06-02 15:49:44',0),('82f5e466e37d49a584b4cffeafb04d23','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'27','<p>27<br></p>','2019-06-09 21:15:19',0),('83ebdfed66284e90ab0b2ca9a36609b8','92aa2e75ba6f413888bebf0392baab17',123,'88','<p>8888888888888</p>','2019-06-02 15:49:52',0),('8cb47a325d8a4bf88c4bbfa632f4efd4','92aa2e75ba6f413888bebf0392baab17',123,'123','<p>12121212122212</p>','2019-06-02 18:32:18',0),('8e694b0586814cfd8b37fe7bbe6298e1','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'24','<p>24<br></p>','2019-06-09 21:14:53',0),('939e1c6f1baf471a8272aa27a16c192e','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'31','<p>31<br></p>','2019-06-09 21:15:42',0),('9e71e91550dd4393bbb4749dbaeb4ff4','92aa2e75ba6f413888bebf0392baab17',123,'21','<p>21<span style=\"font-size: 1rem;\">21</span><span style=\"font-size: 1rem;\">21</span><span style=\"font-size: 1rem;\">21</span><span style=\"font-size: 1rem;\">21</span><span style=\"font-size: 1rem;\">21</span><span style=\"font-size: 1rem;\">21</span><span style=\"font-size: 1rem;\">21</span></p>','2019-06-02 18:35:46',0),('a1a6eb5be0404bfc9e768bdcd35b5fc5','92aa2e75ba6f413888bebf0392baab17',123,'5','<p>55555</p>','2019-06-02 15:49:31',0),('b2626bf92cd84414af70b8455794d809','92aa2e75ba6f413888bebf0392baab17',123,'我是一个新帖子','<p>我是一个新<span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">我是一个新</span><span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">我是一个新</span><span style=\"font-size: 1rem;\">帖子</span></p><p>我是一个新<span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">我是一个新</span><span style=\"font-size: 1rem;\">帖子</span></p><p>我是一个新<span style=\"font-size: 1rem;\">帖子</span></p>','2019-05-24 18:31:39',1),('b45fc306ddd74f62bc0951e3e4ef8806','92aa2e75ba6f413888bebf0392baab17',123,'20','<p>20<span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span><span style=\"font-size: 1rem;\">20</span></p>','2019-06-02 18:35:31',0),('bb9cd7e7b1d94e009dfcd4e12e9222b4','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'30','<p>30<br></p>','2019-06-09 21:15:36',0),('c39476f2a56148969e30a643aa9b0406','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'29','<p>29<br></p>','2019-06-09 21:15:30',0),('c939511d29704ea9a8dc2aa1c1a72102','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'23','<p>23<br></p>','2019-06-09 21:14:46',0),('de56e6f683914c9a8cf3b4b09302b1d4','92aa2e75ba6f413888bebf0392baab17',123,'6','<p>666666</p>','2019-06-02 15:49:38',0),('deb37e3ad40145a8ae535810be27f6b3','92aa2e75ba6f413888bebf0392baab17',123,'9','<p>9999999999999999999</p>','2019-06-02 15:49:59',0),('e60729b413fd4374be03b73f17d12bd1','bd2e9ce03ef74cc1ab0419a83f174ffe',123,'26','<p>26<br></p>','2019-06-09 21:15:09',0),('f10750c5579e4a5e8a14d8b771e3e2e0','92aa2e75ba6f413888bebf0392baab17',123,'10','<p>101001010100010101100010</p>','2019-06-02 15:50:09',0),('f38a758a105a42268dc50dee8bfd0808','92aa2e75ba6f413888bebf0392baab17',123,'16','<p>16<span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span><span style=\"font-size: 1rem;\">16</span></p>','2019-06-02 18:33:35',0),('f42e0ece7c7d43e78edf822a4469dada','92aa2e75ba6f413888bebf0392baab17',123,'再来两个','<p>再来两个<span style=\"font-size: 1rem;\">再来两个</span><span style=\"font-size: 1rem;\">再来两个</span><span style=\"font-size: 1rem;\">再来两个</span><span style=\"font-size: 1rem;\">再来两个</span></p>','2019-05-31 16:01:54',1),('f9719e6a60be43279ee10df1f135f331','92aa2e75ba6f413888bebf0392baab17',123,'18','<p>18<span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span><span style=\"font-size: 1rem;\">18</span></p>','2019-06-02 18:35:10',0),('fb030ca65a634562a3559eba60ebf095','f825cd6255f64afc8ed6950c3de1ff36',123,'发布一个新帖子看看123','<p><span style=\"font-size: 1rem;\">发布一个新</span><span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">看看</span><span style=\"font-size: 1rem;\">发布一个新</span><span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">看看</span><span style=\"font-size: 1rem;\">发布一个新</span><span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">看看</span><span style=\"font-size: 1rem;\">发布一个新</span><span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">看看</span><span style=\"font-size: 1rem;\">发布一个新</span><span style=\"font-size: 1rem;\">帖子</span><span style=\"font-size: 1rem;\">看看干嘛</span></p>','2019-06-01 11:01:28',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;