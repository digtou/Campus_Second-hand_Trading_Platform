/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : pro_secondhand

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 26/11/2025 23:22:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`
(
    `id`      int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货人名',
    `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
    `info`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '具体地址',
    `phone`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
    `user_id` int                                                           DEFAULT NULL COMMENT '用户id',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='收货地址管理';

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` (`id`, `name`, `address`, `info`, `phone`, `user_id`)
VALUES (1, '王兰花 ', '浙江省/杭州市/滨江区', '浙江省杭州市滨江区XX大学快递站', '17988887777', 1);
INSERT INTO `address` (`id`, `name`, `address`, `info`, `phone`, `user_id`)
VALUES (2, '王兰花', '山东省/青岛市/崂山区', '山东省青岛市崂山区XX大学快递站', '17988887777', 1);
INSERT INTO `address` (`id`, `name`, `address`, `info`, `phone`, `user_id`)
VALUES (3, '张大壮', '北京市/市辖区/东城区', '北京市东城区崇文门XXXX大学快递站', '18999998888', 2);
INSERT INTO `address` (`id`, `name`, `address`, `info`, `phone`, `user_id`)
VALUES (4, '张洁', '北京市/市辖区/西城区', '北京市丰台区丰台街道XX大学快递站', '19088887788', 1);
INSERT INTO `address` (`id`, `name`, `address`, `info`, `phone`, `user_id`)
VALUES (5, '王哥', '陕西省/西安市/碑林区', '陕西省西安市碑林区XX大学快递站', '198777776666', 1);
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`
(
    `id`   int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '说明',
    `img`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='轮播图管理';

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` (`id`, `name`, `img`)
VALUES (1, '我们为您的每一笔交易保驾护航！', 'http://127.0.0.1:9090/web/download/b9231ee2cfcc4e7493c158f5c1888e07.jpeg');
INSERT INTO `banner` (`id`, `name`, `img`)
VALUES (2, '每一件二手物品，都是独一无二的故事！',
        'http://127.0.0.1:9090/web/download/1dee653928c145dbae91804d6ae46aeb.jpg');
INSERT INTO `banner` (`id`, `name`, `img`)
VALUES (3, '让闲置物品重获新生，环保又省钱！', 'http://127.0.0.1:9090/web/download/5ababfe516e9466c98bbde630b6ad3b9.jpg');
COMMIT;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`
(
    `id`           int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `text`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文本内容',
    `type`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文本类型',
    `time`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
    `from_user_id` int                                                           DEFAULT NULL COMMENT '来自用户id',
    `to_user_id`   int                                                           DEFAULT NULL COMMENT '发往用户id',
    `is_read`      tinyint                                                       DEFAULT NULL COMMENT '是否已读',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 16
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='聊天管理';

-- ----------------------------
-- Records of chat
-- ----------------------------
BEGIN;
INSERT INTO `chat` (`id`, `text`, `type`, `time`, `from_user_id`, `to_user_id`, `is_read`)
VALUES (10, 'http://127.0.0.1:9090/web/download/c9c531745bf248148eede1ce3630bc03.jpg', '图片', '2025/11/19 21:58:11', 1,
        3, 1);
INSERT INTO `chat` (`id`, `text`, `type`, `time`, `from_user_id`, `to_user_id`, `is_read`)
VALUES (11, '你好啊，请问这个小猫，我什么时候方便上门看看呢？', '文字', '2025/11/19 21:58:37', 1, 3, 1);
INSERT INTO `chat` (`id`, `text`, `type`, `time`, `from_user_id`, `to_user_id`, `is_read`)
VALUES (12, '这周六下午就可以', '文字', '2025/11/19 21:59:21', 3, 1, 1);
INSERT INTO `chat` (`id`, `text`, `type`, `time`, `from_user_id`, `to_user_id`, `is_read`)
VALUES (13, '123', '文字', '2025/11/19 22:11:22', 1, 3, 1);
INSERT INTO `chat` (`id`, `text`, `type`, `time`, `from_user_id`, `to_user_id`, `is_read`)
VALUES (14, '456', '文字', '2025/11/19 22:12:23', 3, 1, 1);
INSERT INTO `chat` (`id`, `text`, `type`, `time`, `from_user_id`, `to_user_id`, `is_read`)
VALUES (15, '798', '文字', '2025/11/19 22:12:30', 1, 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`
(
    `id`      int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id` int DEFAULT NULL COMMENT '用户id',
    `item_id` int DEFAULT NULL COMMENT '收藏id',
    PRIMARY KEY (`id`),
    UNIQUE KEY `user_id` (`user_id`, `item_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 30
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='收藏管理';

-- ----------------------------
-- Records of collect
-- ----------------------------
BEGIN;
INSERT INTO `collect` (`id`, `user_id`, `item_id`)
VALUES (23, 1, 4);
INSERT INTO `collect` (`id`, `user_id`, `item_id`)
VALUES (20, 1, 5);
INSERT INTO `collect` (`id`, `user_id`, `item_id`)
VALUES (21, 1, 6);
INSERT INTO `collect` (`id`, `user_id`, `item_id`)
VALUES (22, 1, 11);
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`
(
    `id`       int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
    `img`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品主图',
    `img_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更多图片',
    `type_id`  int                                                           DEFAULT NULL COMMENT '分类id',
    `price`    decimal(10, 2)                                                DEFAULT NULL COMMENT '售价',
    `re_price` decimal(10, 2)                                                DEFAULT NULL COMMENT '原价',
    `content`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '商品详情描述',
    `place`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品所在地',
    `shipment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货设置',
    `user_id`  int                                                           DEFAULT NULL COMMENT '所属用户id',
    `num`      int                                                           DEFAULT NULL COMMENT '浏览量',
    `status`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
    `quality`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品成色',
    `date`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布日期',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 22
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='闲置商品管理';

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (1, 'Nike 纯色抽绳束口大容量旅行 织物 书包背包双肩包 常规 男女同款速来',
        'http://127.0.0.1:9090/web/download/92072180b725481dae22847c8fe5a96f.jpg',
        'http://127.0.0.1:9090/web/download/cfa3253aeab142b4b1b015ba43e43d92.jpg,http://127.0.0.1:9090/web/download/475a1fdc41df4c5982b7d5ae0c12e4aa.jpg',
        2, 188.88, 499.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">全新未拆封使用 三标齐全<br>高43cm宽16cm长30cm<br>面料采用BF进口优质聚酯纤维<br>这款双肩包我可以称之为nk颜值最高的一款之一双肩包店主亲测拍照特别出片无论是男女都非常百搭高颜值包包不分性别<br>亲自拍摄 所见即所得<br>书包整体超有设计感 内里采用iPad笔记本专属夹层 主空间内里无论是旅游 装书 使用容量都可以轻松满足 特别百搭 日常穿着搭配上这款双肩包 特别显干净 白搭 这款双肩包无论是性颜值 容量 都是无敌的存在 非常有性价比 喜欢的宝宝赶快冲 送人也非常有面子哦</span></p>',
        '北京市/市辖区/朝阳区', '包邮', 1, 18, '已上架', '全新', '2025-10-25');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (2, '全新瑞典gastonluga户外防水双肩背包男女通用大容量电脑书包16寸',
        'http://127.0.0.1:9090/web/download/3070a27fe51341f6a9dd800937e59333.jpg',
        'http://127.0.0.1:9090/web/download/bbda9b7215694dcbbc32e30cb354fba3.webp', 2, 158.00, 399.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">全新未拆封带全套官方精美靓丽包装，质量肯定是有保障，哪个城市都包邮包括新疆，不喜欢也支持退换货，可放心入手<br><br>颜色：典雅黑1.0版本（2.0升级款也有）<br>材质：100%防水高档皮质<br>包装：送防尘袋、盒装、吊牌</span></p>',
        '上海市/市辖区/长宁区', '包邮', 1, 4, '已上架', '全新', '2025-10-26');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (3, '家用学习打印机', 'http://127.0.0.1:9090/web/download/090f1e03f9bf4c9d821e3e0192313f9f.jpg',
        'http://127.0.0.1:9090/web/download/05270d8fd9de439abd4c68482de31df3.jpg', 5, 220.00, 399.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">完好，孩子大了，用不上了，220元出</span></p>',
        '浙江省/杭州市/西湖区', '包邮', 1, 8, '已上架', '7成新', '2025-10-26');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (4, 'Fujifilm/富士拍立得mini12，粉色款',
        'http://127.0.0.1:9090/web/download/a1e62a9fd10e41f4bb9a2fbad2931c7e.png',
        'http://127.0.0.1:9090/web/download/bf1e2740c0d942c78577f075c455d713.png', 1, 129.00, 596.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">几乎全新，颜值超高！配有透明壳和链子，方便携带。功能完好无损，适合喜欢拍照的小伙伴。</span></p>',
        '新疆维吾尔自治区/乌鲁木齐市/天山区', '包邮', 1, 38, '已上架', '9成新', '2025-10-26');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (5, 'DALTON德海顿牡蛎面膜小样', 'http://127.0.0.1:9090/web/download/c90ce7e75fe24a1ca5f9ae56eb026a04.png',
        'http://127.0.0.1:9090/web/download/dbd13f0644354c05baa6c953acb10f18.png', 4, 88.00, 398.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">5m l一片，一共10 片，相当于一瓶正装的量，全新未拆封！日期新鲜到27年，专门改善毛孔粗大的肌肤均密面膜，一片就是一次用量，携带方便。正品保证测试</span></p>',
        '河北省/衡水市/武邑县', '包邮', 1, 27, '已上架', '全新', '2025-10-26');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (6, '长安糯玉米全车坐垫', 'http://127.0.0.1:9090/web/download/43452491fadb4bbba0c7c1105df2a155.jpg',
        'http://127.0.0.1:9090/web/download/3db508509fc448df855d0964bd82a829.jpg', 9, 27.00, 99.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">因为车子卖了所以把坐垫便宜出掉，冰丝材质，五座组合，轻微使用痕迹，可爱卡通图案，粉色系超萌</span></p>',
        '浙江省/台州市/椒江区', '邮费到付', 2, 31, '已售出', '全新', '2025-11-10');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (7, '未拆封4S店迈巴赫奔驰汽车头枕腰靠垫',
        'http://127.0.0.1:9090/web/download/f50764aeed1942128ebd4d23f68ddfcb.webp',
        'http://127.0.0.1:9090/web/download/d3d1870e415a4e2dbf59e37e63f25bf7.webp', 9, 56.00, 299.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">宝马特斯拉理想等等全车型适配 </span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">4S店内部供货渠道 原厂原装配件，假一罚十，支持验货，描述不符包邮退！ </span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">颜色 黑色 </span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">款式是冲孔的，透气性更好</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">●梅赛德斯中升之星奔驰4s店原厂配件 完美通用所有车型 内部员工直接拿货，福利车友</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\"> ●外层为西班牙进口麂绒皮材质 内胆为高纯度99%环保杜邦棉 柔软舒适回弹好，性价比超高</span></p>',
        '上海市/市辖区/静安区', '包邮', 2, 28, '已上架', '全新', '2025-11-12');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (8, '王者荣耀v10继承', 'http://127.0.0.1:9090/web/download/4ba2662ffff343f8bda5d24eab5d8dac.jpg',
        'http://127.0.0.1:9090/web/download/1bdabc07af7e4c05bd52d0800c2b17ce.jpg,http://127.0.0.1:9090/web/download/374eca69e3544dcb9ad87d385bb75808.jpg',
        8, 500.00, 20000.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">剩余一个太子位，出太子位，一年500，花你自备。<br>1. 目前712个皮肤，全典藏，全小兵，天幕差10个，传说皮差貂蝉敦煌皮。<br>2. 皮肤出一个就秒一个。所以你可以最快用到最新的皮肤。</span></p>',
        '福建省/泉州市/泉港区', '无须邮寄', 2, 9, '已上架', '全新', '2025-11-13');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (9, '卖小猫 标价就是卖价', 'http://127.0.0.1:9090/web/download/48cf1a9543974ae8a7f37ec1da75aba2.jpg',
        'http://127.0.0.1:9090/web/download/2ac78931cd6c42a287ff75c028864d2a.jpg', 7, 800.00, 2000.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">24年12月24日凌晨1点出生<br><br>自家猫生的 父金吉拉 母金渐层<br>宝安区会展湾附近周末可以上门看猫</span></p>',
        '广东省/深圳市/宝安区', '包邮', 3, 41, '已售出', '全新', '2025-11-14');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (10, '水桶包MLB', 'http://127.0.0.1:9090/web/download/7f49aea9c8b1418aa3551f7cd35dd4a2.jpg',
        'http://127.0.0.1:9090/web/download/f0c1d7338206402994d73598dbb57cc9.jpg', 2, 69.00, 299.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">收拾衣柜，才发现没有背过的水桶包，朋友送的生日礼物，简约百搭款，出给有需要的朋友。</span></p>',
        '北京市/市辖区/朝阳区', '包邮', 4, 3, '已上架', '全新', '2025-11-14');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (11, 'iPad2022款10代256G', 'http://127.0.0.1:9090/web/download/7116ec5feb64408db98ff51288862bca.jpg',
        'http://127.0.0.1:9090/web/download/3745434c5ad748a9a4a541123e621218.jpg', 1, 1099.00, 2699.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">预算低的来！！！送笔出一台女生自用<br>iPad2022款10代256G功能正常系统流畅电池健康高:<br>ipad全部功能正常屏幕没有划痕，电池健康95左右的寿命，很难得！打游戏追剧画图都可以用很久！<br>机器基本上没怎么用过，外观成色99新，配置非常好，尺寸10.9英寸屏幕，内存256g内存，id已经退了<br>配件有充电器，贴膜，保护套，爽快下单不砍价还额外送一支触控笔！</span></p>',
        '广东省/惠州市/惠城区', '包邮', 4, 6, '已上架', '全新', '2025-11-14');
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (13, '自用 iPhone 12 Pro 6GB 128GB，几乎全新，白色',
        'http://127.0.0.1:9090/web/download/44b8bab24a654b308ce17081481b0e77.png',
        'http://127.0.0.1:9090/web/download/b78f4405697840deae421f03370bca4c.png', 1, 1000.00, 8000.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">自用 iPhone 12 Pro 6GB 128GB，几乎全新，白色</span></p>',
        '广东省/广州市/越秀区', '包邮', 4, 0, '已上架', '7成新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (14, '【九件套含眼影】全新未拆花知晓彩妆礼盒',
        'http://127.0.0.1:9090/web/download/78548f1a42034730807c9cb90b30f863.jpg',
        'http://127.0.0.1:9090/web/download/ad2ecd19ccc84e079239ddce54e6e4b5.jpg', 4, 185.00, 360.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">自组礼盒送生日礼/伴手礼物/送闺蜜/送女朋友/送自己都可以，保真 保真 只卖正品！！全新未拆封，新日期！！发货快递箱子是花知晓原装的盒子，会包泡沫袋打包好！<br>注：实物拆封仅展示，发货发全新未拆封的~</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">花知晓眼影<br>贝壳珍珠眼影：01珍珠、02贝壳、03深海<br>贝壳珍珠腮红：01樱花珍珠<br>仲夏夜提亮遮瑕：WH01白玉晶石、pk02小雪珍珠、VA03香草白巧<br>羊毛点彩刷（<br>花知晓拇指粉扑*1<br>花知晓发夹*1<br>拉菲草附赠<br>贺卡附赠<br>花知晓中礼盒*1（不包运损）</span></p>',
        '安徽省/合肥市/蜀山区', '包邮', 6, 1, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (15, '拼单【李佳琦直播间】NEXXUS 耐致角蛋白修护护理发膜',
        'http://127.0.0.1:9090/web/download/03481cb3bbd742f9aae40e78c017b222.jpg',
        'http://127.0.0.1:9090/web/download/652e012806014448b0989e434bb5851e.jpg', 4, 148.00, 378.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">出nexxus发膜200ml 到手4个50ml中样<br><br>不讲价<br>爽快直接拍<br>收到立马发货<br>不退不换<br>非偏远都包邮</span></p>',
        '江苏省/徐州市/贾汪区', '包邮', 6, 0, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (16, '正版麦乐微美银魂盲盒第一弹系列',
        'http://127.0.0.1:9090/web/download/b2d33fc88b904e24b9244bc69a4febc4.webp',
        'http://127.0.0.1:9090/web/download/6d95b05ddb7d4f8ba4af4689375ce811.webp', 3, 319.00, 699.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">端盒12款不重复319元【包邮】</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">官方正版外盒带防伪码，疑假勿扰。</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">图文描述写过的重复问不再回复。</span></p>',
        '吉林省/长春市/朝阳区', '包邮', 7, 2, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (17, '正品POP MART/泡泡玛特泡泡玛特鬼灭之刃诞生花系列盲盒手办潮玩摆件',
        'http://127.0.0.1:9090/web/download/17eede845573470ea7e6d53f70268bac.jpg',
        'http://127.0.0.1:9090/web/download/2232d624c8ec4791aa279d9a81a59259.jpg', 3, 980.00, 1299.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">官方正版外盒带防伪码，疑假勿扰。</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">端盒款盲盒款【全新未拆封概率出隐藏款】</span></p><p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">端盒款12个不重复980元（包邮）</span></p>',
        '吉林省/长春市/朝阳区', '包邮', 7, 8, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (18, '大学期中期末速通考试合集！！！只是展示部分文档 还有很多哈！！！',
        'http://127.0.0.1:9090/web/download/4dc3bd9ac9d447f1a8f6d3fba03a1f9d.jpg',
        'http://127.0.0.1:9090/web/download/4bbf95e6fbca450e8c891d2350ae2dcf.jpg', 3, 5.00, 199.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">2025最新全套期末速成课合集！高数帮、蜂考、高数叔，一次购|||买享全套资源。部分课程有系统课<br><br>高数帮课程：应用回归分析、数据库系统、税法、原子核物理等多门课程，一次购买畅学无阻。<br><br>蜂考课程：信号与系统、运筹学、C语言、复变与积分变换等，轻松掌握核心知识。<br><br>大学通关卡随拍即得，诚信卖家，买不了吃亏！下单前记得私聊确认课程哦～数字商品售出不退～百度云资源同步更新。</span></p>',
        '江西省/南昌市/青云谱区', '无须邮寄', 3, 0, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (19, '猴头雕刻单籽 镶嵌文玩精品 恶僧手串吊坠',
        'http://127.0.0.1:9090/web/download/4d613a3275c64143a7a11f453e04b0d7.webp',
        'http://127.0.0.1:9090/web/download/87cc6077cc3b4370a9d8803f02f0f36b.webp', 6, 20.00, 50.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">纯手工镶嵌 金色眼睛 表情生动<br>尺寸16-17mm 皮色均匀 油性好<br>底部有孔 适合DIY串珠/侧挂/背云<br>成色几乎全新 保存好<br>价格可谈<br>感兴趣私聊<br>猴头雕刻 单籽 镶嵌 文玩精品 恶僧手串 吊坠 纯手工镶嵌 金色眼睛 表情生动 适合DIY串珠/侧挂/背云</span></p>',
        '山东省/菏泽市/牡丹区', '包邮', 5, 5, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (20, '图耐得全新16件套家用五金工具箱',
        'http://127.0.0.1:9090/web/download/363f704431784cb6ba024cdd5c048a15.webp',
        'http://127.0.0.1:9090/web/download/eac7e04802dc4193a7e7a4b07b2f9396.webp', 10, 39.00, 99.00,
        '<p><span style=\"color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);\">绿色收纳盒，工具齐全：美工刀、测电笔、电工绝缘胶带、2米卷尺、羊角锤、老虎钳、活动扳手、一字螺丝刀、十字螺丝刀、短内六角、螺丝批一套<br>亲戚实体店清仓，低价转，适合家用维修、汽车、摩托车、自行车等多场景使用，收纳方便，携带也轻松！<br><br>非偏远地区包邮，喜欢直接拍，细节私聊～特价清仓，部分没有红色外包装，不退不换，介意勿拍</span></p>',
        '广东省/深圳市/福田区', '包邮', 5, 0, '已上架', '全新', NULL);
INSERT INTO `goods` (`id`, `name`, `img`, `img_list`, `type_id`, `price`, `re_price`, `content`, `place`, `shipment`,
                     `user_id`, `num`, `status`, `quality`, `date`)
VALUES (21, '银渐层 4岁', 'http://127.0.0.1:9090/web/download/89dedddebbc64bd6b6de737c3fd24b12.jpg',
        'http://127.0.0.1:9090/web/download/27d2498b316244178e82712ac10bde24.jpg', 7, 500.00, 1000.00,
        '<p>银渐层生了，想要的可以私信我呢</p><p><br></p>', '北京市/市辖区/东城区', '包邮', 1, 1, '已上架', '全新',
        NULL);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`
(
    `id`   int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
    `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
    `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='公告管理';

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`id`, `name`, `info`, `time`)
VALUES (1, '二手交易安全提醒',
        '近期我们发现一些用户在交易过程中遭遇诈骗，请大家务必注意以下几点：\n不要随意泄露个人信息。选择可信赖的交易方式，尽量面交。\n',
        '2025-11-10 16:58:43');
INSERT INTO `notice` (`id`, `name`, `info`, `time`)
VALUES (2, '平台系统升级公告',
        '为了提升用户体验，我们将于2025年11月11日进行系统升级。升级期间，平台将暂时无法访问，预计持续时间为4小时。感谢您的理解与支持！',
        '2025-11-10 16:59:01');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`
(
    `id`        int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `no`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单号',
    `item_id`   int                                                           DEFAULT NULL COMMENT '商品id',
    `item_name` varchar(255) COLLATE utf8mb4_unicode_ci                       DEFAULT NULL COMMENT '商品名称',
    `item_img`  varchar(255) COLLATE utf8mb4_unicode_ci                       DEFAULT NULL COMMENT '商品图片',
    `from_id`   int                                                           DEFAULT NULL COMMENT '卖家id',
    `to_id`     int                                                           DEFAULT NULL COMMENT '买家id',
    `price`     decimal(10, 2)                                                DEFAULT NULL COMMENT '价格',
    `time`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下单时间',
    `status`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
    `to_rate`   int                                                           DEFAULT NULL COMMENT '买家评分',
    `to_review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '买家评价',
    `address`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省市区',
    `info`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细地址',
    `name`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货人姓名',
    `phone`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货人联系方式',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='商品订单管理';

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`id`, `no`, `item_id`, `item_name`, `item_img`, `from_id`, `to_id`, `price`, `time`, `status`,
                      `to_rate`, `to_review`, `address`, `info`, `name`, `phone`)
VALUES (1, '20251115214132564449', 6, '长安糯玉米全车坐垫',
        'http://127.0.0.1:9090/web/download/43452491fadb4bbba0c7c1105df2a155.jpg', 2, 1, 27.00, '2025-11-15 21:41:32',
        '交易完成', 4, '成色很不错，卖家很痛快 ，还给了一些清洁用品，感谢', '浙江省/杭州市/滨江区',
        '浙江省杭州市滨江区长河街道江汉路1649号', '王兰花 ', '17988887777');
INSERT INTO `orders` (`id`, `no`, `item_id`, `item_name`, `item_img`, `from_id`, `to_id`, `price`, `time`, `status`,
                      `to_rate`, `to_review`, `address`, `info`, `name`, `phone`)
VALUES (2, '20251115231044125848', 5, 'DALTON德海顿牡蛎面膜小样',
        'http://127.0.0.1:9090/web/download/c90ce7e75fe24a1ca5f9ae56eb026a04.png', 1, 2, 88.00, '2025-11-15 23:10:44',
        '交易关闭', NULL, NULL, '北京市/市辖区/东城区', '北京市东城区崇文门外街道广渠门内大街149号', '张大壮',
        '18999998888');
INSERT INTO `orders` (`id`, `no`, `item_id`, `item_name`, `item_img`, `from_id`, `to_id`, `price`, `time`, `status`,
                      `to_rate`, `to_review`, `address`, `info`, `name`, `phone`)
VALUES (3, '20251119220353302059', 9, '卖小猫 标价就是卖价',
        'http://127.0.0.1:9090/web/download/48cf1a9543974ae8a7f37ec1da75aba2.jpg', 3, 1, 800.00, '2025-11-19 22:03:53',
        '交易完成', 5, '猫猫已经到家了，确实非常可爱！', '山东省/青岛市/崂山区', '山东省青岛市崂山区中韩街道海口路225号',
        '王兰花', '17988887777');
COMMIT;

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin`
(
    `id`         int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `password`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
    `nickname`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
    `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
    `email`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `phone`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC COMMENT ='管理员管理';

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
BEGIN;
INSERT INTO `sys_admin` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (1, 'admin', 'admin', '管理员', 'http://127.0.0.1:9090/web/download/fb1ee38bac7b4d489017eca589fea52b.jpg',
        'admin@email.com', '18888888888');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`
(
    `id`         int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
    `password`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
    `nickname`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
    `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
    `email`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
    `phone`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  ROW_FORMAT = DYNAMIC COMMENT ='用户管理';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (1, '22330474001', '123456', '张三', 'http://127.0.0.1:9090/web/download/3fad540e3a354b8f8027866af32287b4.jpg',
        'zhangsan@email.com', '18888888888');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (2, '22330474002', '123456', '李四', 'http://127.0.0.1:9090/web/download/cfe562bb53aa44c595af8222ee2f4fd3.webp',
        'lisi@qq.com', '17899998888');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (3, '22330474003', '123456', '王五', 'http://127.0.0.1:9090/web/download/a67a052d33d24c92b0a9704e2bfb98f2.webp',
        'wangwu@163.com', '18988887777');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (4, '22330474004', '123456', '赵六', 'http://127.0.0.1:9090/web/download/bd06b178967d4ad6b39e71744685a2d4.webp',
        'zhaoliu@126.com', '13566667777');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (5, '22330474005', '123456', '小明', 'http://127.0.0.1:9090/web/download/ed9ef480ed044a838c82e50e83f47cb9.jpeg', NULL,
        NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (6, '22330474006', '123456', '小红', 'http://127.0.0.1:9090/web/download/fc802b42fccf4aec80d87fdc51623619.webp', NULL,
        NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`)
VALUES (7, '22330474007', '123456', '小帅', 'http://127.0.0.1:9090/web/download/3c0530b5d4784221b0d8e40ab51de865.jpg',
        '小帅@qq.com', '13678997899');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`
(
    `id`     int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
    `info`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
    `icon`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
    `img`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推荐图',
    `status` tinyint                                                       DEFAULT NULL COMMENT '是否推荐',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='商品分类管理';

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (1, '手机 /照相机 /电脑', '热门装备放心入',
        'http://127.0.0.1:9090/web/download/ca8325133c354fd7adc52f3190eff35b.png',
        'http://127.0.0.1:9090/web/download/2ceac0d926b6489d8da255855c40d92f.png', 1);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (2, '服饰 /箱包 /运动', '时尚产品低价淘',
        'http://127.0.0.1:9090/web/download/204e90c125f14221ba522fbebaee17b0.png',
        'http://127.0.0.1:9090/web/download/95a40b34788b47668e4f2876cabf854e.png', 1);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (3, '技能 /卡券 /潮玩', '吃喝玩乐放心购',
        'http://127.0.0.1:9090/web/download/cbf934bfdd514739ae1e2106ce727804.png',
        'http://127.0.0.1:9090/web/download/31043562790647bcbc0326b994af9200.png', 1);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (4, '美妆/个护/衣物', '呵护健康美丽随',
        'http://127.0.0.1:9090/web/download/eb7379d380dd493197e590caff5bb006.png',
        'http://127.0.0.1:9090/web/download/5e50e09b865a4260a1b53f901ebfc4cb.png', 1);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (5, '家具/家电/服务', '品质生活尽在此',
        'http://127.0.0.1:9090/web/download/e7c5f662fdde444e9114a5094053cdcb.png',
        'http://127.0.0.1:9090/web/download/54554aeac8cd4ec9a2dab972d137e048.png', 0);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (6, '文玩 /珠宝 /礼品', '珍贵收藏佳品遇',
        'http://127.0.0.1:9090/web/download/61c783f63bbb4c4dae853b44927de8da.png',
        'http://127.0.0.1:9090/web/download/19e02bb2886347488f07da4d417dd43c.png', 0);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (7, '食品 /宠物 /花卉', '美味宠爱花相伴',
        'http://127.0.0.1:9090/web/download/f03cc11abcab4b3e954c2e979063883a.png',
        'http://127.0.0.1:9090/web/download/4fe8ef0c63ea4ce7a52c4e49eaf64a76.png', 0);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (8, '图书 /游戏 /音像', '阅读娱乐一站购',
        'http://127.0.0.1:9090/web/download/8b6e9044c3f846c796d8fed1066e65f2.png',
        'http://127.0.0.1:9090/web/download/b361e373bfca4e609cdaa4e4ebc869dd.png', 0);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (9, '电动车/自行车/租房', '轻松出行全面购',
        'http://127.0.0.1:9090/web/download/bd419ee29db04001b72f19e8c67cebd1.png',
        'http://127.0.0.1:9090/web/download/eeec360b4f9c47c0bc9eed72f81c6c0b.png', 0);
INSERT INTO `type` (`id`, `name`, `info`, `icon`, `img`, `status`)
VALUES (10, '课本/文具/运动', '品质工具安心选',
        'http://127.0.0.1:9090/web/download/2729f14fc1fc4be28f2e2b3404079a30.png',
        'http://127.0.0.1:9090/web/download/65318436b3cd4bd2a469735ae7b3f122.png', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
