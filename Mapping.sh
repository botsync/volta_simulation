#!/bin/sh
xterm  -e  " source ~/catkin_ws/devel/setup.bash; killall gzserver; roslaunch volta_description gazebo.launch " &
sleep 5
xterm  -e  " source ~/catkin_ws/devel/setup.bash; roslaunch volta_description simulation.launch " &
sleep 5
xterm  -e  " source ~/catkin_ws/devel/setup.bash; roslaunch volta_navigation navigation.launch gmapping:=true " &
sleep 5
xterm  -e  " source ~/catkin_ws/devel/setup.bash; rosrun rviz rviz -d volta_navigation/rviz_config/navigation.rviz  " &
sleep 5
xterm  -e  " source ~/catkin_ws/devel/setup.bash; roslaunch volta_teleoperator volta_teleoperator.launch "
