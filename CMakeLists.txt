cmake_minimum_required(VERSION 2.8.3)
project(volta_simulation)

find_package(catkin REQUIRED COMPONENTS roslaunch)

find_package(gazebo REQUIRED)
include_directories(${GAZEBO_INCLUDE_DIRS})
link_directories(${GAZEBO_LIBRARY_DIRS})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GAZEBO_CXX_FLAGS}")

add_library(ActorCollisionsPlugin SHARED plugin/ActorCollisionsPlugin.cc)
target_link_libraries(ActorCollisionsPlugin ${GAZEBO_LIBRARIES})

catkin_package ()

install(
  DIRECTORY launch worlds plugin
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
