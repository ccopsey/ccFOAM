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
  foamDebugSwitches.C
)

set(LIBRARIES
  libOpenFOAM
  libautoMesh
  libbarotropicCompressibilityModel
  libsolidThermo
  libcompressibleTransportModels
  libfluidThermophysicalModels
  libblockMesh
  libchemistryModel
  libcoalCombustion
  libcompressibleTurbulenceModels
  libconversion
  libdecompositionMethods
  libdistributed
  libdistributionModels
  libDSMC
  libdynamicFvMesh
  libdynamicMesh
  libedgeMesh
  libengine
  libfieldFunctionObjects
  libfileFormats
  libfiniteVolume
  libfoamCalcFunctions
  libforces
  libfvMotionSolvers
  libgenericPatchFields
  libincompressibleTransportModels
  libincompressibleTurbulenceModels
  libinterfaceProperties
  libIOFunctionObjects
  libjobControl
  liblagrangian
  liblagrangianIntermediate
  liblaminarFlameSpeedModels
  libliquidMixtureProperties
  libliquidProperties
  libmeshTools
  libmolecularMeasurements
  libmolecule
  libODE
  libOpenFOAM
  libpotential
  libradiationModels
  librandomProcesses
  libreactionThermophysicalModels
  libreconstruct
  libsampling
  libSLGThermo
  libsolidMixtureProperties
  libsolidParticle
  libsolidProperties
  libspecie
  libsurfaceFilmModels
  libsurfMesh
  libsystemCall
  libthermophysicalFunctions
  libtopoChangerFvMesh
  libtriSurface
  libturbulenceModels
  libtwoPhaseProperties
  libutilityFunctionObjects
)

include_directories(.)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)

add_executable(foamDebugSwitches ${SOURCES})

target_link_libraries(foamDebugSwitches ${LIBRARIES})

install(TARGETS foamDebugSwitches DESTINATION applications OPTIONAL)
