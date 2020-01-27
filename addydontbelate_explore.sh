#!/bin/bash

cd ~/catkin_ws
source ~/catkin_ws/devel/setup.bash
gnome-terminal -e "roslaunch mie443_contest1 turtlebot_world.launch world:=1" &
gnome-terminal -e "roslaunch turtlebot_gazebo gmapping_demo.launch" &
gnome-terminal -e "rosrun mie443_contest1 contest1" &
gnome-terminal -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &s

exit 0
