-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 02:33 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web1908`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cid`) VALUES
(1, '家用电器', 1001),
(1, '手机/运营商/数码', 1002),
(1, '电脑/办公', 1003),
(1, '家具/家居', 1004),
(1001, '电视', 10001),
(1001, '空调', 10002),
(1001, '洗衣机', 10003),
(1001, '冰箱', 10004),
(1002, '手机通讯', 10001),
(1002, '运营商', 10002),
(1002, '摄影', 10003),
(1002, '摄像', 10004),
(1003, '电脑整机', 10001),
(1003, '电脑配件', 10002),
(1003, '外设产品', 10003),
(1003, '游戏设备', 10004),
(1004, '厨具', 10001),
(1004, '家纺', 10002),
(1004, '灯具', 10003),
(1004, '家具', 10004);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `name`, `pid`) VALUES
(1, '广告分类', 1001),
(1001, 'banner广告', 10001),
(1001, '弹出广告', 10002),
(1001, '小广告', 10003),
(1001, '新的广告122', 19412);

-- --------------------------------------------------------

--
-- Table structure for table `params`
--

CREATE TABLE `params` (
  `id` int(11) NOT NULL,
  `itemCatId` text NOT NULL,
  `paramData` text NOT NULL,
  `created` text NOT NULL,
  `updated` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `params`
--

INSERT INTO `params` (`id`, `itemCatId`, `paramData`, `created`, `updated`) VALUES
(1002, '1001', '[{"value":"123","children":[{"childValue":"123","value":""}]}]', '', ''),
(10005, '10001', '[{"value":"品牌","children":[{"childValue":"戴尔","value":""},{"childValue":"宏碁","value":""},{"childValue":"mac","value":""},{"childValue":"小米","value":""}]},{"value":"内存","children":[{"value":"","childValue":"256"},{"childValue":"固态","value":""}]}]', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image` text NOT NULL,
  `sellPoint` text NOT NULL,
  `price` text NOT NULL,
  `cid` text NOT NULL,
  `num` text NOT NULL,
  `barcode` text NOT NULL,
  `status` text NOT NULL,
  `created` text NOT NULL,
  `updated` text NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `image`, `sellPoint`, `price`, `cid`, `num`, `barcode`, `status`, `created`, `updated`, `desc`) VALUES
(10013, '111333', '1.jpg', '111333', '111333', '1003', '11133', '', '1', '', '', '<p>111333</p>'),
(10015, '三体-刘慈欣', '', '未来科幻', '99', '', '999', '', '', '', '', '<p>这是大刘的得意之作，连奥巴马都喜欢看！</p>'),
(10016, '流浪地球-刘慈欣', '', '已经拍成了电视剧', '22', '', '222', '', '', '', '', '<p>吴京主演的，感觉还可以的。厂面不错！</p>'),
(10017, '浮生六记', '1.jpg', '123', '123', '', '123', '', '', '', '', '123'),
(10018, '123', '123', '123', '123', '123', '123', '', '1', '', '', '123'),
(10019, '123', '123', '123', '123', '123', '123', '', '1', '', '', '123'),
(10024, '123', '123', '123', '123', '123', '123', '', '1', '', '', '123'),
(10025, '123', '123', '123', '123', '123', '123', '', '1', '', '', '123'),
(10026, '123', '123', '123', '123', '123', '123', '', '1', '', '', '123'),
(10027, '123', '123', '123', '123', '123', '123', '', '1', '', '', '123'),
(10028, '梦里花落知多少', '2.jpg', '小时代！！！', '11', '10001', '11', '', '', '', '', '<p>还不错，但是要看书籍，不要看电影</p>'),
(10029, '哈哈哈', '1.jpg', '123', '123', '10001', '123', '', '1', '', '', '<p>123123123</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `params`
--
ALTER TABLE `params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `params`
--
ALTER TABLE `params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10030;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
