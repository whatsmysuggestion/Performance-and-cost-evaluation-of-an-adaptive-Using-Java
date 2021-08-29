/*
MySQL Data Transfer
Source Host: localhost
Source Database: encryption
Target Host: localhost
Target Database: encryption
Date: 8/8/2014 6:16:13 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `uid` int(11) default NULL,
  `uname` varchar(255) default NULL,
  `data_id` int(11) NOT NULL auto_increment,
  `dname` varchar(255) default NULL,
  `mdata` varchar(255) default NULL,
  `mdata1` varchar(255) default NULL,
  `file` text,
  `efile` varchar(255) default NULL,
  `date` date default NULL,
  PRIMARY KEY  (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for downs
-- ----------------------------
DROP TABLE IF EXISTS `downs`;
CREATE TABLE `downs` (
  `uid` int(255) default NULL,
  `uname` varchar(255) default NULL,
  `fid` int(255) default NULL,
  `fname` varchar(255) default NULL,
  `mdata` varchar(255) default NULL,
  `filesize` varchar(255) default NULL,
  `filepath` varchar(255) default NULL,
  `date` date default NULL,
  `start12` varchar(255) default NULL,
  `start24` varchar(255) default NULL,
  `end12` varchar(255) default NULL,
  `end24` varchar(255) default NULL,
  `usagetime` varchar(255) default NULL,
  `nof` int(11) default NULL,
  `tfs` varchar(255) default NULL,
  `sizeprize` varchar(255) default NULL,
  `usageprize` varchar(255) default NULL,
  `totalprize` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for downs1
-- ----------------------------
DROP TABLE IF EXISTS `downs1`;
CREATE TABLE `downs1` (
  `uid` int(11) default NULL,
  `uname` varchar(255) default NULL,
  `fid` int(11) default NULL,
  `fname` varchar(255) default NULL,
  `mdata` varchar(255) default NULL,
  `filesize` varchar(255) default NULL,
  `filepath` varchar(255) default NULL,
  `date` date default NULL,
  `start12` varchar(255) default NULL,
  `start24` varchar(255) default NULL,
  `end12` varchar(255) default NULL,
  `end24` varchar(255) default NULL,
  `usagetime` varchar(255) default NULL,
  `nof` int(11) default NULL,
  `tfs` varchar(255) default NULL,
  `sizeprize` varchar(255) default NULL,
  `usageprize` varchar(255) default NULL,
  `totalprize` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `fid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `uname` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fname` varchar(255) default NULL,
  `mdata` varchar(255) default NULL,
  `filer` blob,
  `filepath` varchar(255) default NULL,
  `filesize` varchar(255) default NULL,
  `date` varchar(255) default NULL,
  `mdata1` varchar(255) default NULL,
  `filer1` blob,
  `masterkey` varchar(255) default NULL,
  `masterkey1` varchar(255) default NULL,
  `request1` varchar(255) default NULL,
  `request2` varchar(255) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for request
-- ----------------------------
DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(11) default NULL,
  `fid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `date` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `scode` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for request1
-- ----------------------------
DROP TABLE IF EXISTS `request1`;
CREATE TABLE `request1` (
  `id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `date` varchar(255) default NULL,
  `status` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for timer
-- ----------------------------
DROP TABLE IF EXISTS `timer`;
CREATE TABLE `timer` (
  `uid` int(11) default NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `start12` varchar(255) default NULL,
  `start24` varchar(255) default NULL,
  `end12` varchar(255) default NULL,
  `end24` varchar(255) default NULL,
  `usagetime` varchar(255) default NULL,
  `nof` int(11) default NULL,
  `filename` varchar(255) default NULL,
  `filesize` varchar(255) default NULL,
  `tfs` varchar(255) default NULL,
  `sizeprize` varchar(255) default NULL,
  `usageprize` varchar(255) default NULL,
  `totalprize` varchar(255) default NULL,
  `masterkey` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `iid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `dob` date default NULL,
  `country` varchar(255) default NULL,
  `scode` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `downs` VALUES ('7', 'sulo', '14', 'god', 'forgive', '8kb', 'Gallery/call letter.txt', null, '01:29:31 PM', '13:29:31', '01:29:36 PM', '13:29:36', '5 Secs', '1', '8kb', '0.0', '2.5', '2.5');
INSERT INTO `downs` VALUES ('8', 'deepa', '15', 'IEEE papers', 'datamining', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '02:56:06 PM', '14:56:06', '02:56:34 PM', '14:56:34', '28 Secs', '1', '3943kb', '131.43', '14.0', '145.43');
INSERT INTO `downs` VALUES ('9', 'ganga', '17', 'Multi media', 'animation', '448kb', 'Gallery/TCC.2014.2314644.pdf', null, '04:38:13 PM', '16:38:13', '05:07:19 PM', '17:07:19', '1:7 Mins', '1', '448kb', '14.93', '33.5', '48.43');
INSERT INTO `downs` VALUES ('11', 'jeeva', '19', '2014 projects', 'cloud computing', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '06:03:37 PM', '18:03:37', '06:04:56 PM', '18:04:56', '1:19 Mins', '1', '3943kb', '131.43', '39.5', '170.93');
INSERT INTO `downs` VALUES ('11', 'jeeva', '19', '2014 projects', 'cloud computing', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '06:07:53 PM', '18:07:53', null, null, null, null, null, null, null, null);
INSERT INTO `downs1` VALUES ('7', 'sulo', '14', 'god', 'forgive', '8kb', 'Gallery/call letter.txt', null, '01:29:34 PM', '13:29:34', null, null, null, null, null, null, null, null);
INSERT INTO `downs1` VALUES ('8', 'deepa', '15', 'IEEE papers', 'datamining', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '02:56:08 PM', '14:56:08', '02:58:58 PM', '14:58:58', '10 Secs', '1', '3943kb', '131.43', '5.0', '136.43');
INSERT INTO `downs1` VALUES ('8', 'deepa', '15', 'IEEE papers', 'datamining', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '02:58:48 PM', '14:58:48', '02:58:58 PM', '14:58:58', '10 Secs', '1', '3943kb', '131.43', '5.0', '136.43');
INSERT INTO `downs1` VALUES ('9', 'ganga', '17', 'Multi media', 'animation', '448kb', 'Gallery/TCC.2014.2314644.pdf', null, '04:38:15 PM', '16:38:15', '05:07:34 PM', '17:07:34', '1:20 Mins', '1', '448kb', '14.93', '40.0', '54.93');
INSERT INTO `downs1` VALUES ('11', 'jeeva', '19', '2014 projects', 'cloud computing', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '06:03:39 PM', '18:03:39', '06:08:46 PM', '18:08:46', '51 Secs', '1', '3943kb', '131.43', '25.5', '156.93');
INSERT INTO `downs1` VALUES ('11', 'jeeva', '19', '2014 projects', 'cloud computing', '3943kb', 'Gallery/10.1109@TIFS.2014.2318435.pdf', null, '06:07:55 PM', '18:07:55', '06:08:46 PM', '18:08:46', '51 Secs', '1', '3943kb', '131.43', '25.5', '156.93');
INSERT INTO `files` VALUES ('13', '6', 'shyamala', 'ashyamalait@gmail.com', 'newfile', 'programming', 0x64657461696C732E747874, 'Gallery/details.txt', '0kb', '07/08/2014', 'îJu™°yû3dêläþ', 0x6046FF7B7A0AAF4AEC45166605A56280, '29045', null, 'waiting', null);
INSERT INTO `files` VALUES ('14', '7', 'vinayaga', 'ashyamalait@gmail.com', 'god', 'forgive', 0x63616C6C206C65747465722E747874, 'Gallery/call letter.txt', '8kb', '08/08/2014', 'ÐÎ®!˜zÙ‡ÛäžÕ´Š', 0x4EA7DA1366CE68ACCDFFB0E7087DA2CE, '792792', '593132', 'key granted', 'key granted');
INSERT INTO `files` VALUES ('15', '8', 'yasodha', 'chennaisunday.cs0131@gmail.com', 'IEEE papers', 'datamining', 0x31302E3131303940544946532E323031342E323331383433352E706466, 'Gallery/10.1109@TIFS.2014.2318435.pdf', '3943kb', '08/08/2014', '\"Q\']ÞÑö£¬FYí¨', 0xBDF64B7BF7709ED1FBFB918F1AC52B1C35AE46644FD70FA96337DA7379A855D8, '873507', '48310', null, 'key granted');
INSERT INTO `files` VALUES ('17', '9', 'palani', 'chennaisunday.cs0131@gmail.com', 'Multi media', 'animation', 0x5443432E323031342E323331343634342E706466, 'Gallery/TCC.2014.2314644.pdf', '448kb', '08/08/2014', '™AQ¿`Êá]”à1', 0x95F35525EE286C8EBBE4F020EF96F2FE09BDB8412EC1CE1CF3DF43F35138C0ED, '206398', '272728', 'waiting', 'key granted');
INSERT INTO `files` VALUES ('18', '11', 'sathiya', 'chennaisunday.cs0131@gmail.com', '2014 projects', 'cloud computing', 0x31302E3131303940544946532E323031342E323331383433352E706466, 'Gallery/10.1109@TIFS.2014.2318435.pdf', '3943kb', '08/08/2014', 'K_Ió‹“>Ççi/¬', 0xBDF64B7BF7709ED1FBFB918F1AC52B1C35AE46644FD70FA96337DA7379A855D8, '234910', '769931', null, 'key granted');
INSERT INTO `files` VALUES ('19', '11', 'sathiya', 'chennaisunday.cs0131@gmail.com', '2014 projects', 'cloud computing', 0x31302E3131303940544946532E323031342E323331383433352E706466, 'Gallery/10.1109@TIFS.2014.2318435.pdf', '3943kb', '08/08/2014', 'K_Ió‹“>Ççi/¬', 0xBDF64B7BF7709ED1FBFB918F1AC52B1C35AE46644FD70FA96337DA7379A855D8, '861161', '769931', 'key granted', 'key granted');
INSERT INTO `register` VALUES ('6', 'shyamala', 'shyamala', 'ashyamalait@gmail.com', '9988776655', '2014-08-07', 'india');
INSERT INTO `register` VALUES ('7', 'vinayaga', 'vinayaga', 'ashyamalait@gmail.com', '9988776655', '2014-08-08', 'india');
INSERT INTO `register` VALUES ('8', 'yasodha', 'yasodha', 'chennaisunday.cs0131@gmail.com', '9922446633', '2014-08-08', 'india');
INSERT INTO `register` VALUES ('9', 'palani', 'palani', 'chennaisunday.cs0131@gmail.com', '9988776655', '2014-08-08', 'india');
INSERT INTO `register` VALUES ('10', 'mn', 'mn', 'bjkkj', 'pqrstuvwxyzabcdefgh', '2014-08-08', '9988776655');
INSERT INTO `register` VALUES ('11', 'sathiya', 'sathiya', 'chennaisunday.cs0131@gmail.com', '9988774455', '2014-08-08', 'india');
INSERT INTO `request` VALUES ('4', '13', 'ashok', 'a.ashokphy@gmail.com', '07/08/2014', 'waiting', null);
INSERT INTO `request` VALUES ('5', '14', 'sulo', 'ashyamalait@gmail.com', '08/08/2014', 'waiting', null);
INSERT INTO `request` VALUES ('7', '17', 'ganga', 'chennaisunday.cs0131@gmail.com', '08/08/2014', 'waiting', null);
INSERT INTO `request` VALUES ('8', '19', 'jeeva', 'ashyamalait@gmail.com', '08/08/2014', 'waiting', null);
INSERT INTO `request1` VALUES ('5', 'sulo', 'ashyamalait@gmail.com', '08/08/2014', 'waiting');
INSERT INTO `request1` VALUES ('6', 'deepa', 'chennaisunday.cs0131@gmail.com', '08/08/2014', 'waiting');
INSERT INTO `request1` VALUES ('7', 'ganga', 'chennaisunday.cs0131@gmail.com', '08/08/2014', 'waiting');
INSERT INTO `request1` VALUES ('8', 'jeeva', 'ashyamalait@gmail.com', '08/08/2014', 'waiting');
INSERT INTO `timer` VALUES ('1', 'shyamala', 'ashyamalait@gmail.com', '01:21:55 PM', '13:21:55', '12:08:20 PM', '12:08:20', '7 Secs', '5', 'aa, kali, ss, text, iiii', '1kb, 8kb, 8kb, 1kb, 0kb', '18kb', '0.0', '3.5', '3.5', null);
INSERT INTO `timer` VALUES ('1', 'shyamala', 'ashyamalait@gmail.com', '01:28:23 PM', '13:28:23', '12:08:20 PM', '12:08:20', '7 Secs', '5', 'aa, kali, ss, text, iiii', '1kb, 8kb, 8kb, 1kb, 0kb', '18kb', '0.0', '3.5', '3.5', null);
INSERT INTO `timer` VALUES ('1', 'shyamala', 'ashyamalait@gmail.com', '11:10:13 AM', '11:10:13', '12:08:20 PM', '12:08:20', '7 Secs', '5', 'aa, kali, ss, text, iiii', '1kb, 8kb, 8kb, 1kb, 0kb', '18kb', '0.0', '3.5', '3.5', null);
INSERT INTO `timer` VALUES ('3', 'suvitha', 'suvitha@gmail.com', '11:18:44 AM', '11:18:44', '11:25:02 AM', '11:25:02', '1:9 Mins', '3', 'pp, ii, ii', '8kb, 0kb, 0kb', '8kb', '0.0', '34.5', '34.5', null);
INSERT INTO `timer` VALUES ('3', 'suvitha', 'ashyamalait@gmail.com', '11:23:53 AM', '11:23:53', '11:25:02 AM', '11:25:02', '1:9 Mins', '3', 'pp, ii, ii', '8kb, 0kb, 0kb', '8kb', '0.0', '34.5', '34.5', null);
INSERT INTO `timer` VALUES ('1', 'shyamala', 'ashyamalait@gmail.com', '12:08:13 PM', '12:08:13', '12:08:20 PM', '12:08:20', '7 Secs', '5', 'aa, kali, ss, text, iiii', '1kb, 8kb, 8kb, 1kb, 0kb', '18kb', '0.0', '3.5', '3.5', null);
INSERT INTO `timer` VALUES ('4', 'anitha', 'ashyamalait@gmail.com', '06:38:56 PM', '18:38:56', '06:39:08 PM', '18:39:08', '12 Secs', '1', 'sundaydata', '1683kb', '1683kb', '56.1', '6.0', '62.1', null);
INSERT INTO `timer` VALUES ('2', 'ashok', 'a.ashokphy@gmail.com', '10:59:48 AM', '10:59:48', '12:36:13 PM', '12:36:13', '1:36:25 Hours', '1', 'kali', '1kb', '1kb', '0.0', '2892.5', '2892.5', null);
INSERT INTO `timer` VALUES ('5', 'deepu', 'ashyamalait@gmail.com', '03:52:06 PM', '15:52:06', '03:54:15 PM', '15:54:15', '11 Secs', '1', 'programming', '0kb', '0kb', '0.0', '5.5', '5.5', null);
INSERT INTO `timer` VALUES ('5', 'deepu', 'ashyamalait@gmail.com', '03:54:04 PM', '15:54:04', '03:54:15 PM', '15:54:15', '11 Secs', '1', 'programming', '0kb', '0kb', '0.0', '5.5', '5.5', null);
INSERT INTO `timer` VALUES ('6', 'shyamala', 'ashyamalait@gmail.com', '05:05:27 PM', '17:05:27', '05:05:37 PM', '17:05:37', '10 Secs', '1', 'newfile', '0kb', '0kb', '0.0', '5.0', '5.0', null);
INSERT INTO `timer` VALUES ('7', 'vinayaga', 'ashyamalait@gmail.com', '10:44:43 AM', '10:44:43', '10:44:53 AM', '10:44:53', '10 Secs', '1', 'god', '8kb', '8kb', '0.0', '5.0', '5.0', null);
INSERT INTO `timer` VALUES ('8', 'yasodha', 'chennaisunday.cs0131@gmail.com', '02:53:26 PM', '14:53:26', '03:53:50 PM', '15:53:50', '17 Secs', '2', 'IEEE papers, css', '3943kb, 0kb', '3943kb', '131.43', '8.5', '139.93', null);
INSERT INTO `timer` VALUES ('8', 'yasodha', 'chennaisunday.cs0131@gmail.com', '03:52:23 PM', '15:52:23', '03:53:50 PM', '15:53:50', '17 Secs', '2', 'IEEE papers, css', '3943kb, 0kb', '3943kb', '131.43', '8.5', '139.93', null);
INSERT INTO `timer` VALUES ('8', 'yasodha', 'chennaisunday.cs0131@gmail.com', '03:53:33 PM', '15:53:33', '03:53:50 PM', '15:53:50', '17 Secs', '2', 'IEEE papers, css', '3943kb, 0kb', '3943kb', '131.43', '8.5', '139.93', null);
INSERT INTO `timer` VALUES ('9', 'palani', 'chennaisunday.cs0131@gmail.com', '04:18:49 PM', '16:18:49', '04:19:03 PM', '16:19:03', '14 Secs', '1', 'Multi media', '448kb', '448kb', '14.93', '7.0', '21.93', null);
INSERT INTO `timer` VALUES ('11', 'sathiya', 'chennaisunday.cs0131@gmail.com', '05:50:08 PM', '17:50:08', '05:50:27 PM', '17:50:27', '19 Secs', '2', '2014 projects, 2014 projects', '3943kb, 3943kb', '7886kb', '262.87', '9.5', '272.37', null);
INSERT INTO `user` VALUES ('4', 'ashok', 'ashok', 'a.ashokphy@gmail.com', '9988776655', '2014-08-07', 'india', '971417', 'key granted');
INSERT INTO `user` VALUES ('5', 'sulo', 'sulo', 'ashyamalait@gmail.com', '9988776655', '2014-08-08', 'india', '566788', 'key granted');
INSERT INTO `user` VALUES ('6', 'deepa', 'deepa', 'chennaisunday.cs0131@gmail.com', '9988776655', '2014-08-08', 'india', '137281', 'key granted');
INSERT INTO `user` VALUES ('7', 'ganga', 'ganga', 'chennaisunday.cs0131@gmail.com', '9988776655', '2014-08-08', 'india', '421591', 'key granted');
INSERT INTO `user` VALUES ('8', 'jeeva', 'jeeva', 'ashyamalait@gmail.com', '9988776655', '1981-08-20', 'india', '680594', 'key granted');
