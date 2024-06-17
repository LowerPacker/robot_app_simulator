cmake_minimum_required(VERSION 3.5)
project(app_simulator)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
find_package(common_interface REQUIRED)

add_executable(app_simulator main.cpp)
ament_target_dependencies(app_simulator 
      rclcpp
      std_msgs
      common_interface
)

install(TARGETS
  app_simulator
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
