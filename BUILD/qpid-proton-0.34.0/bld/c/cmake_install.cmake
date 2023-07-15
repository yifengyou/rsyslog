# Install script for directory: /root/rpmbuild/BUILD/qpid-proton-0.34.0/c

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so.11.13.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so.11"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton.so.11.13.0"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton.so.11"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so.11.13.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so.11"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so.10.11.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so.10"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-core.so.10.11.1"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-core.so.10"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so.10.11.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so.10"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-core.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-static.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-core-static.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so.1.8.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-proactor.so.1.8.0"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-proactor.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so.1.8.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-proactor.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so"
         OLD_RPATH "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libqpid-proton-proactor.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-proactor-static.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proton" TYPE FILE FILES
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/cid.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/codec.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/condition.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/connection.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/connection_driver.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/cproton.i"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/delivery.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/disposition.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/engine.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/error.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/event.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/handlers.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/import_export.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/link.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/listener.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/log.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/logger.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/message.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/messenger.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/netaddr.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/object.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/proactor.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/raw_connection.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/reactor.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/sasl.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/sasl_plugin.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/selectable.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/session.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/ssl.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/terminus.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/transport.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/type_compat.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/types.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/url.h"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/include/proton/version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/libqpid-proton-proactor.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/Proton" TYPE FILE FILES
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/ProtonConfig.cmake"
    "/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/ProtonConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/proton/examples/c" TYPE DIRECTORY FILES "/root/rpmbuild/BUILD/qpid-proton-0.34.0/c/examples/" USE_SOURCE_PERMISSIONS REGEX "/ProtonConfig\\.cmake$" EXCLUDE REGEX "/testme$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/docs/cmake_install.cmake")
  include("/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/examples/cmake_install.cmake")
  include("/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tests/cmake_install.cmake")
  include("/root/rpmbuild/BUILD/qpid-proton-0.34.0/bld/c/tools/cmake_install.cmake")

endif()

