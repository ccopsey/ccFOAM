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

set(SOURCES
  liquidProperties/liquidProperties.C
  H2O/H2O.C
  C7H16/C7H16.C
  C12H26/C12H26.C
  C10H22/C10H22.C
  C8H18/C8H18.C
  IC8H18/IC8H18.C
  C4H10O/C4H10O.C
  C2H6O/C2H6O.C
  IDEA/IDEA.C
  aC10H7CH3/aC10H7CH3.C
  bC10H7CH3/bC10H7CH3.C
  C8H10/C8H10.C
  C16H34/C16H34.C
  C9H20/C9H20.C
  C6H6/C6H6.C
  C7H8/C7H8.C
  C6H14/C6H14.C
  C13H28/C13H28.C
  C14H30/C14H30.C
  C3H8/C3H8.C
  C3H6O/C3H6O.C
  C2H6/C2H6.C
  CH3OH/CH3OH.C
  C2H5OH/C2H5OH.C
  Ar/Ar.C
  N2/N2.C
  MB/MB.C
  CH4N2O/CH4N2O.C
  nC3H8O/nC3H8O.C
  iC3H8O/iC3H8O.C
)

set(LIBRARIES
  libthermophysicalFunctions
)

include_directories(.)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/thermophysicalModels/thermophysicalFunctions/include.cmake)
include(include.cmake)

add_library(libliquidProperties ${SOURCES})
set_target_properties(libliquidProperties PROPERTIES PREFIX "")

target_link_libraries(libliquidProperties ${LIBRARIES})

install(TARGETS libliquidProperties DESTINATION lib OPTIONAL)
