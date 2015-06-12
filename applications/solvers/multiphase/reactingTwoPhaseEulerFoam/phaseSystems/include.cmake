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

include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/BlendedInterfacialModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/BlendedInterfacialModel/blendingMethods/blendingMethod)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/BlendedInterfacialModel/blendingMethods/hyperbolic)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/BlendedInterfacialModel/blendingMethods/linear)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/BlendedInterfacialModel/blendingMethods/noBlending)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/constantDiameter)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/diameterModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/IATE)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/IATE/IATEsources/dummy)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/IATE/IATEsources/IATEsource)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/IATE/IATEsources/randomCoalescence)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/IATE/IATEsources/turbulentBreakUp)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/IATE/IATEsources/wakeEntrainmentCoalescence)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/diameterModels/isothermalDiameter)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/AnisothermalPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/InertPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/IsothermalPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/MovingPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/MultiComponentPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/phaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/PurePhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/ReactingPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseModel/ThermoPhaseModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phasePair/orderedPhasePair)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phasePair/phasePair)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phasePair/phasePairKey)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/phaseSystem)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/PhaseSystems/HeatAndMassTransferPhaseSystem)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/PhaseSystems/HeatTransferPhaseSystem)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/PhaseSystems/MomentumTransferPhaseSystem)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/phaseSystems/twoPhaseSystem)
