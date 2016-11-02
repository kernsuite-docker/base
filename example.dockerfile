FROM kernsuite/base:0

RUN docker-apt-install python-tigger
RUN pip install nose

