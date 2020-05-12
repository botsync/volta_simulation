# Running Volta in the Simulation

## Bringing up the simulation
1. To run in Simulation, launch the gazebo node first using
```roslaunch volta_description gazebo.launch```
2. Followed by:
```roslaunch volta_description simulation.launch```
3. Open Rviz and use the config file at volta_navigation/rviz_config/navigation.rviz to visualize.

By default a map of the simulation environment has been built and stored for convenience sake. 

## Mapping the environment 
To change the environment in the simulation, update the argument in the gazebo.launch file with the exact path to the world file.

You will need to run mapping. You can simply use the argument in one_robot.launch to turn gmapping true.
```roslaunch volta_description one_robot.launch gmapping:=true```

To visualize the map updations, use rviz and open this config volta_navigation/rviz_config/navigation.rviz.

To save the map, run ```rosrun map_server map_saver```
