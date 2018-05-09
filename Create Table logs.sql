use dd;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LogDateTime` datetime DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `StatusGroup` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=big5;
