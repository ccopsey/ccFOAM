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
  basicSolidChemistryModel/basicSolidChemistryModel.C
  basicSolidChemistryModel/basicSolidChemistryModelNew.C
  basicSolidChemistryModel/basicSolidChemistryModels.C
  solidChemistrySolver/makeSolidChemistrySolvers.C
)

set(LIBRARIES
  libchemistryModel
  libfiniteVolume
  libODE
  libreactionThermophysicalModels
)

include_directories(.)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/solidSpecie/include.cmake)
include(../../../src/ODE/include.cmake)
include(../../../src/thermophysicalModels/chemistryModel/include.cmake)
include(../../../src/thermophysicalModels/basic/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/solidThermo/include.cmake)
include(../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(include.cmake)

add_library(libsolidChemistryModel ${SOURCES})
set_target_properties(libsolidChemistryModel PROPERTIES PREFIX "")

target_link_libraries(libsolidChemistryModel ${LIBRARIES})

install(TARGETS libsolidChemistryModel DESTINATION lib OPTIONAL)
