FROM ubuntu

# install packages
RUN apt-get -y update && apt-get -y upgrade

# set as noninteractive to prevent prompts
RUN export DEBIAN_FRONTEND=noninteractive

# install mysql
RUN apt-get install -q -y mysql-server libmysqlclient-dev

# install python
RUN apt-get install -y build-essential python2.7 python2.7-dev python3.4 python-pip git
RUN pip install -U pip
RUN pip install virtualenv

# setup working directory /flask
RUN mkdir -p /flask/{src,sql,scripts}
VOLUME ["/flask"]

# install pip packages
ADD requirements.txt /flask/requirements.txt
RUN pip install --no-cache-dir -r /flask/requirements.txt

# add src/run.py to /flask
ADD src/run.py /flask/src/run.py

# add scripts to /flask
ADD scripts/*.sh /flask/scripts/
# make scripts executable
RUN chmod +x /flask/scripts/*.sh

# set mysql `bind-address` to "0.0.0.0" to enable access from outside the container
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

# copy sql files
ADD sql/*.sql /flask/sql/

# expose flask devserver port
EXPOSE 5000

# expose mysql port
EXPOSE 3306

# run setup script
CMD /flask/scripts/setup.sh && echo "\nrun '/flask/scripts/start.sh' to start flask\n" && /bin/bash