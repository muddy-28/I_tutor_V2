-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2015 at 05:43 AM
-- Server version: 5.6.23
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `conceptmap_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `concept-maps`
--

CREATE TABLE IF NOT EXISTS `concept-maps` (
  `map_id` int(4) NOT NULL,
  `map_data` text NOT NULL,
  `map_created_by` varchar(25) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `map_title` varchar(255) NOT NULL COMMENT 'concept map title'
) ENGINE=InnoDB AUTO_INCREMENT=1262 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concept-maps`
--

INSERT INTO `concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`, `map_title`) VALUES
(1257, '{\r\n    "nodes": [\r\n        {\r\n            "name": "home",\r\n            "id": 10,\r\n            "x": 261,\r\n            "y": 159,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "school"\r\n                },\r\n                {\r\n                    "name": "colg"\r\n                },\r\n                {\r\n                    "name": "univ"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "school",\r\n            "id": 11,\r\n            "x": 575,\r\n            "y": 94,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "matric"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "uni",\r\n            "id": 13,\r\n            "x": 571,\r\n            "y": 292,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bscs"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "colg",\r\n            "id": 12,\r\n            "x": 572,\r\n            "y": 193,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "ics"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 2\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-06-20 20:52:42', ''),
(1258, '{\r\n    "nodes": [\r\n        {\r\n            "name": "hbhsbcs",\r\n            "id": 10,\r\n            "x": 0,\r\n            "y": 0,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": []\r\n}', 'teacher', '2015-06-23 04:54:44', ''),
(1259, '{\n    "nodes": [\n        {\n            "name": "hxbxahbxahbx",\n            "id": 10,\n            "x": 1113,\n            "y": 650,\n            "inputConnectors": [\n                {\n                    "name": "New connector"\n                }\n            ],\n            "outputConnectors": [],\n            "width": 200\n        },\n        {\n            "name": "xwbhxwbxhwx",\n            "id": 11,\n            "x": 825,\n            "y": 594,\n            "inputConnectors": [\n                {\n                    "name": "s"\n                }\n            ],\n            "outputConnectors": [\n                {\n                    "name": "as"\n                }\n            ],\n            "width": 200\n        },\n        {\n            "name": "ahbhabx",\n            "id": 12,\n            "x": 565,\n            "y": 505,\n            "inputConnectors": [\n                {\n                    "name": "sxa"\n                }\n            ],\n            "outputConnectors": [\n                {\n                    "name": "New connector"\n                }\n            ],\n            "width": 200\n        },\n        {\n            "name": "haxahxbahxb",\n            "id": 13,\n            "x": 286,\n            "y": 340,\n            "inputConnectors": [],\n            "outputConnectors": [\n                {\n                    "name": "xaxa"\n                }\n            ],\n            "width": 200\n        }\n    ],\n    "connections": [\n        {\n            "source": {\n                "nodeID": 11,\n                "connectorIndex": 0\n            },\n            "dest": {\n                "nodeID": 10,\n                "connectorIndex": 0\n            }\n        },\n        {\n            "source": {\n                "nodeID": 12,\n                "connectorIndex": 0\n            },\n            "dest": {\n                "nodeID": 11,\n                "connectorIndex": 0\n            }\n        },\n        {\n            "source": {\n                "nodeID": 13,\n                "connectorIndex": 0\n            },\n            "dest": {\n                "nodeID": 12,\n                "connectorIndex": 0\n            }\n        }\n    ]\n}', 'teacher', '2015-06-27 23:44:00', ''),
(1260, '{\r\n    "nodes": [\r\n        {\r\n            "name": "adnan",\r\n            "id": 10,\r\n            "x": 21,\r\n            "y": 104,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "njdasd"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "jajdnad",\r\n            "id": 11,\r\n            "x": 364,\r\n            "y": 284,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "nnad"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "jnasda"\r\n                },\r\n                {\r\n                    "name": "s"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "jand",\r\n            "id": 12,\r\n            "x": 693,\r\n            "y": 416,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "asd"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "dada",\r\n            "id": 13,\r\n            "x": 690,\r\n            "y": 530,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "as"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-06-28 11:51:35', ''),
(1261, '{\r\n    "nodes": [\r\n        {\r\n            "name": "Mad",\r\n            "id": 10,\r\n            "x": 59,\r\n            "y": 155.00000762939453,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                },\r\n                {\r\n                    "name": "2"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Lo",\r\n            "id": 12,\r\n            "x": 419,\r\n            "y": 244.00000762939453,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "A",\r\n            "id": 13,\r\n            "x": 403,\r\n            "y": 57,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-02 04:27:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `dest_node`
--

CREATE TABLE IF NOT EXISTS `dest_node` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `map_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dest_node`
--

INSERT INTO `dest_node` (`node_id`, `connector_code`, `map_id`) VALUES
(11, 0, 1257),
(12, 0, 1257),
(13, 0, 1257),
(10, 0, 1259),
(11, 0, 1259),
(12, 0, 1259),
(11, 0, 1260),
(12, 0, 1260),
(13, 0, 1260),
(13, 0, 1261),
(12, 0, 1261);

-- --------------------------------------------------------

--
-- Table structure for table `input_connection`
--

CREATE TABLE IF NOT EXISTS `input_connection` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `connector_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `input_connection`
--

INSERT INTO `input_connection` (`node_id`, `connector_code`, `connector_name`) VALUES
(20, 0, 'matric'),
(21, 0, 'bscs'),
(22, 0, 'ics'),
(24, 0, 'New connector'),
(25, 0, 's'),
(26, 0, 'sxa'),
(29, 0, 'nnad'),
(30, 0, 'asd'),
(31, 0, 'as'),
(33, 0, '1'),
(34, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `nodeID` int(2) NOT NULL,
  `nodeName` varchar(60) NOT NULL,
  `node_content` longblob NOT NULL COMMENT 'topic content'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`map_id`, `node_id`, `nodeID`, `nodeName`, `node_content`) VALUES
(1257, 19, 10, 'home', 0x3c68313e266e6273703b3c2f68313e0d0a3c703e637368636273686263736863627368633c2f703e0d0a3c703e6368736362687362636873633c2f703e0d0a3c703e636873626368736263687363623c2f703e),
(1257, 20, 11, 'school', 0x3c703e6e6a6a73636a6e73636a6e73636a736e636a736e636a73633c2f703e0d0a3c703e637363736373633c2f703e0d0a3c703e3c696672616d65207372633d2268747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f547745554654694a583830222077696474683d2235363022206865696768743d2233313522206672616d65626f726465723d22302220616c6c6f7766756c6c73637265656e3d22616c6c6f7766756c6c73637265656e223e3c2f696672616d653e3c2f703e),
(1257, 21, 13, 'uni', ''),
(1257, 22, 12, 'colg', ''),
(1258, 23, 10, 'hbhsbcs', ''),
(1259, 24, 10, 'hxbxahbxahbx', ''),
(1259, 25, 11, 'xwbhxwbxhwx', ''),
(1259, 26, 12, 'ahbhabx', ''),
(1259, 27, 13, 'haxahxbahxb', ''),
(1260, 28, 10, 'adnan', ''),
(1260, 29, 11, 'jajdnad', ''),
(1260, 30, 12, 'jand', ''),
(1260, 31, 13, 'dada', ''),
(1261, 32, 10, 'Mad', 0x3c703e3c61207469746c653d2246756e6e792220687265663d22687474703a2f2f7777772e797470616b2e636f6d2f3f636f6d706f6e656e743d766964656f26616d703b7461736b3d7669657726616d703b69643d7370545850557363555645223e687474703a2f2f7777772e797470616b2e636f6d2f3f636f6d706f6e656e743d766964656f26616d703b7461736b3d7669657726616d703b69643d73705458505573635556453c2f613e3c2f703e),
(1261, 33, 12, 'Lo', ''),
(1261, 34, 13, 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `output_connection`
--

CREATE TABLE IF NOT EXISTS `output_connection` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `connector_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `output_connection`
--

INSERT INTO `output_connection` (`node_id`, `connector_code`, `connector_name`) VALUES
(19, 0, 'school'),
(19, 1, 'colg'),
(19, 2, 'univ'),
(25, 0, 'as'),
(26, 0, 'New connector'),
(27, 0, 'xaxa'),
(28, 0, 'njdasd'),
(29, 0, 'jnasda'),
(29, 1, 's'),
(32, 0, '1'),
(32, 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `rltn4rm_p2c`
--

CREATE TABLE IF NOT EXISTS `rltn4rm_p2c` (
  `src_node_id` int(2) NOT NULL COMMENT 'conection starting from node',
  `src_Cntcr_INDEX` int(2) NOT NULL COMMENT 'connection bindinding node conectr index',
  `dest_node_id` int(2) NOT NULL COMMENT 'connection termination node',
  `dest_Cntcr_INDEX` int(2) NOT NULL COMMENT 'connection termination node conector index',
  `map_id` int(4) NOT NULL COMMENT 'respective-map-id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='relation from parent to chilld';

--
-- Dumping data for table `rltn4rm_p2c`
--

INSERT INTO `rltn4rm_p2c` (`src_node_id`, `src_Cntcr_INDEX`, `dest_node_id`, `dest_Cntcr_INDEX`, `map_id`) VALUES
(10, 0, 11, 0, 1257),
(10, 1, 12, 0, 1257),
(10, 2, 13, 0, 1257),
(11, 0, 10, 0, 1259),
(12, 0, 11, 0, 1259),
(13, 0, 12, 0, 1259),
(10, 0, 11, 0, 1260),
(11, 0, 12, 0, 1260),
(11, 1, 13, 0, 1260),
(10, 0, 13, 0, 1261),
(10, 1, 12, 0, 1261);

-- --------------------------------------------------------

--
-- Table structure for table `src_node`
--

CREATE TABLE IF NOT EXISTS `src_node` (
  `node_id` int(4) NOT NULL,
  `connector_code` int(2) NOT NULL,
  `map_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `src_node`
--

INSERT INTO `src_node` (`node_id`, `connector_code`, `map_id`) VALUES
(10, 0, 1257),
(10, 1, 1257),
(10, 2, 1257),
(11, 0, 1259),
(12, 0, 1259),
(13, 0, 1259),
(10, 0, 1260),
(11, 0, 1260),
(11, 1, 1260),
(10, 0, 1261),
(10, 1, 1261);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `user_type` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user category '
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_type`) VALUES
(6, 'student', '$2y$10$nbMcwiifCa3GaBt8lxMIW.EvUQ0C6yGChOnTyT0JSMF5PIDdEfmZe', 'student@student.com', 'student'),
(7, 'teacher', '$2y$10$nbMcwiifCa3GaBt8lxMIW.EvUQ0C6yGChOnTyT0JSMF5PIDdEfmZe', 'teacher@teacher.com', 'teacher'),
(8, 'admin', '$2y$10$jxClIgxKo8R9K3RruCjm5ugqfIHhKwMfXgK40S5TAlTt4bQo8ecXC', 'admin@admin.com', 'admin'),
(9, 'Madiha', '$2y$10$sahf3bACuAcq95YZ.7MepuAG3zhXA5DzGHirslpiXD4p4jT0gDcy6', '11105066@gift.edu.pk', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concept-maps`
--
ALTER TABLE `concept-maps`
  ADD PRIMARY KEY (`map_id`) COMMENT 'Primary key autoincrement';

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`node_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concept-maps`
--
ALTER TABLE `concept-maps`
  MODIFY `map_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1262;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `node_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
