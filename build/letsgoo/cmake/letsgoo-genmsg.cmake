# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "letsgoo: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(letsgoo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" NAME_WE)
add_custom_target(_letsgoo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "letsgoo" "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(letsgoo
  "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/letsgoo
)

### Generating Module File
_generate_module_cpp(letsgoo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/letsgoo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(letsgoo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(letsgoo_generate_messages letsgoo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" NAME_WE)
add_dependencies(letsgoo_generate_messages_cpp _letsgoo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(letsgoo_gencpp)
add_dependencies(letsgoo_gencpp letsgoo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS letsgoo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(letsgoo
  "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/letsgoo
)

### Generating Module File
_generate_module_eus(letsgoo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/letsgoo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(letsgoo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(letsgoo_generate_messages letsgoo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" NAME_WE)
add_dependencies(letsgoo_generate_messages_eus _letsgoo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(letsgoo_geneus)
add_dependencies(letsgoo_geneus letsgoo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS letsgoo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(letsgoo
  "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/letsgoo
)

### Generating Module File
_generate_module_lisp(letsgoo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/letsgoo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(letsgoo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(letsgoo_generate_messages letsgoo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" NAME_WE)
add_dependencies(letsgoo_generate_messages_lisp _letsgoo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(letsgoo_genlisp)
add_dependencies(letsgoo_genlisp letsgoo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS letsgoo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(letsgoo
  "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/letsgoo
)

### Generating Module File
_generate_module_nodejs(letsgoo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/letsgoo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(letsgoo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(letsgoo_generate_messages letsgoo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" NAME_WE)
add_dependencies(letsgoo_generate_messages_nodejs _letsgoo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(letsgoo_gennodejs)
add_dependencies(letsgoo_gennodejs letsgoo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS letsgoo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(letsgoo
  "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/letsgoo
)

### Generating Module File
_generate_module_py(letsgoo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/letsgoo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(letsgoo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(letsgoo_generate_messages letsgoo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vinh/vidu_02/src/letsgoo/srv/string_length.srv" NAME_WE)
add_dependencies(letsgoo_generate_messages_py _letsgoo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(letsgoo_genpy)
add_dependencies(letsgoo_genpy letsgoo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS letsgoo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/letsgoo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/letsgoo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(letsgoo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/letsgoo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/letsgoo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(letsgoo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/letsgoo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/letsgoo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(letsgoo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/letsgoo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/letsgoo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(letsgoo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/letsgoo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/letsgoo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/letsgoo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(letsgoo_generate_messages_py std_msgs_generate_messages_py)
endif()
