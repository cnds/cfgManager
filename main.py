from src import create_app
from src.views import configuration


if __name__ == '__main__':
    app = create_app('dev')
    app.run()
