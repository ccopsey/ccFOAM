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
  potentialFreeSurfaceDyMFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libincompressibleTransportModels
  libturbulenceModels
  libincompressibleTurbulenceModels
  libfiniteVolume
  libdynamicMesh
  libdynamicFvMesh
  libtopoChangerFvMesh
  libmeshTools
  libfvOptions
  libsampling
)

include_directories(.)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../../../src/finiteVolume/include.cmake)
include_directories(../../interFoam/interDyMFoam)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/incompressible/include.cmake)
include_directories(../../../../../src/transportModels)
include_directories(../../../../../src/transportModels/incompressible/singlePhaseTransportModel)
include(../../../../../src/dynamicMesh/include.cmake)
include(../../../../../src/dynamicFvMesh/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/fvOptions/include.cmake)
include(../../../../../src/sampling/include.cmake)

add_executable(potentialFreeSurfaceDyMFoam ${SOURCES})

target_link_libraries(potentialFreeSurfaceDyMFoam ${LIBRARIES})

install(TARGETS potentialFreeSurfaceDyMFoam DESTINATION applications OPTIONAL)
