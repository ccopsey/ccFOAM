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
  incompressibleTurbulenceModel.C
  turbulentTransportModels/turbulentTransportModels.C
  turbulentTransportModels/RAS/qZeta/qZeta.C
  turbulentTransportModels/RAS/kkLOmega/kkLOmega.C
  turbulentTransportModels/RAS/LamBremhorstKE/LamBremhorstKE.C
  turbulentTransportModels/RAS/LienLeschziner/LienLeschziner.C
  turbulentTransportModels/RAS/ShihQuadraticKE/ShihQuadraticKE.C
  turbulentTransportModels/RAS/LienCubicKE/LienCubicKE.C
  turbulentTransportModels/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction/alphatJayatillekeWallFunctionFvPatchScalarField.C
)

set(LIBRARIES
  libincompressibleTransportModels
  libturbulenceModels
  libfiniteVolume
  libmeshTools
)

include_directories(.)
include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../turbulenceModels/include.cmake)
include_directories(../../../src/transportModels)
include(../../../src/meshTools/include.cmake)

add_library(libincompressibleTurbulenceModels ${SOURCES})
set_target_properties(libincompressibleTurbulenceModels PROPERTIES PREFIX "")

target_link_libraries(libincompressibleTurbulenceModels ${LIBRARIES})

install(TARGETS libincompressibleTurbulenceModels DESTINATION lib OPTIONAL)
