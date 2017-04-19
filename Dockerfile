FROM shwld/mecab-python

WORKDIR /usr/data
RUN wget http://www.rondhuit.com/download/ldcc-20140209.tar.gz \
    && tar xvfz ldcc-20140209.tar.gz

RUN pip install --ignore-installed --upgrade \
    https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.1-cp36-cp36m-linux_x86_64.whl
#   https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp36-cp36m-linux_x86_64.whl
WORKDIR /usr/src
