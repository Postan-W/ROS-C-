# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hello_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ihello_msgs:/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hello_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" NAME_WE)
add_custom_target(_hello_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_msgs" "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" ""
)

get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" NAME_WE)
add_custom_target(_hello_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_msgs" "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" "hello_msgs/Student:std_msgs/String:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_msgs
)
_generate_msg_cpp(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hello_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hello_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hello_msgs_generate_messages hello_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_cpp _hello_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_cpp _hello_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_msgs_gencpp)
add_dependencies(hello_msgs_gencpp hello_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_msgs
)
_generate_msg_eus(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hello_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hello_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hello_msgs_generate_messages hello_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_eus _hello_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_eus _hello_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_msgs_geneus)
add_dependencies(hello_msgs_geneus hello_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_msgs
)
_generate_msg_lisp(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hello_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hello_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hello_msgs_generate_messages hello_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_lisp _hello_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_lisp _hello_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_msgs_genlisp)
add_dependencies(hello_msgs_genlisp hello_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_msgs
)
_generate_msg_nodejs(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hello_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hello_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hello_msgs_generate_messages hello_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_nodejs _hello_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_nodejs _hello_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_msgs_gennodejs)
add_dependencies(hello_msgs_gennodejs hello_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_msgs
)
_generate_msg_py(hello_msgs
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg"
  "${MSG_I_FLAGS}"
  "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hello_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hello_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hello_msgs_generate_messages hello_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Student.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_py _hello_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wmz/ROS_HOME/ROS-C-/space1/src/hello_msgs/msg/Team.msg" NAME_WE)
add_dependencies(hello_msgs_generate_messages_py _hello_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_msgs_genpy)
add_dependencies(hello_msgs_genpy hello_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hello_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hello_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hello_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hello_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hello_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hello_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hello_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hello_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hello_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hello_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
