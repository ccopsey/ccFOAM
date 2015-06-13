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
  phaseModel/phaseModel/phaseModel.C
  phaseModel/phaseModel/newPhaseModel.C
  phaseModel/phaseModel/phaseModels.C
  phasePair/phasePairKey/phasePairKey.C
  phasePair/phasePair/phasePair.C
  phasePair/orderedPhasePair/orderedPhasePair.C
  phaseSystem/phaseSystem.C
  diameterModels/diameterModel/diameterModel.C
  diameterModels/diameterModel/newDiameterModel.C
  diameterModels/constantDiameter/constantDiameter.C
  diameterModels/isothermalDiameter/isothermalDiameter.C
  diameterModels/IATE/IATE.C
  diameterModels/IATE/IATEsources/IATEsource/IATEsource.C
  diameterModels/IATE/IATEsources/wakeEntrainmentCoalescence/wakeEntrainmentCoalescence.C
  diameterModels/IATE/IATEsources/turbulentBreakUp/turbulentBreakUp.C
  diameterModels/IATE/IATEsources/randomCoalescence/randomCoalescence.C
  BlendedInterfacialModel/blendingMethods/blendingMethod/blendingMethod.C
  BlendedInterfacialModel/blendingMethods/blendingMethod/newBlendingMethod.C
  BlendedInterfacialModel/blendingMethods/noBlending/noBlending.C
  BlendedInterfacialModel/blendingMethods/linear/linear.C
  BlendedInterfacialModel/blendingMethods/hyperbolic/hyperbolic.C
  twoPhaseSystem/twoPhaseSystem.C
  twoPhaseSystem/newTwoPhaseSystem.C
  twoPhaseSystem/twoPhaseSystems.C
)

set(LIBRARIES
  libcombustionModels
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../../src/finiteVolume/include.cmake)
include(../interfacialModels/include.cmake)
include(../interfacialCompositionModels/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/compressible/include.cmake)
include(../../../../../src/TurbulenceModels/phaseCompressible/include.cmake)
include(../../../../../src/combustionModels/include.cmake)
include(../../../../../src/fvOptions/include.cmake)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/sampling/include.cmake)

add_library(libreactingTwoPhaseSystem ${SOURCES})
set_target_properties(libreactingTwoPhaseSystem PROPERTIES PREFIX "")

target_link_libraries(libreactingTwoPhaseSystem ${LIBRARIES})

install(TARGETS libreactingTwoPhaseSystem DESTINATION lib OPTIONAL)
