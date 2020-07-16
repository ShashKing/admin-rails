-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: happy_printing_development
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (1,'logo','StoreSetting',1,17,'2020-06-29 07:46:38'),(6,'avatar','Template',10,22,'2020-06-30 04:49:53'),(7,'avatar','Template',11,23,'2020-06-30 04:50:01'),(8,'avatar','Template',12,24,'2020-06-30 04:50:08'),(9,'avatar','Template',9,25,'2020-07-01 13:33:36'),(11,'avatar','Template',17,27,'2020-07-01 13:38:15');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (1,'6z7qekiQryJReJSjF3HAWUez','FV-icon.png','image/png','{\"identified\":true}',3576,'lOaJhF9zdCBJpTx/z/S29g==','2020-06-25 13:24:54'),(13,'y3NTBF8Hb9PWxkfpbsFMPZmt','rajat.tar.gz','application/gzip','{\"identified\":true}',2447,'OsaVjUCqqftKA6sfU2mSTw==','2020-06-26 13:28:57'),(14,'QFE5zPduLkzRdkA3yHVWcN3b','rajat.tar.gz','application/gzip','{\"identified\":true}',2447,'OsaVjUCqqftKA6sfU2mSTw==','2020-06-26 13:36:46'),(15,'gqpSRnRJ8k9FWSmNzoN793Nj','rajat.tar.gz','application/gzip','{\"identified\":true}',2447,'OsaVjUCqqftKA6sfU2mSTw==','2020-06-26 13:44:25'),(16,'7pDhPpXaEt7paK6tW9nnxTZC','image5.jpg','image/jpeg','{\"identified\":true}',49985,'Ew8xGsegn+3vJeVBLUujfg==','2020-06-26 13:47:19'),(17,'CNqkzaUdhWF8avCy1dJ2gbpj','image1.jpg','image/jpeg','{\"identified\":true,\"width\":640,\"height\":600,\"analyzed\":true}',92318,'ln/Z0MIcC9Bd5XDtpsUvfA==','2020-06-29 07:46:38'),(21,'jcd3dkKCdreZr2QutMRR7pdS','image1.jpg','image/jpeg','{\"identified\":true,\"width\":640,\"height\":600,\"analyzed\":true}',92318,'ln/Z0MIcC9Bd5XDtpsUvfA==','2020-06-30 04:49:30'),(22,'AUZSbRmskYn9ytJff5zGjKkJ','image1.jpg','image/jpeg','{\"identified\":true,\"width\":640,\"height\":600,\"analyzed\":true}',92318,'ln/Z0MIcC9Bd5XDtpsUvfA==','2020-06-30 04:49:53'),(23,'LnoHYrcLogARpxh9GizxHoZo','image1.jpg','image/jpeg','{\"identified\":true,\"width\":640,\"height\":600,\"analyzed\":true}',92318,'ln/Z0MIcC9Bd5XDtpsUvfA==','2020-06-30 04:50:00'),(24,'f6TS6VkwB8yZSCE6oWdKTwYv','image1.jpg','image/jpeg','{\"identified\":true,\"width\":640,\"height\":600,\"analyzed\":true}',92318,'ln/Z0MIcC9Bd5XDtpsUvfA==','2020-06-30 04:50:07'),(25,'6PHFSLj4PPwP6eioECcZGzPJ','tophome_b689514e-a539-413b-a67c-475f7e04d78e_1600x.jpg','image/jpeg','{\"identified\":true,\"width\":1600,\"height\":860,\"analyzed\":true}',162557,'/FZcrwRdnwpsTc0vB/kTWA==','2020-07-01 13:33:36'),(26,'iEAXngjnoFFj1iaXsVwifLTe','komodologo_410x.png','image/png','{\"identified\":true,\"width\":410,\"height\":74,\"analyzed\":true}',15863,'a3zz1UpwWyDb4bneUSmVYA==','2020-07-01 13:35:25'),(27,'s4ciCgQbMn69eAd519eR218L','image4.jpg','image/jpeg','{\"identified\":true,\"width\":523,\"height\":600,\"analyzed\":true}',55325,'yBLFgkldy61PWiOcPR2yQQ==','2020-07-01 13:38:15');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-06-22 14:09:22','2020-06-22 14:09:22');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_settings`
--

