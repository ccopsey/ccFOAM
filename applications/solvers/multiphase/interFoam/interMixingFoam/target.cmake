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
  incompressibleThreePhaseMixture/incompressibleThreePhaseMixture.C
  threePhaseInterfaceProperties/threePhaseInterfaceProperties.C
  immiscibleIncompressibleThreePhaseMixture/immiscibleIncompressibleThreePhaseMixture.C
  interMixingFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libtwoPhaseMixture
  libtwoPhaseProperties
  libincompressibleTransportModels
  libturbulenceModels
  libincompressibleTurbulenceModels
  libfiniteVolume
  libmeshTools
  libfvOptions
  libsampling
)

include_directories(.)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../../../src/finiteVolume/include.cmake)
include(../../../../../src/transportModels/twoPhaseMixture/include.cmake)
include_directories(immiscibleIncompressibleThreePhaseMixture)
include_directories(incompressibleThreePhaseMixture)
include_directories(threePhaseInterfaceProperties)
include(../../../../../src/transportModels/interfaceProperties/include.cmake)
include_directories(../../../../../src/transportModels/twoPhaseProperties/alphaContactAngle/alphaContactAngle)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/incompressible/include.cmake)
include_directories(../../../../../src/transportModels)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/fvOptions/include.cmake)
include(../../../../../src/sampling/include.cmake)

add_executable(interMixingFoam ${SOURCES})

target_link_libraries(interMixingFoam ${LIBRARIES})

install(TARGETS interMixingFoam DESTINATION applications OPTIONAL)
