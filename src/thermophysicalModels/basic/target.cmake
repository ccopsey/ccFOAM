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
  basicThermo/basicThermo.C
  fluidThermo/fluidThermo.C
  psiThermo/psiThermo.C
  psiThermo/psiThermos.C
  rhoThermo/rhoThermo.C
  rhoThermo/rhoThermos.C
  derivedFvPatchFields/fixedEnergy/fixedEnergyFvPatchScalarField.C
  derivedFvPatchFields/gradientEnergy/gradientEnergyFvPatchScalarField.C
  derivedFvPatchFields/mixedEnergy/mixedEnergyFvPatchScalarField.C
  derivedFvPatchFields/energyJump/energyJump/energyJumpFvPatchScalarField.C
  derivedFvPatchFields/energyJump/energyJumpAMI/energyJumpAMIFvPatchScalarField.C
)

set(LIBRARIES
  libcompressibleTransportModels
  libfiniteVolume
  libmeshTools
)

include_directories(.)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/transportModels/compressible/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/meshTools/include.cmake)
include(include.cmake)

add_library(libfluidThermophysicalModels ${SOURCES})
set_target_properties(libfluidThermophysicalModels PROPERTIES PREFIX "")

target_link_libraries(libfluidThermophysicalModels ${LIBRARIES})

install(TARGETS libfluidThermophysicalModels DESTINATION lib OPTIONAL)
