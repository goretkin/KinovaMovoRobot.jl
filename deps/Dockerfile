FROM ros
RUN mkdir /repos
WORKDIR /repos
RUN git clone https://github.com/ros/xacro.git
WORKDIR /repos/xacro
RUN python setup.py install