DROP TABLE IF EXISTS `rate_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) DEFAULT NULL,
  `enable_delivery` tinyint(1) DEFAULT '0',
  `carrier_service` tinyint(1) DEFAULT '0',
  `carrier_service_shopify_id` bigint(20) DEFAULT NULL,
  `weight_format` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rate_settings_on_shop_id` (`shop_id`),
  CONSTRAINT `fk_rails_798c118bb2` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_settings`
--

LOCK TABLES `rate_settings` WRITE;
/*!40000 ALTER TABLE `rate_settings` DISABLE KEYS */;
INSERT INTO `rate_settings` VALUES (1,1,1,0,NULL,'Kilogram','INR','Rs','2020-06-29 05:57:00','2020-06-29 05:57:00'),(2,2,0,1,32977420397,'Kilogram','INR','Rs','2020-06-29 05:59:16','2020-06-29 05:59:16');
/*!40000 ALTER TABLE `rate_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) DEFAULT NULL,
  `rate_name` varchar(255) DEFAULT NULL,
  `rate` decimal(10,0) DEFAULT NULL,
  `description` text,
  `value_m` int(11) DEFAULT NULL,
  `minimum_weight_value` decimal(10,0) DEFAULT NULL,
  `maximum_weight_value` decimal(10,0) DEFAULT NULL,
  `minimum_order_value` decimal(10,0) DEFAULT NULL,
  `maximum_order_value` decimal(10,0) DEFAULT NULL,
  `zone_ids` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_rates_on_shop_id_and_rate_name` (`shop_id`,`rate_name`),
  KEY `index_rates_on_shop_id` (`shop_id`),
  CONSTRAINT `fk_rails_182e5012fe` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,2,'rate1',2,'sdsdsd',0,NULL,NULL,12,14,' 1','2020-06-29 05:59:55','2020-06-29 05:59:55'),(2,1,'rate1',3,'srs',0,NULL,NULL,2,4,' 2','2020-06-29 06:02:51','2020-06-29 06:02:51');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200406131902'),('20200407070345'),('20200407080619'),('20200407120312'),('20200618070614'),('20200619104108'),('20200619105246'),('20200625110704');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shopify_domain` varchar(255) NOT NULL,
  `shopify_token` varchar(255) NOT NULL,
  `charge_id` bigint(20) DEFAULT NULL,
  `charge_cancelled` tinyint(1) DEFAULT '0',
  `trial_ends_on` timestamp NULL DEFAULT NULL,
  `billing_on` timestamp NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_shops_on_shopify_domain` (`shopify_domain`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'jewels-app.myshopify.com','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',12548145207,0,'2020-04-21 13:00:00','2020-05-21 18:30:00','2020-04-06 13:44:31','2020-06-26 11:43:03'),(2,'bellala-app.myshopify.com','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',13288636525,0,'2020-06-26 13:00:00','2020-07-26 18:30:00','2020-04-28 10:15:52','2020-06-26 06:34:40'),(3,'new-ak-collection.myshopify.com','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',15874261127,0,'2020-07-14 13:00:00','2020-08-13 18:30:00','2020-06-30 07:43:09','2020-06-30 07:43:28');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_settings`
--

