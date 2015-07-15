-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2015 at 04:27 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=1270 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concept-maps`
--

INSERT INTO `concept-maps` (`map_id`, `map_data`, `map_created_by`, `created_on`, `map_title`) VALUES
(1257, '{\r\n    "nodes": [\r\n        {\r\n            "name": "home",\r\n            "id": 10,\r\n            "x": 261,\r\n            "y": 159,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "school"\r\n                },\r\n                {\r\n                    "name": "colg"\r\n                },\r\n                {\r\n                    "name": "univ"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "school",\r\n            "id": 11,\r\n            "x": 575,\r\n            "y": 94,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "matric"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "uni",\r\n            "id": 13,\r\n            "x": 571,\r\n            "y": 292,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "bscs"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "colg",\r\n            "id": 12,\r\n            "x": 572,\r\n            "y": 193,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "ics"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 2\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-06-20 20:52:42', ''),
(1258, '{\r\n    "nodes": [\r\n        {\r\n            "name": "hbhsbcs",\r\n            "id": 10,\r\n            "x": 0,\r\n            "y": 0,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": []\r\n}', 'teacher', '2015-06-23 04:54:44', ''),
(1259, '{\n    "nodes": [\n        {\n            "name": "hxbxahbxahbx",\n            "id": 10,\n            "x": 1113,\n            "y": 650,\n            "inputConnectors": [\n                {\n                    "name": "New connector"\n                }\n            ],\n            "outputConnectors": [],\n            "width": 200\n        },\n        {\n            "name": "xwbhxwbxhwx",\n            "id": 11,\n            "x": 825,\n            "y": 594,\n            "inputConnectors": [\n                {\n                    "name": "s"\n                }\n            ],\n            "outputConnectors": [\n                {\n                    "name": "as"\n                }\n            ],\n            "width": 200\n        },\n        {\n            "name": "ahbhabx",\n            "id": 12,\n            "x": 565,\n            "y": 505,\n            "inputConnectors": [\n                {\n                    "name": "sxa"\n                }\n            ],\n            "outputConnectors": [\n                {\n                    "name": "New connector"\n                }\n            ],\n            "width": 200\n        },\n        {\n            "name": "haxahxbahxb",\n            "id": 13,\n            "x": 286,\n            "y": 340,\n            "inputConnectors": [],\n            "outputConnectors": [\n                {\n                    "name": "xaxa"\n                }\n            ],\n            "width": 200\n        }\n    ],\n    "connections": [\n        {\n            "source": {\n                "nodeID": 11,\n                "connectorIndex": 0\n            },\n            "dest": {\n                "nodeID": 10,\n                "connectorIndex": 0\n            }\n        },\n        {\n            "source": {\n                "nodeID": 12,\n                "connectorIndex": 0\n            },\n            "dest": {\n                "nodeID": 11,\n                "connectorIndex": 0\n            }\n        },\n        {\n            "source": {\n                "nodeID": 13,\n                "connectorIndex": 0\n            },\n            "dest": {\n                "nodeID": 12,\n                "connectorIndex": 0\n            }\n        }\n    ]\n}', 'teacher', '2015-06-27 23:44:00', ''),
(1260, '{\r\n    "nodes": [\r\n        {\r\n            "name": "adnan",\r\n            "id": 10,\r\n            "x": 21,\r\n            "y": 104,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "njdasd"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "jajdnad",\r\n            "id": 11,\r\n            "x": 364,\r\n            "y": 284,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "nnad"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "jnasda"\r\n                },\r\n                {\r\n                    "name": "s"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "jand",\r\n            "id": 12,\r\n            "x": 693,\r\n            "y": 416,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "asd"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "dada",\r\n            "id": 13,\r\n            "x": 690,\r\n            "y": 530,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "as"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-06-28 11:51:35', ''),
(1261, '{\r\n    "nodes": [\r\n        {\r\n            "name": "Mad",\r\n            "id": 10,\r\n            "x": 59,\r\n            "y": 155.00000762939453,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                },\r\n                {\r\n                    "name": "2"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Lo",\r\n            "id": 12,\r\n            "x": 419,\r\n            "y": 244.00000762939453,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "A",\r\n            "id": 13,\r\n            "x": 403,\r\n            "y": 57,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-02 04:27:04', ''),
(1262, '{\r\n    "nodes": [\r\n        {\r\n            "name": "asd",\r\n            "id": 11,\r\n            "x": 121,\r\n            "y": 56,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "as",\r\n            "id": 12,\r\n            "x": 443,\r\n            "y": 293,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "as",\r\n            "id": 13,\r\n            "x": 743,\r\n            "y": 352,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "as"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-03 03:24:23', ''),
(1263, '', 'teacher', '2015-07-07 02:04:43', ''),
(1264, '{\r\n    "nodes": [\r\n        {\r\n            "name": "andand",\r\n            "id": 10,\r\n            "x": 224,\r\n            "y": 90,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "jsjdnads"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "ajad"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "adahda",\r\n            "id": 11,\r\n            "x": 518,\r\n            "y": 228,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "hsaas"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-09 05:39:09', ''),
(1265, '{\r\n    "nodes": [\r\n        {\r\n            "name": "xnajxa",\r\n            "id": 10,\r\n            "x": 99,\r\n            "y": 131,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "jaxnax"\r\n                },\r\n                {\r\n                    "name": "xnaxax"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "xjnaxnjax"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "jaxax",\r\n            "id": 11,\r\n            "x": 601,\r\n            "y": 218,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "ajsxa"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-09 05:40:25', ''),
(1266, '{\r\n    "nodes": [\r\n        {\r\n            "name": "adnan",\r\n            "id": 10,\r\n            "x": 49,\r\n            "y": 223,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "a"\r\n                },\r\n                {\r\n                    "name": "b"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "how",\r\n            "id": 11,\r\n            "x": 601,\r\n            "y": 164,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "where",\r\n            "id": 12,\r\n            "x": 602,\r\n            "y": 279,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-14 19:21:49', ''),
(1267, '{\r\n    "nodes": [\r\n        {\r\n            "name": "adnan",\r\n            "id": 10,\r\n            "x": 49,\r\n            "y": 223,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "a"\r\n                },\r\n                {\r\n                    "name": "b"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "how",\r\n            "id": 11,\r\n            "x": 601,\r\n            "y": 164,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "where",\r\n            "id": 12,\r\n            "x": 602,\r\n            "y": 279,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "New connector"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', '', '2015-07-14 19:25:33', ''),
(1268, '{\r\n    "nodes": [\r\n        {\r\n            "name": "njscnsc",\r\n            "id": 10,\r\n            "x": 0,\r\n            "y": 0,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": []\r\n}', 'teacher', '2015-07-14 19:30:16', ''),
(1269, '{\r\n    "nodes": [\r\n        {\r\n            "name": "Matrix",\r\n            "id": 10,\r\n            "x": 21,\r\n            "y": 191,\r\n            "inputConnectors": [],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                },\r\n                {\r\n                    "name": "2"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Introduction To Matrix",\r\n            "id": 12,\r\n            "x": 393,\r\n            "y": 250,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Order Of Matrix",\r\n            "id": 11,\r\n            "x": 395,\r\n            "y": 67,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                },\r\n                {\r\n                    "name": "2"\r\n                },\r\n                {\r\n                    "name": "3"\r\n                }\r\n            ],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Multiplication Of Matrix",\r\n            "id": 13,\r\n            "x": 695,\r\n            "y": 83,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Add/Sub of Matrix",\r\n            "id": 15,\r\n            "x": 703,\r\n            "y": 235,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        },\r\n        {\r\n            "name": "Equal Of matrix",\r\n            "id": 16,\r\n            "x": 712,\r\n            "y": 372,\r\n            "inputConnectors": [\r\n                {\r\n                    "name": "1"\r\n                }\r\n            ],\r\n            "outputConnectors": [],\r\n            "width": 200\r\n        }\r\n    ],\r\n    "connections": [\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 10,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 12,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 0\r\n            },\r\n            "dest": {\r\n                "nodeID": 13,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 1\r\n            },\r\n            "dest": {\r\n                "nodeID": 15,\r\n                "connectorIndex": 0\r\n            }\r\n        },\r\n        {\r\n            "source": {\r\n                "nodeID": 11,\r\n                "connectorIndex": 2\r\n            },\r\n            "dest": {\r\n                "nodeID": 16,\r\n                "connectorIndex": 0\r\n            }\r\n        }\r\n    ]\r\n}', 'teacher', '2015-07-15 03:01:22', '');

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
(12, 0, 1261),
(12, 0, 1262),
(13, 0, 1262),
(11, 0, 1264),
(11, 0, 1265),
(11, 0, 1266),
(12, 0, 1266),
(11, 0, 1267),
(12, 0, 1267),
(11, 0, 1269),
(12, 0, 1269),
(13, 0, 1269),
(15, 0, 1269),
(16, 0, 1269);

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
(34, 0, '1'),
(36, 0, 'New connector'),
(37, 0, 'as'),
(38, 0, 'jsjdnads'),
(39, 0, 'hsaas'),
(40, 0, 'jaxnax'),
(40, 1, 'xnaxax'),
(41, 0, 'ajsxa'),
(43, 0, 'New connector'),
(44, 0, 'New connector'),
(46, 0, 'New connector'),
(47, 0, 'New connector'),
(50, 0, '1'),
(51, 0, '1'),
(52, 0, '1'),
(53, 0, '1'),
(54, 0, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`map_id`, `node_id`, `nodeID`, `nodeName`, `node_content`) VALUES
(1257, 19, 10, 'home', 0x3c703e3c696672616d65207372633d222f2f7777772e6461696c796d6f74696f6e2e636f6d2f656d6265642f766964656f2f78316d67713034222077696474683d2234383022206865696768743d2232373022206672616d65626f726465723d22302220616c6c6f7766756c6c73637265656e3d22616c6c6f7766756c6c73637265656e223e3c2f696672616d653e3c6272202f3e3c6120687265663d22687474703a2f2f7777772e6461696c796d6f74696f6e2e636f6d2f766964656f2f78316d677130345f696e74726f64756374696f6e2d746f2d6d61747269785f66756e22207461726765743d225f626c616e6b223e496e74726f64756374696f6e20746f204d61747269783c2f613e203c656d3e7061796c6126233335313b616e3a203c6120687265663d22687474703a2f2f7777772e6461696c796d6f74696f6e2e636f6d2f7361626171706b22207461726765743d225f626c616e6b223e7361626171706b3c2f613e3c2f656d3e3c2f703e),
(1257, 20, 11, 'school', 0x3c68313e57656c636f6d6520746f207468652054696e794d434520656469746f722064656d6f213c2f68313e0d0a3c703e4665656c206672656520746f20747279206f75742074686520646966666572656e742066656174757265732074686174206172652070726f76696465642c20706c65617365206e6f7465207468617420746865204d43496d6167654d616e6167657220616e64204d4346696c654d616e616765722073706563696669632066756e6374696f6e616c6974792069732070617274206f66206f757220636f6d6d65726369616c206f66666572696e672e205468652064656d6f20697320746f2073686f772074686520696e746567726174696f6e2e3c2f703e0d0a3c703e5765207265616c6c79207265636f6d6d656e64203c6120687265663d22687474703a2f2f7777772e67657466697265666f782e636f6d22207461726765743d225f626c616e6b223e46697265666f783c2f613e20617320746865207072696d6172792062726f7773657220666f722074686520626573742065646974696e6720657870657269656e63652c20627574206f6620636f757273652c2054696e794d4345206973203c6120687265663d222e2e2f2e2e2f77696b692e7068702f42726f777365725f636f6d70617469626c69747922207461726765743d225f626c616e6b223e636f6d70617469626c653c2f613e207769746820616c6c206d616a6f722062726f77736572732e3c2f703e0d0a3c68323e476f74207175657374696f6e73206f72206e6565642068656c703f3c2f68323e0d0a3c703e496620796f752068617665207175657374696f6e73206f72206e6565642068656c702c206665656c206672656520746f207669736974206f7572203c6120687265663d222e2e2f2e2e2f666f72756d2f696e6465782e706870223e636f6d6d756e69747920666f72756d3c2f613e2120576520616c736f206f6666657220456e7465727072697365203c6120687265663d222e2e2f2e2e2f656e74657270726973652f737570706f72742e706870223e737570706f72743c2f613e20736f6c7574696f6e732e20416c736f20646f206e6f74206d697373206f7574206f6e20746865203c6120687265663d222e2e2f2e2e2f77696b692e706870223e646f63756d656e746174696f6e3c2f613e2c206974732061206772656174207265736f757263652077696b6920666f7220756e6465727374616e64696e6720686f772054696e794d434520776f726b7320616e6420696e74656772617465732e3c2f703e0d0a3c68323e466f756e642061206275673f3c2f68323e0d0a3c703e496620796f75207468696e6b20796f75206861766520666f756e642061206275672c20796f752063616e2075736520746865203c6120687265663d222e2e2f2e2e2f646576656c6f702f627567747261636b65722e706870223e547261636b65723c2f613e20746f207265706f7274206275677320746f2074686520646576656c6f706572732e3c2f703e0d0a3c703e416e64206865726520697320612073696d706c65207461626c6520666f7220796f7520746f20706c617920776974682e3c2f703e0d0a3c7461626c6520636c6173733d226d63654974656d5461626c652220626f726465723d2230223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e3c7374726f6e673e50726f647563743c2f7374726f6e673e3c2f74643e0d0a3c74643e3c7374726f6e673e436f73743c2f7374726f6e673e3c2f74643e0d0a3c74643e3c7374726f6e673e5265616c6c793f3c2f7374726f6e673e3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e54696e794d43453c2f74643e0d0a3c74643e467265653c2f74643e0d0a3c74643e594553213c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e506c75706c6f61643c2f74643e0d0a3c74643e467265653c2f74643e0d0a3c74643e594553213c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703e456e6a6f79206f757220736f66747761726520616e642063726561746520677265617420636f6e74656e74213c2f703e0d0a3c703e4f682c20616e6420627920746865207761792c20646f6e277420666f7267657420746f20636865636b206f7574206f7572206f746865722070726f647563742063616c6c6564203c6120687265663d22687474703a2f2f7777772e706c75706c6f61642e636f6d22207461726765743d225f626c616e6b223e506c75706c6f61643c2f613e2c20796f757220756c74696d6174652075706c6f616420736f6c7574696f6e20776974682048544d4c352075706c6f616420737570706f7274213c2f703e),
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
(1261, 34, 13, 'A', ''),
(1262, 35, 11, 'asd', ''),
(1262, 36, 12, 'as', ''),
(1262, 37, 13, 'as', ''),
(1264, 38, 10, 'andand', ''),
(1264, 39, 11, 'adahda', ''),
(1265, 40, 10, 'xnajxa', ''),
(1265, 41, 11, 'jaxax', ''),
(1266, 42, 10, 'adnan', ''),
(1266, 43, 11, 'how', ''),
(1266, 44, 12, 'where', ''),
(1267, 45, 10, 'adnan', ''),
(1267, 46, 11, 'how', ''),
(1267, 47, 12, 'where', ''),
(1268, 48, 10, 'njscnsc', ''),
(1269, 49, 10, 'Matrix', ''),
(1269, 50, 12, 'Introduction To Matrix', ''),
(1269, 51, 11, 'Order Of Matrix', ''),
(1269, 52, 13, 'Multiplication Of Matrix', ''),
(1269, 53, 15, 'Add/Sub of Matrix', ''),
(1269, 54, 16, 'Equal Of matrix', '');

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
(32, 1, '2'),
(35, 0, 'New connector'),
(36, 0, 'New connector'),
(38, 0, 'ajad'),
(40, 0, 'xjnaxnjax'),
(42, 0, 'a'),
(42, 1, 'b'),
(45, 0, 'a'),
(45, 1, 'b'),
(49, 0, '1'),
(49, 1, '2'),
(51, 0, '1'),
(51, 1, '2'),
(51, 2, '3');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE IF NOT EXISTS `quiz_attempts` (
  `quiz_id` int(4) NOT NULL,
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `marks_obt` int(4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `answers` varchar(64) DEFAULT NULL,
  `record_flag` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='CREATE TABLE `conceptmap_builder`.`quiz_attempts` ( `quiz_id` INT(4) NOT NULL AU';

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`quiz_id`, `map_id`, `node_id`, `user_name`, `marks_obt`, `status`, `answers`, `record_flag`) VALUES
(9, 1259, 12, 'student', 30, 1, ',a,a,a,a,a,a', NULL),
(10, 1259, 12, 'student', 30, 1, ',a,a,a,a,a,a', NULL),
(11, 1259, 13, 'student', 25, 1, ',a,a,a,a,a', NULL),
(12, 1269, 15, 'Arooj', 20, 1, ',b,c,d,a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_nodes`
--

