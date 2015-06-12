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

include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/aspectRatioModels/aspectRatioModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/aspectRatioModels/constantAspectRatio)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/aspectRatioModels/TomiyamaAspectRatio)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/aspectRatioModels/VakhrushevEfremov)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/aspectRatioModels/Wellek)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/dragModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/Ergun)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/Gibilaro)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/GidaspowErgunWenYu)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/GidaspowSchillerNaumann)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/IshiiZuber)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/Lain)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/SchillerNaumann)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/segregated)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/SyamlalOBrien)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/TomiyamaAnalytic)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/TomiyamaCorrelated)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/dragModels/WenYu)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/heatTransferModels/heatTransferModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/heatTransferModels/RanzMarshall)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/heatTransferModels/sphericalHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/liftModels/constantLiftCoefficient)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/liftModels/LegendreMagnaudet)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/liftModels/liftModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/liftModels/Moraga)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/liftModels/noLift)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/liftModels/TomiyamaLift)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/swarmCorrections/noSwarm)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/swarmCorrections/swarmCorrection)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/swarmCorrections/TomiyamaSwarm)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/turbulentDispersionModels/Burns)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/turbulentDispersionModels/constantTurbulentDispersionCoefficient)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/turbulentDispersionModels/Gosman)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/turbulentDispersionModels/LopezDeBertodano)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/turbulentDispersionModels/noTurbulentDispersion)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/turbulentDispersionModels/turbulentDispersionModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/virtualMassModels/constantVirtualMassCoefficient)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/virtualMassModels/Lamb)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/virtualMassModels/noVirtualMass)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/virtualMassModels/virtualMassModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/wallDependentModel)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/wallLubricationModels/Antal)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/wallLubricationModels/Frank)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/wallLubricationModels/noWallLubrication)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/wallLubricationModels/TomiyamaWallLubrication)
include_directories(${PROJECT_SOURCE_DIR}/applications/solvers/multiphase/reactingTwoPhaseEulerFoam/interfacialModels/wallLubricationModels/wallLubricationModel)
