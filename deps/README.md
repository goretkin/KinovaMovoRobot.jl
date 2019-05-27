svn checkout https://github.com/Kinovarobotics/kinova-movo/trunk/movo_common/movo_description

## Try to install ROS dependencies by hand.
to get xacro running:
pip install catkin_pkg
clone https://github.com/ros/xacro
pip setup.py install

for roslaunch, rosgraph
https://github.com/ros/ros_comm.git
cd DIR
python setup.py install

for rospkg
pip install rospkg

for roslib
https://github.com/ros/ros
cd core/roslib
python setup.py install

for catkin
https://github.com/ros/catkin.git

for rosmaster
ros_comm


conda install defusedxml

rosclean
ros


needs ros_comm_msgs, then...

## Give up, use docker
https://stackoverflow.com/a/43365425/415404

### Build the container
docker build -t xacro .

### Run the container
docker run -it -v $(pwd):/data xacro

### inside container
cd /data
export ROS_PACKAGE_PATH=/data/:$ROS_PACKAGE_PATH
export MOVO_HAS_KINOVA_ARM=true
export MOVO_HAS_KINOVA_ARM_7DOF=true
export MOVO_HAS_TWO_KINOVA_ARMS=true
export MOVO_HAS_RIGHT_ROBOTIQ_GRIPPER=true
export MOVO_HAS_LEFT_KG3_GRIPPER=true

xacro movo_description/urdf/movo.urdf.xacro > movo.urdf
