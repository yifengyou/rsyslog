#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

# Name: Proton
# Description: Qpid Proton C library
# Version: 0.34.0
# URL: http://qpid.apache.org/proton/

set (Proton_VERSION       0.34.0)

set (Proton_INCLUDE_DIRS  /usr/local/include)
set (Proton_LIBRARIES     optimized /usr/local/lib64/libqpid-proton.so debug /usr/local/lib64/libqpid-proton.so)
set (Proton_FOUND True)

set (Proton_Core_INCLUDE_DIRS  /usr/local/include)
set (Proton_Core_LIBRARIES     optimized /usr/local/lib64/libqpid-proton-core.so debug /usr/local/lib64/libqpid-proton-core.so)

# Add modular target in a way compatible with cmake 2.8.12
if (NOT TARGET Proton::core)
  add_library(Proton::core UNKNOWN IMPORTED)
  set_target_properties(Proton::core
    PROPERTIES
      IMPORTED_LOCATION "/usr/local/lib64/libqpid-proton-core.so"
      IMPORTED_LOCATION_DEBUG "/usr/local/lib64/libqpid-proton-core.so"
      INTERFACE_INCLUDE_DIRECTORIES "${Proton_Core_INCLUDE_DIRS}")
endif()

set (Proton_Core_FOUND True)

set (HAS_PROACTOR True)
if (HAS_PROACTOR)
  set (Proton_Proactor_INCLUDE_DIRS  /usr/local/include)
  set (Proton_Proactor_LIBRARIES     optimized /usr/local/lib64/libqpid-proton-proactor.so debug /usr/local/lib64/libqpid-proton-proactor.so)
  # Add modular target in a way compatible with cmake 2.8.12
  if (NOT TARGET Proton::proactor)
    add_library(Proton::proactor UNKNOWN IMPORTED)
    set_target_properties(Proton::proactor
      PROPERTIES
        IMPORTED_LOCATION "/usr/local/lib64/libqpid-proton-proactor.so"
        IMPORTED_LOCATION_DEBUG "/usr/local/lib64/libqpid-proton-proactor.so"
        INTERFACE_INCLUDE_DIRECTORIES "${Proton_Proactor_INCLUDE_DIRS}")
  endif()

  set (Proton_Proactor_FOUND True)
endif()

# Check for all required components
foreach(comp ${Proton_FIND_COMPONENTS})
  if(NOT Proton_${comp}_FOUND)
    if(Proton_FIND_REQUIRED_${comp})
      set(Proton_FOUND FALSE)
      set(Proton_NOT_FOUND_MESSAGE "Didn't find required component ${comp}")
    endif()
  endif()
endforeach()
