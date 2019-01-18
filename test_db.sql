CREATE TABLE IF  NOT EXISTS `dconfig` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(1023) NOT NULL DEFAULT '',
  `value_type` int(11) NOT NULL DEFAULT '1' COMMENT '类型：1 str, 2 - int, 3 - float,  4 - json',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT ignore INTO `dconfig` 
VALUES ('ACTIVATION_PARAMS_OPEN','1',2,'激活通知：是否添加timestamp参数 0 不加 1 加'),
('ACTIVITY_NEW_APP_DATE','2017-08-31 00:00:01',1,'新品：优惠日期'),
('ACTIVITY_NEW_APP_TASK_NUM','5000',1,'新品：优惠APP数量'),
('ALIPAY_HB_CODE','0',1,'支付宝红包：领取码：0为关闭入口'),('ALLOWED_TO_APPRENTICE','[\"94f150c1c4\",\"cb9cc7736a\",\"48f4a67606\",\"516c9bad5f\"]',4,'允许拜师渠道号名单'),
('ANDROID_APK_URL','http://zhuanqian.b0.upaiyun.com/AQianka_5.0.0.812141.apk',1,'安卓：apk 文件'),
('ANDROID_H5_MODE','online',1,'安卓：加载静态资源'),('ANDROID_HIGHEARN_WHITELIST','[28502252,58207487,56428894]',4,'安卓：高额任务白名单'),
('ANDROID_IS_FORCE','1',2,'安卓：开启强制升级开关'),('ANDROID_JBQP_OPEN','1',2,'高额：金博棋牌开关0关1开'),
('ANDROID_JDBT_OPEN','1',2,'高额：京东白条是否在列表页展示'),
('ANDROID_NEED_UPGRADE_VERSION','5.0.0.808060',1,'安卓：强升级版本'),
('ANDROID_RELEASE_VERSION','5.0.0.812141',1,'安卓：当前版本'),
('ANDROID_TEAM_CLOCK_SWITCH','1',2,'是否能邀请安卓用户参加组团打卡的开关'),
('ANDROID_YUNPAY_OPEN','1',2,'高额：云闪付是否在安卓限时任务列表页展示'),
('APT_ACTIVE_SUPER_APPIDS','[635206028, 586871187, 1271680206, 1234940252, 1340671079, 447313708, 443926246, 414245413, 884007229]',4,'APT'),
('APT_CHECK_IDFA_SWITCH','1',2,'APT:开启IDFA检查的开关'),
('ASKEY_PATCH_VERSION','2017062001',2,'JSPatch版本号'),
('ASKEY_PATCH_VERSION_BETA','2017040601',2,'JSPatch版本号 BETA'),
('AUTHENTICATION_ALI_CHECK_MOBILE','1',2,'四要素验证:是否开启手机号码验证 1开启 0不开启'),
('AUTO_CHECK_STATUS','2',2,'机器提现审核开关：0关闭，1审核+打款，2只审核不打款'),
('BETA_VALID_IP_RANGES','[\"127.*\", \"192.168.*\", \"172.16.*\", \"10.*\", \"101.*\", \"116.226.130.68\", \"180.173.24.28\", \"115.29.210.60\", \"121.40.206.50\",\"116.231.76.188\",\"121.196.199.26\"]',4,'beta测试环境授权 ip'),
('BONUS_TASK_DEFAULT_REWARD','{\"200\": 0.8, \"500\": 0, \"220\": 0.1999, \"350\": 0.0001}',4,'彩蛋任务奖励金额以及概率'),
('BONUS_TASK_SWITCH','0',2,'彩蛋任务开关'),
('CDID_SUS_BIND_CERT','1',2,'cdid嫌疑用户开始任务绑定证书，0-关，1-开'),
('CHANGE_SHOUTU_RULE_B','1',2,'收徒：B规则前端页面开关控制'),
('CHECK_HIDDEN_MOBILE_NUM_OPEN','1',2,'手机号码：校验用户验证四位隐藏开关 0 关闭 1 打开'),
('CHECK_PKCS7_VERIFY','1',2,'是否验证设备信息签名'),
('CLAIM_ALL_LEVEL_COIN_OPEN','1',2,'每日领取当前等级之前的所有金币开关 0 关闭 1 打开'),
('CLICK_RECEIVE_REWARD_OPEN','0',2,'手动领取奖励的开关'),
('CLOSE_TEAM_CLOCK_TIME','2018-11-23 23:59:59',1,'组团打卡入口关闭的时间'),
('COMPRESS_STATE_MESSAGE','1',2,'keys.update_state消息LZMA压缩，0:关闭、1:开启'),
('CREATE_USER_TO_NEW_SHARD','1',2,'新用户是否去新分片'),
('CRIUS_IP_BLOCK_USERS_THRESHOLD','20',2,'计算每个ip段下的总用户数'),
('CRIUS_SUSPICIOUS_IP_THRESHOLD','5',2,'用户行为切换 IP 次数嫌疑阈值'),
('CRIUS_SUSPICIOUS_IP_THRESHOLD_LIMIT_RATIO','0.02',3,'自动计算阈值的比例值'),
('CRIUS_SUSPICIOUS_LIST_THRESHOLD','182',2,'用户行为刷新列表次数嫌疑阈值'),('CRIUS_SUSPICIOUS_LIST_THRESHOLD_LIMIT_RATIO','0.02',3,'计算自动阈值的比例值'),
('DASHBOARD_AD_SWITCH','0',2,'dashboard广告开关 0关闭 100全开'),
('DASHBOARD_WEISHANG_SWITCH','1',2,'微商'),
('DIABLO_BETA_INDEX_HASH','196a674',1,'前端：diablo hash 版本'),
('DIABLO_GA_INDEX_HASH','4ac7fdb',1,'前端：diablo hash 版本'),
('DIABLO_V5_INDEX_HASH','f5eea3d',1,'前端：diablo v5版本号'),
('DIABLO_WEIGHTS','{}',4,'前端：diablo 灰度发布开关'),
('EXPLORE_SWITCH','1',2,'探索任务入口开关，0关闭 1开启'),
('FASTER_SUBTASK_DETAIL_SWITCH','1',2,'任务详情页的优化开关'),
('FC_CELERY_PROFILING','1',2,'Celery性能统计开关，0:关闭，1:开启'),
('FC_CHECK_JAILBREAK_APPS','1',2,'rpc.deny_jailbreak 里检查 lppa 里是否有越狱工具'),('FC_CHECK_JAILBREAK_APPS_TIMEOUT','600',2,'rpc.deny_jailbreak 检查 jailbreak apps cache 时间'),
('FC_COMINGSOON_LIST_LOCALCACHE','1',2,'预告任务列表数据本地缓存开关，0:关闭，1:开启'),
('FC_CRIUS_SWITCH','1',2,'是否开启网站统计：1开启，0关闭'),
('FC_DASHBOARD_RATE','0',3,'API dashboard profiler 取样比例'),
('FC_DETAIL_SAMPLE_RATE','0.01',3,'API detail profiler 取样比例'),
('FC_DOWNLOAD_TASK_URL_USE_ITMS','0',2,'下载任务app 跳转链接是否使用钥匙跳转 1 使用 0 不使用,6.7修改成0'),
('FC_ENFORCE_HTTPS_V4','1',2,'新用户、HTTPS 钥匙用户，强制要求使用 HTTPS 协议'),
('FC_GET_LIST_FILTER_ISPAY_LIMIT','2',2,'限制用户每天可做付费任务数据量开关'),
('FC_GET_LIST_USE_LPPA','1',2,'是否开启列表页用 LPPA 过滤设备已安装应用'),
('FC_HUMAN_CHECK','0',2,'抢任务人机验证开关'),
('FC_HUMAN_CHECK_BLACK_LIST','[29903020,27765585, 52055635, 42338079, 19389204]',4,'人机验证黑名单，必弹'),
('FC_HUMAN_CHECK_DEFAULT_RATIO','0.05',3,'抢任务人机验证采样率，0.1=10%'),
('FC_JSPATCH_OBSCURE_BUNDLEID_LIST','[\"com.meihua.app\",\"com.jay.reader\",\"com.gohivip.app\",\"com.miusike.app\",\"com.kkzaixian.app\"]',4,'混淆的bundleid列表'),
('FC_JSPATCH_WMJKIT_BUNDLEID_LIST','[\"com.xiaoye.app\", \"com.piaoshenghuo.app\",\"com.baolexiaoka.app\"]',4,'WMJKit的bundleid列表'),
('FC_KEYS_STATES_IDLE_TIME','10',2,'key update-state同一个用户同applist发送间隔  0不限制  n n秒一次'),
('FC_KEYS_STATES_MQ_PROTOCOL','http',1,'keys.state 使用何种协议发消息，http 或 amqp'),
('FC_KEYWORD_AUTHORIZATION','Bearer eyJraWQiOiJGNDdEWk4xOEYwIiwiYWxnIjoiRVMyNTYifQ.eyJpc3MiOiJBUzI4UjdHMTdNIiwiaWF0IjoxNTQ3MDA5MTUwLCJleHAiOjE1NDk2MDExNTB9.yhDzsKuaCu95yh0QhiVIP0xAEsZbrPDe2ytSfjnk59xK9bWOF3ZN2mO-4k2mDVVSvkucUpIs5Q9EY1lNFhf3Bw',1,'iOS12关键词获取的token'),
('FC_KEYWORD_RANK_PROXY','{\"https\": \"https://n1373.ops.gaoshou.me:3128\",\"http\": \"http://n1373.ops.gaoshou.me:3128\"}',4,'关键词排名代理配置'),('FC_KEYWORD_RANK_TIMEOUT','10800',2,'HEBE端关键词结果app_list更新时间，依赖FC_KEYWORD_RANK_TIMEOUT_REFRESH'),('FC_KEYWORD_RANK_TIMEOUT_REFRESH','3600',2,'关键词更新时间'),
('FC_LIST_SAMPLE_RATE','0.01',3,'API list profiler 取样比例'),
('FC_LIST_VERIFY_ZMXY','0',2,'列表页开启嫌疑用户弹芝麻信用'),
('FC_LITELIST_TOKEN_RATE','0.01',3,'API lite bind profiler 取样比例'),
('FC_MISBEHAVE_USER_BLOCK_LIMIT','0.2',3,'嫌疑用户的完成率(记录用，无视这个名字...)'),
('FC_MQ_CONVERT_WECHAT_PROTOCOL','http',1,'convert.wechat 使用何种协议发消息，http 或 amqp'),
('FC_MQ_DEFAULT_PROTOCOL','http',1,'default 使用何种协议发消息 http 或 amqp'),
('FC_MQ_SPECIAL_IDFA_PROTOCOL','http',1,'special.idfa 使用何种协议发消息，http 或 amqp'),
('FC_MQ_SUBTASKS_COMPLETE_PROTOCOL','http',1,'subtasks.complete 使用何种协议发消息，http 或 amqp'),
('FC_MQ_SUBTASKS_LINEUP_PROTOCOL','http',1,'subtasks.lineup 使用何种协议发消息，http 或 amqp'),
('FC_PAY_SUBTASK_START_VERIFY_ZMXY','0',2,'抢  付费   任务需要检查芝麻信用 0: 不需要 1: 指定用户 2: 全部用户'),
('FC_PROFILE_SERVICE_IMPL','certutil',1,'mobileconfig文件签名验证的实现类，default为gorpc服务，certutil为C扩展'),
('FC_PROFILE_SERVICE_IMPL_SCOPE','all',1,'mobileconfig文件签名验证实现的作用范围，all表示所有主机，其他情况可以用逗号分割的主机名列表'),
('FC_RECORD_SUSPICIOUS_APPS','0',2,'suspicious.lppa 里是否开启记录 suspicious_apps 的功能'),
('FC_RECORD_USER_DEVICE_CERT','1',2,'deviceInfo.push 记录用户设备 x509 证书信息'),
('FC_S5_REWARD_COIN_TODAY_RATE','0.1',3,'API 每日领金币 取样比例'),
('FC_SILENT_HUMAN_CHECK','0',2,'抢任务无痕人机验证开关'),
('FC_SILENT_HUMAN_CHECK_ALL','1',2,'抢任务无痕全站抽样开关'),
('FC_START_IDFA_FROM_DB','0',2,'抢任务从 user_match 取 idfa 数据'),
('FC_SUBTASK_COMPLETE_RATE','0.1',3,'job complete profiler 统计取样比例'),
('FC_SUBTASK_FINISH_SEND_REDIS','0',2,'完成任务是否使用 Redis 队列及相应 job, 1: redis, 0: rabbitmq'),
('FC_SUBTASK_LINEUP_SEND_MQ','1',2,'抢任务排队发送 RabbitMQ'),
('FC_SUBTASK_LINEUP_SEND_REDIS','0',2,'抢任务排队发送 REDIS'),
('FC_SUBTASK_LIST_ASYNC_READ','1',2,'用户列表页优先使用异步计算的结果'),
('FC_SUBTASK_LIST_ASYNC_SEND','1',2,'用户列表页可见任务异步计算'),
('FC_SUBTASK_LIST_FILTER_DID_LPPA','1',2,'过滤已安装应用did');