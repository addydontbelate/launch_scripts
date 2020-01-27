#!/bin/bash

cd ~/catkin_ws
souce /devel/setup.bash
xterm -hold -e "roslaunch mie443_contest1 turtlebot_world.launch world:=1" &
xterm -hold -e "roslaunch turtlebot_gazebo gmapping_demo.launch" &
xterm -hold -e "rosrun mie443_contest1 contest1" &
xterm -hold -e "roslaunch turtlebot_rviz_launchers view_navigation.launch"

exit 0
