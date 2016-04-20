
/*
TODO: http://www.endswithsaurus.com/2009/07/lesson-in-address-storage.html


Street Number [Int]
Street Number Suffix [VarChar] - A~Z 1/3 1/2 2/3 3/4 etc
Street Name [VarChar]
Street Type [VarChar] - Street, Road, Place etc. (I've found 262 unique street types in the English speaking world so far... and still finding them)
Street Direction [VarChar] - N, NE, E, SE, S, SW, W, NW
Address Type [VarChar] - For example Apartment, Suite, Office, Floor, Building etc.
Address Type Identifier [VarChar] - For instance the apartment number, suite, office or floor number or building identifier.
Minor Municipality (Village/Hamlet) [VarChar]
Major Municipality (Town/City) [VarChar]
Governing District (Province, State, County) [VarChar]
Postal Area (Postal Code/Zip/Postcode)[VarChar]
Country [VarChar]

*/


CREATE TABLE `governance_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  'processed' int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `parent_hash` varchar(255) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `start_time` bigint(11) DEFAULT NULL,
  `end_time` bigint(11) DEFAULT NULL,
  `priority` int(20) DEFAULT NULL,
  `type_version` int(20) DEFAULT NULL,
  `revision` int(20) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `fee_tx` varchar(255) DEFAULT NULL,
  `registers` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `budget` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `public_key_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `milestone_status` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `company` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `milestone_status` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `company_employee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `milestone_status` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `employee_contract` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `user_from_id` int(255) DEFAULT NULL,
  `user_to_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `milestone_status` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `employee_proposal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `user_from_id` int(255) DEFAULT NULL,
  `user_to_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `milestone_status` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `event` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `prepare_time` int(11) DEFAULT NULL,
  `submit_time` date DEFAULT NULL,
  `fee_tx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `company_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `group_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `voted_status` varchar(255) DEFAULT NULL,
  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_submit_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,

  `action_none_id` int(11) DEFAULT NULL,
  `action_funding_id` int(11) DEFAULT NULL,
  `action_valid_id` int(11) DEFAULT NULL,
  `action_uptodate_id` int(11) DEFAULT NULL,
  `action_delete_id` int(11) DEFAULT NULL,
  `action_clear_registers` int(11) DEFAULT NULL,
  `action_endorsed_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` int(11) DEFAULT NULL,
  `object` int(11) DEFAULT NULL,
  `user_from_id` int(11) DEFAULT NULL,
  `user_to_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action_type` int(11) DEFAULT NULL,
  `yes_count` int(11) DEFAULT NULL,
  `no_count` int(11) DEFAULT NULL,
  `abstain_count` int(11) DEFAULT NULL,
  `none_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;