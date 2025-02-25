CREATE DATABASE IF NOT EXISTS edu;
use edu;
CREATE TABLE `edu_teacher` (
                               `id` char(19) NOT NULL COMMENT '讲师ID',
                               `name` varchar(20) NOT NULL COMMENT '讲师姓名',
                               `intro` varchar(500) NOT NULL DEFAULT '' COMMENT '讲师简介',
                               `career` varchar(500) DEFAULT NULL COMMENT '讲师资历,一句话说明讲师',
                               `level` int(10) unsigned NOT NULL COMMENT '头衔 1高级讲师 2首席讲师',
                               `avatar` varchar(255) DEFAULT NULL COMMENT '讲师头像',
                               `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
                               `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
                               `gmt_create` datetime NOT NULL COMMENT '创建时间',
                               `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='讲师';

INSERT INTO edu.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1', 'com.aic', 'test', 'test', 0, '高级教师', 0, 0, '2020-10-17 12:17:24', '2020-10-17 12:17:24');
