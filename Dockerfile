FROM        accent/ubuntu-python3-mssql

# install site packages
ADD         requirements.txt /requirements.txt
RUN         pip3 install --no-cache-dir -r /requirements.txt

# setup working directory
RUN         mkdir /code/
WORKDIR     /code/
ADD         . /code/

EXPOSE      8000