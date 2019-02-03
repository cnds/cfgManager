import hashlib


def create_md5(data):
    return hashlib.md5(data.encode()).hexdigest()
