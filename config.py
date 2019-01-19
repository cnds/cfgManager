class Config:
    pass


class DevConfig(Config):
    DEBUG = True
    ENV = 'development'
    SQLALCHEMY_DATABASE_URI = 'mysql://root:123456@127.0.0.1:3306/zhuanqian'


config = {
    'dev': DevConfig
}
