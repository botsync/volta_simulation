# Running Volta in the Simulation

## Steps to Launch:
### step 1 create the catkin_ws
```
$ mkdir -p /home/workspace/catkin_ws/src
$ cd /home/workspace/catkin_ws/src
$ catkin_init_workspace
$ cd ..
$ catkin_make
```

### Step 2 Perform a System Update/Upgrade
```
$ apt-get update
$ apt-get upgrade -y
```
### Step 3 Clone the Package in src
```
$ cd /home/workspace/catkin_ws/src
$ git clone https://github.com/botsync/volta_simulation
```
### Step 4 Build the Packages
```
$ catkin_make
$ source devel/setup.bash
```
### Step 5 For mapping the environment
```
$ cd /home/workspace/catkin_ws/src
$ ./Mapping.sh 
```
### Step 5 For Navigating the environment
```
$ cd /home/workspace/catkin_ws/src
$ ./Navigation.sh 
```