DROP TABLE IF EXISTS `store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) DEFAULT NULL,
  `logo_height` int(11) DEFAULT NULL,
  `logo_width` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `vat_number` bigint(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `registered_number` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_store_settings_on_shop_id` (`shop_id`),
  CONSTRAINT `fk_rails_db5578ddda` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_settings`
--

LOCK TABLES `store_settings` WRITE;
/*!40000 ALTER TABLE `store_settings` DISABLE KEYS */;
INSERT INTO `store_settings` VALUES (1,1,10,12,'112-b kotla village pocket 2 mayur vihar phase 1',232323445,8826933696,'admin@example.com',23345666,'2020-06-29 07:46:38','2020-06-29 07:48:16');
/*!40000 ALTER TABLE `store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_categories`
--

DROP TABLE IF EXISTS `template_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_categories`
--

LOCK TABLES `template_categories` WRITE;
/*!40000 ALTER TABLE `template_categories` DISABLE KEYS */;
INSERT INTO `template_categories` VALUES (3,'Invoices','2020-05-25 12:18:04','2020-05-25 12:18:04'),(4,'Picking List','2020-05-25 12:18:46','2020-05-25 12:18:46'),(5,'Packing Slips','2020-05-25 12:19:14','2020-05-25 12:19:14'),(6,'Labels','2020-05-25 12:19:35','2020-06-22 06:20:20');
/*!40000 ALTER TABLE `template_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `body` text,
  `default_template` tinyint(1) DEFAULT '0',
  `edited` tinyint(1) DEFAULT '0',
  `shop_id` bigint(20) DEFAULT NULL,
  `template_category_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_templates_on_shop_id` (`shop_id`),
  KEY `index_templates_on_template_category_id` (`template_category_id`),
  CONSTRAINT `fk_rails_70b91bdec2` FOREIGN KEY (`template_category_id`) REFERENCES `template_categories` (`id`),
  CONSTRAINT `fk_rails_84e95b002b` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (9,'invoice001','<p style=\"float: right; text-align: right; margin: 0;\">\r\n  {{ \"now\" | date: \"%m/%d/%y\" }}<br />\r\n  Invoice for {{ order_name }}\r\n</p>\r\n\r\n<div style=\"float: left; margin: 0 0 1.5em 0;\" >\r\n  <strong style=\"font-size: 2em;\">{{ shop_name }}</strong><br /><br />\r\n  {{ shop.address }}<br/>\r\n  {{ shop.city }} {{ shop.province_code }} {{ shop.zip | upcase }}<br/>\r\n  {{ shop.country }}\r\n</div>\r\n\r\n<hr />\r\n\r\n<h3 style=\"margin: 0 0 1em 0;\">Item Details</h3>\r\n\r\n<table class=\"table-tabular\" style=\"margin: 0 0 1.5em 0;\">\r\n  <thead>\r\n    <tr>\r\n      <th>Quantity</th>\r\n      <th>Item</th>\r\n      {% if show_line_item_taxes %}\r\n      <th>Taxes</th>\r\n      {% endif %}\r\n      <th>Price</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    {% for line_item in line_items %}\r\n      <tr>\r\n        <td>{{ line_item.quantity }} x</td>\r\n        <td><b>{{ line_item.title }}</b></td>\r\n        {% if line_item.tax_lines %}\r\n          <td>\r\n            {% for tax_line in line_item.tax_lines %}\r\n              {{ tax_line.price | money }} {{ tax_line.title }}<br/>\r\n            {% endfor %}\r\n          </td>\r\n        {% endif %}\r\n        <td>\r\n          {% if line_item.original_price != line_item.price %}\r\n            <s>{{ line_item.original_price | money }}</s>\r\n          {% endif %}\r\n          {{ line_item.price | money }}\r\n        </td>\r\n      </tr>\r\n    {% endfor %}\r\n  </tbody>\r\n</table>\r\n\r\n{% if transactions.size > 1 %}\r\n  <h3 style=\"margin: 0 0 1em 0;\">Transaction Details</h3>\r\n  <table class=\"table-tabular\" style=\"margin: 0 0 1.5em 0;\">\r\n    <thead>\r\n      <tr>\r\n        <th>Type</th>\r\n        <th>Amount</th>\r\n        <th>Kind</th>\r\n        <th>Status</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      {% for transaction in transactions %}\r\n        <tr>\r\n          <td>{{ transaction.gateway | payment_method }}</td>\r\n          <td>{{ transaction.amount | money }}</td>\r\n          <td>{{ transaction.kind }}</td>\r\n          <td>{{ transaction.status }}</td>\r\n        </tr>\r\n      {% endfor %}\r\n    </tbody>\r\n  </table>\r\n{% endif %}\r\n\r\n<h3 style=\"margin: 0 0 1em 0;\">Payment Details</h3>\r\n\r\n<table class=\"table-tabular\" style=\"margin: 0 0 1.5em 0;\">\r\n  <tr>\r\n    <td>Subtotal price:</td>\r\n    <td>{{ subtotal_price | money }}</td>\r\n  </tr>\r\n  {% for discount in discounts %}\r\n  <tr>\r\n    <td>Includes discount \"{{ discount.code }}\"</td>\r\n    <td>{{ discount.savings | money }}</td>\r\n  </tr>\r\n  {% endfor %}\r\n  <tr>\r\n    <td>Total tax:</td>\r\n    <td>{{ tax_price | money }}</td>\r\n  </tr>\r\n  {% if shipping_address %}\r\n    <tr>\r\n      <td>Shipping:</td>\r\n      <td>{{ shipping_price | money }}</td>\r\n    </tr>\r\n  {% endif %}\r\n  <tr>\r\n    <td><strong>Total price:</strong></td>\r\n    <td><strong>{{ total_price | money }}</strong></td>\r\n  </tr>\r\n  {% if total_paid != total_price %}\r\n    <tr>\r\n      <td><strong>Total paid:</strong></td>\r\n      <td><strong>{{ total_paid | money }}</strong></td>\r\n    </tr>\r\n    <tr>\r\n      <td><strong>Outstanding Amount:</strong></td>\r\n      <td><strong>{{ total_price | minus: total_paid | money }}</strong></td>\r\n    </tr>\r\n  {% endif %}\r\n</table>\r\n\r\n{% if note %}\r\n  <h3 style=\"margin: 0 0 1em 0;\">Note</h3>\r\n  <p>{{ note }}</p>\r\n{% endif %}\r\n\r\n{% if shipping_address %}\r\n  <h3 style=\"margin: 0 0 1em 0;\">Shipping Details</h3>\r\n\r\n  <div style=\"margin: 0 0 1em 0; padding: 1em; border: 1px solid black;\">\r\n    <strong>{{ shipping_address.name }}</strong><br/>\r\n    {% if shipping_address.company %}\r\n      {{ shipping_address.company }}<br/>\r\n    {% endif %}\r\n    {{ shipping_address.street }}<br/>\r\n    {{ shipping_address.city }}\r\n    {{ shipping_address.province_code }}\r\n    {{ shipping_address.zip | upcase }}<br/>\r\n    {{ shipping_address.country }}\r\n  </div>\r\n{% endif %}\r\n<p>If you have any questions, please send an email to <u>{{ shop.email }}</u></p>\r\n',0,0,NULL,3,'2020-05-25 12:20:23','2020-07-01 13:33:36'),(10,'picking-list-1','<div class=\"container\">\r\n    <div class=\"row\">\r\n        <div class=\"col-xs-12\">\r\n    		<div class=\"invoice-title\">\r\n    			<h2>Invoice</h2><h3 class=\"pull-right\">Order # 12345</h3>\r\n    		</div>\r\n    		<hr>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-xs-6\">\r\n    				<address>\r\n    				<strong>Billed To:</strong><br>\r\n    					John Smith<br>\r\n    					1234 Main<br>\r\n    					Apt. 4B<br>\r\n    					Springfield, ST 54321\r\n    				</address>\r\n    			</div>\r\n    			<div class=\"col-xs-6 text-right\">\r\n    				<address>\r\n        			<strong>Shipped To:</strong><br>\r\n    					Jane Smith<br>\r\n    					1234 Main<br>\r\n    					Apt. 4B<br>\r\n    					Springfield, ST 54321\r\n    				</address>\r\n    			</div>\r\n    		</div>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-xs-6\">\r\n    				<address>\r\n    					<strong>Payment Method:</strong><br>\r\n    					Visa ending **** 4242<br>\r\n    					jsmith@email.com\r\n    				</address>\r\n    			</div>\r\n    			<div class=\"col-xs-6 text-right\">\r\n    				<address>\r\n    					<strong>Order Date:</strong><br>\r\n    					March 7, 2014<br><br>\r\n    				</address>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </div>\r\n    \r\n    <div class=\"row\">\r\n    	<div class=\"col-md-12\">\r\n    		<div class=\"panel panel-default\">\r\n    			<div class=\"panel-heading\">\r\n    				<h3 class=\"panel-title\"><strong>Order summary</strong></h3>\r\n    			</div>\r\n    			<div class=\"panel-body\">\r\n    				<div class=\"table-responsive\">\r\n    					<table class=\"table table-condensed\">\r\n    						<thead>\r\n                                <tr>\r\n        							<td><strong>Item</strong></td>\r\n        							<td class=\"text-center\"><strong>Price</strong></td>\r\n        							<td class=\"text-center\"><strong>Quantity</strong></td>\r\n        							<td class=\"text-right\"><strong>Totals</strong></td>\r\n                                </tr>\r\n    						</thead>\r\n    						<tbody>\r\n    							<!-- foreach ($order->lineItems as $line) or some such thing here -->\r\n    							<tr>\r\n    								<td>BS-200</td>\r\n    								<td class=\"text-center\">$10.99</td>\r\n    								<td class=\"text-center\">1</td>\r\n    								<td class=\"text-right\">$10.99</td>\r\n    							</tr>\r\n                                <tr>\r\n        							<td>BS-400</td>\r\n    								<td class=\"text-center\">$20.00</td>\r\n    								<td class=\"text-center\">3</td>\r\n    								<td class=\"text-right\">$60.00</td>\r\n    							</tr>\r\n                                <tr>\r\n            						<td>BS-1000</td>\r\n    								<td class=\"text-center\">$600.00</td>\r\n    								<td class=\"text-center\">1</td>\r\n    								<td class=\"text-right\">$600.00</td>\r\n    							</tr>\r\n    							<tr>\r\n    								<td class=\"thick-line\"></td>\r\n    								<td class=\"thick-line\"></td>\r\n    								<td class=\"thick-line text-center\"><strong>Subtotal</strong></td>\r\n    								<td class=\"thick-line text-right\">$670.99</td>\r\n    							</tr>\r\n    							<tr>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line text-center\"><strong>Shipping</strong></td>\r\n    								<td class=\"no-line text-right\">$15</td>\r\n    							</tr>\r\n    							<tr>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line text-center\"><strong>Total</strong></td>\r\n    								<td class=\"no-line text-right\">$685.99</td>\r\n    							</tr>\r\n    						</tbody>\r\n    					</table>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </div>\r\n</div>',0,0,NULL,4,'2020-05-25 12:28:18','2020-06-30 04:49:53'),(11,'packing-slip-1','<div style=\"margin: 0 0 1.5em 0; padding: 1.5em; border: 1px solid black;\">\r\n  <h2 style=\"margin: 0 0 1em 0;\">Sender</h2>\r\n  <strong>{{ shop.name }}</strong><br/>\r\n  {{ shop.owner }}<br/>\r\n  {{ shop.address }}<br/>\r\n  {{ shop.city }} {{ shop.province_code }} {{ shop.zip | upcase }}<br/>\r\n  {{ shop.country }}\r\n</div>\r\n\r\n{% if shipping_address %}\r\n<div style=\"padding: 1.5em; border: 1px solid black;\">\r\n  <h2 style=\"margin: 0 0 1em 0;\">Recipient</h2>\r\n  <strong>{{ shipping_address.name }}</strong><br/>\r\n  {% if shipping_address.company %}\r\n    {{ shipping_address.company }}<br/>\r\n  {% endif %}\r\n  {{ shipping_address.street }}<br/>\r\n  {{ shipping_address.city }} {{ shipping_address.province_code }} {{ shipping_address.zip | upcase }}<br/>\r\n  {{ shipping_address.country }}\r\n</div>\r\n{% endif %}',0,0,NULL,5,'2020-05-25 12:29:41','2020-07-01 12:55:12'),(12,'label-1','<div class=\'container\'><p>customer : {{customer.id}} </p></div>',0,0,NULL,6,'2020-05-25 12:31:11','2020-06-30 04:50:08'),(13,'invoice-1','<div class=\'container\'>order id: {{order.total_price }}</div>',1,1,2,3,'2020-05-25 13:48:06','2020-06-25 05:38:33'),(14,'picking-list-1','<div class=\"container\">\r\n<p>hello</p>\r\n    <div class=\"row\">\r\n        <div class=\"col-xs-12\">\r\n    		<div class=\"invoice-title\">\r\n    			<h2>Invoice</h2><h3 class=\"pull-right\">Order # 12345</h3>\r\n    		</div>\r\n    		<hr>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-xs-6\">\r\n    				<address>\r\n    				<strong>Billed To:</strong><br>\r\n    					John Smith<br>\r\n    					1234 Main<br>\r\n    					Apt. 4B<br>\r\n    					Springfield, ST 54321\r\n    				</address>\r\n    			</div>\r\n    			<div class=\"col-xs-6 text-right\">\r\n    				<address>\r\n        			<strong>Shipped To:</strong><br>\r\n    					Jane Smith<br>\r\n    					1234 Main<br>\r\n    					Apt. 4B<br>\r\n    					Springfield, ST 54321\r\n    				</address>\r\n    			</div>\r\n    		</div>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-xs-6\">\r\n    				<address>\r\n    					<strong>Payment Method:</strong><br>\r\n    					Visa ending **** 4242<br>\r\n    					jsmith@email.com\r\n    				</address>\r\n    			</div>\r\n    			<div class=\"col-xs-6 text-right\">\r\n    				<address>\r\n    					<strong>Order Date:</strong><br>\r\n    					March 7, 2014<br><br>\r\n    				</address>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </div>\r\n    \r\n    <div class=\"row\">\r\n    	<div class=\"col-md-12\">\r\n    		<div class=\"panel panel-default\">\r\n    			<div class=\"panel-heading\">\r\n    				<h3 class=\"panel-title\"><strong>Order summary</strong></h3>\r\n    			</div>\r\n    			<div class=\"panel-body\">\r\n    				<div class=\"table-responsive\">\r\n    					<table class=\"table table-condensed\">\r\n    						<thead>\r\n                                <tr>\r\n        							<td><strong>Item</strong></td>\r\n        							<td class=\"text-center\"><strong>Price</strong></td>\r\n        							<td class=\"text-center\"><strong>Quantity</strong></td>\r\n        							<td class=\"text-right\"><strong>Totals</strong></td>\r\n                                </tr>\r\n    						</thead>\r\n    						<tbody>\r\n    							<!-- foreach ($order->lineItems as $line) or some such thing here -->\r\n    							<tr>\r\n    								<td>BS-200</td>\r\n    								<td class=\"text-center\">$10.99</td>\r\n    								<td class=\"text-center\">1</td>\r\n    								<td class=\"text-right\">$10.99</td>\r\n    							</tr>\r\n                                <tr>\r\n        							<td>BS-400</td>\r\n    								<td class=\"text-center\">$20.00</td>\r\n    								<td class=\"text-center\">3</td>\r\n    								<td class=\"text-right\">$60.00</td>\r\n    							</tr>\r\n                                <tr>\r\n            						<td>BS-1000</td>\r\n    								<td class=\"text-center\">$600.00</td>\r\n    								<td class=\"text-center\">1</td>\r\n    								<td class=\"text-right\">$600.00</td>\r\n    							</tr>\r\n    							<tr>\r\n    								<td class=\"thick-line\"></td>\r\n    								<td class=\"thick-line\"></td>\r\n    								<td class=\"thick-line text-center\"><strong>Subtotal</strong></td>\r\n    								<td class=\"thick-line text-right\">$670.99</td>\r\n    							</tr>\r\n    							<tr>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line text-center\"><strong>Shipping</strong></td>\r\n    								<td class=\"no-line text-right\">$15</td>\r\n    							</tr>\r\n    							<tr>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line\"></td>\r\n    								<td class=\"no-line text-center\"><strong>Total</strong></td>\r\n    								<td class=\"no-line text-right\">$685.99</td>\r\n    							</tr>\r\n    						</tbody>\r\n    					</table>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </div>\r\n</div>',1,1,2,4,'2020-05-25 16:15:06','2020-05-25 16:17:14'),(17,'invoice002','<p>Hello</p>',0,0,NULL,3,'2020-07-01 13:35:25','2020-07-01 13:38:15'),(18,'picking-list-1','<div style=\"width: 210mm; height: 297mm;margin: 0 auto;padding: 25px;background: #fff;border: 1px solid #f1f0f0;display: block;font-size: 13px;\">\r\n	<div style=\"width: 100%; display: inline-block;\">\r\n		<div style=\"float: left;width: 48%;\">\r\n			<h2 style=\"font-size: 20px;font-weight: bold;margin: 0;\">Online Food Outlate - Picking List</h2>\r\n			<div style=\"margin-top: 5px;font-size: 20px;\">06-16-2020</div>\r\n		</div>\r\n	</div>\r\n	<table cellpadding=\"5\" cellspacing=\"0\" style=\"margin-top: 45px;width: 100%;\">\r\n		<tbody>\r\n			<tr>\r\n				<th style=\"border-bottom: 2px solid #000;text-align: left;\">VENDOR</th>\r\n				<th style=\"border-bottom: 2px solid #000; text-align: center;\">SKU</th>\r\n				<th style=\"border-bottom: 2px solid #000; text-align: left;\">PRODUCT</th>\r\n				<th style=\"border-bottom: 2px solid #000; text-align: center;\">VARIANT</th>\r\n				<th style=\"border-bottom: 2px solid #000; text-align: center;\">QTY</th>\r\n				<th style=\"border-bottom: 2px solid #000; text-align: left; width: 14%;\">ORDER TRAY</th>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: left;\">Online Food Outlate</td>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: center;\">-</td>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: left;\">Shan Red Chilli Powder</td>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: center;\">-</td>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: center;\">7</td>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: left;\">\r\n					<div><strong>1</strong> (#4512)</div>\r\n					<div><strong>2</strong> (#4412)</div>\r\n					<div><strong>1</strong> (#5512)</div>\r\n					<div><strong>3</strong> (#3512)</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>',1,1,3,4,'2020-07-13 06:04:09','2020-07-14 10:34:49'),(19,'packing-slip-1','<div style=\"width: 210mm; height: 297mm;margin: 0 auto;padding: 25px;background: #fff;border: 1px solid #f1f0f0;\r\ndisplay: block;font-size: 13px;\">\r\n	<div>\r\n		<div style=\"float: left; width: 48%;\">\r\n			<h2 style=\"font-size: 25px; font-weight: bold; margin: 0;\">Packing Slip</h2>\r\n			<div style=\"margin-bottom: 5px;\"><strong>Order Id :</strong>{{ order_number }}</div>\r\n				<img src=\"/assets/invoce-barcode-fa9f12d2dcef34238f5c44414d1ae3b31947477b60986f2a2c2fdc982a02d192.png\">\r\n			<div style=\"margin-top: 5px;\"><strong>Date :</strong> {{ date | date: \"%a, %b %d, %y\" }}</div>\r\n			<div><strong>Shipping :</strong> {{ shipping_method.title }}</div>\r\n			<div><strong>Total Items :</strong> {{ line_items | size}}</div>\r\n			<div><strong>Customer Email Address:</strong> {{ email}}</div>\r\n		</div>\r\n		<div style=\"float: left; width: 50%;\">\r\n			<img src=\"/assets/invoice-logo-6cf44ea4e3280df086ae6a9617157daa413c4107eec1cc848889276849979cb0.png\">\r\n		</div>\r\n	</div>\r\n	<div style=\"display: flex; width: 100%;padding-top: 17px;\">\r\n		<div style=\"width: 20%;\"><strong>Bill to</strong></div>\r\n		{% if billing_address %}\r\n    		<div style=\"width: 30%;\">\r\n    			<span>{{ billing_address.name }}</span>\r\n    			<p>{{ billing_address.street }}</p>\r\n    		</div>\r\n    	{% endif %}\r\n		<div style=\"width: 20%;\"><strong>Ship to</strong></div>\r\n        {% if shipping_address %}\r\n    		<div style=\"width: 30%;\">\r\n    		    <span>{{ shipping_address.name }}</span>\r\n    			<p>{{ billing_address.street }}</p>\r\n    		</div>\r\n        {% endif %}\r\n	</div>\r\n	<table cellpadding=\"5\" cellspacing=\"0\" style=\"width: 100%;margin: 0 -5px;margin-top: 56px;border-top: 2px solid #000;font-size: 14px;\">\r\n		<tbody>\r\n			<tr>\r\n				<th style=\"padding-top: 11px;width: 90%;border-bottom: 1px solid #e4e4e4;\">Description</th>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4; text-align: center;width: 10%;\">Qty.</th> \r\n			</tr>\r\n			{% for line_item in line_items %}\r\n    			<tr>\r\n    				<th style=\"border-bottom: 1px solid #e4e4e4;\">{{ line_item.title }}</th>\r\n    				<th style=\"border-bottom: 1px solid #e4e4e4; text-align: center;\">{{ line_item.quantity }}</th>\r\n    			</tr>\r\n			{% endfor %}\r\n		</tbody>\r\n	</table>\r\n</div>',1,1,3,5,'2020-07-13 06:11:38','2020-07-13 13:40:40'),(20,'label-1','{% if shipping_address %}\r\n    <div style=\"width: 210mm; height: 297mm; margin: 0 auto; padding: 25px; background: #fff; border: 1px solid #f1f0f0;display: block;font-size: 20px;line-height: 28px;\">\r\n    	<div style=\"width: 50%;float: left;margin-bottom: 15px;\">\r\n    		<p><b>{{ shipping_address.name }}</b></p>\r\n    		<p>{{ shipping_address.street }}</p>\r\n    		<p>{{ shipping_address.city }} {{ shipping_address.province_code }} {{ shipping_address.zip | upcase }}</p>\r\n    	</div>\r\n    </div>\r\n{% endif %}',1,1,3,6,'2020-07-13 06:13:49','2020-07-13 13:24:20'),(21,'invoice001','{% for shipping_line in shipping_lines %}\r\n    <p>Hello:</p> {{shipping_line.title}}\r\n{% endfor %}\r\n<div style=\"width: 210mm; height: 297mm;margin: 0 auto;padding: 25px;background: #fff;border: 1px solid #f1f0f0;\r\ndisplay: block;font-size: 13px;\">\r\n	<div>\r\n		<div style=\"float: left; width: 48%;\">\r\n			<h2 style=\"font-size: 25px; font-weight: bold; margin: 0;\">Invoice</h2>\r\n			<div style=\"margin-bottom: 5px;\"><strong>Order Id :</strong>{{ order_number }}</div>\r\n			    {{\'invoce-barcode.png\' | img_tag }}\r\n			<div style=\"margin-top: 5px;\"><strong>Date :</strong> {{ date | date: \"%a, %b %d, %y\" }}</div>\r\n			<div><strong>Shipping :</strong> {{ shipping_method.title }}</div>\r\n			<div><strong>Total Items :</strong> {{ line_items | size}}</div>\r\n			<div><strong>Customer Email Address:</strong> {{ email}}</div>\r\n		</div>\r\n		<div style=\"float: left; width: 50%;\">\r\n			{{ \'invoice-logo.png\' | img_tag }}\r\n		</div>\r\n	</div>\r\n	<div style=\"display: flex; width: 100%;padding-top: 17px;\">\r\n		<div style=\"width: 20%;\"><strong>Bill to</strong></div>\r\n		{% if billing_address %}\r\n    		<div style=\"width: 30%;\">\r\n    			<span>{{ billing_address.name }}</span>\r\n    			<p>{{ billing_address.street }}</p>\r\n    		</div>\r\n    	{% endif %}\r\n		<div style=\"width: 20%;\"><strong>Ship to</strong></div>\r\n        {% if shipping_address %}\r\n    		<div style=\"width: 30%;\">\r\n    		    <span>{{ shipping_address.name }}</span>\r\n    			<p>{{ billing_address.street }}</p>\r\n    		</div>\r\n        {% endif %}\r\n	</div>\r\n	<table cellpadding=\"5\" cellspacing=\"0\" style=\"width: 100%;margin: 0 -5px; margin-top: 56px;border-top: 2px solid #000; font-size: 14px;\">\r\n		<tbody>\r\n			<tr>\r\n				<th style=\"padding-top: 11px;width: 60%;border-bottom: 1px solid #e4e4e4;\">Description</th>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;width: 10%; text-align: center;\">Qty.</th>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;width: 10%; text-align: center;\">Price</th>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;width: 10%;text-align: right;\">Total</th>\r\n			</tr>\r\n			{{ line_items.total_discount_set.shop_money.currency_code }}\r\n			{% for line_item in line_items %}\r\n			<tr>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;\">{{ line_item.variant_title }}</th>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4; text-align: center;\">{{ line_item.quantity }}</th>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: center;\">{{ line_item.price }}</td>\r\n				<td style=\"border-bottom: 1px solid #e4e4e4; text-align: right;\">{{ line_item.price | times: line_item.quantity}}</td>\r\n			</tr>\r\n			{% endfor %}\r\n		</tbody\r\n	></table>\r\n	<table cellpadding=\"5\" cellspacing=\"0\" style=\"width: 40%;margin-top: 15px;float:right;\">\r\n		<tbody>\r\n			<tr>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;\">Sub-total</th>\r\n				<td style=\"text-align: right; border-bottom: 1px solid #e4e4e4;\">{{subtotal_price}}</td>\r\n			</tr>\r\n			{% for discount in discounts %}\r\n              <tr>\r\n                <th style=\"border-bottom: 1px solid #e4e4e4;\">Includes discount \"{{ discount.code }}\"</td>\r\n                <td style=\"text-align: right; border-bottom: 1px solid #e4e4e4;\" >{{ discount.savings | money }}</td>\r\n              </tr>\r\n             {% endfor %}\r\n             <tr>\r\n                <th style=\"border-bottom: 1px solid #e4e4e4;\">Total tax:</td>\r\n                <td style=\"text-align: right; border-bottom: 1px solid #e4e4e4;\" >{{ tax_price }}</td>\r\n              </tr>\r\n			<tr>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;\">Shipping</th>\r\n				<td style=\"text-align: right;border-bottom: 1px solid #e4e4e4;\">{{ shipping_price }}</td>\r\n			</tr>\r\n			<tr>\r\n				<th style=\"border-bottom: 1px solid #e4e4e4;\">Total</th>\r\n					<td style=\"text-align: right; border-bottom: 1px solid #e4e4e4;\">{{ total_price }}</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n',1,1,3,3,'2020-07-13 09:44:59','2020-07-15 07:37:08');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) DEFAULT NULL,
  `zip_code` text,
  `zone_status` int(11) DEFAULT '0',
  `shop_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_zones_on_shop_id_and_zone_name` (`shop_id`,`zone_name`),
  KEY `index_zones_on_shop_id` (`shop_id`),
  CONSTRAINT `fk_rails_93df52aa3b` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,'zone1',' 110091',0,2,'2020-06-29 05:58:59','2020-06-29 05:59:32'),(2,'zone1',' 1234',1,1,'2020-06-29 06:02:28','2020-06-29 06:02:28'),(3,'zone 2',' 110091',1,1,'2020-06-29 06:09:52','2020-06-29 06:09:52');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 13:12:08