CREATE TABLE IF NOT EXISTS `quiz_nodes` (
  `question_id` int(4) NOT NULL,
  `map_id` int(4) NOT NULL,
  `node_id` int(4) NOT NULL,
  `question` longblob NOT NULL,
  `optn_A` longblob NOT NULL,
  `optn_B` longblob NOT NULL,
  `optn_C` longblob NOT NULL,
  `optn_D` longblob NOT NULL,
  `answer` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_nodes`
--

INSERT INTO `quiz_nodes` (`question_id`, `map_id`, `node_id`, `question`, `optn_A`, `optn_B`, `optn_C`, `optn_D`, `answer`) VALUES
(1, 1259, 12, 0x3c703e68636273686362736864626368623c2f703e, 0x3c703e6220736a636e3c2f703e, 0x3c703e78633c2f703e, 0x3c703e266e6273703b6868643c2f703e, 0x3c703e266e6273703b78687878783c2f703e, 'a'),
(2, 1259, 12, 0x3c703e68636273686362736864626368623c2f703e, 0x3c703e6220736a636e3c2f703e, 0x3c703e78633c2f703e, 0x3c703e266e6273703b6868643c2f703e, 0x3c703e266e6273703b78687878783c2f703e, 'a'),
(3, 1259, 12, 0x3c703e266e6273703b7868686878683c2f703e, 0x3c703e266e6273703b7878786e78786e3c2f703e, 0x3c703e266e6273703b786868687868783c2f703e, 0x3c703e266e6273703b78786e786e786e783c2f703e, 0x3c703e266e6273703b786e786e786e783c2f703e, 'a'),
(4, 1259, 12, 0x3c703e7878786e786e786e78266e6273703b3c2f703e, 0x3c703e7878786e6e266e6273703b3c2f703e, 0x3c703e78786e6e78266e6273703b3c2f703e, 0x3c703e266e6273703b6e78786e786e3c2f703e, 0x3c703e266e6273703b6e78786e6e786e783c2f703e, 'a'),
(5, 1259, 12, 0x3c703e266e6273703b786e786e786e786e3c2f703e, 0x3c703e266e6273703b786e786e786e3c2f703e, 0x3c703e266e6273703b6e786e786e786e3c2f703e, 0x3c703e266e6273703b6e78786e786e786e786e3c2f703e, 0x3c703e266e6273703b627878626278627862783c2f703e, 'a'),
(6, 1259, 12, 0x3c703e266e6273703b7862627862783c2f703e, 0x3c703e266e6273703b786278627862783c2f703e, 0x3c703e266e6273703b786278627862783c2f703e, 0x3c703e266e6273703b627862627862783c2f703e, 0x3c703e266e6273703b786262627862783c2f703e, 'a'),
(7, 1259, 13, 0x3c703e6a6e63736a636e736a63713c2f703e, 0x3c703e3c7374726f6e673e6a6e7373736e736a736e6a6e3c2f7374726f6e673e3c2f703e, 0x3c703e736a6e736a6e736a736a6e20736a6e6a206e733c2f703e, 0x3c703e266e6273703b7320732073207320733c2f703e, 0x3c703e7320732073266e6273703b3c2f703e, 'a'),
(8, 1259, 13, 0x3c703e73207373266e6273703b3c2f703e, 0x3c703e732073207320733c2f703e, 0x3c703e73207320732073266e6273703b3c2f703e, 0x3c703e732073732073266e6273703b3c2f703e, 0x3c703e737320732073266e6273703b3c2f703e, 'a'),
(9, 1259, 13, 0x3c703e7373732073266e6273703b3c2f703e, 0x3c703e7373207373266e6273703b3c2f703e, 0x3c703e73207320737320733c2f703e, 0x3c703e737320732073266e6273703b3c2f703e, 0x3c703e73732073266e6273703b3c2f703e, 'a'),
(10, 1259, 13, 0x3c703e7320737320733c2f703e, 0x3c703e7320732073207320733c2f703e, 0x3c703e73207320732073266e6273703b3c2f703e, 0x3c703e7320732073207373207320733c2f703e, 0x3c703e7320737320736565766576657665763c2f703e, 'a'),
(11, 1259, 13, 0x3c703e7665766576653c2f703e, 0x3c703e65766565657665766576763c2f703e, 0x3c703e736364736373637363733c2f703e, 0x3c703e736373637363736373633c2f703e, 0x3c703e6373637363736373633c2f703e, 'a'),
(12, 1259, 11, 0x3c703e686f6d6520616c6f6e653c2f703e, 0x3c703e6920616d3c2f703e, 0x3c703e776520613c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20233030666630303b223e72653c2f7370616e3e3c2f703e, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20233030303066663b223e61736461686173646261643c2f7370616e3e3c2f703e, 0x3c6f6c207374796c653d226c6973742d7374796c652d747970653a206c6f7765722d726f6d616e3b223e0d0a3c6c693e3c7374726f6e673e6161686278616878616862783c2f7374726f6e673e3c2f6c693e0d0a3c2f6f6c3e, 'a'),
(13, 1259, 11, 0x3c703e6273636273686362687363623c2f703e, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20236363393966663b223e3c7374726f6e673e73636273636273686273633c2f7374726f6e673e3c2f7370616e3e3c2f703e, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20233939333330303b223e6a736e736a61786e616a786e6178783c2f7370616e3e3c2f703e, 0x3c703e3c7370616e207374796c653d22636f6c6f723a20233030666630303b223e78616878626168627868617862616862783c2f7370616e3e3c2f703e, 0x3c703e3c7374726f6e673e61786178617861686278616862786168783c2f7374726f6e673e3c2f703e, 'a'),
(14, 1259, 11, 0x3c703e3c656d3e3c7374726f6e673e61627861786162786162782061623c2f7374726f6e673e3c2f656d3e3c2f703e, 0x3c703e3c7374726f6e673e783c2f7374726f6e673e3c2f703e, 0x3c70207374796c653d22746578742d616c69676e3a206c6566743b223e3c656d3e786873786861627861686278683c2f656d3e3c2f703e, 0x3c703e78616e78617820616e78616e782061783c2f703e, 0x3c703e3c7374726f6e673e266e6273703b627861627861686278616878623c2f7374726f6e673e3c2f703e, 'a'),
(15, 1259, 11, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20236666363630303b223e266e6273703b6178617861783c2f7370616e3e3c2f703e, 0x3c703e266e6273703b616178617861786162786120627873266e6273703b3c2f703e, 0x3c703e266e6273703b61737861687862616862783c2f703e, 0x3c703e266e6273703b6e736178617862616878613c2f703e, 0x3c703e266e6273703b6a78616278616278613c2f703e, 'a'),
(16, 1259, 11, 0x3c703e266e6273703b786162786861627868616278613c2f703e, 0x3c703e266e6273703b78617868626178626168786261783c2f703e, 0x3c703e266e6273703b6861786261686278616878626168783c2f703e, 0x3c703e266e6273703b68627861686278616862783c2f703e, 0x3c703e266e6273703b7868616862786861786261783c2f703e, 'd'),
(17, 1259, 11, 0x3c703e686f6d6520616c6f6e653c2f703e, 0x3c703e6920616d3c2f703e, 0x3c703e776520613c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20233030666630303b223e72653c2f7370616e3e3c2f703e, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20233030303066663b223e61736461686173646261643c2f7370616e3e3c2f703e, 0x3c6f6c207374796c653d226c6973742d7374796c652d747970653a206c6f7765722d726f6d616e3b223e0d0a3c6c693e3c7374726f6e673e6161686278616878616862783c2f7374726f6e673e3c2f6c693e0d0a3c2f6f6c3e, 'a'),
(18, 1259, 11, 0x3c703e6273636273686362687363623c2f703e, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20236363393966663b223e3c7374726f6e673e73636273636273686273633c2f7374726f6e673e3c2f7370616e3e3c2f703e, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20233939333330303b223e6a736e736a61786e616a786e6178783c2f7370616e3e3c2f703e, 0x3c703e3c7370616e207374796c653d22636f6c6f723a20233030666630303b223e78616878626168627868617862616862783c2f7370616e3e3c2f703e, 0x3c703e3c7374726f6e673e61786178617861686278616862786168783c2f7374726f6e673e3c2f703e, 'a'),
(19, 1259, 11, 0x3c703e3c656d3e3c7374726f6e673e61627861786162786162782061623c2f7374726f6e673e3c2f656d3e3c2f703e, 0x3c703e3c7374726f6e673e783c2f7374726f6e673e3c2f703e, 0x3c70207374796c653d22746578742d616c69676e3a206c6566743b223e3c656d3e786873786861627861686278683c2f656d3e3c2f703e, 0x3c703e78616e78617820616e78616e782061783c2f703e, 0x3c703e3c7374726f6e673e266e6273703b627861627861686278616878623c2f7374726f6e673e3c2f703e, 'a'),
(20, 1259, 11, 0x3c703e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a20236666363630303b223e266e6273703b6178617861783c2f7370616e3e3c2f703e, 0x3c703e266e6273703b616178617861786162786120627873266e6273703b3c2f703e, 0x3c703e266e6273703b61737861687862616862783c2f703e, 0x3c703e266e6273703b6e736178617862616878613c2f703e, 0x3c703e266e6273703b6a78616278616278613c2f703e, 'a'),
(21, 1259, 11, 0x3c703e266e6273703b786162786861627868616278613c2f703e, 0x3c703e266e6273703b78617868626178626168786261783c2f703e, 0x3c703e266e6273703b6861786261686278616878626168783c2f703e, 0x3c703e266e6273703b68627861686278616862783c2f703e, 0x3c703e266e6273703b7868616862786861786261783c2f703e, 'd'),
(22, 1269, 15, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d617472697825374425323031253230253236322532302535432535433325323025323634253230253543656e64253742626d617472697825374426616d703b706c75733b253543626567696e253742626d617472697825374425323035253230253236362532302535432535433725323025323638253230253543656e64253742626d61747269782537442533442533462220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532303925323025323636253230253543253543313025323025323632253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d6174726978253744253230362532302532363825323025354325354331302532302532363132253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d617472697825374425323032253230253236352532302535432535433925323025323637253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d617472697825374425323038253230253236322532302535432535433325323025323635253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 'b'),
(23, 1269, 15, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532303125323636253230253236342532302535432535432d3325323025323638253230253236392532302535432535432d322532302532363725323025323631253230253543656e64253742626d617472697825374426616d703b706c75733b253543626567696e253742626d61747269782537442532302d32253230253236342532302532362d31253230253543253543342532302532362d31372532302532362d35253230253543253543362532302532363125323025323638253230253543656e64253742626d61747269782537442533442533462220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f6469763e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d6174726978253744253230352532302532363725323025323632253230253543253543342532302532363925323025323638253230253543253543312532302532363025323025323634253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d6174726978253744253230302532302532363025323025323630253230253543253543312532302532363025323025323633253230253543253543312532302532363025323025323634253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532302d31253230253236313025323025323633253230253543253543312532302532362d3925323025323634253230253543253543342532302532363825323025323637253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 'c'),
(24, 1269, 15, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532302d37253230253236352532302535432535433425323025323633253230253543656e64253742626d61747269782537442d253543626567696e253742626d61747269782537442532302d3134253230253236332532302535432535432d3325323025323631253230253543656e64253742626d61747269782537442533442533462220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532303130253230253236302532302535432535433225323025323633253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d617472697825374425323035253230253236332532302535432535433125323025323638253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d617472697825374425323033253230253236342532302535432535433825323025323637253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d617472697825374425323037253230253236322532302535432535433725323025323632253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 'd'),
(25, 1269, 15, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d6174726978253744253230312532302532362d35253230253236362532302535432535433825323025323631312532302532362d3232253230253543253543332532302532363825323025323639253230253543656e64253742626d61747269782537442d253543626567696e253742626d617472697825374425323031322532302532362d372532302532363425323025354325354333253230253236322532302532362d312532302535432535433525323025323631362532302532363131253230253543656e64253742626d61747269782537442533442533462220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532302d3131253230253236322532302532363225323025354325354335253230253236392532302532362d32312532302535432535432d322532302532362d382532302532362d32253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d61747269782537442532302d332532302532362d33253230253236322532302535432535433125323025323632253230253236312532302535432535432d372532302532362d3925323025323631253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e3c696d672069643d226571756174696f6e7669657722207374796c653d226d617267696e3a20313070783b20636f6c6f723a20233030303030303b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20666f6e742d73697a653a20313270783b20666f6e742d7374796c653a206e6f726d616c3b20666f6e742d76617269616e743a206e6f726d616c3b20666f6e742d7765696768743a206e6f726d616c3b206c65747465722d73706163696e673a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b206f727068616e733a206175746f3b20746578742d616c69676e3a2063656e7465723b20746578742d696e64656e743a203070783b20746578742d7472616e73666f726d3a206e6f6e653b2077686974652d73706163653a206e6f726d616c3b207769646f77733a206175746f3b20776f72642d73706163696e673a203070783b202d7765626b69742d746578742d7374726f6b652d77696474683a203070783b22207469746c653d2254686973206973207468652072656e646572656420666f726d206f6620746865206571756174696f6e2e20596f752063616e206e6f7420656469742074686973206469726563746c792e20526967687420636c69636b2077696c6c206769766520796f7520746865206f7074696f6e20746f20736176652074686520696d6167652c20616e6420696e206d6f73742062726f777365727320796f752063616e20647261672074686520696d616765206f6e746f20796f7572206465736b746f70206f7220616e6f746865722070726f6772616d2e22207372633d2268747470733a2f2f6c617465782e636f6465636f67732e636f6d2f706e672e6c617465783f253543626567696e253742626d6174726978253744253230312532302532363025323025323630253230253543253543302532302532363125323025323630253230253543253543302532302532363025323025323631253230253543656e64253742626d61747269782537442220616c743d2222206e616d653d226571756174696f6e7669657722202f3e3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 'a'),
(26, 1269, 15, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 0x3c703e266e6273703b3c2f703e0d0a3c6469762069643d225f5f696637327275347364667364667275683766657775695f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f7a73635f6f6e6365223e266e6273703b3c2f6469763e0d0a3c6469762069643d225f5f686767617364676a68736167645f6f6e636522207374796c653d22646973706c61793a206e6f6e653b223e266e6273703b3c2f6469763e, 'a');

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
(10, 1, 12, 0, 1261),
(11, 0, 12, 0, 1262),
(12, 0, 13, 0, 1262),
(10, 0, 11, 0, 1264),
(10, 0, 11, 0, 1265),
(10, 0, 11, 0, 1266),
(10, 1, 12, 0, 1266),
(10, 0, 11, 0, 1267),
(10, 1, 12, 0, 1267),
(10, 0, 11, 0, 1269),
(10, 1, 12, 0, 1269),
(11, 0, 13, 0, 1269),
(11, 1, 15, 0, 1269),
(11, 2, 16, 0, 1269);

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
(10, 1, 1261),
(11, 0, 1262),
(12, 0, 1262),
(10, 0, 1264),
(10, 0, 1265),
(10, 0, 1266),
(10, 1, 1266),
(10, 0, 1267),
(10, 1, 1267),
(10, 0, 1269),
(10, 1, 1269),
(11, 0, 1269),
(11, 1, 1269),
(11, 2, 1269);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_type`) VALUES
(6, 'student', '$2y$10$nbMcwiifCa3GaBt8lxMIW.EvUQ0C6yGChOnTyT0JSMF5PIDdEfmZe', 'student@student.com', 'student'),
(7, 'teacher', '$2y$10$nbMcwiifCa3GaBt8lxMIW.EvUQ0C6yGChOnTyT0JSMF5PIDdEfmZe', 'teacher@teacher.com', 'teacher'),
(8, 'admin', '$2y$10$jxClIgxKo8R9K3RruCjm5ugqfIHhKwMfXgK40S5TAlTt4bQo8ecXC', 'admin@admin.com', 'admin'),
(9, 'Madiha', '$2y$10$sahf3bACuAcq95YZ.7MepuAG3zhXA5DzGHirslpiXD4p4jT0gDcy6', '11105066@gift.edu.pk', 'student'),
(10, 'Arooj', '$2y$10$zCXfWOs4e5MwckuD4jbxyurSKQkGTIkmEQQ3LbNsGXjh/uWMxgvjS', 'madihaazam48@gmil.com', 'student'),
(11, 'Esha', '$2y$10$S6pMxTJvwweh9l1y7f5.v.gkEu/KwI1DK8On7BKt5NceLImZ92zBe', 'asha@gmail.com', 'student'),
(12, 'Ali', '$2y$10$aS17lQws6nsFnSw53yWJYOzew1aeSTQSEECMW0W1hfdCAjOhyIw.K', 'ali@gmail.com', 'student'),
(13, 'Ameena', '$2y$10$Ou4AyBc59LQlyV6eJmaZZeQ9.TNr90HtdJ9BsQm8zjQV2aB12pBSC', 'ameena@gmail.com', 'student'),
(14, 'Ammara', '$2y$10$GNyf3/n/rJz8HzQXPCQwgO8EITnqprBqcHneBUZAcL7lDf3s.hwq.', 'ammara@gmail.com', 'student'),
(15, 'Shehzaib', '$2y$10$Bj.UtUZOduT6q3oSARG0gewdEDP5cvd4TRllaAf/2xUeMt3BtFjdC', 'shehzaib@gmail.com', 'student'),
(16, 'Rida', '$2y$10$K1kcHGE8R6QREFDGDQYNF.iUaBoUQaXdrWe.fVbbkryKJlfWwwjA6', 'rida@gmail.com', 'student'),
(17, 'Faiza', '$2y$10$QSEemzSH3QV3HwsfIqj0NunLjbdZ3WjkJeo39qaKbW17NvLhxG6Ei', 'faiza@gmail.com', 'student'),
(18, 'Uzair', '$2y$10$ZzRUeeWxy6abft1kjmxIIekCl2iSxLPkE90WF5NByUEgbmUfWjusa', 'uzair@gmail.com', 'student');

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
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_nodes`
--
ALTER TABLE `quiz_nodes`
  ADD PRIMARY KEY (`question_id`);

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
  MODIFY `map_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1270;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `node_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `quiz_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `quiz_nodes`
--
ALTER TABLE `quiz_nodes`
  MODIFY `question_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
