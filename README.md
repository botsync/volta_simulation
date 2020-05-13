# Volta
ROS packages used to run the Volta only in simulation

  * Volta_control - Control configuration required for ROS control.
  * Volta_description - Volta Robot description (URDF files) and gazebo simulation world file.
  * volta_localization - Sensor fusion of wheel odometry and IMU data using the robot localization package.
  * Volta_navigation - Navigation configurations .
  * volta_teleoperation - Control the robot using keyboard or Joystick.

## Steps to Launch Volta:

### 1. Launching a Gazebo Simulation environment
 * To bring up a gazebo world, launch the gazebo node by running:  
```
    $ roslaunch volta_description gazebo.launch 
```
 * Once the gazebo simulation environment is launched, run the following to load the Volta robot:  
```
    $ roslaunch volta_description simulation.launch 
```
 * For visualization, launch rviz by running:        
 ```
    $ rosrun rviz rviz
```
   The configuration file, volta.rviz which is located under volta_description->rviz_params, can be opened in the rviz tool to load the volta configured rviz environment

 * In order to start the teleoperation node using keyboard, run the following:  :        
 ```
    $ roslaunch volta_teleoperator volta_teleoperator.launch keyboard:=true 
```
 * To launch the joystick node, set the keyboard argument to False (Default case:= false) or run the following:       
 ```
    $ roslaunch volta_teleoperator volta_teleoperator.launch  
```
   
