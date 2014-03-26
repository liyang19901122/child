-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 12 月 09 日 13:35
-- 服务器版本: 5.0.81
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `a1209211603`
--

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_duilian`
--

CREATE TABLE IF NOT EXISTS `dev_advs_duilian` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `src2` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `url2` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_lb`
--

CREATE TABLE IF NOT EXISTS `dev_advs_lb` (
  `id` int(20) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '1',
  `title` char(100) NOT NULL default '',
  `src` char(100) NOT NULL default '',
  `src1` char(255) NOT NULL,
  `url` char(100) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `dev_advs_lb`
--

INSERT INTO `dev_advs_lb` (`id`, `groupid`, `title`, `src`, `src1`, `url`, `xuhao`) VALUES
(39, 1, '广告标题', 'advs/pics/20090323/1237779420.jpg', '', 'http://', 1),
(40, 1, '广告标题', 'advs/pics/20090323/1237780592.jpg', '', 'http://', 3),
(41, 1, '广告标题', 'advs/pics/20090323/1237780390.jpg', '', 'http://', 2);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_lbgroup`
--

CREATE TABLE IF NOT EXISTS `dev_advs_lbgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `dev_advs_lbgroup`
--

INSERT INTO `dev_advs_lbgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认轮播广告组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_link`
--

CREATE TABLE IF NOT EXISTS `dev_advs_link` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `src` varchar(100) NOT NULL default '',
  `cl` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `dev_advs_link`
--

INSERT INTO `dev_advs_link` (`id`, `groupid`, `name`, `url`, `xuhao`, `type`, `src`, `cl`) VALUES
(21, 1, 'PHPWEB分享建站', 'http://www.phpweb.net', 1, '', '', 0),
(22, 1, '网博士智能建站系统', 'http://weboss.cn', 2, '', '', 0),
(33, 1, 'Medipro建站软件', 'http://www.mediweb.com.cn', 3, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_linkgroup`
--

CREATE TABLE IF NOT EXISTS `dev_advs_linkgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dev_advs_linkgroup`
--

INSERT INTO `dev_advs_linkgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认友情链接组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_logo`
--

CREATE TABLE IF NOT EXISTS `dev_advs_logo` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dev_advs_logo`
--

INSERT INTO `dev_advs_logo` (`id`, `groupname`, `src`, `url`) VALUES
(1, '网站标志一', 'advs/pics/20090322/1237709011.gif', '#');

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_movi`
--

CREATE TABLE IF NOT EXISTS `dev_advs_movi` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dev_advs_movi`
--

INSERT INTO `dev_advs_movi` (`id`, `groupname`, `src`) VALUES
(1, '视频广告测试一', 'http://vhead.blog.sina.com.cn/player/outer_player.swf?auto=1&vid=16205152&uid=1504617052');

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_pic`
--

CREATE TABLE IF NOT EXISTS `dev_advs_pic` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_advs_pic`
--

INSERT INTO `dev_advs_pic` (`id`, `groupname`, `src`, `url`) VALUES
(1, '测试图片广告', 'advs/pics/20090215/1234667308.jpg', 'http://www.try.com');

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_pop`
--

CREATE TABLE IF NOT EXISTS `dev_advs_pop` (
  `id` int(12) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `body` text,
  `ifpop` int(1) NOT NULL default '0',
  `popwidth` int(10) default NULL,
  `popheight` int(10) default NULL,
  `popleft` int(10) default NULL,
  `poptop` int(10) default NULL,
  `poptoolbar` int(1) default NULL,
  `popmenubar` int(1) default NULL,
  `popstatus` int(1) default NULL,
  `poplocation` int(1) default NULL,
  `popscrollbars` varchar(50) default NULL,
  `popresizable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_advs_pop`
--

INSERT INTO `dev_advs_pop` (`id`, `title`, `body`, `ifpop`, `popwidth`, `popheight`, `popleft`, `poptop`, `poptoolbar`, `popmenubar`, `popstatus`, `poplocation`, `popscrollbars`, `popresizable`) VALUES
(1, '弹出窗口', '窗口内容 ', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_text`
--

CREATE TABLE IF NOT EXISTS `dev_advs_text` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `text` char(200) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dev_advs_text`
--

INSERT INTO `dev_advs_text` (`id`, `groupname`, `text`, `url`) VALUES
(1, '促销广告一', '本季特大优惠活动开始啦qq', 'http://www.com');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_admin`
--

CREATE TABLE IF NOT EXISTS `dev_base_admin` (
  `id` int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `job` varchar(50) NOT NULL,
  `jobid` varchar(20) NOT NULL,
  `moveable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `dev_base_admin`
--

INSERT INTO `dev_base_admin` (`id`, `user`, `password`, `name`, `job`, `jobid`, `moveable`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', '系统管理员', '系统管理员', 'A001', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_adminauth`
--

CREATE TABLE IF NOT EXISTS `dev_base_adminauth` (
  `id` int(6) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `auth` int(5) NOT NULL default '0',
  `name` char(50) NOT NULL default '',
  `intro` char(255) NOT NULL default '',
  `xuhao` int(10) NOT NULL default '0',
  `pid` int(10) NOT NULL default '0',
  `pname` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- 转存表中的数据 `dev_base_adminauth`
--

INSERT INTO `dev_base_adminauth` (`id`, `coltype`, `auth`, `name`, `intro`, `xuhao`, `pid`, `pname`) VALUES
(69, 'advs', 91, '网站标志管理', '', 1, 2, ''),
(17, 'advs', 95, '网站广告管理', '', 5, 2, ''),
(30, 'advs', 96, '友情链接管理', '', 4, 7, ''),
(1, 'base', 1, '网站参数设置', '', 1, 0, ''),
(2, 'base', 2, '修改管理密码', '', 2, 0, ''),
(3, 'base', 3, '管理账户维护', '', 3, 0, ''),
(5, 'base', 5, '网站排版设置', '', 5, 0, ''),
(66, 'base', 6, '模块插件管理', '', 6, 0, ''),
(67, 'base', 7, '软件升级更新', '', 7, 0, ''),
(37, 'comment', 130, '点评模块参数设置', '', 0, 13, ''),
(11, 'comment', 131, '点评分类', '', 1, 13, ''),
(26, 'comment', 132, '点评管理', '', 2, 13, ''),
(50, 'down', 160, '下载模块参数设置', '', 0, 16, ''),
(51, 'down', 161, '下载分类', '', 1, 16, ''),
(52, 'down', 162, '下载管理', '', 2, 16, ''),
(53, 'down', 163, '下载专题设置', '', 3, 16, ''),
(54, 'down', 165, '下载发布', '', 5, 16, ''),
(55, 'down', 166, '下载修改', '', 6, 16, ''),
(4, 'member', 50, '会员类型设置', '', 1, 5, ''),
(42, 'member', 51, '会员模块参数设置', '', 11, 6, ''),
(19, 'member', 52, '会员查询管理', '', 2, 5, ''),
(20, 'member', 53, '会员资料查询', '', 3, 5, ''),
(21, 'member', 54, '会员资料修改', '', 4, 5, ''),
(22, 'member', 55, '会员邮件发送', '', 5, 5, ''),
(23, 'member', 56, '会员权限管理', '', 6, 5, ''),
(24, 'member', 57, '会员公告管理', '', 7, 5, ''),
(32, 'member', 58, '模拟会员登录', '', 8, 5, ''),
(33, 'member', 59, '会员实名认证', '', 9, 5, ''),
(34, 'member', 60, '会员删除权限', '', 10, 5, ''),
(63, 'member', 61, '会员区域设置', '', 11, 6, ''),
(64, 'member', 62, '会员行业分类', '', 12, 0, ''),
(65, 'member', 63, '积分规则设置', '', 13, 6, ''),
(35, 'member', 64, '会员转移类型', '', 11, 5, ''),
(36, 'member', 65, '重设会员密码', '', 12, 5, ''),
(68, 'member', 66, '积分录入权限', '', 16, 6, ''),
(6, 'menu', 11, '导航菜单设置', '', 1, 1, ''),
(38, 'news', 120, '文章模块参数设置', '', 0, 12, ''),
(39, 'news', 121, '文章分类', '', 1, 12, ''),
(13, 'news', 122, '文章管理', '', 2, 12, ''),
(12, 'news', 123, '文章专题设置', '', 3, 12, ''),
(40, 'news', 125, '文章发布', '', 5, 12, ''),
(41, 'news', 126, '文章修改', '', 6, 12, ''),
(43, 'page', 301, '网页分组和管理', '', 1, 30, ''),
(44, 'photo', 150, '图片模块参数设置', '', 0, 15, ''),
(45, 'photo', 151, '图片分类', '', 1, 15, ''),
(46, 'photo', 152, '图片管理', '', 2, 15, ''),
(47, 'photo', 153, '图片专题设置', '', 3, 15, ''),
(48, 'photo', 155, '图片发布', '', 5, 15, ''),
(49, 'photo', 156, '图片修改', '', 6, 15, ''),
(27, 'tools', 81, '访问统计系统', '', 1, 7, ''),
(29, 'tools', 82, '投票调查系统', '', 3, 7, ''),
(72, 'base', 8, '管理菜单设置', '', 8, 0, ''),
(73, 'product', 180, '产品模块参数设置', '', 0, 15, ''),
(74, 'product', 181, '产品分类', '', 1, 15, ''),
(75, 'product', 182, '产品管理', '', 2, 15, ''),
(76, 'product', 183, '产品专题设置', '', 3, 15, ''),
(77, 'product', 185, '产品发布', '', 5, 15, ''),
(78, 'product', 186, '产品修改', '', 6, 15, ''),
(79, 'service', 101, '客服分组设置', '', 1, 10, ''),
(80, 'service', 102, '客服表单设置', '', 2, 10, ''),
(81, 'service', 103, '客服工单处理', '', 3, 10, ''),
(82, 'service', 104, '存档工单查询', '', 4, 10, ''),
(83, 'service', 105, '客服工单删除', '', 5, 10, ''),
(84, 'service', 106, '工单人工存档权限', '', 6, 10, ''),
(85, 'service', 107, '全部工单监控', '', 7, 10, ''),
(86, 'service', 108, '快捷回复设置', '', 8, 10, ''),
(87, 'base', 9, '模块安装卸载', '', 9, 0, ''),
(88, 'tools', 83, '图片投票系统', '', 3, 7, ''),
(89, 'tools', 84, 'QQ客服系统', '', 4, 7, ''),
(90, 'tools', 85, '51客服系统', '', 5, 7, ''),
(91, 'tools', 86, '51la统计系统', '', 6, 7, ''),
(92, 'tools', 87, '移动短信留言', '', 7, 7, ''),
(93, 'member', 67, '财务收款入账', '', 16, 6, ''),
(94, 'member', 68, '会员帐务查询', '', 16, 6, ''),
(95, 'member', 69, '支付方法设置', '', 16, 6, ''),
(96, 'member', 70, '帐务查询统计', '', 16, 6, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_adminmenu`
--

CREATE TABLE IF NOT EXISTS `dev_base_adminmenu` (
  `id` int(6) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `dev_base_adminmenu`
--

INSERT INTO `dev_base_adminmenu` (`id`, `pid`, `menu`, `url`, `xuhao`) VALUES
(1, 0, '栏目菜单设置', 'menu/admin/menu.php?groupid=1', 1),
(2, 0, '企业介绍修改', 'page/admin/page_edit.php?id=1&groupid=1', 2),
(3, 0, '企业文化修改', 'page/admin/page_edit.php?id=4&groupid=1', 3),
(4, 0, '发展历程修改', 'page/admin/page_edit.php?id=5&groupid=1', 4),
(5, 0, '人力资源修改', 'page/admin/page_edit.php?id=6&groupid=1', 5),
(6, 0, '联系方式修改', 'page/admin/page_edit.php?id=2&groupid=1', 6),
(7, 0, '企业产品发布', 'product/admin/product_conadd.php', 7),
(8, 0, '企业产品管理', 'product/admin/product_con.php', 8),
(9, 0, '企业产品分类', 'product/admin/product_cat.php', 9),
(10, 0, '新闻文章发布', 'news/admin/news_conadd.php', 10),
(11, 0, '新闻文章管理', 'news/admin/news_con.php', 11),
(12, 0, '企业图库管理', 'photo/admin/photo_con.php', 12),
(13, 0, '企业图库上传', 'photo/admin/photo_conadd.php', 13),
(14, 0, '产品订购查询', 'service/admin/feedback.php', 14);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_adminrights`
--

CREATE TABLE IF NOT EXISTS `dev_base_adminrights` (
  `id` int(50) NOT NULL auto_increment,
  `auth` char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2945 ;

--
-- 转存表中的数据 `dev_base_adminrights`
--

INSERT INTO `dev_base_adminrights` (`id`, `auth`, `user`) VALUES
(2936, '186', 'admin'),
(2935, '185', 'admin'),
(2934, '183', 'admin'),
(2933, '182', 'admin'),
(2932, '181', 'admin'),
(2931, '180', 'admin'),
(2930, '8', 'admin'),
(2929, '82', 'admin'),
(2928, '81', 'admin'),
(2927, '156', 'admin'),
(2926, '155', 'admin'),
(2925, '153', 'admin'),
(2924, '152', 'admin'),
(2923, '151', 'admin'),
(2922, '150', 'admin'),
(2921, '301', 'admin'),
(2920, '126', 'admin'),
(2919, '125', 'admin'),
(2918, '123', 'admin'),
(2917, '122', 'admin'),
(2916, '121', 'admin'),
(2915, '120', 'admin'),
(2914, '11', 'admin'),
(2913, '66', 'admin'),
(2912, '65', 'admin'),
(2911, '64', 'admin'),
(2910, '63', 'admin'),
(2909, '62', 'admin'),
(2908, '61', 'admin'),
(2907, '60', 'admin'),
(2906, '59', 'admin'),
(2905, '58', 'admin'),
(2904, '57', 'admin'),
(2903, '56', 'admin'),
(2902, '55', 'admin'),
(2901, '54', 'admin'),
(2900, '53', 'admin'),
(2899, '52', 'admin'),
(2898, '51', 'admin'),
(2897, '50', 'admin'),
(2896, '166', 'admin'),
(2895, '165', 'admin'),
(2894, '163', 'admin'),
(2893, '162', 'admin'),
(2892, '161', 'admin'),
(2891, '160', 'admin'),
(2890, '132', 'admin'),
(2889, '131', 'admin'),
(2888, '130', 'admin'),
(2887, '7', 'admin'),
(2886, '6', 'admin'),
(2885, '5', 'admin'),
(2884, '3', 'admin'),
(2883, '2', 'admin'),
(2882, '1', 'admin'),
(2881, '96', 'admin'),
(2880, '95', 'admin'),
(2879, '91', 'admin'),
(2937, '101', 'admin'),
(2938, '102', 'admin'),
(2939, '103', 'admin'),
(2940, '104', 'admin'),
(2941, '105', 'admin'),
(2942, '106', 'admin'),
(2943, '107', 'admin'),
(2944, '108', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_border`
--

CREATE TABLE IF NOT EXISTS `dev_base_border` (
  `id` int(12) NOT NULL auto_increment,
  `bordertype` varchar(10) NOT NULL default 'border',
  `tempid` char(8) NOT NULL default '',
  `tempname` varchar(50) NOT NULL default '边框模板',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- 转存表中的数据 `dev_base_border`
--

INSERT INTO `dev_base_border` (`id`, `bordertype`, `tempid`, `tempname`) VALUES
(1, 'border', '001', '可选颜色边框模板'),
(2, 'border', '002', '可选颜色边框模板'),
(3, 'border', '003', '可选颜色边框模板'),
(4, 'border', '004', '可选颜色边框模板'),
(5, 'border', '005', '可选颜色边框模板'),
(6, 'border', '006', '可选颜色边框模板'),
(66, 'lable', '212', '竖排菜单式标签切换边框模板,无外框线'),
(8, 'border', '008', '可选颜色边框模板(浅色调)'),
(9, 'border', '009', '可选颜色边框模板'),
(10, 'border', '010', '可选颜色边框模板'),
(11, 'border', '011', '可选颜色边框模板'),
(12, 'border', '012', '可选颜色边框模板(浅色调)'),
(13, 'border', '013', '可选颜色边框模板'),
(14, 'border', '014', '可选颜色边框模板'),
(15, 'border', '015', '可选颜色边框模板'),
(16, 'border', '016', '可选颜色边框模板'),
(17, 'border', '017', '可选颜色边框模板'),
(18, 'border', '018', '可选颜色边框模板'),
(19, 'border', '501', '浅色调创意边框模板'),
(20, 'border', '502', '边框模板'),
(22, 'border', '504', '边框模板'),
(23, 'border', '505', '边框模板'),
(34, 'border', '020', '可选颜色边框模板(浅色调)'),
(25, 'border', '507', '边框模板'),
(35, 'border', '503', '无框线简约边框模版'),
(27, 'border', '509', '边框模板'),
(37, 'border', '506', '浅色调无框线边框模版'),
(31, 'border', '513', '浅灰色圆角边框模板'),
(33, 'border', '019', '可选颜色边框模板(浅色调)'),
(38, 'border', '508', '浅色调边框模版'),
(39, 'border', '510', '左侧标题栏浅色调模版'),
(40, 'border', '511', '无标题栏圆角边框模版'),
(41, 'border', '512', '无标题栏圆角边框模版'),
(42, 'border', '514', '边框模板'),
(43, 'border', '021', '左侧标题栏可变色边框模板'),
(44, 'border', '515', '灰色外背景边框模板'),
(45, 'border', '516', '无标题栏圆角灰色背景边框模版'),
(46, 'border', '517', '无标题栏圆角浅色背景边框模板'),
(47, 'lable', '201', '标签切换边框模板,浅蓝简约型'),
(48, 'lable', '051', '可选颜色,标签切换边框模板,带总标题'),
(49, 'lable', '202', '标签切换边框模板,红黑标签，无框线'),
(50, 'lable', '203', '标签切换边框模板'),
(51, 'lable', '204', '标签切换边框模板,浅灰简约,带总标题栏'),
(52, 'lable', '052', '可选颜色,标签切换边框模板,带总标题'),
(53, 'lable', '205', '标签切换边框模板,圆角,深色'),
(54, 'lable', '053', '可选颜色,标签切换边框模板,圆角'),
(55, 'lable', '206', '标签切换边框模板,圆角,浅黄色调'),
(56, 'lable', '207', '标签切换边框模板,圆角,浅蓝淡雅风格'),
(57, 'lable', '208', '标签切换边框模板,内圆角,浅蓝淡雅风格'),
(58, 'lable', '209', '标签切换边框模板,内圆角,灰白渐变'),
(59, 'lable', '210', '标签切换边框模板,圆角,浅色渐变'),
(60, 'lable', '054', '可选颜色,标签切换边框模板,圆角'),
(61, 'lable', '055', '可选颜色,标签切换边框模板'),
(62, 'lable', '211', '标签切换边框模板,圆角,橙色+灰色'),
(63, 'border', '500', '条幅边框,无标题栏，搜索条登录框等专用'),
(64, 'border', '022', '可选颜色边框模板'),
(67, 'lable', '056', '可选颜色,竖排菜单式标签切换边框,无框线'),
(75, 'border', '519', '无标题栏边框模版(圆角，粗边线)');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_coltype`
--

CREATE TABLE IF NOT EXISTS `dev_base_coltype` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL default '',
  `colname` varchar(50) NOT NULL default '',
  `sname` varchar(30) NOT NULL,
  `ifadmin` int(1) NOT NULL default '1',
  `ifchannel` int(1) NOT NULL default '0',
  `ifpubplus` int(1) NOT NULL default '1',
  `moveable` int(1) NOT NULL default '0',
  `installed` int(1) NOT NULL default '1',
  `classtbl` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- 转存表中的数据 `dev_base_coltype`
--

INSERT INTO `dev_base_coltype` (`id`, `coltype`, `colname`, `sname`, `ifadmin`, `ifchannel`, `ifpubplus`, `moveable`, `installed`, `classtbl`) VALUES
(1, 'base', '基础模块', '基础', 0, 0, 0, 0, 1, ''),
(2, 'diy', '自定内容', '自定义', 0, 0, 1, 0, 1, ''),
(3, 'menu', '导航菜单', '菜单', 1, 0, 1, 0, 1, ''),
(5, 'index', '首页模块', '首页', 0, 1, 0, 0, 1, ''),
(20, 'page', '网页模块', '网页', 1, 0, 1, 0, 1, ''),
(21, 'news', '文章模块', '文章', 1, 1, 1, 1, 1, '_news_cat'),
(22, 'photo', '图片模块', '图片', 1, 1, 1, 1, 1, '_photo_cat'),
(23, 'down', '下载模块', '下载', 1, 1, 1, 1, 1, '_down_cat'),
(25, 'product', '产品展示', '产品', 1, 1, 1, 1, 1, '_product_cat'),
(28, 'comment', '互动点评', '点评', 1, 1, 1, 1, 1, '_comment_cat'),
(30, 'member', '会员模块', '会员', 1, 1, 1, 1, 1, ''),
(97, 'search', '全站搜索', '搜索', 0, 0, 1, 0, 1, ''),
(98, 'advs', '网站广告', '广告', 1, 0, 1, 0, 1, ''),
(99, 'tools', '辅助工具', '工具', 1, 0, 1, 0, 1, ''),
(100, 'effect', '素材特效', '特效', 0, 0, 1, 0, 1, ''),
(26, 'service', '客户服务', '客服', 1, 1, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_config`
--

CREATE TABLE IF NOT EXISTS `dev_base_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_base_config`
--

INSERT INTO `dev_base_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '网站名称', 'input', '30', 'SiteName', 'www.885hl.com', '用于在网页标题、导航栏处显示'),
(2, '网站网址', 'input', '30', 'SiteHttp', 'http://abcd1001.host7.85wu.com/', '网站的实际访问网址,末尾加“/”'),
(4, '服务邮箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在发送系统邮件时作为发件人邮件'),
(5, '邮件转发方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数'),
(6, 'SMTP服务器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', ''),
(7, 'SMTP邮箱用户', 'input', '30', 'owner_m_user', 'alex@mydomain.com', ''),
(8, 'SMTP邮箱密码', 'input', '30', 'owner_m_pass', '123456', ''),
(5, 'SMTP转发邮箱', 'input', '30', 'owner_m_mail', 'alex@mydomain.com', ''),
(9, 'SMTP身份验证', 'YN', '10', 'owner_m_check', '1', ''),
(10, '是否生成并使用静态HTML网页', 'YN', '10', 'CatchOpen', '0', ''),
(11, 'HTML静态网页更新时间(秒)', 'input', '8', 'CatchTime', '3600', '超过此时间访问静态页面时，重新生成静态页并刷新页面'),
(3, '软件授权用户账号', 'input', '30', 'phpwebUser', '885hl.com', '在本软件安装、升级或使用其他服务时所采用的软件授权用户登录帐号'),
(99, '安全校验码', 'code', '30', 'safecode', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_pageset`
--

CREATE TABLE IF NOT EXISTS `dev_base_pageset` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `coltype` varchar(50) NOT NULL default '',
  `pagename` varchar(50) NOT NULL default '',
  `th` int(5) NOT NULL default '200',
  `ch` int(5) NOT NULL default '500',
  `bh` int(5) NOT NULL default '200',
  `pagetitle` varchar(255) NOT NULL default '',
  `metakey` varchar(255) NOT NULL default '',
  `metacon` text NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  `buildhtml` varchar(12) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=293 ;

--
-- 转存表中的数据 `dev_base_pageset`
--

INSERT INTO `dev_base_pageset` (`id`, `name`, `coltype`, `pagename`, `th`, `ch`, `bh`, `pagetitle`, `metakey`, `metacon`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`, `buildhtml`, `xuhao`) VALUES
(126, '友情链接', 'advs', 'link', 224, 337, 153, '', '友情链接', '友情链接', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(92, '点评检索', 'comment', 'query', 197, 437, 161, '', '0', '0', '#708090', 'none', '0% 0%', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'catid', 12),
(88, '点评详情', 'comment', 'detail', 246, 704, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 17),
(123, '点评频道首页', 'comment', 'main', 265, 382, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 11),
(214, '下载首页', 'down', 'main', 246, 237, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 1),
(215, '下载检索页', 'down', 'query', 246, 202, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'catid', 2),
(216, '下载详情', 'down', 'detail', 246, 868, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 3),
(1, '首页', 'index', 'index', 195, 544, 159, '', '', '', '#708090', 'none', '0% 0%', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 1),
(241, '会员主页', 'member', 'homepage', 246, 554, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 15),
(217, '下载管理', 'member', 'downgl', 147, 440, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 5),
(218, '下载发布', 'member', 'downfabu', 164, 393, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 6),
(219, '下载修改', 'member', 'downmodify', 164, 422, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 7),
(5, '会员登录', 'member', 'login', 162, 352, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1),
(6, '重设密码', 'member', 'lostpass', 164, 277, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 2),
(12, '会员注册', 'member', 'reg', 164, 415, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(202, '会员中心首页', 'member', 'main', 244, 425, 159, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1),
(203, '登录帐号设置', 'member', 'account', 164, 327, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 2),
(204, '头像签名设置', 'member', 'person', 265, 430, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 3),
(205, '详细资料修改', 'member', 'detail', 164, 495, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 5),
(206, '联系信息设置', 'member', 'contact', 164, 372, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 6),
(207, '会员公告详情', 'member', 'notice', 176, 350, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 7),
(208, '文章发布', 'member', 'newsfabu', 164, 520, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 8),
(209, '文章管理', 'member', 'newsgl', 162, 325, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9),
(210, '文章修改', 'member', 'newsmodify', 164, 808, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 10),
(211, '图片管理', 'member', 'photogl', 162, 267, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1),
(212, '图片发布', 'member', 'photofabu', 164, 435, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(213, '图片修改', 'member', 'photomodify', 164, 493, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(231, '我的收藏夹', 'member', 'fav', 164, 327, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(232, '我的好友', 'member', 'friends', 246, 388, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(233, '我的点评', 'member', 'comment', 263, 374, 159, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 13),
(228, '文章分类', 'member', 'newscat', 147, 267, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9),
(229, '图片分类', 'member', 'photocat', 147, 267, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9),
(230, '下载分类', 'member', 'downcat', 147, 275, 150, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9),
(234, '我的站内短信', 'member', 'msn', 164, 377, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 15),
(2, '文章检索', 'news', 'query', 246, 645, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'catid', 2),
(3, '文章正文', 'news', 'detail', 246, 771, 161, '', '0', '0', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 3),
(33, '频道首页', 'news', 'main', 246, 570, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 0),
(129, '内容页', 'page', 'html', 246, 408, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 1),
(194, '图文频道首页', 'photo', 'main', 246, 460, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 1),
(199, '图片查询', 'photo', 'query', 244, 455, 159, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'catid', 2),
(200, '图片详情', 'photo', 'detail', 246, 892, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 3),
(16, '全站搜索', 'search', 'search', 265, 221, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 2),
(246, '我的积分', 'member', 'membercent', 164, 327, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 19),
(247, '会员文章', 'news', 'membernews', 164, 185, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(248, '会员图片', 'photo', 'memberphoto', 164, 290, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(249, '会员资源下载', 'down', 'memberdown', 164, 177, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(274, '产品频道首页', 'product', 'main', 197, 580, 161, '', '', '', '#708090', 'none', '0% 0%', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 1),
(275, '产品查询', 'product', 'query', 197, 686, 161, '', '', '', '#708090', 'none', '0% 0%', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'catid', 2),
(276, '产品详情', 'product', 'detail', 197, 1013, 161, '', '', '', '#708090', 'none', '0% 0%', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 3),
(277, '会员产品', 'product', 'memberproduct', 164, 290, 152, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(278, '产品管理', 'member', 'productgl', 265, 737, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1),
(279, '产品发布', 'member', 'productfabu', 265, 442, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(280, '产品修改', 'member', 'productmodify', 265, 498, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(281, '产品分类', 'member', 'productcat', 265, 336, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9),
(283, '客户服务', 'service', 'main', 253, 26, 160, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1),
(284, '客户服务', 'service', 'main', 265, 710, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1),
(285, '客服问题提交', 'member', 'service', 265, 714, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 15),
(286, '客服工单查询', 'member', 'feedback', 265, 328, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 16),
(287, '工单详情', 'member', 'feedbacklook', 265, 793, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 16),
(288, '存档工单查询', 'member', 'feedbackhis', 265, 336, 161, '', '', '', '#708090', '', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 19),
(289, '分组首页', 'page', 'html_main', 200, 500, 200, '', '', '', '', '', '', 'repeat', 'scroll', 900, '#ffffff', '', 0, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(290, '会员付款记录', 'member', 'paylist', 164, 327, 152, '', '', '', '', '', '0% 0%', 'repeat', 'scroll', 900, '', '', 10, 10, 'auto', '', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(291, '会员消费记录', 'member', 'buylist', 164, 327, 152, '', '', '', '', '', '0% 0%', 'repeat', 'scroll', 900, '', '', 10, 10, 'auto', '', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(292, '帐户在线充值', 'member', 'onlinepay', 164, 327, 152, '', '', '', '', '', '0% 0%', 'repeat', 'scroll', 900, '', '', 10, 10, 'auto', '', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_pagetemp`
--

CREATE TABLE IF NOT EXISTS `dev_base_pagetemp` (
  `id` int(12) NOT NULL auto_increment,
  `tempname` varchar(50) NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `dev_base_pagetemp`
--

INSERT INTO `dev_base_pagetemp` (`id`, `tempname`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`) VALUES
(28, '默认背景', '#00bfff', 'url(effect/source/bg/304.gif)', 'center top', 'repeat', 'scroll', 900, '#ffffff', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plus`
--

CREATE TABLE IF NOT EXISTS `dev_base_plus` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3124 ;

--
-- 转存表中的数据 `dev_base_plus`
--

INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(2627, 'diy', 'modButtomInfo', '底部信息编辑区', 'product', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2625, 'diy', 'modHeadPic', '头部自定义效果图', 'product', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3080, 'menu', 'modTopMenu', '顶部菜单(一级)', 'service', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3085, 'product', 'modProductComment', '产品点评', 'product', 'detail', 'tpl_product_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 683, 324, 687, 0, 12, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, -1, -1, 'fill', '产品评论', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3084, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'feedbackhis', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2624, 'tools', 'modShowCount', '访问统计', 'product', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2459, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'account', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2460, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'person', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2461, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'detail', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2462, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'contact', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2463, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'notice', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2464, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsfabu', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2465, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsgl', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2466, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsmodify', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2467, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photogl', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2468, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photofabu', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2469, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photomodify', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2470, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'fav', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2471, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'friends', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2472, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'comment', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2473, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newscat', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2474, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photocat', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2475, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'downcat', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2476, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'msn', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2477, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'query', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2478, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'detail', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2479, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2480, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'html', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2481, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2482, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'query', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2483, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'detail', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2484, 'menu', 'modChannelMenu', '二级导航菜单', 'search', 'search', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2485, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'membercent', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2486, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'membernews', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2487, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'memberphoto', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2488, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'memberdown', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(661, 'menu', 'modBottomMenu', '底部菜单（一级）', 'search', 'search', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2080, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'query', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 682, 25, 3, 218, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(659, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(658, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(653, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(668, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(645, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(644, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(640, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'msn', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(639, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'downcat', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(638, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'photocat', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(637, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newscat', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(636, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'comment', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(635, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'friends', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(634, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'fav', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(633, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'photomodify', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(632, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'photofabu', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(631, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'photogl', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(630, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsmodify', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(629, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsgl', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(628, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsfabu', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(627, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'notice', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(626, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'contact', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(625, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(624, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'person', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(623, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'account', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(622, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(621, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'reg', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(620, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'lostpass', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(619, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'login', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(618, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'downmodify', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(617, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'downfabu', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(616, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'downgl', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(615, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'homepage', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3119, 'product', 'modProductTwoClass', '产品二级分类', 'index', 'index', 'tpl_producttwoclass_1.htm', '-1', 'B501', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 210, 342, 202, 0, 11, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品系列', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(611, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(610, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(609, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(608, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(607, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(606, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(605, 'menu', 'modBottomMenu', '底部菜单（一级）', 'advs', 'link', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3121, 'product', 'modProductList', '自选产品列表', 'index', 'index', 'tpl_productlist_5.htm', '-1', 'B502', '#eeeeee', 0, 'solid', '', 'click', 'none', '#f0f0f0', '#505050', '#fff', '{#RP#}product/class/', 669, 302, 241, 231, 6, 15, 6, 'id', 'desc', 0, 12, '_self', 0, 20, 100, 100, 'fill', '产品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(3082, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'feedback', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3081, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'service', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3079, 'menu', 'modTopMenu', '顶部菜单(一级)', 'service', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3077, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'productmodify', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2661, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'main', 'tpl_down_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 183, 0, 0, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3058, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'msn', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3059, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3060, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3061, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3062, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3063, 'menu', 'modTopMenu', '顶部菜单(一级)', 'photo', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3064, 'menu', 'modTopMenu', '顶部菜单(一级)', 'photo', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3065, 'menu', 'modTopMenu', '顶部菜单(一级)', 'photo', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3066, 'menu', 'modTopMenu', '顶部菜单(一级)', 'search', 'search', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3067, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'membercent', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3068, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'membernews', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3069, 'menu', 'modTopMenu', '顶部菜单(一级)', 'photo', 'memberphoto', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3070, 'menu', 'modTopMenu', '顶部菜单(一级)', 'down', 'memberdown', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3071, 'menu', 'modTopMenu', '顶部菜单(一级)', 'product', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 11, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3072, 'menu', 'modTopMenu', '顶部菜单(一级)', 'product', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3073, 'menu', 'modTopMenu', '顶部菜单(一级)', 'product', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3074, 'menu', 'modTopMenu', '顶部菜单(一级)', 'product', 'memberproduct', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3075, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'productgl', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3076, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'productfabu', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3054, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'comment', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3055, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'newscat', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3056, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'photocat', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(1950, 'diy', 'modButtomInfo', '底部信息编辑区', 'search', 'search', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1949, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'detail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1948, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'query', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1947, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(1945, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1943, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1942, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1941, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'query', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1937, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'msn', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1936, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'downcat', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1935, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'photocat', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1934, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newscat', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1933, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'comment', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1932, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'friends', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1931, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'fav', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1930, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'photomodify', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1929, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'photofabu', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1928, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'photogl', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1927, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsmodify', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1926, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsgl', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1925, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsfabu', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1924, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'notice', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1923, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'contact', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1922, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'detail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1921, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'person', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1920, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'account', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1919, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1918, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'reg', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1917, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'lostpass', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1916, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'login', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1915, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'downmodify', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1914, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'downfabu', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2644, 'product', 'modProductList', '自选产品列表', 'product', 'main', 'tpl_productlist_5.htm', '-1', 'A506', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}product/class/?1.html', 685, 282, 2, 215, 7, 20, 6, 'id', 'desc', 0, 12, '_self', 0, 30, 100, 100, 'fill', '企业网站系列', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(1913, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'downgl', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1912, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'homepage', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2214, 'diy', 'modButtomInfo', '底部信息编辑区', 'product', 'detail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3115, 'menu', 'modTopMenu', '顶部菜单(一级)', 'index', 'index', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3116, 'search', 'modSearchForm', '全站搜索表单', 'index', 'index', 'tpl_searchform.htm', '-1', 'A500', '#eeeeee', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 669, 33, 196, 231, 13, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '站内搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1910, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'detail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1909, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'query', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1908, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1907, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1906, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'detail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1905, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'query', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(319, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'reg', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 78, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(323, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(324, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '', 'B018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 702, 173, 252, 198, 7, 12, 5, 'id', 'desc', 0, 25, '_self', 0, -1, 100, 100, 'fill', '会员公告', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(394, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '', 'B015', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 509, 211, 35, 199, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(326, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '', 'B015', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 186, 211, 35, 713, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(328, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'account', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(330, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 184, 32, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '登录帐号设置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2672, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 390, 38, 200, 90, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '头像签名设置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(333, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'person', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2213, 'menu', 'modBottomMenu', '底部菜单（一级）', 'product', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(336, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 29, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(2216, 'tools', 'modShowCount', '访问统计', 'product', 'detail', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1346, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'main', 'tpl_comment_searchform.htm', '-1', 'K018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 185, 179, 0, 0, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1341, 'comment', 'modCommentSearchForm', '点评搜索表单(横式)', 'comment', 'query', 'tpl_comment_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 185, 180, 0, 0, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(344, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query_pw.htm', '', '1000', '#def', 0, 'solid', '', 'click', 'none', '#def', '#fff', '#fff', '-1', 700, 398, 37, 200, 2, 10, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '点评检索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(347, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#f0f0f0', '#505050', '#fff', '-1', 703, 666, 36, 197, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '点评详情', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(348, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 699, 27, 0, 197, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(1046, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'query', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 26, 0, 220, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(1956, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'memberdown', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1068, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detail', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 28, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(1073, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', 'E012', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 680, 366, 403, 0, 8, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, 100, 100, 'fill', '文章评论', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(505, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'query', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 672, 32, 5, 228, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2082, 'down', 'modDownList', '下载列表', 'down', 'detail', 'tpl_downlist.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/', 210, 287, 187, 690, 8, 12, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '资料下载', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(1953, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'membercent', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1080, 'photo', 'modPhotoComment', '图片点评', 'photo', 'detail', 'tpl_photo_comment.htm', '-1', 'B018', '#ddeeff', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 680, 350, 540, 0, 7, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, 100, 100, 'fill', '图片评论', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1078, 'photo', 'modPhotoContent', '图片详情', 'photo', 'detail', 'tpl_photo_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 680, 496, 32, 0, 6, 1, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '图片展示', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(374, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 900, 24, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(385, 'page', 'modPageContent', '网页内容详情', 'page', 'html', 'tpl_page_content.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#f0f0f0', '#505050', '', '-1', 662, 378, 28, 224, 4, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '企业介绍', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2943, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 654, 23, 0, 228, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2079, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'query', 'tpl_down_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 185, 0, 0, 7, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(388, 'down', 'modDownQuery', '下载检索搜索', 'down', 'query', 'tpl_down_query.htm', '', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '-1', 682, 168, 32, 218, 3, 12, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '资料下载', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(389, 'down', 'modDownContent', '下载详情', 'down', 'detail', 'tpl_down_content.htm', '', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '-1', 680, 509, 0, 0, 3, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '资料下载', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(391, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 52, 142, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(392, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'login', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(395, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'homepage', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 900, 29, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(397, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '', 'B018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 512, 211, 34, 0, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(398, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '', 'B018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 380, 170, 208, 520, 6, 12, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '我的点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(399, 'down', 'modMemberDownList', '会员下载列表', 'member', 'homepage', 'tpl_downlist.htm', '', 'B018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '{#RP#}down/memberdown.php?mid={#mid#}', 380, 170, 382, 520, 8, 10, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '资源下载', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(400, 'photo', 'modMemberPhotoPic', '会员最新图片', 'member', 'homepage', 'tpl_photopic.htm', '', 'B018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '{#RP#}photo/memberphoto.php?mid={#mid#}', 512, 303, 249, 0, 9, 10, 10, 'id', 'desc', 0, 7, '_self', 0, -1, 110, 110, 'fill', '我的图片', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1014, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist_time.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 380, 167, 34, 520, 10, 10, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '我的文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1113, 'photo', 'modMemberPhotoQuery', '会员图片检索', 'photo', 'memberphoto', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 683, 254, 34, 217, 8, 0, 20, 'id', 'desc', 0, -1, '_self', 0, -1, 150, 150, 'fill', '图片检索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(1347, 'photo', 'modMemberPhotoSearchForm', '会员图片搜索', 'photo', 'memberphoto', 'tpl_memberphoto_searchform.htm', '-1', 'D018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 9, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(404, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'memberphoto', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 683, 29, 0, 217, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(2081, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'detail', 'tpl_down_searchform_h.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 181, 0, 690, 7, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2086, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 210, 540, 216, 690, 8, 8, 8, 'id', 'desc', 0, 12, '_self', 0, -1, 85, 85, 'fill', '最新图片', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(408, 'down', 'modMemberDownSearchForm', '会员下载搜索', 'down', 'memberdown', 'tpl_memberdown_searchform.htm', '', 'D018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 200, 175, 0, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '下载搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(409, 'down', 'modMemberDownQuery', '会员下载检索', 'down', 'memberdown', 'tpl_memberdown_query.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 678, 116, 30, 222, 7, 5, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '下载检索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(410, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'memberdown', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 678, 26, 0, 222, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(411, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '', 'D018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 205, 183, 0, 0, 3, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1061, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery_cap.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 145, 35, 220, 8, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '会员文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(413, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'membernews', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 677, 28, 0, 221, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(414, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1456, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 458, 35, 200, 8, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '个人资料修改', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2085, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'query', 'tpl_photo_searchform_h.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 200, 0, 0, 7, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(417, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 336, 34, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '联系信息设置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(418, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'contact', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(420, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 160, 35, 200, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的收藏夹', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(421, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'fav', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3024, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 350, 36, 200, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的好友', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(424, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'friends', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(426, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 340, 35, 200, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的站内短信', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(427, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'msn', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(429, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'comment', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(430, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 700, 148, 29, 200, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(432, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'membercent', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(433, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 144, 33, 200, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(435, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsfabu', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 690, 29, 0, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(436, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 478, 40, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章发布', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(438, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsgl', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(440, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 148, 30, 200, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(441, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newscat', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(443, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 175, 32, 200, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章分类管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(444, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'photogl', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(445, 'photo', 'modPhotoGl', '图片管理', 'member', 'photogl', 'tpl_photo_gl.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 148, 32, 200, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '图片管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(447, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'photofabu', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(448, 'photo', 'modPhotoFabu', '图片发布表单', 'member', 'photofabu', 'tpl_photo_fabu.htm', '', '1000', '', 0, 'solid', '', 'click', 'none', '', '#fff', '#fff', '-1', 700, 400, 33, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '图片发布', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(450, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'photocat', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(451, 'photo', 'modPhotoMyCat', '图片分类管理', 'member', 'photocat', 'tpl_photo_mycat.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 209, 30, 200, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '图片分类管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(453, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsmodify', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 688, 29, 0, 212, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(454, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 696, 770, 36, 204, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章修改', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(456, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'photomodify', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(458, 'photo', 'modPhotoModify', '图片修改表单', 'member', 'photomodify', 'tpl_photo_modify.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 458, 33, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '图片修改', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(459, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'downfabu', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(461, 'down', 'modDownFabu', '下载发布表单', 'member', 'downfabu', 'tpl_down_fabu.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 365, 26, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '下载发布', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(462, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'downgl', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(464, 'down', 'modDownGl', '下载管理', 'member', 'downgl', 'tpl_down_gl.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 407, 33, 200, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '下载管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(465, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'downmodify', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 29, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(467, 'down', 'modDownModify', '下载修改表单', 'member', 'downmodify', 'tpl_down_modify.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 388, 32, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '下载修改', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(468, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'downcat', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(470, 'down', 'modDownMyCat', '下载分类管理', 'member', 'downcat', 'tpl_down_mycat.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 243, 32, 200, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '下载分类管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(565, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '', 'A001', '#4682b4', 1, 'solid', '', '', 'block', '#4682b4', '#fff', '#fff', '-1', 700, 318, 30, 200, 6, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员公告', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(566, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'notice', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(510, 'down', 'modDownComment', '下载点评', 'down', 'detail', 'tpl_down_comment.htm', '', 'B018', '#4682b4', 0, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 680, 345, 521, 0, 5, 0, 5, 'id', 'desc', 0, 20, '_self', 0, 120, 100, 100, 'fill', '下载评论', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2655, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'query', 'tpl_news_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 182, 0, 0, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(492, 'advs', 'modLinkText', '文字友情链接', 'advs', 'link', 'tpl_link.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '{#RP#}advs/link/', 900, 126, 39, 0, 7, 10, 99, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '友情链接', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(493, 'advs', 'modLinkPic', '图片友情链接', 'advs', 'link', 'tpl_linkpic.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '{#RP#}advs/link/', 900, 159, 176, 0, 8, 10, 20, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '友情链接', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(1343, 'search', 'modSearchForm', '全站搜索表单(横式)', 'search', 'search', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 30, 0, 0, 7, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(497, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 900, 173, 46, 0, 5, 0, 10, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '全站搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(3078, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'productcat', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(666, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'memberphoto', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(569, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 682, 29, 0, 218, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(664, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'membercent', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(1786, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(665, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'membernews', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(667, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'memberdown', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2090, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'detail', 'tpl_photo_searchform_h.htm', '-1', 'B018', '#a9a9a9', 3, 'solid', '', 'click', 'block', '#d3d3d3', '#000000', '#808080', '-1', 210, 179, 31, 690, 9, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2500, 'diy', 'modHeadPic', '头部自定义效果图', 'comment', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2499, 'diy', 'modHeadPic', '头部自定义效果图', 'comment', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2498, 'diy', 'modHeadPic', '头部自定义效果图', 'comment', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2699, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'productcat', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2497, 'diy', 'modHeadPic', '头部自定义效果图', 'advs', 'link', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2683, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'productgl', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2675, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'productfabu', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1069, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', 'E012', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 360, 31, 0, 7, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1052, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'query', 'tpl_newsquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 680, 598, 45, 220, 6, 0, 10, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '文章检索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2662, 'down', 'modDownList', '下载列表', 'down', 'main', 'tpl_downlist.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}down/class/', 683, 201, 34, 217, 7, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '资料下载', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(2088, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'lostpass', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 30, 0, 118, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1065, 'news', 'modNewsSameTagList', '相关文章(同标签)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 210, 277, 188, 690, 4, 12, 10, 'id', 'desc', 0, 13, '_self', 0, -1, 100, 100, 'fill', '相关文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2657, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'detail', 'tpl_news_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 181, 0, 690, 9, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1112, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'query', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 677, 414, 41, 223, 6, 5, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 150, 120, 'fill', '图片检索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2089, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'D018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 699, 237, 38, 117, 90, 30, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '重设密码', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1454, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 371, 42, 78, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员注册', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2663, 'comment', 'modCommentList', '最新点评（列表）', 'comment', 'main', 'tpl_commentlist.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}comment/class/index.php', 701, 339, 36, 199, 8, 12, 5, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '最新留言', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2664, 'comment', 'modCommentClass', '点评分类', 'comment', 'main', 'tpl_comment_class.htm', '-1', 'K018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 185, 195, 185, 0, 9, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类导航', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2665, 'comment', 'modCommentClass', '点评分类', 'comment', 'query', 'tpl_comment_class.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 185, 224, 188, 0, 7, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类导航', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1447, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'downmodify', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1446, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'downcat', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1445, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'downgl', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1444, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'downfabu', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1443, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'photomodify', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1442, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'photocat', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1441, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'photogl', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1440, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'photofabu', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1439, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newscat', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1438, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsmodify', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2014, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsgl', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1436, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsfabu', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1435, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'membercent', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1434, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'msn', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1432, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'friends', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 374, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1431, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'fav', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1430, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'contact', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1429, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'detail', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2015, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'person', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1427, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'account', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1426, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'main', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3083, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'feedbacklook', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3057, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'downcat', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3052, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'fav', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3053, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'friends', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3122, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '#fff', '#fff', '{#RP#}news/class/', 295, 126, 38, 600, 2, 8, 5, 'id', 'desc', 0, 15, '_self', 71, 0, -1, -1, 'fill', '最新文章', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 3, 0, 'hidden', 'content', 'block'),
(3033, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'homepage', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3034, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'downgl', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(3035, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'downfabu', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3036, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'downmodify', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3037, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'login', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3027, 'menu', 'modTopMenu', '顶部菜单(一级)', 'comment', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3028, 'menu', 'modTopMenu', '顶部菜单(一级)', 'comment', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3029, 'menu', 'modTopMenu', '顶部菜单(一级)', 'down', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(1954, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'membernews', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1904, 'diy', 'modButtomInfo', '底部信息编辑区', 'advs', 'link', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1955, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'memberphoto', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2502, 'diy', 'modHeadPic', '头部自定义效果图', 'down', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2501, 'diy', 'modHeadPic', '头部自定义效果图', 'down', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2533, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2532, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2531, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2530, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'msn', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2529, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'downcat', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2528, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'photocat', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2527, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'newscat', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2643, 'product', 'modProductTwoClass', '产品二级分类', 'product', 'main', 'tpl_producttwoclass_1.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 205, 343, 192, 0, 5, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2526, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'comment', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2525, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'friends', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2524, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'fav', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2523, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'photomodify', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2522, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'photofabu', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3123, 'advs', 'modAdvsLb', '图片轮播广告', 'index', 'index', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 355, 184, 0, 231, 16, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '轮播广告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(2521, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'photogl', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2520, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'newsmodify', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3025, 'menu', 'modTopMenu', '顶部菜单(一级)', 'advs', 'link', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3087, 'diy', 'modButtomInfo', '底部信息编辑区', 'product', 'query', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2519, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'newsgl', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2518, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'newsfabu', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2503, 'diy', 'modHeadPic', '头部自定义效果图', 'down', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3112, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '#fff', '#fff', '{#RP#}news/class/', 292, 128, 40, 601, 4, 8, 5, 'id', 'desc', 0, 15, '_self', 1, 0, -1, -1, 'fill', '新闻动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(2505, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'homepage', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2506, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'downgl', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2507, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'downfabu', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2508, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'downmodify', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2509, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'login', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2510, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'lostpass', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2511, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'reg', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2512, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2513, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'account', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2514, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'person', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2515, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2516, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'contact', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2517, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'notice', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2020, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'comment', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3038, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'lostpass', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2884, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'comment', 'query', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2885, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'comment', 'detail', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2542, 'diy', 'modHeadPic', '头部自定义效果图', 'down', 'memberdown', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2541, 'diy', 'modHeadPic', '头部自定义效果图', 'photo', 'memberphoto', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2540, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'membernews', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2534, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2535, 'diy', 'modHeadPic', '头部自定义效果图', 'photo', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2536, 'diy', 'modHeadPic', '头部自定义效果图', 'photo', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2537, 'diy', 'modHeadPic', '头部自定义效果图', 'photo', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2538, 'diy', 'modHeadPic', '头部自定义效果图', 'search', 'search', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2539, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'membercent', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2622, 'menu', 'modBottomMenu', '底部菜单（一级）', 'service', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3050, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'photofabu', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3051, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'photomodify', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3048, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'newsmodify', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3030, 'menu', 'modTopMenu', '顶部菜单(一级)', 'down', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2715, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'feedback', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2621, 'diy', 'modButtomInfo', '底部信息编辑区', 'service', 'main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3049, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'photogl', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3046, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'newsfabu', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3047, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'newsgl', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3045, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'notice', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2691, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'productmodify', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3044, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'contact', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3039, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'reg', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3040, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3041, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'account', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3042, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'person', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3043, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2721, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'feedbackhis', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2729, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'feedbacklook', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2883, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'advs', 'link', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2713, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'feedback', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2705, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'service', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2619, 'diy', 'modHeadPic', '头部自定义效果图', 'service', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2617, 'menu', 'modChannelMenu', '二级导航菜单', 'service', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2697, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'productcat', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2618, 'tools', 'modShowCount', '访问统计', 'service', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2689, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'productmodify', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2673, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'productfabu', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2681, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'productgl', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2546, 'diy', 'modHeadPic', '头部自定义效果图', 'product', 'memberproduct', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2545, 'diy', 'modHeadPic', '头部自定义效果图', 'product', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2623, 'menu', 'modChannelMenu', '二级导航菜单', 'product', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2544, 'diy', 'modHeadPic', '头部自定义效果图', 'product', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2639, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 198, 185, 0, 0, 6, 5, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '企业介绍', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(2208, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 0, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2491, 'menu', 'modChannelMenu', '二级导航菜单', 'product', 'detail', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2492, 'menu', 'modChannelMenu', '二级导航菜单', 'product', 'memberproduct', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2219, 'product', 'modProductContent', '产品详情', 'product', 'detail', 'tpl_product_content_1.htm', '-1', '1000', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 683, 640, 35, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2220, 'product', 'modProductTwoClass', '产品二级分类', 'product', 'detail', 'tpl_producttwoclass_1.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 428, 198, 700, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2221, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'detail', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 682, 30, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3088, 'tools', 'modShowCount', '访问统计', 'product', 'query', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2490, 'menu', 'modChannelMenu', '二级导航菜单', 'product', 'query', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2458, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2457, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'reg', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2456, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'lostpass', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2455, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'login', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2454, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'downmodify', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2453, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'downfabu', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(2451, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'homepage', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2452, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'downgl', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3120, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2447, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2448, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'query', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2449, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'detail', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2446, 'menu', 'modChannelMenu', '二级导航菜单', 'comment', 'main', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2444, 'menu', 'modChannelMenu', '二级导航菜单', 'comment', 'query', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2445, 'menu', 'modChannelMenu', '二级导航菜单', 'comment', 'detail', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2443, 'menu', 'modChannelMenu', '二级导航菜单', 'advs', 'link', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2628, 'menu', 'modBottomMenu', '底部菜单（一级）', 'product', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2631, 'news', 'modNewsList', '文章列表', 'news', 'main', 'tpl_newslist_time_big.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}news/class/?1.html', 689, 190, 0, 211, 6, 15, 5, 'id', 'desc', 0, 30, '_self', 1, 0, -1, -1, 'fill', '企业新闻', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(2630, 'news', 'modNewsTwoClass', '文章二级分类', 'news', 'main', 'tpl_newstwoclass.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 197, 184, 0, 5, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类导航', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2633, 'news', 'modNewsList', '文章列表', 'news', 'main', 'tpl_newslist_time_big.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}news/class/?2.html', 689, 192, 186, 211, 7, 15, 5, 'id', 'desc', 0, 30, '_self', 2, 0, -1, -1, 'fill', '行业动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(2634, 'news', 'modNewsList', '文章列表', 'news', 'main', 'tpl_newslist_time_big.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}news/class/?71.html', 689, 194, 374, 211, 8, 15, 5, 'id', 'desc', 0, 30, '_self', 71, 0, -1, -1, 'fill', '产品知识', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 3, 0, 'hidden', 'content', 'block'),
(2653, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'main', 'tpl_news_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 178, 0, 0, 9, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2647, 'product', 'modProductList', '自选产品列表', 'product', 'main', 'tpl_productlist_5.htm', '-1', 'A506', '#eeeeee', 5, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}product/class/?2.html', 685, 284, 294, 215, 9, 20, 6, 'id', 'desc', 0, 12, '_self', 0, 30, 100, 100, 'fill', '内容网站系列', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(2646, 'product', 'modProductSearchForm', '产品搜索表单', 'product', 'main', 'tpl_product_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 185, 0, 0, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2648, 'product', 'modProductQuery', '产品检索搜索', 'product', 'query', 'tpl_product_query_3.htm', '-1', 'A502', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 690, 651, 33, 210, 2, 20, 10, 'id', 'desc', 0, 30, '_self', 0, 30, 135, 135, 'fill', '产品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2649, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'query', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 688, 29, 0, 212, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2650, 'product', 'modProductSearchForm', '产品搜索表单', 'product', 'query', 'tpl_product_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 193, 0, 0, 7, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2651, 'product', 'modProductTwoClass', '产品二级分类', 'product', 'query', 'tpl_producttwoclass_1.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 198, 421, 199, 0, 9, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2652, 'product', 'modProductSearchForm', '产品搜索表单', 'product', 'detail', 'tpl_product_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 186, 0, 700, 9, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3031, 'menu', 'modTopMenu', '顶部菜单(一级)', 'down', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(2656, 'news', 'modNewsTwoClass', '文章二级分类', 'news', 'query', 'tpl_newstwoclass.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 181, 192, 0, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类导航', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2658, 'photo', 'modPhotoTwoClass', '图片二级分类', 'photo', 'main', 'tpl_phototwoclass.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 265, 189, 0, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2659, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'main', 'tpl_photo_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 179, 1, 0, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图库搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2660, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'main', 'tpl_photopic.htm', '-1', '1000', '#f2f2f2', 4, 'solid', '', 'click', 'block', '#f2f2f2', '#505050', '#fff', '{#RP#}photo/class/', 691, 455, 3, 209, 7, 25, 12, 'id', 'desc', 0, 12, '_self', 0, -1, 200, 150, 'fill', '企业图库', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(2666, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'query', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 696, 30, 2, 204, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2667, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'detail', 'tpl_comment_searchform.htm', '-1', 'B018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 180, 183, 0, 0, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2668, 'comment', 'modCommentClass', '点评分类', 'comment', 'detail', 'tpl_comment_class.htm', '-1', 'B018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 180, 198, 188, 0, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2670, 'service', 'modServiceNavPath', '当前位置提示条', 'service', 'main', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 653, 25, 0, 30, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2671, 'service', 'modForm', '客户服务表单', 'service', 'main', 'tpl_form.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 888, 679, 29, 12, 8, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '客户服务', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(2676, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'productfabu', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2677, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'productfabu', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2678, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'productfabu', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2679, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'productfabu', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2680, 'product', 'modProductFabu', '产品发布表单', 'member', 'productfabu', 'tpl_product_fabu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 405, 35, 200, 90, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品发布', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2684, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'productgl', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2685, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'productgl', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2686, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'productgl', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2687, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'productgl', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2688, 'product', 'modProductGl', '产品管理', 'member', 'productgl', 'tpl_product_gl.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 700, 35, 200, 90, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品管理', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2692, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'productmodify', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2693, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'productmodify', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2694, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'productmodify', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2695, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'productmodify', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2696, 'product', 'modProductModify', '产品修改表单', 'member', 'productmodify', 'tpl_product_modify.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 463, 33, 200, 90, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品修改', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2700, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'productcat', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2701, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'productcat', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2702, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'productcat', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2703, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'productcat', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2704, 'product', 'modProductMyCat', '产品分类管理', 'member', 'productcat', 'tpl_product_mycat.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 300, 34, 200, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品分类管理', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2707, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'service', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2708, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'service', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2709, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'service', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2710, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'service', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2711, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'service', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2712, 'service', 'modServiceForm', '客户服务表单', 'member', 'service', 'tpl_serviceform.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 676, 36, 200, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '有问必答', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(2716, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'feedback', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2717, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'feedback', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2718, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'feedback', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2719, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'feedback', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2720, 'service', 'modServiceTaskList', '客服工单查询', 'member', 'feedback', 'tpl_tasklist.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 291, 35, 200, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '客服工单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2723, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'feedbackhis', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2724, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'feedbackhis', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2725, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'feedbackhis', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2726, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'feedbackhis', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2727, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'feedbackhis', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2728, 'service', 'modServiceTaskHis', '存档工单查询', 'member', 'feedbackhis', 'tpl_taskhis.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 300, 34, 200, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '存档工单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2731, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'feedbacklook', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 200, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2732, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'feedbacklook', 'tpl_qqmenu_1.htm', 'B', '1000', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 312, 0, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2733, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'feedbacklook', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 3, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2734, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'feedbacklook', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 1, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(2735, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'feedbacklook', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2736, 'service', 'modServiceTaskDetail', '客服工单详情', 'member', 'feedbacklook', 'tpl_taskdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 758, 33, 200, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '工单详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3026, 'menu', 'modTopMenu', '顶部菜单(一级)', 'comment', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(3108, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 5, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3117, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 295, 128, 40, 600, 3, 8, 5, 'id', 'desc', 0, 15, '_self', 2, 50, -1, -1, 'fill', '行业动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(3109, 'tools', 'modShowCount', '访问统计', 'index', 'index', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3110, 'diy', 'modGroupLable', '标签切换边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'B203', '', 0, 'solid', '3112,3117,3122', 'auto', 'none', '', '#fff', '#fff', '{#RP#}news/class/', 309, 184, 0, 591, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新闻动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3111, 'menu', 'modChannelMenu', '二级导航菜单', 'index', 'index', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2886, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'comment', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2887, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'down', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2888, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'down', 'query', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2889, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'down', 'detail', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3118, 'diy', 'modHeadPic', '头部自定义效果图', 'index', 'index', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2891, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'homepage', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2892, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'downgl', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2893, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'downfabu', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2894, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'downmodify', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2895, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'login', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2896, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'lostpass', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2897, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'reg', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2898, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2899, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'account', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2900, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'person', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2901, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'detail', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2902, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'contact', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2903, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'notice', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2904, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'newsfabu', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2905, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'newsgl', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2906, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'newsmodify', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2907, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'photogl', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2908, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'photofabu', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2909, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'photomodify', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(2910, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'fav', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2911, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'friends', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2912, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'comment', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2913, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'newscat', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2914, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'photocat', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2915, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'downcat', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2916, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'msn', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2917, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'news', 'query', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2918, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'news', 'detail', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2919, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'news', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2920, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'page', 'html', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2921, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'photo', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2922, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'photo', 'query', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2923, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'photo', 'detail', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2924, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'search', 'search', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2925, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'membercent', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2926, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'news', 'membernews', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2927, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'photo', 'memberphoto', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2928, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'down', 'memberdown', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2929, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'product', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2930, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'product', 'query', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2931, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'product', 'detail', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2932, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'product', 'memberproduct', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2933, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'productgl', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2934, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'productfabu', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2935, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'productmodify', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2936, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'productcat', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2937, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'service', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2938, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'service', 'main', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2939, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'service', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2940, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'feedback', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2941, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'feedbacklook', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2942, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'member', 'feedbackhis', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3089, 'menu', 'modBottomMenu', '底部菜单（一级）', 'product', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 5, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3113, 'member', 'modLoginForm', '会员登录表单', 'index', 'index', 'tpl_loginform.htm', '-1', 'A501', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 215, 195, 0, 0, 15, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3114, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'index', 'index', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plusdefault`
--

CREATE TABLE IF NOT EXISTS `dev_base_plusdefault` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` char(100) NOT NULL default '',
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL default '-1',
  `showborder` char(20) NOT NULL default '1000',
  `bordercolor` varchar(7) NOT NULL default '#4682b4',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#4682b4',
  `barcolor` varchar(10) NOT NULL default '#fff',
  `backgroundcolor` varchar(7) NOT NULL default '#fff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '-1',
  `ord` varchar(100) NOT NULL default '-1',
  `sc` varchar(10) NOT NULL default '-1',
  `showtj` int(5) NOT NULL default '-1',
  `cutword` int(20) NOT NULL default '-1',
  `target` varchar(30) NOT NULL default '-1',
  `catid` int(10) NOT NULL default '-1',
  `cutbody` int(5) NOT NULL default '-1',
  `picw` int(3) NOT NULL default '-1',
  `pich` int(3) NOT NULL default '-1',
  `fittype` varchar(10) NOT NULL default '-1',
  `title` varchar(100) NOT NULL default '',
  `body` text,
  `pic` varchar(255) NOT NULL default '-1',
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL default '-1',
  `movi` varchar(255) NOT NULL default '-1',
  `sourceurl` varchar(20) NOT NULL default '-1',
  `word` varchar(255) NOT NULL default '-1',
  `word1` varchar(255) NOT NULL default '-1',
  `word2` varchar(255) NOT NULL default '-1',
  `word3` char(255) NOT NULL default '-1',
  `word4` char(255) NOT NULL default '-1',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL default '-1',
  `link1` char(255) NOT NULL default '-1',
  `link2` char(255) NOT NULL default '-1',
  `link3` char(255) NOT NULL default '-1',
  `link4` char(255) NOT NULL default '-1',
  `tags` varchar(30) NOT NULL default '-1',
  `groupid` varchar(20) NOT NULL default '-1',
  `projid` varchar(20) NOT NULL default '-1',
  `moveable` int(1) NOT NULL default '1',
  `classtbl` varchar(30) NOT NULL default '',
  `grouptbl` varchar(50) NOT NULL,
  `projtbl` varchar(50) NOT NULL,
  `setglobal` int(5) NOT NULL default '-1',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` varchar(10) NOT NULL default 'block',
  `ifmul` int(1) NOT NULL default '1',
  `ifrefresh` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=265 ;

--
-- 转存表中的数据 `dev_base_plusdefault`
--

INSERT INTO `dev_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(17, 'advs', 'modLogo', '网站标志', 'all', 'all', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 150, 60, 20, 20, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '网站标志', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_logo', '', 1, 'hidden', 'top', 'block', 0, 0),
(25, 'advs', 'modLinkPic', '图片友情链接', 'all', 'all', 'tpl_linkpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 6, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(26, 'advs', 'modLinkText', '文字友情链接', 'all', 'all', 'tpl_link.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(31, 'advs', 'modAdvsLb', '图片轮播广告', 'all', 'all', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 320, 280, 200, 200, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '轮播广告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', -1, 'hidden', 'content', 'block', 0, 1),
(32, 'advs', 'modAdvsPic', '页内图片广告', 'all', 'all', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 565, 95, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'content', 'block', 1, 0),
(199, 'effect', 'modHeadBgSource', '头部效果图素材', 'all', 'all', 'tpl_headbg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部效果图', '-1', '-1', '-1', '-1', '-1', 'head/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(34, 'advs', 'modAdvsText', '文字广告（静态）', 'all', 'all', 'tpl_advstext.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(35, 'advs', 'modAdvsMovi', 'FLASH视频广告', 'all', 'all', 'tpl_movi.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频播放', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_movi', '', -1, 'hidden', 'content', 'block', 1, 0),
(48, 'advs', 'modAdvsFloat', '图片广告（飘动）', 'all', 'all', 'tpl_advs_float.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(49, 'advs', 'modAdvsDuilian', '对联广告', 'all', 'all', 'tpl_advs_duilian.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 220, 130, 6, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_duilian', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(50, 'advs', 'modAdvsZimu', '文字广告（字幕）', 'all', 'all', 'tpl_advszimu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(51, 'advs', 'modAdvsFixed', '图片广告（悬浮）', 'all', 'all', 'tpl_advs_fixed.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 100, 100, 350, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 0),
(61, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(89, 'advs', 'modAdvsCode', '广告代码', 'all', 'all', 'tpl_advscode.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 250, 250, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请在此插入广告代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(18, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'all', 'tpl_comment_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(21, 'comment', 'modCommentList', '最新点评（列表）', 'all', 'all', 'tpl_commentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php', 300, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(22, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '-1', '1000', '#def', 1, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 300, 35, 0, 90, 0, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '点评检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(23, 'comment', 'modCommentClass', '点评分类', 'all', 'all', 'tpl_comment_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '点评分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(24, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '-1', '1000', '#def', 0, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 500, 35, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(56, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(151, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 380, 170, 0, 0, 90, 12, 5, '-1', '-1', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(164, 'comment', 'modCommentHot30', '本月点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(165, 'comment', 'modCommentHot7', '本周点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(166, 'comment', 'modCommentRq30', '本月点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(167, 'comment', 'modCommentRq7', '本周点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(9, 'diy', 'modEdit', 'HTML编辑区', 'all', 'all', 'tpl_edit.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定内容', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(27, 'diy', 'modButtomInfo', '底部信息编辑区', 'all', 'all', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 900, 120, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注信息', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(47, 'diy', 'modText', '多行文字', 'all', 'all', 'tpl_text.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '多行文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请输入自定义文字', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(53, 'diy', 'modPic', '图片/FLASH', 'all', 'all', 'tpl_pic.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(74, 'diy', 'modWords', '单行文字', 'all', 'all', 'tpl_words.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '单行文字', '-1', '-1', '-1', '-1', '-1', '-1', '请输入文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(75, 'diy', 'modPicWordText', '图片+标题+介绍', 'all', 'all', 'tpl_picwordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 250, 90, 30, 300, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(76, 'diy', 'modPicWord', '图片+标题', 'all', 'all', 'tpl_picword.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 250, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(184, 'news', 'modNewsPicMemo', '文章图片+标题+摘要', 'all', 'all', 'tpl_newspicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 300, 320, 0, 0, 99, 5, 3, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 35, 80, 80, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(185, 'photo', 'modPhotoPicMemo', '图片+名称+介绍', 'all', 'all', 'tpl_photopicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 300, 350, 0, 0, 90, 10, 3, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(86, 'diy', 'modPlusBorder', '空白边框', 'all', 'all', 'tpl_plusborder.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 300, 0, 0, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '空白边框', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(87, 'diy', 'modColorZone', '空白色块', 'all', 'all', 'tpl_colorzone.htm', '-1', '1000', '#e10000', 1, 'solid', '', '', 'none', '', '', '#e10000', '-1', 200, 200, 30, 30, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(120, 'down', 'modDownQuery', '下载检索搜索', 'down', 'all', 'tpl_down_query.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 30, 200, 90, 12, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '下载检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(121, 'down', 'modDownClass', '下载分类（列表）', 'all', 'all', 'tpl_downclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(122, 'down', 'modDownTreeClass', '下载分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(123, 'down', 'modDownProjList', '相关下载(同专题)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(124, 'down', 'modDownAuthorList', '相关下载(同发布人)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(125, 'down', 'modDownClassFc', '下载逐级分类', 'down', 'query', 'tpl_downclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(126, 'down', 'modDownList', '下载列表', 'all', 'all', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/', 250, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0),
(127, 'down', 'modDownContent', '下载详情', 'down', 'detail', 'tpl_down_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 300, 30, 0, 90, 25, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(128, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'all', 'tpl_down_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(129, 'down', 'modDownComment', '下载点评', 'down', 'detail', 'tpl_down_comment.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 300, 0, 90, 0, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '下载评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(130, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(131, 'down', 'modDownProject', '下载专题（列表）', 'all', 'all', 'tpl_downproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(132, 'down', 'modDownHot', '下载排行榜', 'all', 'all', 'tpl_downhot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/index.php?myord=cl', 250, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '下载排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0),
(133, 'down', 'modDownFabu', '下载发布表单', 'member', 'downfabu', 'tpl_down_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(134, 'down', 'modDownGl', '下载管理', 'member', 'downgl', 'tpl_down_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(135, 'down', 'modDownModify', '下载修改表单', 'member', 'downmodify', 'tpl_down_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(138, 'down', 'modDownMyCat', '下载分类管理', 'member', 'downcat', 'tpl_down_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(150, 'down', 'modMemberDownList', '会员下载列表', 'member', 'homepage', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/memberdown.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '资源下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(161, 'down', 'modMemberDownClass', '会员下载分类', 'down', 'memberdown', 'tpl_memberdown_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(162, 'down', 'modMemberDownQuery', '会员下载检索', 'down', 'memberdown', 'tpl_memberdown_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 300, 0, 0, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '下载检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(163, 'down', 'modMemberDownSearchForm', '会员下载搜索', 'down', 'memberdown', 'tpl_memberdown_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(63, 'effect', 'modJIanFan', '动态简繁转换', 'all', 'all', 'tpl_jianfan.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '', '-1', 150, 50, 30, 700, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '简繁转换', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(64, 'effect', 'modNowDate', '当前日期时间', 'all', 'all', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 30, 10, 600, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前日期时间', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(65, 'effect', 'modMouseClock', '鼠标时钟特效', 'all', 'all', 'tpl_mouseclock.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 150, 300, 10, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(90, 'effect', 'modTraFlash', '透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 500, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(6, 'index', 'modIndexNavPath', '当前位置提示条', 'index', 'index', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(30, 'member', 'modLoginForm', '会员登录表单', 'all', 'all', 'tpl_loginform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(37, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 750, 390, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员注册', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(43, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(45, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 250, 0, 0, 90, 30, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '重设密码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(57, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(103, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 250, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(104, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 12, 5, '-1', '-1', -1, 25, '_self', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(106, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '登录帐号设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(107, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头像签名设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(108, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '个人资料修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(109, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '联系信息设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(110, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(139, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的收藏夹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(140, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的好友', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(141, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(142, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的站内短信', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(147, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(148, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(153, 'member', 'modMemberIntro', '会员简介', 'member', 'homepage', 'tpl_member_intro.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员简介', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(154, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 210, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(14, 'menu', 'modChannelMenu', '二级导航菜单', 'all', 'all', 'tpl_channelmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 65, 120, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(16, 'menu', 'modBottomMenu', '底部菜单（一级）', 'all', 'all', 'tpl_bottommenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 0, 0, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注栏目', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(67, 'menu', 'modDropDownMenu', '二级下拉菜单', 'all', 'all', 'tpl_dropdownmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(66, 'menu', 'modTopMenu', '顶部菜单(一级)', 'all', 'all', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 350, 30, 5, 500, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '顶部菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(68, 'menu', 'modMainMenu', '一级导航菜单', 'all', 'all', 'tpl_mainmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 30, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(115, 'menu', 'modTreeMenu', '树形导航菜单', 'all', 'all', 'tpl_treemenu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'visible', 'content', 'block', 0, 1),
(116, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'all', 'tpl_qqmenu.htm', 'A', '1000', '#def', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员中心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(1, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'all', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 600, 500, 30, 200, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '文章检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(2, 'news', 'modNewsClass', '文章一级分类', 'all', 'all', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(3, 'news', 'modNewsTreeClass', '文章分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 1),
(4, 'news', 'modNewsProjList', '相关文章(同专题)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(5, 'news', 'modNewsAuthorList', '相关文章(同发布人)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(7, 'news', 'modNewsClassFc', '文章逐级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(8, 'news', 'modNewsList', '文章列表', 'all', 'all', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(12, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章正文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(13, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'all', 'tpl_news_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(20, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 630, 300, 300, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '文章评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(55, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(72, 'news', 'modNewsProject', '文章专题名称列表', 'all', 'all', 'tpl_newsproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(82, 'news', 'modNewsPic', '文章图片+标题', 'all', 'all', 'tpl_newspic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 99, 5, 4, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 6, '_self', 0, -1, 160, 120, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(88, 'news', 'modNewsHot', '文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '文章人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(112, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(113, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `dev_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(114, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(136, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(149, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(155, 'news', 'modMemberNewsClass', '会员文章分类', 'news', 'membernews', 'tpl_membernews_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(156, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 300, 30, 220, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '会员文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(157, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(58, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(62, 'page', 'modPageContent', '网页内容详情', 'page', 'all', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '内容标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(70, 'page', 'modPageTitleList', '网页标题(列表)', 'all', 'all', 'tpl_pagelist.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(71, 'page', 'modPageContentFy', '网页内容翻页', 'page', 'all', 'tpl_page_fy.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 50, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '翻页', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(73, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'all', 'all', 'tpl_page_titlemenu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(91, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'all', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, -1, 120, 120, 'fill', '图片检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(92, 'photo', 'modPhotoContent', '图片详情', 'photo', 'detail', 'tpl_photo_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(93, 'photo', 'modPhotoClass', '图片分类（列表）', 'all', 'all', 'tpl_photoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(94, 'photo', 'modPhotoPic', '图片+名称', 'all', 'all', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 620, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(95, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'all', 'tpl_photo_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(96, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(97, 'photo', 'modPhotoProject', '图片专题（列表）', 'all', 'all', 'tpl_photoproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(98, 'photo', 'modPhotoProjList', '相关图片(同专题)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(100, 'photo', 'modPhotoClassFc', '图片逐级分类', 'photo', 'query', 'tpl_photoclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(101, 'photo', 'modPhotoHot', '图片人气榜', 'all', 'all', 'tpl_photohot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '图片人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(102, 'photo', 'modPhotoComment', '图片点评', 'photo', 'detail', 'tpl_photo_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '图片评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(117, 'photo', 'modPhotoFabu', '图片发布表单', 'member', 'photofabu', 'tpl_photo_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(118, 'photo', 'modPhotoGl', '图片管理', 'member', 'photogl', 'tpl_photo_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(119, 'photo', 'modPhotoModify', '图片修改表单', 'member', 'photomodify', 'tpl_photo_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(137, 'photo', 'modPhotoMyCat', '图片分类管理', 'member', 'photocat', 'tpl_photo_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(152, 'photo', 'modMemberPhotoPic', '会员最新图片', 'member', 'homepage', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/memberphoto.php?mid={#mid#}', 500, 200, 0, 0, 90, 10, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 7, '_self', -1, -1, 120, 120, 'fill', '我的图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(158, 'photo', 'modMemberPhotoClass', '会员图片分类', 'photo', 'memberphoto', 'tpl_memberphoto_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(159, 'photo', 'modMemberPhotoQuery', '会员图片检索', 'photo', 'memberphoto', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 0, 220, 99, 0, 20, '-1', '-1', -1, -1, '-1', -1, -1, 120, 120, 'fill', '图片检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(160, 'photo', 'modMemberPhotoSearchForm', '会员图片搜索', 'photo', 'memberphoto', 'tpl_memberphoto_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(29, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 600, 30, 0, 90, 0, -1, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(46, 'search', 'modSearchForm', '全站搜索表单', 'all', 'all', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(59, 'search', 'modSearchNavPath', '当前位置提示条', 'search', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(28, 'tools', 'modShowCount', '访问统计', 'all', 'all', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 30, 100, 300, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '访问统计', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(54, 'tools', 'modVote', '投票调查', 'all', 'all', 'tpl_vote.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 250, 200, 200, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '投票调查', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_tools_pollindex', '', -1, 'hidden', 'content', 'block', 0, 0),
(168, 'down', 'modDownHot30', '本月下载排行榜', 'all', 'all', 'tpl_downhot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/index.php?myord=cl', 250, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月下载榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0),
(169, 'news', 'modNewsHot30', '本月文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(170, 'photo', 'modPhotoHot30', '本月图片人气榜', 'all', 'all', 'tpl_photohot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(171, 'photo', 'modPhotoAuthorList', '相关图片(同发布人)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(172, 'news', 'modNewsSameTagList', '相关文章(同标签)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(173, 'photo', 'modPhotoSameTagList', '相关图片(同标签)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(174, 'down', 'modDownSameTagList', '相关下载(同标签)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(176, 'diy', 'modDiyMovi', 'FLASH视频', 'all', 'all', 'tpl_diymovi.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频', '-1', '-1', '-1', '-1', '请输入FLASH视频来源网址', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(175, 'advs', 'modLinkOpt', '下拉式友情链接', 'all', 'all', 'tpl_linkopt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 200, 50, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(204, 'member', 'modMemberRank3', '会员悬赏榜(积分三)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员悬赏榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(205, 'member', 'modMemberRank4', '会员金币榜(积分四)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员金币榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(206, 'member', 'modMemberRank5', '消费积分榜(积分五)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '消费积分榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(207, 'member', 'modMemberTags', '会员推荐(标签)', 'all', 'all', 'tpl_membertags.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 2, '-1', '-1', -1, -1, '_self', -1, -1, 70, 70, '-1', '会员推荐', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(203, 'member', 'modMemberRank2', '会员人气榜(积分二)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(202, 'member', 'modMemberRank1', '会员经验榜(积分一)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员经验榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(182, 'diy', 'modWordTT', '标题+链接组', 'all', 'all', 'tpl_wordtt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 70, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '今日头条', '-1', '-1', '-1', '-1', '-1', '-1', '请输入头条标题文字', '自定义链接文字一', '自定义链接文字二', '自定义链接文字三', '自定义链接文字四', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(183, 'diy', 'modWordText', '标题+介绍', 'all', 'all', 'tpl_wordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 100, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '插件标题', '-1', '-1', '-1', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(186, 'photo', 'modPhotoRollx3', '三图轮播特效', 'all', 'all', 'tpl_photorollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 0, 1),
(187, 'news', 'modNewsPicRollx3', '三图轮播特效', 'all', 'all', 'tpl_newspicrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 0, 1),
(189, 'diy', 'modPicWords', '图片+标题组', 'all', 'all', 'tpl_picwordx5.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 120, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(190, 'effect', 'modButtonSource', '按钮素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 80, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '按钮素材', '-1', '-1', '-1', '-1', '-1', 'button/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(191, 'effect', 'modIconSource', '图标素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'icon/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(193, 'effect', 'modSmallIcon', '小图标素材', 'all', 'all', 'tpl_smallicon.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'smallicon/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(198, 'effect', 'modBgSource', '背景图片素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(195, 'effect', 'modSourceCoolLine', '分割线装饰素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '分割线素材', '-1', '-1', '-1', '-1', '-1', 'coolline/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(196, 'effect', 'modCartonSource', '其他图片素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '卡通图片', '-1', '-1', '-1', '-1', '-1', 'carton/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(200, 'diy', 'modGroupLable', '标签切换边框', 'all', 'all', 'tpl_plusborder.htm', '-1', 'A201', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', 'http://', 300, 300, 0, 0, 0, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自动标签', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(208, 'effect', 'modHeaderBg', '头部背景图素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(209, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(210, 'diy', 'modBgSound', '网页背景音乐(mid)', 'all', 'all', 'tpl_bgsound.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 50, 350, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景音乐', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(211, 'news', 'modNewsSameClass', '文章同级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(212, 'photo', 'modPhotoSameClass', '图片同级分类', 'photo', 'query', 'tpl_photoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(213, 'down', 'modDownSameClass', '下载同级分类', 'down', 'query', 'tpl_downclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(214, 'diy', 'modHeadPic', '头部自定义效果图', 'all', 'all', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(219, 'diy', 'modDiyTemp', '自定义模版', 'all', 'all', 'tpl_diy.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定模版', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(220, 'news', 'modNewsTwoClass', '文章二级分类', 'all', 'all', 'tpl_newstwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(221, 'photo', 'modPhotoTwoClass', '图片二级分类', 'all', 'all', 'tpl_phototwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(222, 'product', 'modProductQuery', '产品检索搜索', 'product', 'all', 'tpl_product_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, 30, 120, 120, 'fill', '产品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(223, 'product', 'modProductContent', '产品详情', 'product', 'detail', 'tpl_product_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(224, 'product', 'modProductClass', '产品分类（列表）', 'all', 'all', 'tpl_productclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(225, 'product', 'modProductList', '自选产品列表', 'all', 'all', 'tpl_productlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}product/class/', 300, 350, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'hidden', 'content', 'block', 1, 0),
(226, 'product', 'modProductSearchForm', '产品搜索表单', 'product', 'all', 'tpl_product_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(227, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(228, 'product', 'modProductProject', '产品专题（列表）', 'all', 'all', 'tpl_productproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(229, 'product', 'modProductProjList', '相关产品(同专题)', 'product', 'detail', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(230, 'product', 'modProductClassFc', '产品逐级分类', 'product', 'query', 'tpl_productclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(231, 'product', 'modProductComment', '产品点评', 'product', 'detail', 'tpl_product_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '产品评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(232, 'product', 'modProductFabu', '产品发布表单', 'member', 'productfabu', 'tpl_product_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(233, 'product', 'modProductGl', '产品管理', 'member', 'productgl', 'tpl_product_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(234, 'product', 'modProductModify', '产品修改表单', 'member', 'productmodify', 'tpl_product_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(235, 'product', 'modProductMyCat', '产品分类管理', 'member', 'productcat', 'tpl_product_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(236, 'product', 'modMemberProductPic', '会员最新产品', 'member', 'homepage', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}product/memberproduct.php?mid={#mid#}', 500, 200, 0, 0, 90, 10, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 7, '_self', -1, -1, 120, 120, 'fill', '我的产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(237, 'product', 'modMemberProductClass', '会员产品分类', 'product', 'memberproduct', 'tpl_memberproduct_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(238, 'product', 'modMemberProductQuery', '会员产品检索', 'product', 'memberproduct', 'tpl_product_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 0, 220, 99, 0, 20, '-1', '-1', -1, -1, '-1', -1, -1, 120, 120, 'fill', '产品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(239, 'product', 'modMemberProductSearchForm', '会员产品搜索', 'product', 'memberproduct', 'tpl_memberproduct_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(240, 'product', 'modProductAuthorList', '相关产品(同发布人)', 'product', 'detail', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(241, 'product', 'modProductSameTagList', '相关产品(同标签)', 'product', 'detail', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(242, 'product', 'modProductRollx3', '产品三图轮播特效', 'all', 'all', 'tpl_productrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '产品图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'hidden', 'content', 'block', 0, 1),
(243, 'product', 'modProductSameClass', '产品同级分类', 'product', 'query', 'tpl_productclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(244, 'product', 'modProductCarousel', '产品图片旋转特效', 'all', 'all', 'tpl_productcarousel_cyrano.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 600, 225, 0, 200, 99, 0, -1, '-1', '-1', 0, -1, '_self', 0, -1, 180, 180, '-1', '产品图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'hidden', 'content', 'block', 0, 1),
(245, 'product', 'modProductTwoClass', '产品二级分类', 'all', 'all', 'tpl_producttwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(246, 'menu', 'modVMenu', '竖式导航菜单', 'all', 'all', 'tpl_vmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(247, 'menu', 'modMVMenu', '手风琴式二级菜单', 'all', 'all', 'tpl_mvmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 180, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', -1, 'visible', 'content', 'block', 0, 1),
(248, 'service', 'modForm', '客户服务表单', 'service', 'all', 'tpl_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '客户服务', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_service_group', '', -1, 'visible', 'content', 'block', 0, 0),
(249, 'service', 'modServiceNavPath', '当前位置提示条', 'service', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(250, 'service', 'modFormGroup', '客服分组菜单', 'service', 'all', 'tpl_formgroup.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '客服分组', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(251, 'service', 'modServiceForm', '客户服务表单', 'member', 'service', 'tpl_serviceform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '有问必答', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_service_group', '', -1, 'visible', 'content', 'block', 0, 0),
(252, 'service', 'modServiceTaskList', '客服工单查询', 'member', 'feedback', 'tpl_tasklist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '客服工单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(253, 'service', 'modServiceTaskDetail', '客服工单详情', 'member', 'feedbacklook', 'tpl_taskdetail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '工单详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `dev_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(254, 'service', 'modServiceTaskHis', '存档工单查询', 'member', 'feedbackhis', 'tpl_taskhis.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '存档工单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(255, 'news', 'modNewsPicLb', '文章图片轮播', 'all', 'all', 'tpl_newspic_lb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 280, 0, 0, 99, 1, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 15, '-1', 0, -1, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 1),
(256, 'page', 'modPagePicList', '标题+摘要+主题图', 'all', 'all', 'tpl_page_piclist.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 15, '_self', -1, 50, 120, 90, 'fill', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(257, 'tools', 'modToolsPhotoPollQuery', '图片投票翻页检索', 'all', 'all', 'tpl_tools_photopoll_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, 'id|uptime|votes', '-1', -1, 30, '-1', 0, -1, 80, 80, 'fill', '图片投票检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_tools_photopollindex', '', '', -1, 'visible', 'content', 'block', 0, 1),
(258, 'tools', 'modToolsQqCs', 'QQ客服', 'all', 'all', 'tpl_tools_qqcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 120, 300, 100, 20, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', 'QQ客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(259, 'tools', 'modToolsWyCs', '51客服', 'all', 'all', 'tpl_tools_wycs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 120, 100, 0, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', '51客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(260, 'tools', 'modToolsStatistics', '统计代码插件', 'all', 'all', 'tpl_tools_statistics.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 30, 30, 50, 400, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '统计代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bottom', 'block', 0, 0),
(261, 'tools', 'modToolsYdCs', '移动短信留言', 'all', 'all', 'tpl_tools_ydcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 400, 350, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '移动短信留言板', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(262, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '付款记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(263, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '消费记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(264, 'member', 'modMemberOnlinePay', '帐户在线充值', 'member', 'onlinepay', 'tpl_member_onlinepay.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '帐户在线充值', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plusplan`
--

CREATE TABLE IF NOT EXISTS `dev_base_plusplan` (
  `id` int(12) NOT NULL auto_increment,
  `planid` int(6) NOT NULL default '0',
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=163 ;

--
-- 转存表中的数据 `dev_base_plusplan`
--

INSERT INTO `dev_base_plusplan` (`id`, `planid`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(156, 17, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 295, 128, 40, 600, 3, 8, 5, 'id', 'desc', 0, 15, '_self', 2, 50, -1, -1, 'fill', '行业动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(157, 17, 'tools', 'modShowCount', '访问统计', 'index', 'index', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(158, 17, 'diy', 'modGroupLable', '标签切换边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'B203', '', 0, 'solid', '3112,3117,3122', 'auto', 'none', '', '#fff', '#fff', '{#RP#}news/class/', 309, 184, 0, 591, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新闻动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(159, 17, 'menu', 'modChannelMenu', '二级导航菜单', 'index', 'index', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(160, 17, 'diy', 'modHeadPic', '头部自定义效果图', 'index', 'index', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(161, 17, 'member', 'modLoginForm', '会员登录表单', 'index', 'index', 'tpl_loginform.htm', '-1', 'A501', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 215, 195, 0, 0, 15, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(162, 17, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'index', 'index', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(146, 16, 'menu', 'modChannelMenu', '二级导航菜单', 'index', 'index', 'tpl_channelmenu_9.htm', 'B', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 44, 151, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(154, 17, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(155, 17, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 5, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(153, 17, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '#fff', '#fff', '{#RP#}news/class/', 292, 128, 40, 601, 4, 8, 5, 'id', 'desc', 0, 15, '_self', 1, 0, -1, -1, 'fill', '新闻动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(149, 17, 'menu', 'modTopMenu', '顶部菜单(一级)', 'index', 'index', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(145, 16, 'tools', 'modShowCount', '访问统计', 'index', 'index', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 62, 20, 114, 424, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(151, 17, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '#fff', '#fff', '{#RP#}news/class/', 295, 126, 38, 600, 2, 8, 5, 'id', 'desc', 0, 15, '_self', 71, 0, -1, -1, 'fill', '最新文章', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 3, 0, 'hidden', 'content', 'block'),
(152, 17, 'advs', 'modAdvsLb', '图片轮播广告', 'index', 'index', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 355, 184, 0, 231, 16, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '轮播广告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(143, 16, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'index', 'index', 'tpl_flash4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 738, 112, 33, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(144, 16, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 159, 0, 0, 5, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<p style="FONT: 12px/20px Verdana, Arial, Helvetica, sans-serif"><br />PHPWEB 分享式智能网站管理系统UTF-8简体中文版 <br /><font face=Arial><font color=#004080>Powered By</font> <a href="http://www.phpweb.net/"><font color=#ff8000>PHPWEB</font></a> &nbsp;<font color=#004080>Copyright ? 2009-2011</font></font>&nbsp;<br /></p>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(142, 16, 'menu', 'modTopMenu', '顶部菜单(一级)', 'index', 'index', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 412, 30, 5, 450, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(141, 16, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 491, 28, 15, 202, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '脚注栏目', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(150, 17, 'search', 'modSearchForm', '全站搜索表单', 'index', 'index', 'tpl_searchform.htm', '-1', 'A500', '#eeeeee', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 669, 33, 196, 231, 13, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '站内搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(140, 16, 'diy', 'modHeadPic', '头部自定义效果图', 'index', 'index', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 150, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090323/1237743570.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(148, 17, 'product', 'modProductList', '自选产品列表', 'index', 'index', 'tpl_productlist_5.htm', '-1', 'B502', '#eeeeee', 0, 'solid', '', 'click', 'none', '#f0f0f0', '#505050', '#fff', '{#RP#}product/class/', 669, 302, 241, 231, 6, 15, 6, 'id', 'desc', 0, 12, '_self', 0, 20, 100, 100, 'fill', '产品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(147, 17, 'product', 'modProductTwoClass', '产品二级分类', 'index', 'index', 'tpl_producttwoclass_1.htm', '-1', 'B501', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 210, 342, 202, 0, 11, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品系列', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plusplanid`
--

CREATE TABLE IF NOT EXISTS `dev_base_plusplanid` (
  `id` int(6) NOT NULL auto_increment,
  `planname` varchar(50) NOT NULL default '',
  `plustype` varchar(50) NOT NULL default '',
  `pluslocat` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `dev_base_plusplanid`
--

INSERT INTO `dev_base_plusplanid` (`id`, `planname`, `plustype`, `pluslocat`) VALUES
(16, '头部底部方案', 'index', 'index'),
(17, '默认首页排版', 'index', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plustemp`
--

CREATE TABLE IF NOT EXISTS `dev_base_plustemp` (
  `id` int(12) NOT NULL auto_increment,
  `pluslable` char(30) NOT NULL default '',
  `cname` char(30) NOT NULL,
  `tempname` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=276 ;

--
-- 转存表中的数据 `dev_base_plustemp`
--

INSERT INTO `dev_base_plustemp` (`id`, `pluslable`, `cname`, `tempname`) VALUES
(260, 'modChannelMenu', '方形渐变按钮二级菜单模板', 'tpl_channelmenu_9.htm'),
(29, 'modDownHot', '排行榜样式二', 'tpl_downhot2.htm'),
(201, 'modLoginForm', '横式会员登录表单，请选用专用边框(如500号边框)', 'tpl_loginform_h.htm'),
(67, 'modMemberNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(68, 'modMemberNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(87, 'modMemberNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(88, 'modMemberNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(89, 'modNewsAuthorList', '标题+时间', 'tpl_newslist_time.htm'),
(90, 'modNewsAuthorList', '类别+标题', 'tpl_newslist_cat.htm'),
(91, 'modNewsAuthorList', '标题+摘要', 'tpl_newslist_memo.htm'),
(92, 'modNewsAuthorList', '标题+作者', 'tpl_newslist_author.htm'),
(103, 'modNewsContent', '仿新闻门户正文风格', 'tpl_newscontent_portal.htm'),
(16, 'modNewsHot', '标题+图标风格2', 'tpl_newshot2.htm'),
(58, 'modNewsHot', '标题+时间', 'tpl_newshot_time.htm'),
(59, 'modNewsHot', '标题+作者', 'tpl_newshot_author.htm'),
(60, 'modNewsHot', '标题+图标风格3', 'tpl_newshot3.htm'),
(61, 'modNewsHot', '标题+图标风格4', 'tpl_newshot4.htm'),
(102, 'modNewsHot', '标题+点击数', 'tpl_newshot_cl.htm'),
(62, 'modNewsHot30', '标题+图标风格2', 'tpl_newshot2.htm'),
(63, 'modNewsHot30', '标题+时间', 'tpl_newshot_time.htm'),
(64, 'modNewsHot30', '标题+作者', 'tpl_newshot_author.htm'),
(65, 'modNewsHot30', '标题+图标风格3', 'tpl_newshot3.htm'),
(66, 'modNewsHot30', '标题+图标风格4', 'tpl_newshot4.htm'),
(101, 'modNewsHot30', '标题+点击数', 'tpl_newshot_cl.htm'),
(2, 'modNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(3, 'modNewsList', '类别+标题', 'tpl_newslist_cat.htm'),
(57, 'modNewsList', '标题+参数列1,2,3', 'tpl_newslist_prop3.htm'),
(56, 'modNewsList', '标题+参数列1,2', 'tpl_newslist_prop2.htm'),
(55, 'modNewsList', '标题+参数列1', 'tpl_newslist_prop1.htm'),
(42, 'modNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(41, 'modNewsList', '标题+作者', 'tpl_newslist_author.htm'),
(198, 'modNewsPicMemo', '图片+标题+两个参数列', 'tpl_newspicprop_2.htm'),
(84, 'modNewsPicMemo', '图片+标题+三个参数列', 'tpl_newspicprop.htm'),
(93, 'modNewsProjList', '标题+时间', 'tpl_newslist_time.htm'),
(94, 'modNewsProjList', '类别+标题', 'tpl_newslist_cat.htm'),
(95, 'modNewsProjList', '标题+摘要', 'tpl_newslist_memo.htm'),
(96, 'modNewsProjList', '标题+作者', 'tpl_newslist_author.htm'),
(10, 'modNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(86, 'modNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(97, 'modNewsSameTagList', '标题+时间', 'tpl_newslist_time.htm'),
(98, 'modNewsSameTagList', '类别+标题', 'tpl_newslist_cat.htm'),
(99, 'modNewsSameTagList', '标题+摘要', 'tpl_newslist_memo.htm'),
(100, 'modNewsSameTagList', '标题+作者', 'tpl_newslist_author.htm'),
(118, 'modPhotoContent', '浅蓝淡雅风格', 'tpl_photo_content_blue.htm'),
(27, 'modPhotoHot', '排行榜样式二', 'tpl_photohot2.htm'),
(189, 'modPhotoHot', '标题+时间', 'tpl_photohot_time.htm'),
(190, 'modPhotoHot', '标题+作者', 'tpl_photohot_author.htm'),
(191, 'modPhotoHot', '标题+点击数', 'tpl_photohot_cl.htm'),
(192, 'modPhotoHot30', '排行榜样式二', 'tpl_photohot2.htm'),
(193, 'modPhotoHot30', '标题+时间', 'tpl_photohot_time.htm'),
(194, 'modPhotoHot30', '标题+作者', 'tpl_photohot_author.htm'),
(195, 'modPhotoHot30', '标题+点击数', 'tpl_photohot_cl.htm'),
(197, 'modPhotoPicMemo', '图片+名称+两个参数列', 'tpl_photopicprop_2.htm'),
(196, 'modPhotoPicMemo', '图片+名称+三个参数列', 'tpl_photopicprop.htm'),
(48, 'modPicWords', '图片+四行标题', 'tpl_picwordx4.htm'),
(46, 'modPicWords', '图片+两行标题', 'tpl_picwordx2.htm'),
(49, 'modPicWords', '图片+三行标题', 'tpl_picwordx3.htm'),
(18, 'modText', '从右到左竖写', 'tpl_text_1.htm'),
(20, 'modTraFlash', '移动竖条', 'tpl_flash2.htm'),
(21, 'modTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(22, 'modTraFlash', '米字星光', 'tpl_flash4.htm'),
(45, 'modWordTT', '标题+4组链接', 'tpl_wordttx4.htm'),
(44, 'modWordTT', '标题+3组链接', 'tpl_wordttx3.htm'),
(43, 'modWordTT', '标题+2组链接', 'tpl_wordttx2.htm'),
(202, 'modNewsSearchForm', '竖式搜索表单', 'tpl_news_searchform_h.htm'),
(203, 'modPhotoSearchForm', '竖式搜索表单', 'tpl_photo_searchform_h.htm'),
(204, 'modDownSearchForm', '竖式搜索表单', 'tpl_down_searchform_h.htm'),
(205, 'modCommentSearchForm', '竖式搜索表单', 'tpl_comment_searchform_h.htm'),
(206, 'modSearchForm', '竖式搜索表单', 'tpl_searchform_h.htm'),
(207, 'modButtomInfo', '灰色渐变背景', 'tpl_bottominfo_1.htm'),
(208, 'modMemberTags', '头像+三组积分+推荐标签3', 'tpl_membertags_1.htm'),
(209, 'modMemberTags', '头像+推荐标签3', 'tpl_membertags_2.htm'),
(210, 'modMemberRank1', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(211, 'modMemberRank2', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(212, 'modMemberRank3', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(213, 'modMemberRank4', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(214, 'modMemberRank5', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(215, 'modHeadTraFlash', '移动竖条', 'tpl_flash2.htm'),
(216, 'modHeadTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(217, 'modHeadTraFlash', '米字星光', 'tpl_flash4.htm'),
(218, 'modHeadBgSource', '头部效果图片+圆角遮罩(5px)', 'tpl_headbg_circle.htm'),
(219, 'modHeadBgSource', '头部效果图片+圆角遮罩(9px)', 'tpl_headbg_circle9.htm'),
(220, 'modTopMenu', '白色文字', 'tpl_topmenu_white.htm'),
(221, 'modBgSound', '显示播放器', 'tpl_bgsound_show.htm'),
(222, 'modFormGroup', '列表式', 'tpl_formgroup_list.htm'),
(223, 'modNewsList', '标题+时间(微软雅黑,14px)', 'tpl_newslist_time_big.htm'),
(243, 'modDownQuery', '下载检索,标题 时间 简介', 'tpl_down_query_memo.htm'),
(245, 'modProductSearchForm', '竖式搜索表单', 'tpl_product_searchform_h.htm'),
(246, 'modProductTwoClass', '产品二级分类紧凑型风格', 'tpl_producttwoclass_1.htm'),
(247, 'modProductList', '产品名称+图片+简介(每行两个产品)', 'tpl_productlist_1.htm'),
(248, 'modProductList', '产品名称+图片+参数列(每行两个产品)', 'tpl_productlist_2.htm'),
(249, 'modProductList', '产品名称+图片+简介+参数列(每行两个产品)', 'tpl_productlist_3.htm'),
(250, 'modProductList', '产品名称+图片+简介(每行三个产品)', 'tpl_productlist_4.htm'),
(251, 'modProductList', '产品名称+图片+参数列(每行三个产品)', 'tpl_productlist_5.htm'),
(252, 'modProductList', '产品名称+图片+参数列(文字在图下方，每行产品数自动)', 'tpl_productlist_6.htm'),
(253, 'modProductQuery', '产品名称+图片+简介(每行两个产品)', 'tpl_product_query_1.htm'),
(254, 'modProductQuery', '产品名称+图片+参数列(每行两个产品)', 'tpl_product_query_2.htm'),
(255, 'modProductQuery', '产品名称+图片+简介+参数列(每行两个产品)', 'tpl_product_query_3.htm'),
(256, 'modProductQuery', '产品名称+图片+简介(每行三个产品)', 'tpl_product_query_4.htm'),
(257, 'modProductQuery', '产品名称+图片+参数列(每行三个产品)', 'tpl_product_query_5.htm'),
(258, 'modProductQuery', '产品名称+图片+参数列(文字在图下方，每行产品数自动)', 'tpl_product_query_6.htm'),
(259, 'modProductContent', '会员互动型产品详情风格', 'tpl_product_content_1.htm'),
(261, 'modDropDownMenu', '圆角标签二级下拉菜单模板', 'tpl_dropdownmenu_6.htm'),
(262, 'modChannelMenu', '圆角标签二级菜单模板', 'tpl_channelmenu_4.htm'),
(263, 'modChannelMenu', '标签式水晶按钮二级菜单模板', 'tpl_channelmenu_2.htm'),
(264, 'modMainMenu', '水晶按钮一级导航菜单模板', 'tpl_mainmenu_5.htm'),
(265, 'modMainMenu', '透明背景纯文字菜单模板', 'tpl_mainmenu_4.htm'),
(266, 'modBottomMenu', '底部菜单之纯文字菜单模板', 'tpl_bottommenu_1.htm'),
(267, 'modNewsList', '双列文章标题模板', 'tpl_newslist_mul.htm'),
(268, 'modPageTitleMenu', '圆角按钮型网页标题菜单', 'tpl_page_titlemenu_b1.htm'),
(270, 'modCommentQuery', '留言问答风格', 'tpl_comment_query_pw.htm'),
(271, 'modCommentContent', '留言问答风格', 'tpl_comment_content_pw.htm'),
(272, 'modMemberMenu', '圆角按钮仿QQ菜单模板', 'tpl_qqmenu_1.htm'),
(273, 'modNewsList', '标题 时间（反白）', 'tpl_newslist_time_white.htm'),
(274, 'modPageTitleMenu', '纯色背景网页标题菜单', 'tpl_page_titlemenu_b2.htm'),
(275, 'modPagePicList', '图片 标题 摘要,每行两个', 'tpl_page_piclist_2.htm');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_version`
--

CREATE TABLE IF NOT EXISTS `dev_base_version` (
  `version` varchar(30) NOT NULL default '',
  `release` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_base_version`
--

INSERT INTO `dev_base_version` (`version`, `release`) VALUES
('1.0.0', 20090215),
('1.1.0', 20090320),
('1.1.1', 20090326),
('1.1.2', 20090327),
('1.1.3', 20090328),
('1.1.4', 20090401),
('1.1.5', 20090402),
('1.1.6', 20090412),
('1.1.7', 20090418),
('1.1.8', 20090419),
('1.1.9', 20090420),
('1.1.10', 20090421),
('1.2.0', 20090428),
('1.2.1', 20090504),
('1.2.2', 20090508),
('1.2.3', 20090514),
('1.2.4', 20090612),
('1.2.5', 20090615),
('1.2.6', 20090624),
('1.2.7', 20090728),
('1.2.8', 20090801),
('1.2.9', 20090802),
('1.2.10', 20090803),
('1.2.11', 20090804),
('1.2.12', 20090820),
('1.3.0', 20090828),
('1.3.1', 20090829),
('1.3.2', 20090830),
('1.3.3', 20090831),
('1.3.4', 20090901),
('1.3.5', 20090902),
('1.3.6', 20090903),
('1.3.7', 20090904),
('1.3.15', 20090912),
('1.3.16', 20091009),
('1.3.17', 20091010),
('1.3.18', 20091112),
('1.3.19', 20100623),
('1.4.0', 20100830),
('1.4.1', 20100920),
('1.4.2', 20100921),
('1.4.3', 20100925),
('1.5.0', 20111209);

-- --------------------------------------------------------

--
-- 表的结构 `dev_comment`
--

CREATE TABLE IF NOT EXISTS `dev_comment` (
  `id` int(20) NOT NULL auto_increment,
  `pid` int(20) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `rid` int(20) NOT NULL default '0',
  `contype` varchar(30) NOT NULL default 'comment',
  `pname` varchar(100) NOT NULL default '',
  `title` varchar(200) NOT NULL default '',
  `body` text,
  `pj1` int(1) NOT NULL default '3',
  `pj2` int(1) NOT NULL default '3',
  `pj3` int(1) NOT NULL default '3',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `ip` varchar(16) NOT NULL default '',
  `iffb` int(1) NOT NULL default '0',
  `tuijian` int(1) NOT NULL default '0',
  `cl` int(10) NOT NULL default '0',
  `lastname` varchar(50) NOT NULL default '',
  `lastmemberid` int(12) NOT NULL default '0',
  `backcount` int(12) NOT NULL default '0',
  `picsrc` varchar(255) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `memberid` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=511 ;

--
-- 转存表中的数据 `dev_comment`
--

INSERT INTO `dev_comment` (`id`, `pid`, `catid`, `rid`, `contype`, `pname`, `title`, `body`, `pj1`, `pj2`, `pj3`, `dtime`, `uptime`, `ip`, `iffb`, `tuijian`, `cl`, `lastname`, `lastmemberid`, `backcount`, `picsrc`, `xuhao`, `memberid`) VALUES
(508, 0, 109, 0, 'comment', '游客', '请问贵公司代理加盟费是多少', '请问贵公司代理加盟费是多少', 3, 3, 3, 1237648682, 1237648682, '127.0.0.1', 1, 0, 1, '游客', -1, 0, '', 1, -1),
(509, 0, 110, 0, 'comment', 'xxxxx', '贵公司产品在上海有哪些维修点', '贵公司产品在上海有哪些维修点', 3, 3, 3, 1237648965, 1237648965, '127.0.0.1', 1, 0, 1, 'xxxxx', 153, 0, '', 1, 153),
(510, 0, 111, 0, 'comment', '游客', '上次组织的用户自驾游太爽了', '上次组织的用户自驾游太爽了', 3, 3, 3, 1237649078, 1237649078, '127.0.0.1', 1, 0, 28, '游客', -1, 0, '', 1, -1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_comment_cat`
--

CREATE TABLE IF NOT EXISTS `dev_comment_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `cat` varchar(50) NOT NULL default '',
  `catpath` varchar(255) NOT NULL,
  `coltype` varchar(30) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `ifbbs` int(1) NOT NULL default '1',
  `ifshow` int(1) NOT NULL default '1',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `dev_comment_cat`
--

INSERT INTO `dev_comment_cat` (`catid`, `pid`, `cat`, `catpath`, `coltype`, `xuhao`, `moveable`, `ifbbs`, `ifshow`) VALUES
(1, 0, '文章评论', '0001:', 'news', 3, 0, 0, 1),
(2, 0, '图片评论', '0002:', 'photo', 4, 0, 0, 1),
(3, 0, '下载评论', '1003:', 'down', 6, 0, 0, 1),
(109, 0, '产品咨询', '0109:', 'comment', 1, 1, 1, 1),
(4, 0, '产品点评', '0004:', 'product', 5, 0, 0, 1),
(110, 0, '知识问答', '0110:', 'comment', 2, 1, 1, 1),
(111, 0, '用户茶座', '0111:', 'comment', 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_comment_config`
--

CREATE TABLE IF NOT EXISTS `dev_comment_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_comment_config`
--

INSERT INTO `dev_comment_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '匿名点评是否审核', 'YN', '30', 'noMembercheck', '0', '匿名发表、回复点评时是否审核'),
(7, '点评图片上传尺寸限制(Byte)', 'input', '30', 'EditPicLimit', '204800', '发表点评时，编辑器内上传图片大小的限制'),
(6, '未登录时是否允许上传图片', 'YN', '30', 'NoMemberUpPic', '0', '未登录会员时,是否允许在编辑器内上传图片(备注:会员登录后发表点评是否可以上传图片，在会员权限中设置)'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '网友留言', '本模块对应的频道名称，如“网友点评”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(8, '点评关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂,妈的,操你,日你', '点评禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_cat`
--

CREATE TABLE IF NOT EXISTS `dev_down_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dev_down_cat`
--

INSERT INTO `dev_down_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '文档下载', 1, '0001:', 0, 0, 0),
(2, 0, '常用软件', 2, '0002:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_con`
--

CREATE TABLE IF NOT EXISTS `dev_down_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'down',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  `centincome` int(6) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `dev_down_con`
--

INSERT INTO `dev_down_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`, `centincome`) VALUES
(46, 1, '0001:', 0, 'down', '测试会员发布的资源下载', '测试会员发布的资源下载', 1234639016, 0, 29, 0, 1, 0, '', '', '', 1234639016, '测试会员', '', '150', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', 1, '', 0, 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_config`
--

CREATE TABLE IF NOT EXISTS `dev_down_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_down_config`
--

INSERT INTO `dev_down_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '资源下载', '本模块对应的频道名称，如“资源下载”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '文件上传大小限制(Byte)', 'input', '30', 'FileSizeLimit', '1024000', '会员上传文件时,单个文件大小的限制;但最高设置不能超过2M'),
(7, '下载介绍编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布下载资源时,在编辑器内上传图片,单个图片的尺寸限制'),
(8, '下载交易积分类型', 'centlist', '30', 'DefaultCentId', '3', '会员资源下载交易所采用的积分类型'),
(9, '下载交易积分佣金', 'centyj', '30', 'CentYj', '0.2', '资源下载积分交易中网站方收取的佣金比例，如果计算后不足1个积分单位，以1个积分单位计算');

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_downlog`
--

CREATE TABLE IF NOT EXISTS `dev_down_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `downid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_pages`
--

CREATE TABLE IF NOT EXISTS `dev_down_pages` (
  `id` int(12) NOT NULL auto_increment,
  `downid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_down_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_proj`
--

CREATE TABLE IF NOT EXISTS `dev_down_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_down_prop`
--

CREATE TABLE IF NOT EXISTS `dev_down_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dev_down_prop`
--

INSERT INTO `dev_down_prop` (`id`, `catid`, `propname`, `xuhao`) VALUES
(8, 2, '软件厂商', 2),
(7, 2, '文件大小', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member`
--

CREATE TABLE IF NOT EXISTS `dev_member` (
  `memberid` int(12) NOT NULL auto_increment,
  `membertypeid` int(3) NOT NULL default '0',
  `membergroupid` int(3) NOT NULL default '0',
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `company` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL default '',
  `birthday` int(8) NOT NULL default '0',
  `zoneid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  `addr` varchar(255) NOT NULL default '',
  `tel` varchar(255) NOT NULL default '',
  `mov` varchar(255) NOT NULL default '',
  `postcode` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default 'http://',
  `passtype` varchar(255) NOT NULL default '',
  `passcode` varchar(255) NOT NULL default '',
  `qq` varchar(100) NOT NULL default '',
  `msn` varchar(100) NOT NULL default '',
  `maillist` int(1) NOT NULL default '0',
  `bz` text,
  `pname` varchar(30) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `memberface` varchar(100) NOT NULL,
  `nowface` varchar(50) NOT NULL,
  `checked` int(1) NOT NULL default '0',
  `rz` int(1) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL default '0',
  `exptime` int(11) NOT NULL default '0',
  `account` decimal(12,2) NOT NULL default '0.00',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `buytotal` decimal(12,2) NOT NULL default '0.00',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `ip` varchar(26) NOT NULL default '',
  `logincount` int(20) NOT NULL default '0',
  `logintime` int(11) NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  `salesname` varchar(30) NOT NULL,
  PRIMARY KEY  (`memberid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- 转存表中的数据 `dev_member`
--

INSERT INTO `dev_member` (`memberid`, `membertypeid`, `membergroupid`, `user`, `password`, `name`, `company`, `sex`, `birthday`, `zoneid`, `catid`, `addr`, `tel`, `mov`, `postcode`, `email`, `url`, `passtype`, `passcode`, `qq`, `msn`, `maillist`, `bz`, `pname`, `signature`, `memberface`, `nowface`, `checked`, `rz`, `tags`, `regtime`, `exptime`, `account`, `paytotal`, `buytotal`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `ip`, `logincount`, `logintime`, `loginip`, `salesname`) VALUES
(150, 26, 1, 'aaaaa', '594f803b380a41396ed63dca39503542', '小张', '', '1', 19750101, 1, 0, '', '', '', '', 'aaaaa@www.cn', 'http://', '身份证', '', '', '', 0, '', '测试会员', 'sssss', '', '1', 1, 0, '', 1232813523, 0, '0.00', '0.00', '0.00', 203, 0, 0, 3, 0, '127.0.0.1', 11, 1237781183, '127.0.0.1', '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_buylist`
--

CREATE TABLE IF NOT EXISTS `dev_member_buylist` (
  `id` int(12) NOT NULL auto_increment,
  `buyfrom` varchar(50) NOT NULL default '',
  `memberid` int(12) NOT NULL default '0',
  `orderid` int(12) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `daytime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `OrderNo` varchar(30) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_cat`
--

CREATE TABLE IF NOT EXISTS `dev_member_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_centlog`
--

CREATE TABLE IF NOT EXISTS `dev_member_centlog` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `event` int(5) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dev_member_centlog`
--

INSERT INTO `dev_member_centlog` (`id`, `memberid`, `event`, `dtime`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `memo`) VALUES
(1, 153, 111, 1237648810, 10, 0, 0, 0, 0, ''),
(2, 153, 131, 1237648965, 5, 0, 0, 0, 0, ''),
(3, 153, 181, 1237650958, 10, 0, 0, 0, 0, ''),
(4, 150, 114, 1237711955, 1, 0, 0, 0, 0, ''),
(5, 150, 114, 1237781183, 1, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_centrule`
--

CREATE TABLE IF NOT EXISTS `dev_member_centrule` (
  `id` int(8) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `name` char(100) NOT NULL default '',
  `event` int(5) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dev_member_centrule`
--

INSERT INTO `dev_member_centrule` (`id`, `coltype`, `name`, `event`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`) VALUES
(1, 'member', '新会员注册', 111, 10, 0, 0, 0, 0),
(6, 'member', '加好友', 112, 1, 0, 0, 0, 0),
(7, 'member', '发站内短信', 113, 1, 0, 0, 0, 0),
(21, 'member', '会员登录', 114, 1, 0, 0, 0, 0),
(2, 'news', '发布文章', 121, 10, 0, 0, 0, 0),
(9, 'news', '文章被支持', 122, 0, 1, 0, 0, 0),
(10, 'news', '文章被反对', 123, 0, -1, 0, 0, 0),
(22, 'news', '文章被版主推荐', 124, 20, 0, 0, 0, 0),
(23, 'news', '文章被版主删除并扣分', 125, -20, 0, 0, 0, 0),
(5, 'comment', '发表点评', 131, 5, 0, 0, 0, 0),
(8, 'comment', '回复点评', 132, 1, 0, 0, 0, 0),
(3, 'photo', '发布图片', 151, 10, 0, 0, 0, 0),
(13, 'photo', '图片被支持', 152, 0, 1, 0, 0, 0),
(14, 'photo', '图片被反对', 153, 0, -1, 0, 0, 0),
(24, 'photo', '图片被版主推荐', 154, 20, 0, 0, 0, 0),
(25, 'photo', '图片被版主删除并扣分', 155, -20, 0, 0, 0, 0),
(4, 'down', '发布资源下载', 161, 10, 0, 0, 0, 0),
(16, 'down', '下载资源被支持', 162, 0, 1, 0, 0, 0),
(17, 'down', '下载资源被反对', 163, 0, -1, 0, 0, 0),
(26, 'down', '下载资源被版主推荐', 164, 20, 0, 0, 0, 0),
(27, 'down', '下载被版主删除并扣分', 165, -20, 0, 0, 0, 0),
(28, 'comment', '点评被版主推荐', 134, 20, 0, 0, 0, 0),
(29, 'comment', '点评被版主删除并扣分', 135, -20, 0, 0, 0, 0),
(30, 'product', '发布产品', 181, 10, 0, 0, 0, 0),
(31, 'product', '产品被支持', 182, 0, 1, 0, 0, 0),
(32, 'product', '产品被反对', 183, 0, -1, 0, 0, 0),
(33, 'product', '产品被版主推荐', 184, 20, 0, 0, 0, 0),
(34, 'product', '产品被版主删除并扣分', 185, -20, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_centset`
--

CREATE TABLE IF NOT EXISTS `dev_member_centset` (
  `id` int(8) NOT NULL auto_increment,
  `centname1` char(50) NOT NULL,
  `centname2` char(50) NOT NULL,
  `centname3` char(50) NOT NULL,
  `centname4` char(50) NOT NULL,
  `centname5` char(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_member_centset`
--

INSERT INTO `dev_member_centset` (`id`, `centname1`, `centname2`, `centname3`, `centname4`, `centname5`) VALUES
(1, '经验', '人气', '悬赏', '金币', '消费');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_config`
--

CREATE TABLE IF NOT EXISTS `dev_member_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_member_config`
--

INSERT INTO `dev_member_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '会员中心', '本模块对应的频道名称；用于显示在当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '会员网名昵称是否允许重复', 'YN', '1', 'DblPname', '1', '会员注册和修改资料时校验网名昵称是否允许重复'),
(4, 'UCenter 会员接口是否启用', 'YN', '1', 'UC_OPEN', '0', 'UCenter会员接口包括会员注册、会员登录接口；启用本接口前请先上传UCenter会员接口程序'),
(5, 'UCenter 应用 ID', 'input', '30', 'UC_APPID', '2', '该值为PHPWEB在 UCenter 的应用 ID，请填写你在UCenter将PHPWEB添加应用后实际获得的应用ID'),
(6, 'UCenter 通信密钥', 'input', '30', 'UC_KEY', 'PWUC2009', '通信密钥用于在 UCenter 和 PHPWEB 之间传输信息的加密，可包含任何字母及数字，请在 UCenter 与 PHPWEB 设置完全相同的通讯密钥，以确保两套系统能够正常通信'),
(7, 'UCenter 访问地址', 'input', '30', 'UC_API', 'http://discuz.phpweb.net/uc_server', '您的 UCenter 访问地址，不正确的设置可能导致网站功能异常，请小心修改。格式: http://www.sitename.com/uc_server (最后不要加''/'')'),
(7, 'UCenter IP 地址', 'input', '30', 'UC_IP', '', '如果您的服务器无法通过域名访问 UCenter，可以输入 UCenter 服务器的 IP 地址'),
(8, 'UCenter 数据库服务器', 'input', '30', 'UC_DBHOST', 'localhost', '可以是本地也可以是远程数据库服务器，如果 MySQL 端口不是默认的 3306，请填写如下形式：127.0.0.1:6033'),
(9, 'UCenter 数据库用户名', 'input', '30', 'UC_DBUSER', 'root', ''),
(10, 'UCenter 数据库密码', 'input', '30', 'UC_DBPW', '123456', ''),
(12, 'UCenter 数据库名', 'input', '30', 'UC_DBNAME', 'dbdiscuz', ''),
(13, 'UCenter 数据表前缀', 'input', '30', 'UC_DBTABLEPRE', 'cdb_uc_', '请填入您的UCenter数据表前缀，注意格式正确；如果是直接安装UCENTER，表前缀是一个“_”，如果是和discuz!一起安装的，则是带两个“_”的完整前缀'),
(14, 'UCenter 数据库编码', 'input', '30', 'UC_DBCHARSET', 'utf8', 'UCenter的数据库编码'),
(15, 'UCenter 的字符集', 'input', '30', 'UC_CHARSET', 'utf-8', ''),
(17, 'UCenter 用户自动激活时对应的会员类型', 'MTYPE', '30', 'UC_MEMBERTYPEID', '26', '用户登录时，在UCenter通过验证的用户（来自其他应用的用户），如果本系统没有该会员，自动增加会员时对应的会员类型');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_defaultrights`
--

CREATE TABLE IF NOT EXISTS `dev_member_defaultrights` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL default '',
  `secureset` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=506 ;

--
-- 转存表中的数据 `dev_member_defaultrights`
--

INSERT INTO `dev_member_defaultrights` (`id`, `membertypeid`, `secureid`, `securetype`, `secureset`) VALUES
(505, 26, 133, 'func', '0'),
(504, 26, 132, 'func', '0'),
(502, 26, 127, 'func', '0'),
(503, 26, 131, 'func', '0'),
(501, 26, 126, 'class', ':1:2:'),
(500, 26, 123, 'func', '0'),
(499, 26, 122, 'func', '0'),
(498, 26, 121, 'func', '0'),
(497, 26, 114, 'func', '0'),
(493, 26, 101, 'con', '1'),
(494, 26, 111, 'func', '0'),
(495, 26, 112, 'func', '0'),
(496, 26, 113, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_fav`
--

CREATE TABLE IF NOT EXISTS `dev_member_fav` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `title` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_friends`
--

CREATE TABLE IF NOT EXISTS `dev_member_friends` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `fid` int(12) NOT NULL default '0',
  `fgroup` char(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_group`
--

CREATE TABLE IF NOT EXISTS `dev_member_group` (
  `id` int(6) NOT NULL auto_increment,
  `membergroup` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dev_member_group`
--

INSERT INTO `dev_member_group` (`id`, `membergroup`) VALUES
(1, '个人'),
(2, '企业');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_msn`
--

CREATE TABLE IF NOT EXISTS `dev_member_msn` (
  `id` int(12) NOT NULL auto_increment,
  `tomemberid` int(12) NOT NULL default '0',
  `frommemberid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `iflook` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_notice`
--

CREATE TABLE IF NOT EXISTS `dev_member_notice` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(20) default NULL,
  `title` varchar(255) default NULL,
  `body` text,
  `dtime` int(11) default NULL,
  `xuhao` int(5) default NULL,
  `cl` int(20) default NULL,
  `ifnew` int(1) default NULL,
  `ifred` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dev_member_notice`
--

INSERT INTO `dev_member_notice` (`id`, `membertypeid`, `title`, `body`, `dtime`, `xuhao`, `cl`, `ifnew`, `ifred`) VALUES
(1, 0, '这是测试的一条会员公告', '这是测试的一条会员公告', 1220596305, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_nums`
--

CREATE TABLE IF NOT EXISTS `dev_member_nums` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(50) default NULL,
  `secureid` int(50) default NULL,
  `nums` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_onlinepay`
--

CREATE TABLE IF NOT EXISTS `dev_member_onlinepay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `paytype` char(30) NOT NULL default '',
  `paytotal` decimal(10,2) NOT NULL default '0.00',
  `ifpay` int(1) NOT NULL default '0',
  `addtime` int(11) NOT NULL default '0',
  `backtime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_pay`
--

CREATE TABLE IF NOT EXISTS `dev_member_pay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `oof` decimal(12,2) NOT NULL default '0.00',
  `method` varchar(200) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `addtime` int(11) NOT NULL default '0',
  `fpnum` varchar(100) NOT NULL default '',
  `memo` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_paycenter`
--

CREATE TABLE IF NOT EXISTS `dev_member_paycenter` (
  `id` int(11) NOT NULL auto_increment,
  `pcenter` varchar(100) NOT NULL default '',
  `pcentertype` int(2) NOT NULL default '0',
  `pcenteruser` varchar(100) NOT NULL default '',
  `pcenterkey` text,
  `key1` text,
  `key2` text,
  `hbtype` varchar(255) NOT NULL default '',
  `postfile` varchar(100) NOT NULL default '',
  `recfile` varchar(100) NOT NULL default '',
  `ifuse` int(1) NOT NULL default '0',
  `ifback` int(1) NOT NULL default '0',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_regstep`
--

CREATE TABLE IF NOT EXISTS `dev_member_regstep` (
  `id` int(8) NOT NULL auto_increment,
  `membertypeid` int(5) NOT NULL default '0',
  `regstep` varchar(30) NOT NULL,
  `stepname` varchar(50) NOT NULL,
  `xuhao` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `dev_member_regstep`
--

INSERT INTO `dev_member_regstep` (`id`, `membertypeid`, `regstep`, `stepname`, `xuhao`) VALUES
(1, 0, 'person', '头像签名设置', 1),
(2, 0, 'detail', '会员资料设置', 2),
(3, 0, 'contact', '填写联系信息', 3),
(66, 26, 'contact', '填写联系信息', 3),
(65, 26, 'detail', '会员资料设置', 2),
(64, 26, 'person', '头像签名设置', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_rights`
--

CREATE TABLE IF NOT EXISTS `dev_member_rights` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL,
  `secureset` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4640 ;

--
-- 转存表中的数据 `dev_member_rights`
--

INSERT INTO `dev_member_rights` (`id`, `memberid`, `secureid`, `securetype`, `secureset`) VALUES
(4583, 150, 164, 'func', '0'),
(4582, 150, 163, 'func', '0'),
(4581, 150, 162, 'func', '0'),
(4580, 150, 161, 'func', '0'),
(4579, 150, 157, 'func', '0'),
(4578, 150, 156, 'class', ':5:'),
(4577, 150, 153, 'func', '0'),
(4576, 150, 152, 'func', '0'),
(4575, 150, 151, 'func', '0'),
(4574, 150, 134, 'func', '0'),
(4573, 150, 133, 'func', '0'),
(4572, 150, 132, 'func', '0'),
(4571, 150, 131, 'func', '0'),
(4570, 150, 129, 'banzhu', ''),
(4569, 150, 127, 'func', '0'),
(4568, 150, 126, 'class', ':1:2:'),
(4567, 150, 125, 'func', '0'),
(4566, 150, 124, 'func', '0'),
(4565, 150, 123, 'func', '0'),
(4564, 150, 122, 'func', '0'),
(4563, 150, 121, 'func', '0'),
(4562, 150, 114, 'func', '0'),
(4561, 150, 113, 'func', '0'),
(4560, 150, 112, 'func', '0'),
(4559, 150, 111, 'func', '0'),
(4558, 150, 101, 'con', '1'),
(4588, 150, 169, 'banzhu', ''),
(4587, 150, 139, 'banzhu', ''),
(4586, 150, 159, 'banzhu', ''),
(4585, 150, 167, 'func', '0'),
(4584, 150, 166, 'class', ':1:');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_secure`
--

CREATE TABLE IF NOT EXISTS `dev_member_secure` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `securename` char(100) NOT NULL default '',
  `securetype` char(30) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- 转存表中的数据 `dev_member_secure`
--

INSERT INTO `dev_member_secure` (`id`, `coltype`, `securename`, `securetype`, `xuhao`) VALUES
(101, 'base', '内容阅读权限级别', 'con', 1),
(111, 'member', '会员登录帐号设置', 'func', 2),
(112, 'member', '会员头像签名设置', 'func', 3),
(113, 'member', '会员个人资料修改', 'func', 4),
(114, 'member', '会员联系信息修改', 'func', 5),
(121, 'news', '文章发布权限', 'func', 6),
(122, 'news', '文章修改权限', 'func', 7),
(123, 'news', '文章发布/修改免审核权限', 'func', 8),
(124, 'news', '文章图片上传权限', 'func', 5),
(125, 'news', '文章附件上传权限', 'func', 8),
(126, 'news', '文章公共分类投稿授权', 'class', 12),
(127, 'news', '文章自定义分类权限', 'func', 9),
(129, 'news', '文章版主权限(推荐/删除)', 'banzhu', 9),
(131, 'comment', '点评发表权限', 'func', 10),
(132, 'comment', '点评回复权限', 'func', 11),
(133, 'comment', '点评免审核权限', 'func', 12),
(134, 'comment', '点评图片上传权限', 'func', 4),
(151, 'photo', '图片发布权限', 'func', 6),
(152, 'photo', '图片修改权限', 'func', 7),
(153, 'photo', '图片发布/修改免审核权限', 'func', 8),
(156, 'photo', '图片公共分类投稿授权', 'class', 11),
(157, 'photo', '图片自定义分类权限', 'func', 9),
(161, 'down', '下载发布权限', 'func', 1),
(162, 'down', '下载修改权限', 'func', 2),
(163, 'down', '下载发布/修改免审核权限', 'func', 3),
(164, 'down', '编辑器图片上传权限', 'func', 5),
(166, 'down', '下载公共分类投稿授权', 'class', 11),
(167, 'down', '下载自定义分类权限', 'func', 9),
(159, 'photo', '图片版主权限(推荐/删除)', 'banzhu', 9),
(139, 'comment', '点评版主权限(推荐/删除)', 'banzhu', 9),
(169, 'down', '下载版主权限(推荐/删除)', 'banzhu', 9),
(181, 'product', '会员产品发布权限', 'func', 6),
(182, 'product', '会员产品修改权限', 'func', 7),
(183, 'product', '会员产品发布/修改免审核权限', 'func', 8),
(184, 'product', '会员产品介绍编辑器图片上传权限', 'func', 9),
(186, 'product', '会员产品公共分类发布授权', 'class', 11),
(187, 'product', '会员产品自定义分类权限', 'func', 9),
(189, 'product', '产品版主管理权限(推荐/删除)', 'banzhu', 9);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_type`
--

CREATE TABLE IF NOT EXISTS `dev_member_type` (
  `membertypeid` int(6) NOT NULL auto_increment,
  `membertype` varchar(100) default NULL,
  `membergroupid` int(3) NOT NULL default '0',
  `ifcanreg` int(1) default NULL,
  `ifchecked` int(1) default NULL,
  `regxy` text,
  `regmail` text,
  `expday` int(8) default NULL,
  `startcent` int(20) default NULL,
  `endcent` int(20) default NULL,
  `menugroupid` int(5) NOT NULL default '4',
  PRIMARY KEY  (`membertypeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dev_member_type`
--

INSERT INTO `dev_member_type` (`membertypeid`, `membertype`, `membergroupid`, `ifcanreg`, `ifchecked`, `regxy`, `regmail`, `expday`, `startcent`, `endcent`, `menugroupid`) VALUES
(26, '免费用户', 1, 1, 1, '会员注册协议\r\n\r\n1.\r\n2.\r\n3.\r\n4.\r\n5.\r\n', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_zone`
--

CREATE TABLE IF NOT EXISTS `dev_member_zone` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(50) default NULL,
  `xuhao` int(4) default NULL,
  `catpath` char(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `dev_member_zone`
--

INSERT INTO `dev_member_zone` (`catid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(1, 0, '北京', 1, '0001:'),
(2, 0, '上海', 2, '0002:'),
(3, 0, '天津', 3, '0003:'),
(4, 0, '重庆', 4, '0004:'),
(5, 0, '浙江', 5, '0005:'),
(6, 0, '江苏', 6, '0006:'),
(7, 0, '广东', 7, '0007:'),
(8, 5, '杭州', 1, '0005:0008:'),
(9, 5, '嘉兴', 2, '0005:0009:'),
(10, 6, '南京', 1, '0006:0010:'),
(11, 6, '苏州', 2, '0006:0011:'),
(12, 7, '广州', 1, '0007:0012:'),
(13, 7, '深圳', 2, '0007:0013:'),
(21, 5, '宁波', 3, '0005:0021:'),
(26, 5, '舟山', 8, '0005:0026:'),
(25, 5, '金华', 7, '0005:0025:'),
(23, 5, '温州', 5, '0005:0023:'),
(22, 5, '湖州', 4, '0005:0022:'),
(24, 5, '台州', 6, '0005:0024:');

-- --------------------------------------------------------

--
-- 表的结构 `dev_menu`
--

CREATE TABLE IF NOT EXISTS `dev_menu` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL default '',
  `linktype` int(1) NOT NULL default '1',
  `coltype` varchar(30) NOT NULL default '',
  `folder` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL default '',
  `ifshow` int(1) NOT NULL default '0',
  `xuhao` int(4) NOT NULL default '0',
  `target` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=274 ;

--
-- 转存表中的数据 `dev_menu`
--

INSERT INTO `dev_menu` (`id`, `groupid`, `pid`, `menu`, `linktype`, `coltype`, `folder`, `url`, `ifshow`, `xuhao`, `target`) VALUES
(3, 1, 0, '新闻动态', 0, 'news', 'news/class/', 'http://ssss.com', 1, 5, '_self'),
(7, 1, 0, '留言点评', 1, '', 'comment/class/', 'comment/', 1, 8, '_self'),
(80, 1, 0, '企业介绍', 1, '', 'page/html/', 'http://', 1, 2, '_self'),
(83, 1, 0, '首页', 0, 'index', '', 'http://', 1, 1, '_self'),
(215, 4, 0, '会员资料设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(216, 4, 215, '登录账号设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(152, 3, 0, '关于我们', 1, '', 'page/html/?1.html', 'http://', 1, 1, '_self'),
(221, 4, 220, '文章发布', 1, '', 'news/news_fabu.php', 'http://', 1, 1, '_self'),
(153, 3, 0, '联系方法', 1, '', 'page/html/?2.html', 'http://', 1, 2, '_self'),
(155, 3, 0, '友情链接', 1, '', 'advs/link/', 'http://', 1, 4, '_self'),
(166, 2, 0, '会员中心', 0, 'member', '', 'http://', 1, 27, '_self'),
(165, 2, 0, '会员注册', 1, '', 'member/reg.php', 'http://', 1, 26, '_self'),
(273, 2, 0, '我的积分', 1, '', 'member/member_cent.php', 'http://', 1, 44, '_self'),
(218, 4, 215, '个人资料修改', 1, '', 'member/member_detail.php', 'http://', 1, 3, '_self'),
(217, 4, 215, '头像签名设置', 1, '', 'member/member_person.php', 'http://', 1, 2, '_self'),
(188, 2, 0, '我的收藏', 1, '', 'member/member_fav.php', 'http://', 1, 34, '_self'),
(272, 2, 0, '我的点评', 1, '', 'member/member_comment.php', 'http://', 1, 43, '_self'),
(206, 1, 0, '企业图库', 0, 'photo', 'photo/class/', 'http://', 1, 6, '_self'),
(207, 1, 0, '资料下载', 0, 'down', 'down/class/', 'http://', 1, 7, '_self'),
(222, 4, 220, '文章管理', 1, '', 'news/news_gl.php', 'http://', 1, 2, '_self'),
(219, 4, 215, '联系信息修改', 1, '', 'member/member_contact.php', 'http://', 1, 4, '_self'),
(220, 4, 0, '新闻文章管理', 1, '', 'news/news_gl.php', 'http://', 1, 2, '_self'),
(223, 4, 0, '图片发布管理', 1, '', 'photo/photo_gl.php', 'http://', 1, 4, '_self'),
(224, 4, 223, '图片发布', 1, '', 'photo/photo_fabu.php', 'http://', 1, 1, '_self'),
(225, 4, 223, '图片管理', 1, '', 'photo/photo_gl.php', 'http://', 1, 2, '_self'),
(228, 4, 0, '下载发布管理', 1, '', 'down/down_gl.php', 'http://', 1, 5, '_self'),
(237, 4, 235, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 4, '_self'),
(229, 4, 228, '资源下载发布', 1, '', 'down/down_fabu.php', 'http://', 1, 1, '_self'),
(230, 4, 228, '资源下载管理', 1, '', 'down/down_gl.php', 'http://', 1, 2, '_self'),
(231, 4, 220, '文章分类', 1, '', 'news/news_cat.php', 'http://', 1, 3, '_self'),
(232, 4, 223, '图片分类', 1, '', 'photo/photo_cat.php', 'http://', 1, 3, '_self'),
(233, 4, 228, '资源下载分类', 1, '', 'down/down_cat.php', 'http://', 1, 3, '_self'),
(235, 4, 0, '会员个人专区', 1, '', 'member/member_fav.php', 'http://', 1, 7, '_self'),
(236, 4, 235, '我的收藏夹', 1, '', 'member/member_fav.php', 'http://', 1, 1, '_self'),
(238, 4, 235, '我的点评', 1, '', 'member/member_comment.php', 'http://', 1, 3, '_self'),
(239, 4, 235, '我的好友', 1, '', 'member/member_friends.php', 'http://', 1, 2, '_self'),
(240, 4, 235, '我的积分', 1, '', 'member/member_cent.php', 'http://', 1, 6, '_self'),
(243, 4, 215, '安全退出登录', 1, '', 'logout.php', 'http://', 1, 5, '_self'),
(251, 2, 0, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 42, '_self'),
(253, 3, 0, '会员中心', 1, '', 'member/', 'http://', 1, 3, '_self'),
(264, 4, 0, '产品发布管理', 0, 'index', '', 'http://', 1, 3, '_self'),
(258, 1, 0, '产品订购', 0, 'service', '', 'http://', 1, 9, '_self'),
(256, 1, 0, '产品展示', 0, 'product', '', 'http://', 1, 3, '_self'),
(257, 1, 0, '联系我们', 1, '', 'page/html/?2.html', 'http://', 1, 10, '_self'),
(266, 4, 264, '产品管理', 1, '', 'product/product_gl.php', 'http://', 1, 2, '_self'),
(265, 4, 264, '产品发布', 1, '', 'product/product_fabu.php', 'http://', 1, 1, '_self'),
(267, 4, 264, '产品分类', 1, '', 'product/product_cat.php', 'http://', 1, 3, '_self'),
(268, 4, 0, '客服有问必答', 1, '', 'service/service.php', 'http://', 1, 6, '_self'),
(269, 4, 268, '提交问题', 1, '', 'service/service.php', 'http://', 1, 1, '_self'),
(270, 4, 268, '工单查询', 1, '', 'service/feedback.php', 'http://', 1, 2, '_self'),
(271, 4, 268, '存档工单', 1, '', 'service/feedbackhis.php', 'http://', 1, 3, '_self');

-- --------------------------------------------------------

--
-- 表的结构 `dev_menu_group`
--

CREATE TABLE IF NOT EXISTS `dev_menu_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `dev_menu_group`
--

INSERT INTO `dev_menu_group` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '频道导航菜单', 1, 0),
(2, '顶部导航菜单', 2, 0),
(3, '底部导航菜单', 3, 0),
(4, '会员功能菜单', 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_cat`
--

CREATE TABLE IF NOT EXISTS `dev_news_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `dev_news_cat`
--

INSERT INTO `dev_news_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '企业新闻', 1, '0001:', 36, 0, 0),
(2, 0, '行业动态', 2, '0002:', 5, 0, 0),
(71, 0, '产品知识', 3, '0071:', 0, 0, 0),
(72, 0, '技术文档', 4, '0072:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_con`
--

CREATE TABLE IF NOT EXISTS `dev_news_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'news',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `tourl` varchar(255) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=293 ;

--
-- 转存表中的数据 `dev_news_con`
--

INSERT INTO `dev_news_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `tourl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`) VALUES
(273, 71, '0071:', 0, 'news', '怎样登录后台管理系统', '<p>登录后台管理系统的地址：</p>\r\n<p>http://网站域名/admin.php&nbsp; 或http://网站域名/base/admin/</p>', 1234637644, 0, 7, 0, 1, 0, '0', 'gif', '', 1237644185, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(274, 71, '0071:', 0, 'news', '怎样进行页面排版?', '页面排版包括两大部分：背景风格设置和插件设置；背景风格设置包括选择背景颜色（或背景图片）、设置页面宽度、容器边距、间距；插件设置是在页面中插入各种插件，并配以合适的插件边框；调整插件位置或尺寸，设置插件的显示参数。 \r\n<p>如何开始排版？<br />登录管理系统 -&gt; 选择右上角的“排版”菜单，进入排版等待状态；<br />进入需要排版的页面，按“切换到排版模式”<br /></p>', 1234637730, 0, 10, 0, 1, 0, '0', 'gif', '', 1237644209, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(275, 71, '0071:', 0, 'news', '怎样添加插件、拖动插件或改变尺寸', '<a href="http://www.phpweb.net/news/html/?265.html">http://www.phpweb.net/news/html/?265.html</a> ', 1234637784, 0, 24, 0, 1, 0, '0', 'gif', '', 1237644196, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(284, 1, '0001:', 0, 'news', '强大的会员功能和会员互动', '自定义会员类型，按会员类型配置会员注册步骤、功能菜单、注册参数和权限；具有五种积分类型和几十项积分规则设置；具有点评、评分、投票支持、好友、站内短信、会员主页等互动功能和文章、图片、下载发布和管理功能； ', 1234647780, 0, 1, 1, 1, 0, '', '', '', 1234654795, '测试会员', '', '150', '', 0, '具有积分、点评、评分、投票支持、好友、站内短信、会员主页等互动功能，和文章、图片、下载发布和管理功能', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(280, 1, '0001:', 0, 'news', '便捷易玩的可视化插件拖放排版模式', '可以方便地在网页中插入插件、拖放定位和改变插件尺寸，灵活设置插件边框风格和插件显示参数，灵活设置网页背景，网页排版完全可视化，所见即所得，让网站制作如同搭积木般便捷易玩 ', 1234647536, 0, 1, 1, 1, 0, '', '', '', 1234649748, '测试会员', '', '150', '', 0, '全新的可视化插件拖放排版模式，方便插入自由拖动，所见即所得，让网站制作如同搭积木般便捷易玩', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(281, 71, '0071:', 0, 'news', '独立插件、边框、菜单灵活组合和任意定位', '网站前台所有功能模块和显示模块均插件化，插件显示规则、插件风格、插件边框均可单独设置、灵活组合并任意定位；可插入多组导航菜单，菜单内容和风格样式分离，可以选择一级、二级、下拉、标签式等菜单款式，选择菜单风格和配色，灵活组合并任意定位。网站不再拘泥于设计好的布局模板，让您摆脱布局框架的束缚，尽享创意的乐趣；<br />', 1234647560, 0, 2, 1, 1, 0, '', '', '', 1237644172, '测试会员', '', '150', '', 0, '独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(282, 1, '0001:', 0, 'news', '插件模版共分享，资源无限', '用户可通过PHPWEB官方网站分享交流插件、模版，方便地安装插件、模版、边框；采用积分机制激励插件、模版的DIY开发和资源分享，越来越丰富的资源让您的网站越来越丰富多彩 ', 1234647611, 0, 4, 1, 1, 0, '', '', '', 1234658523, '测试会员', '', '150', '', 0, '通过PHPWEB网站交流插件、模版资源，积分制激励DIY开发和分享，越来越丰富的资源让您的网站越来越丰富多彩 ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(283, 71, '0071:', 0, 'news', '专业的网站内容管理功能和灵活的权限配置', 'PHPWEB基础版已经具有功能强大的基础模块和单页、文章、图片、下载、点评、会员、广告、素菜特效等应用模块；具备文章专题、分类专栏、会员发布投稿、用户点评互动等门户级的内容网站功能；具有数十种细分的会员权限项目，可以按会员类型配置默认权限，也可以配置单个会员的权限，可按分类配置用户的投稿发布权限和版主管理权限；后台可设置多名管理员，自由配置各项管理权限。 ', 1234647693, 0, 2, 1, 1, 0, '', '', 'news/pics/20090323/1237779004.jpg', 1237779004, '测试会员', '', '150', '', 0, '专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(285, 2, '0002:', 0, 'news', '良好的用户体验，让您的网站更生动', '采用JQUERY、AJAX等前端技术，注重用户友好度和用户体验 ', 1234647815, 0, 1, 0, 1, 0, '', '', '', 1237644047, '测试会员', '', '150', '', 0, '采用JQUERY、AJAX等前端技术，注重用户友好度和用户体验', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(286, 1, '0001:', 0, 'news', '模块化构架无限扩展，打造多功能门户平台', '前台功能和显示模块插件化，各种插件、插件风格模版、插件边框、菜单模版均可单独开发和应用，互不影响，利于各种资源的广泛开发和分享。软件整体采用模块化构架，支持今后专业模块的无限扩展，打造多功能门户平台； ', 1234647885, 0, 7, 0, 1, 0, '', '', '', 1234657445, '测试会员', '', '150', '', 0, '前台功能和显示模块插件化，利于资源的广泛开发和分享。软件整体模块化，专业模块无限扩展，打造多功能门户平台', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(287, 1, '0001:', 0, 'news', 'PHPWEB分享式智能网站管理系统', '<p>&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持今后专业模块的无限扩展，打造多功能门户平台；</p>\r\n<p>&nbsp;&nbsp;&nbsp; PHPWEB基础版现已集成了基础模块和单页、文章、图片、下载、点评、会员、广告、素材特效等应用模块，无需购买授权证书，可直接安装并免费应用于非商业用途。PHPWEB是您高效、便捷的网站创建和管理工具。 <br /></p>', 1234648037, 0, 22, 0, 1, 0, '', '', '', 1234658900, '测试会员', '', '150', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(289, 2, '0002:', 0, 'news', 'PHPWEB分享建站-智能建站行业的黑马', 'PHPWEB分享建站-智能建站行业的黑马', 1237643756, 0, 0, 0, 1, 0, '0', 'gif', '', 1237643756, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(290, 2, '0002:', 0, 'news', 'WEB2.0技术发展迅猛，建站行业新革命', 'WEB2.0技术发展迅猛，建站行业新革命 ', 1237643821, 0, 2, 0, 1, 0, '0', 'gif', 'news/pics/20090323/1237779019.jpg', 1237779019, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(291, 2, '0002:', 0, 'news', '摆脱页面框架的束缚，创意无限', '摆脱页面框架的束缚，创意无限', 1237644020, 0, 0, 0, 1, 0, '0', 'gif', '', 1237644020, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(292, 2, '0002:', 0, 'news', 'PHPWEB v1.1发布，面向企业用户提供行业模板', 'PHPWEB v1.1发布，面向企业用户提供行业模板 ', 1237644150, 0, 7, 0, 1, 0, '0', 'gif', '', 1237779059, '系统管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_config`
--

CREATE TABLE IF NOT EXISTS `dev_news_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_news_config`
--

INSERT INTO `dev_news_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '文章主题图片上传尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员发布文章上传主题图片时,单个图片尺寸的限制'),
(6, '文章编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布文章时,在编辑器内上传图片,单个图片的尺寸限制'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '新闻动态', '本模块对应的频道名称，如“新闻中心”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(7, '附件上传大小限制', 'input', '30', 'FileSizeLimit', '1024000', '会员发布文章上传附件时,允许上传附件的文件大小;但最高设置不能超过2M '),
(8, '会员发布文章关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂', '会员发布文章时禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_downlog`
--

CREATE TABLE IF NOT EXISTS `dev_news_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_pages`
--

CREATE TABLE IF NOT EXISTS `dev_news_pages` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_news_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_proj`
--

CREATE TABLE IF NOT EXISTS `dev_news_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_prop`
--

CREATE TABLE IF NOT EXISTS `dev_news_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_page`
--

CREATE TABLE IF NOT EXISTS `dev_page` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `title` varchar(200) NOT NULL default '',
  `body` text NOT NULL,
  `xuhao` int(4) NOT NULL default '0',
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `pagefolder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dev_page`
--

INSERT INTO `dev_page` (`id`, `groupid`, `title`, `body`, `xuhao`, `src`, `url`, `memo`, `pagefolder`) VALUES
(1, 1, '企业介绍', '<img style="FLOAT: left; MARGIN: 0px 35px 15px 0px" alt="" src="[ROOTPATH]page/pics/20090323/200903231237771516771.jpg" border=0 />&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；<br /><br />\r\n<p>&nbsp;&nbsp;&nbsp; PHPWEB V1.1.0 企业版集成了基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块等网站应用模块，并具有会员权限控制、积分、点评等一系列会员互动功能。我们将逐步为不同行业用户量身打造行业模板，让您以最快捷的方式，最低的成本创建功能强大的企业网站。PHPWEB是您高效便捷的网站管理工具。PHPWEB可免费用于非商业用途，无需购买授权，直接安装使用。商业用户可以购买各种行业模板、扩展模块和官方支持服务。 </p>', 1, '', '', '', ''),
(2, 1, '联系方式', '联系方式 ', 5, '', '', '', ''),
(4, 1, '企业文化', '企业文化', 2, '', '', '', ''),
(5, 1, '发展历程', '发展历程 ', 3, '', '', '', ''),
(6, 1, '人力资源', '人力资源 ', 4, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_page_group`
--

CREATE TABLE IF NOT EXISTS `dev_page_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `folder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_page_group`
--

INSERT INTO `dev_page_group` (`id`, `groupname`, `xuhao`, `moveable`, `folder`) VALUES
(1, '企业介绍', 1, 0, 'html');

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_cat`
--

CREATE TABLE IF NOT EXISTS `dev_photo_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `dev_photo_cat`
--

INSERT INTO `dev_photo_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(5, 0, '企业图库', 1, '0005:', 0, 0, 0),
(4, 0, '企业证书', 2, '0004:', 0, 0, 0),
(11, 0, '本地风光', 3, '0011:', 0, 0, 0),
(12, 5, '厂容厂貌', 1, '0005:0012:', 0, 0, 0),
(13, 5, '生产车间', 2, '0005:0013:', 0, 0, 0),
(14, 4, '经营许可证', 1, '0004:0014:', 0, 0, 0),
(15, 4, '荣誉证书', 2, '0004:0015:', 0, 0, 0),
(16, 11, '本地美景', 1, '0011:0016:', 0, 0, 0),
(17, 11, '风土人情', 2, '0011:0017:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_con`
--

CREATE TABLE IF NOT EXISTS `dev_photo_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'photo',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `dev_photo_con`
--

INSERT INTO `dev_photo_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(50, 5, '0005:', 0, 'photo', '企业风貌', '', 1234640841, 0, 7, 0, 1, 0, '', '', 'photo/pics/20090214/1234640841.jpg', 1237704637, '测试会员', '', '150', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(51, 5, '0005:', 0, 'photo', '企业风貌', '', 1234640890, 0, 107, 0, 1, 0, '', '', 'photo/pics/20090322/1237707621.jpg', 1237707621, '测试会员', '', '150', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(52, 12, '0005:0012:', 0, 'photo', '企业风貌', '', 1237645813, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090322/1237707607.jpg', 1237707607, '系统管理员', '', '0', '', 0, '工厂一角', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(53, 12, '0005:0012:', 0, 'photo', '企业风貌', '', 1237645840, 0, 2, 1, 1, 0, '0', 'gif', 'photo/pics/20090321/1237645840.jpg', 1237704607, '系统管理员', '', '0', '', 0, '行政办公楼，人才培训中心和员工活动中心', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(54, 12, '0005:0012:', 0, 'photo', '企业风貌', '', 1237645983, 0, 1, 1, 1, 0, '0', 'gif', 'photo/pics/20090322/1237686404.jpg', 1237704602, '系统管理员', '', '0', '', 0, '建成于2005年1月，是公司产品研发、生产和仓储物流的基地', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(55, 12, '0005:0012:', 0, 'photo', '企业风貌', '', 1237646023, 0, 6, 1, 1, 0, '0', 'gif', 'photo/pics/20090321/1237646023.jpg', 1237704612, '系统管理员', '', '0', '', 0, '公司特许加盟样板店，专业形象设计，缔造完美品牌', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_config`
--

CREATE TABLE IF NOT EXISTS `dev_photo_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_photo_config`
--

INSERT INTO `dev_photo_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '图片展示', '本模块对应的频道名称，如“图片展示”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(5, '会员上传图片尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员上传图片时,单个图片尺寸的限制');

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_pages`
--

CREATE TABLE IF NOT EXISTS `dev_photo_pages` (
  `id` int(12) NOT NULL auto_increment,
  `photoid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_photo_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_proj`
--

CREATE TABLE IF NOT EXISTS `dev_photo_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_prop`
--

CREATE TABLE IF NOT EXISTS `dev_photo_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_cat`
--

CREATE TABLE IF NOT EXISTS `dev_product_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dev_product_cat`
--

INSERT INTO `dev_product_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '企业网站系列', 1, '0001:', 0, 0, 0),
(2, 0, '电子商务系列', 2, '0002:', 0, 0, 0),
(3, 1, 'IT科技、软件', 1, '0001:0003:', 0, 0, 0),
(4, 1, '手机、通讯', 2, '0001:0004:', 0, 0, 0),
(5, 1, '学校、教育', 3, '0001:0005:', 0, 0, 0),
(6, 2, '服装', 1, '0002:0006:', 0, 0, 0),
(7, 2, '手机', 2, '0002:0007:', 0, 0, 0),
(13, 2, '鲜花', 3, '0002:0013:', 0, 0, 0),
(9, 1, '餐饮、宾馆', 4, '0001:0009:', 0, 0, 0),
(10, 1, '医院、诊所', 5, '0001:0010:', 0, 0, 0),
(12, 1, '房地产', 7, '0001:0012:', 0, 0, 0),
(34, 2, '书店', 4, '0002:0034:', 0, 0, 0),
(18, 0, '内容网站系列', 3, '0018:', 0, 0, 0),
(19, 18, '知识网站', 1, '0018:0019:', 0, 0, 0),
(20, 18, '小型门户', 3, '0018:0020:', 0, 0, 0),
(22, 18, '论文网站', 2, '0018:0022:', 0, 0, 0),
(23, 1, '环保、生态', 10, '0001:0023:', 0, 0, 0),
(24, 1, '旅游、景区', 11, '0001:0024:', 0, 0, 0),
(27, 1, '家电、音响', 14, '0001:0027:', 0, 0, 0),
(28, 1, '建筑、建材', 15, '0001:0028:', 0, 0, 0),
(29, 1, '贸易、出口', 16, '0001:0029:', 0, 0, 0),
(30, 1, '展览、会展', 17, '0001:0030:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_con`
--

CREATE TABLE IF NOT EXISTS `dev_product_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'product',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `dev_product_con`
--

INSERT INTO `dev_product_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(23, 1, '0001:', 0, 'product', '企业专业版', '&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；', 1237640691, 0, 29, 0, 1, 0, '0', 'gif', 'product/pics/20090323/1237770929.jpg', 1237774091, '系统管理员', '', '0', '', 0, '预装基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块', 'v1.1', 'CRICKET', '500元/套', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(16, 1, '0001:', 0, 'product', '企业专业版', '&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；', 1237640691, 0, 29, 0, 1, 0, '0', 'gif', 'product/pics/20090323/1237770929.jpg', 1237774091, '系统管理员', '', '0', '', 0, '预装基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块', 'v1.1', 'CRICKET', '500元/套', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(19, 1, '0001:', 0, 'product', '企业专业版', '&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；', 1237640691, 0, 28, 0, 1, 0, '0', 'gif', 'product/pics/20090323/1237770929.jpg', 1237774091, '系统管理员', '', '0', '', 0, '预装基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块', 'v1.1', 'CRICKET', '500元/套', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(20, 1, '0001:', 0, 'product', '企业专业版', '&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；', 1237640691, 0, 28, 0, 1, 0, '0', 'gif', 'product/pics/20090323/1237770929.jpg', 1237774091, '系统管理员', '', '0', '', 0, '预装基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块', 'v1.1', 'CRICKET', '500元/套', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(21, 1, '0001:', 0, 'product', '企业专业版', '&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；', 1237640691, 0, 28, 0, 1, 0, '0', 'gif', 'product/pics/20090323/1237770929.jpg', 1237774091, '系统管理员', '', '0', '', 0, '预装基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块', 'v1.1', 'CRICKET', '500元/套', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(22, 1, '0001:', 0, 'product', '企业专业版', '&nbsp;&nbsp;&nbsp;&nbsp; PHPWEB分享式智能网站管理系统-是一款具有专业级功能和傻瓜式管理的网站管理软件。全新的可视化插件拖放排版模式，让网站制作如同搭积木般便捷易玩；独立的插件、边框、菜单灵活组合和任意定位，让您摆脱页面框架的束缚，尽享创意的乐趣；无限扩展、共同分享的插件和模版资源让您的网站越来越丰富多彩；专业的网站内容管理功能、灵活的权限配置、强大的会员功能，让您DIY制作的网站绝不逊色于专业开发；模块化的构架，支持专业模块无限扩展；', 1237640691, 0, 28, 0, 1, 0, '0', 'gif', 'product/pics/20090323/1237770929.jpg', 1237774091, '系统管理员', '', '0', '', 0, '预装基础模块、图文模块、产品展示模块、新闻文章模块、图片展示模块、文件下载模块、留言点评模块、会员模块、网站广告模块、素材特效模块、客服工单模块、网站工具模块', 'v1.1', 'CRICKET', '500元/套', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_config`
--

CREATE TABLE IF NOT EXISTS `dev_product_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_product_config`
--

INSERT INTO `dev_product_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '产品展示', '本模块对应的频道名称，如“产品展示”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(5, '会员上传产品图片尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员上传产品图片时,单个图片尺寸的限制'),
(6, '产品介绍编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布产品时,在编辑器内上传图片,单个图片的尺寸限制');

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_pages`
--

CREATE TABLE IF NOT EXISTS `dev_product_pages` (
  `id` int(12) NOT NULL auto_increment,
  `productid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_product_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_proj`
--

CREATE TABLE IF NOT EXISTS `dev_product_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_prop`
--

CREATE TABLE IF NOT EXISTS `dev_product_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- 转存表中的数据 `dev_product_prop`
--

INSERT INTO `dev_product_prop` (`id`, `catid`, `propname`, `xuhao`) VALUES
(1, 1, '版本', 1),
(80, 10, '版本', 1),
(3, 1, '设计', 3),
(4, 1, '价格', 4),
(5, 2, '版本', 1),
(6, 2, '设计', 2),
(97, 13, '价格', 4),
(8, 2, '价格', 4),
(79, 9, '价格', 4),
(70, 3, '价格', 4),
(69, 3, '设计', 3),
(68, 3, '版本', 1),
(78, 9, '设计', 3),
(73, 4, '价格', 4),
(72, 4, '设计', 3),
(71, 4, '版本', 1),
(77, 9, '版本', 1),
(76, 5, '价格', 4),
(75, 5, '设计', 3),
(74, 5, '版本', 1),
(96, 13, '设计', 2),
(106, 6, '价格', 4),
(105, 6, '设计', 2),
(104, 6, '版本', 1),
(95, 13, '版本', 1),
(94, 7, '价格', 4),
(93, 7, '设计', 2),
(92, 7, '版本', 1),
(29, 8, '产地', 1),
(30, 8, '规格', 2),
(31, 8, '包装', 3),
(32, 8, '报价', 4),
(81, 10, '设计', 3),
(67, 15, '功率', 4),
(66, 15, '加水容量', 2),
(65, 15, '型号', 1),
(82, 10, '价格', 4),
(64, 14, '功率', 4),
(63, 14, '规格', 2),
(62, 14, '型号', 1),
(83, 11, '版本', 1),
(84, 11, '设计', 3),
(85, 11, '价格', 4),
(86, 18, '版本', 1),
(87, 18, '设计', 2),
(88, 18, '价格', 3),
(103, 34, '价格', 4),
(102, 34, '设计', 2),
(101, 34, '版本', 1),
(107, 19, '版本', 1),
(108, 19, '设计', 2),
(109, 19, '价格', 3),
(110, 22, '版本', 1),
(111, 22, '设计', 2),
(112, 22, '价格', 3),
(113, 20, '版本', 1),
(114, 20, '设计', 2),
(115, 20, '价格', 3);

-- --------------------------------------------------------

--
-- 表的结构 `dev_service`
--

CREATE TABLE IF NOT EXISTS `dev_service` (
  `id` int(3) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1565 ;

--
-- 转存表中的数据 `dev_service`
--

INSERT INTO `dev_service` (`id`, `groupid`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, 0, '留言标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(2, 0, '留言内容', 2, 399, 'content', '', 0, 1, '', 1, 0, 2),
(3, 0, '您的姓名', 1, 399, 'name', '', 0, 1, '', 0, 0, 3),
(5, 0, '联系电话', 1, 399, 'tel', '', 0, 1, '', 0, 0, 5),
(6, 0, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(7, 0, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(8, 0, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(9, 0, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(10, 0, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(11, 0, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(4, 0, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(12, 0, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(13, 0, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(14, 0, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(15, 0, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(16, 0, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(19, 0, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(18, 0, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(17, 0, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, 0, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, 0, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, 0, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, 0, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1145, 1, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1146, 1, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1147, 1, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1148, 1, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1149, 1, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1150, 1, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1143, 1, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 1, 0, 2),
(1144, 1, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1142, 1, '手机号码', 1, 399, 'products_name', '', 0, 1, '', 1, 0, 6),
(1141, 1, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1140, 1, '传真号码', 1, 399, 'fax', '', 0, 1, '', 1, 0, 8),
(1139, 1, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1138, 1, '性别称谓', 5, 399, 'sex', '先生;女士', 0, 1, '', 0, 0, 9),
(1136, 1, '客户名称', 1, 399, 'company', '', 1, 1, '', 1, 0, 4),
(1137, 1, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1135, 1, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(1134, 1, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1133, 1, '电子邮件', 1, 399, 'email', '', 0, 1, '', 1, 0, 9),
(1132, 1, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 10),
(1131, 1, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 7),
(1130, 1, '联 系 人', 1, 399, 'name', '', 1, 1, '', 1, 0, 5),
(1129, 1, '订购要求', 2, 399, 'content', '', 0, 1, '', 1, 0, 3),
(1128, 1, '产品名称', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1496, 16, '咨询问题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1497, 16, '咨询内容', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1498, 16, '您的姓名', 1, 399, 'name', '', 1, 1, '', 1, 0, 3),
(1499, 16, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1500, 16, '手机号码', 1, 399, 'address', '', 0, 1, '', 1, 0, 6),
(1501, 16, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(1502, 16, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1503, 16, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(1504, 16, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(1505, 16, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1506, 16, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 9),
(1507, 16, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1508, 16, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1509, 16, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1510, 16, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1511, 16, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1512, 16, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1513, 16, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1514, 16, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1515, 16, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1516, 16, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1517, 16, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1518, 16, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1519, 17, '投诉标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1520, 17, '投诉内容', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1521, 17, '您的姓名', 1, 399, 'name', '', 1, 1, '', 1, 0, 3),
(1522, 17, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1523, 17, '手机号码', 1, 399, 'address', '', 0, 1, '', 1, 0, 6),
(1524, 17, '电子邮件', 1, 399, 'email', '', 1, 1, '', 1, 0, 7),
(1525, 17, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1526, 17, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(1527, 17, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(1528, 17, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1529, 17, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(1530, 17, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1531, 17, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1532, 17, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1533, 17, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1534, 17, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1535, 17, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1536, 17, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1537, 17, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1538, 17, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1539, 17, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1540, 17, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1541, 17, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);

-- --------------------------------------------------------

--
-- 表的结构 `dev_service_chang`
--

CREATE TABLE IF NOT EXISTS `dev_service_chang` (
  `id` int(3) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `msg` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dev_service_chang`
--

INSERT INTO `dev_service_chang` (`id`, `title`, `msg`) VALUES
(1, '问题处理中', '您提交的问题正在处理中,请稍等...'),
(2, '问题需要协同处理', '您提交的问题需要协同处理,可能需要较长的时间,请耐心等待,我们争取在工作日内处理完成...'),
(3, '请电话联系', '您提出的问题,需要电话联系,请直接拨打技术热线:010-10101010。\r\n感谢您的配合!\r\n\r\n某某网站\r\nhttp://'),
(4, '处理完成', '您提交的问题已经处理完成，请验收！\r\n如果您觉得还有问题，可继续回复');

-- --------------------------------------------------------

--
-- 表的结构 `dev_service_chat`
--

CREATE TABLE IF NOT EXISTS `dev_service_chat` (
  `id` int(12) NOT NULL auto_increment,
  `rid` int(12) NOT NULL default '0',
  `content` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `fromname` varchar(30) NOT NULL,
  `fromtype` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_service_feedback`
--

CREATE TABLE IF NOT EXISTS `dev_service_feedback` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `coadminid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=172 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_service_group`
--

CREATE TABLE IF NOT EXISTS `dev_service_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `ifano` int(11) NOT NULL default '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowservice` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dev_service_group`
--

INSERT INTO `dev_service_group` (`id`, `groupname`, `xuhao`, `moveable`, `ifano`, `allowmembertype`, `allowservice`, `intro`) VALUES
(1, '产品订购', 1, 0, 1, '|26|', '|3|', ''),
(16, '售后咨询', 2, 1, 1, '|26|', '|3|', ''),
(17, '服务投诉', 3, 1, 1, '|26|', '|3|', '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_code`
--

CREATE TABLE IF NOT EXISTS `dev_tools_code` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cat` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL default '0',
  `groupname` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `xuhao` int(11) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '1',
  `tj` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_photopolldata`
--

CREATE TABLE IF NOT EXISTS `dev_tools_photopolldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `body` text,
  `iffb` int(1) NOT NULL default '0',
  `tj` int(1) default NULL,
  `secure` int(11) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  `type` varchar(30) NOT NULL,
  `src` varchar(150) NOT NULL,
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  `votesinfo1` text NOT NULL,
  `votesinfo2` text NOT NULL,
  `votesinfo3` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_photopollindex`
--

CREATE TABLE IF NOT EXISTS `dev_tools_photopollindex` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(12) NOT NULL,
  `catpath` char(255) default NULL,
  `cat` varchar(100) NOT NULL,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_pollconfig`
--

CREATE TABLE IF NOT EXISTS `dev_tools_pollconfig` (
  `config_id` smallint(5) unsigned NOT NULL auto_increment,
  `img_height` int(5) NOT NULL default '0',
  `img_length` int(5) NOT NULL default '0',
  `vodinfo` varchar(225) NOT NULL default '0',
  `def_options` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_tools_pollconfig`
--

INSERT INTO `dev_tools_pollconfig` (`config_id`, `img_height`, `img_length`, `vodinfo`, `def_options`) VALUES
(1, 20, 10, '对不起,您已经投过票了', 10);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_polldata`
--

CREATE TABLE IF NOT EXISTS `dev_tools_polldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `option_id` int(11) NOT NULL default '0',
  `option_text` varchar(200) NOT NULL default '',
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `dev_tools_polldata`
--

INSERT INTO `dev_tools_polldata` (`id`, `poll_id`, `option_id`, `option_text`, `color`, `votes`) VALUES
(17, 8, 5, '喜欢', 'aqua', 0),
(16, 8, 4, '一般', 'aqua', 0),
(13, 8, 1, '很好', 'aqua', 1),
(14, 8, 2, '不好', 'aqua', 0),
(15, 8, 3, '很差', 'aqua', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_pollindex`
--

CREATE TABLE IF NOT EXISTS `dev_tools_pollindex` (
  `id` int(11) NOT NULL auto_increment,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `dev_tools_pollindex`
--

INSERT INTO `dev_tools_pollindex` (`id`, `groupname`, `timestamp`, `status`, `exp_time`, `expire`) VALUES
(8, '这个软件你感觉怎么样？', 1223209351, 1, 1225801351, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statbase`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statbase` (
  `id` int(8) NOT NULL auto_increment,
  `ShowCountType` int(1) default NULL,
  `ShowCountSize` int(1) default NULL,
  `ShowCount` int(1) default NULL,
  `ShowCountStat` int(1) default NULL,
  `starttime` int(11) default NULL,
  `CountIpExp` int(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_tools_statbase`
--

INSERT INTO `dev_tools_statbase` (`id`, `ShowCountType`, `ShowCountSize`, `ShowCount`, `ShowCountStat`, `starttime`, `CountIpExp`) VALUES
(1, 17, 8, 2, 0, 1234728185, 5);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statcome`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statcome` (
  `id` int(12) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `count` int(5) NOT NULL default '0',
  `begingtime` int(11) NOT NULL default '0',
  `lasttime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statcount`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statcount` (
  `id` int(21) NOT NULL auto_increment,
  `ip` varchar(17) NOT NULL default '',
  `os` varchar(40) NOT NULL default '',
  `browse` varchar(30) NOT NULL default '',
  `urlform` varchar(255) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `nowpage` varchar(255) default NULL,
  `member` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16307 ;

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statdate`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statdate` (
  `id` int(2) NOT NULL auto_increment,
  `1th_day` int(5) NOT NULL default '0',
  `2th_day` int(5) NOT NULL default '0',
  `3th_day` int(5) NOT NULL default '0',
  `4th_day` int(5) NOT NULL default '0',
  `5th_day` int(5) NOT NULL default '0',
  `6th_day` int(5) NOT NULL default '0',
  `7th_day` int(5) NOT NULL default '0',
  `8th_day` int(5) NOT NULL default '0',
  `9th_day` int(5) NOT NULL default '0',
  `10th_day` int(5) NOT NULL default '0',
  `11th_day` int(5) NOT NULL default '0',
  `12th_day` int(5) NOT NULL default '0',
  `13th_day` int(5) NOT NULL default '0',
  `14th_day` int(5) NOT NULL default '0',
  `15th_day` int(5) NOT NULL default '0',
  `16th_day` int(5) NOT NULL default '0',
  `17th_day` int(5) NOT NULL default '0',
  `18th_day` int(5) NOT NULL default '0',
  `19th_day` int(5) NOT NULL default '0',
  `20th_day` int(5) NOT NULL default '0',
  `21th_day` int(5) NOT NULL default '0',
  `22th_day` int(5) NOT NULL default '0',
  `23th_day` int(5) NOT NULL default '0',
  `24th_day` int(5) NOT NULL default '0',
  `25th_day` int(5) NOT NULL default '0',
  `26th_day` int(5) NOT NULL default '0',
  `27th_day` int(5) NOT NULL default '0',
  `28th_day` int(5) NOT NULL default '0',
  `29th_day` int(5) NOT NULL default '0',
  `30th_day` int(5) NOT NULL default '0',
  `31th_day` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `dev_tools_statdate`
--

INSERT INTO `dev_tools_statdate` (`id`, `1th_day`, `2th_day`, `3th_day`, `4th_day`, `5th_day`, `6th_day`, `7th_day`, `8th_day`, `9th_day`, `10th_day`, `11th_day`, `12th_day`, `13th_day`, `14th_day`, `15th_day`, `16th_day`, `17th_day`, `18th_day`, `19th_day`, `20th_day`, `21th_day`, `22th_day`, `23th_day`, `24th_day`, `25th_day`, `26th_day`, `27th_day`, `28th_day`, `29th_day`, `30th_day`, `31th_day`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
