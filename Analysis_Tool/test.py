import zlib


with open('backup.ab', 'rb') as f:
    f.seek(24)  # skip 24 bytes
    data = f.read()  # read the rest

tarstream = zlib.decompress(data)
tf = tarstream.open(fileobj=io.BytesIO(tarstream))