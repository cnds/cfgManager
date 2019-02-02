class Config:
    pass


class DevConfig(Config):
    DEBUG = True
    ENV = 'development'
    SECRET_KEY = 'just guess'
    SQLALCHEMY_TRACK_MODIFICATIONS = True
    SQLALCHEMY_BINDS = {
        'local': 'mysql://root@127.0.0.1:3307/zhuanqian?charset=utf8',
        'fp01': 'mysql://root@fp01.ops.gaoshou.me:3307/zhuanqian?charset=utf8',
        'fp02': 'mysql://root@fp01.ops.gaoshou.me:3307/zhuanqian?charset=utf8',
        'fp03': 'mysql://root@fp01.ops.gaoshou.me:3307/zhuanqian?charset=utf8',
        'fp04': 'mysql://root@fp01.ops.gaoshou.me:3307/zhuanqian?charset=utf8'
    }


config = {
    'dev': DevConfig
}
