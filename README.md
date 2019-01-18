# cfgManager
* 管理MySQL记录的配置文件
* 表结构
```SQL
CREATE TABLE IF  NOT EXISTS `dconfig` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(1023) NOT NULL DEFAULT '',
  `value_type` int(11) NOT NULL DEFAULT '1' COMMENT '类型：1 str, 2 - int, 3 - float,  4 - json',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```
