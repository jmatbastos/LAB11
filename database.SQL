--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(255) default NULL,
 `email` varchar(255) default NULL,
 `created_at` datetime NOT NULL,
 `updated_at` datetime NOT NULL,
 `password_digest` varchar(255) default NULL,
 `remember_digest` varchar(255) default NULL,
 `admin` tinyint(1) default NULL,
 `activation_digest` varchar(255) default NULL,
 `activated` tinyint(1) default NULL,
 `activated_at` datetime default NULL,
 `reset_digest` varchar(255) default NULL,
 `reset_sent_at` datetime default NULL,
 PRIMARY KEY (`id`),
 UNIQUE KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(255) default NULL,
 `description` varchar(255) default NULL,
 `image` varchar(255) default NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
 `id` int(11) NOT NULL auto_increment,
 `cat_id` int(11) NOT NULL,
 `name` varchar(255) default NULL,
 `description` varchar(255) default NULL,
 `price` int(5) default NULL,
 `image` varchar(255) default NULL,
 PRIMARY KEY (`id`),
 CONSTRAINT FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
 `id` int(11) NOT NULL auto_increment,
 `user_id` int(11) NOT NULL,
 `created_at` datetime NOT NULL,
 `status`  tinyint(1) default NULL,
 `total` int(5) default NULL,
 PRIMARY KEY (`id`),
 CONSTRAINT FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
 `id` int(11) NOT NULL auto_increment,
 `order_id` int(11) NOT NULL,
 `product_id` int(11) NOT NULL,
 `quantity` int(5) default NULL,
 PRIMARY KEY (`id`),
 CONSTRAINT FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
 CONSTRAINT FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Alter table `users`
--

ALTER TABLE users ADD `roles` longtext COMMENT '(DC2Type:json)';

