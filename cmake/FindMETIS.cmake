#
#   Copyright (C) 2014-15 Chris Copsey
#
#   This file is part of ccFOAM.
#
#   ccFOAM is free software: you can redistribute it and/or modify it under the
#   terms of the GNU General Public License as published by the Free Software
#   Foundation, either version 3 of the License, or (at your option) any later
#   version.
#
#   ccFOAM is distributed in the hope that it will be useful, but WITHOUT ANY
#   WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
#   details.
#
#   You should have received a copy of the GNU General Public License along
#   with ccFOAM.  If not, see <http://www.gnu.org/licenses/>.
#

include(FindPackageHandleStandardArgs)

if(NOT METIS_LIBRARY OR NOT METIS_INCLUDE_DIR)

  find_path(METIS_INCLUDE_DIR
    NAMES "metis.h"
    HINTS ${METIS_INCLUDE_DIR} ${METIS_ROOT}/include ${CMAKE_EXTRA_INCLUDES}
    PATH_SUFFIXES metis
  )

  if (NOT METIS_INCLUDE_DIR)
    message(SEND_ERROR "Can not locate METIS include directory")
  endif()

  find_library(METIS_LIBRARY
    NAMES "metis"
    HINTS ${METIS_LIBRARY_DIR} ${METIS_ROOT}/lib ${CMAKE_EXTRA_LIBRARIES}
  )

  if(NOT METIS_LIBRARY)
    message(SEND_ERROR "Can not locate METIS library")
  endif()    

endif()

find_package_handle_standard_args(METIS
  DEFAULT_MSG
  METIS_LIBRARY
  METIS_INCLUDE_DIR
)