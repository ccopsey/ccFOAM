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
  massTransferModels/massTransferModel/massTransferModel.C
  massTransferModels/massTransferModel/newMassTransferModel.C
  massTransferModels/Frossling/Frossling.C
  massTransferModels/sphericalMassTransfer/sphericalMassTransfer.C
  surfaceTensionModels/surfaceTensionModel/surfaceTensionModel.C
  surfaceTensionModels/surfaceTensionModel/newSurfaceTensionModel.C
  surfaceTensionModels/constantSurfaceTensionCoefficient/constantSurfaceTensionCoefficient.C
  interfaceCompositionModels/interfaceCompositionModel/interfaceCompositionModel.C
  interfaceCompositionModels/interfaceCompositionModel/newInterfaceCompositionModel.C
  interfaceCompositionModels/InterfaceCompositionModel/InterfaceCompositionModels.C
  saturationPressureModels/saturationPressureModel/saturationPressureModel.C
  saturationPressureModels/saturationPressureModel/newSaturationPressureModel.C
  saturationPressureModels/Antoine/Antoine.C
  saturationPressureModels/AntoineExtended/AntoineExtended.C
  saturationPressureModels/ArdenBuck/ArdenBuck.C
)

set(LIBRARIES
  libreactingTwoPhaseSystem
  libfluidThermophysicalModels
  libreactionThermophysicalModels
  libspecie
)

include_directories(.)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include(../phaseSystems/include.cmake)
include(../../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../../src/thermophysicalModels/properties/liquidProperties/include.cmake)
include(../../../../../src/thermophysicalModels/properties/liquidMixtureProperties/include.cmake)
include(../../../../../src/thermophysicalModels/properties/solidProperties/include.cmake)
include(../../../../../src/thermophysicalModels/properties/solidMixtureProperties/include.cmake)
include(../../../../../src/thermophysicalModels/thermophysicalFunctions/include.cmake)
include(../../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../../src/thermophysicalModels/SLGThermo/include.cmake)
include(../../../../../src/thermophysicalModels/chemistryModel/include.cmake)
include(../../../../../src/transportModels/incompressible/include.cmake)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/compressible/include.cmake)
include(../../../../../src/TurbulenceModels/phaseCompressible/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(include.cmake)

add_library(libreactingEulerianInterfacialCompositionModels ${SOURCES})
set_target_properties(libreactingEulerianInterfacialCompositionModels PROPERTIES PREFIX "")

target_link_libraries(libreactingEulerianInterfacialCompositionModels ${LIBRARIES})

install(TARGETS libreactingEulerianInterfacialCompositionModels DESTINATION lib OPTIONAL)
