CREATE DATABASE `bottleneck_optics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE DATABASE `bottleneck_optics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `referred_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referred_by` (`referred_by`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`referred_by`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `glasses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `left_lens_graduation` float DEFAULT NULL,
  `right_lens_graduation` float DEFAULT NULL,
  `frame_type` enum('floating','plastic','metal') DEFAULT NULL,
  `frame_color` varchar(30) DEFAULT NULL,
  `left_lens_color` varchar(30) DEFAULT NULL,
  `right_lens_color` varchar(30) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `glasses_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `glasses_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `glasses_id` (`glasses_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`glasses_id`) REFERENCES `glasses` (`id`),
  CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `door` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `nif` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;