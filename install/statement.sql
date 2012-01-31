CREATE TABLE IF NOT EXISTS `<prefix>chat` (`id` int(11) NOT NULL AUTO_INCREMENT, `content` varchar(255) NOT NULL, `time` int(11) NOT NULL, `userId` int(11) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE IF NOT EXISTS `<prefix>navigation` (`id` int(11) NOT NULL AUTO_INCREMENT, `name` varchar(255) NOT NULL, `link` varchar(255) NOT NULL, `userGroup` int(11) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;
CREATE TABLE IF NOT EXISTS `<prefix>pages` (`id` int(11) NOT NULL AUTO_INCREMENT, `title` varchar(255) NOT NULL, `show_title` varchar(255) NOT NULL, `cont` text NOT NULL, `userId` int(11) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
CREATE TABLE IF NOT EXISTS `<prefix>sessions` (`id` int(255) NOT NULL AUTO_INCREMENT, `userId` int(11) NOT NULL, `ip` varchar(255) NOT NULL, `time` int(11) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE IF NOT EXISTS `<prefix>users` (`id` int(11) NOT NULL AUTO_INCREMENT, `userName` varchar(255) NOT NULL, `passWord` varchar(255) NOT NULL, `eMail` varchar(255) NOT NULL, `userGroup` text NOT NULL, `ip` varchar(255) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE IF NOT EXISTS `<prefix>user_groups` (`id` int(11) NOT NULL AUTO_INCREMENT, `delete` int(11) NOT NULL, `name` varchar(255) NOT NULL, `color` varchar(6) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
CREATE TABLE IF NOT EXISTS `<prefix>site_settings` (`id` int(11) NOT NULL AUTO_INCREMENT, `site_name` varchar(255) NOT NULL, `site_description` text NOT NULL, `site_author` text NOT NULL, `site_keywords` text NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE IF NOT EXISTS `<prefix>logs` (`id` int(11) NOT NULL AUTO_INCREMENT, `error_code` int(11) NOT NULL, `user_id` int(11) NOT NULL, PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE TABLE IF NOT EXISTS `<prefix>crons` (`id` int(11) NOT NULL AUTO_INCREMENT, `cron_name` varchar(255) NOT NULL, `cron_desc` text NOT NULL, `cron_path` text NOT NULL, `last_ran` int(11) NOT NULL, `enabled` int(11) NOT NULL, PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;