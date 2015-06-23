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
  LTSCoalChemistryFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfiniteVolume
  libmeshTools
  libturbulenceModels
  libcompressibleTurbulenceModels
  liblagrangian
  liblagrangianIntermediate
  liblagrangianTurbulence
  libcoalCombustion
  libspecie
  libcompressibleTransportModels
  libfluidThermophysicalModels
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libthermophysicalFunctions
  libreactionThermophysicalModels
  libSLGThermo
  libchemistryModel
  libradiationModels
  libregionModels
  libsurfaceFilmModels
  libODE
  libcombustionModels
  libfvOptions
  libsampling
)

include_directories(.)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../../../src/finiteVolume/include.cmake)
include_directories(../../reactingParcelFoam/LTSReactingParcelFoam)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../../src/TurbulenceModels/compressible/include.cmake)
include(../../../../../src/lagrangian/basic/include.cmake)
include(../../../../../src/lagrangian/intermediate/include.cmake)
include(../../../../../src/lagrangian/coalCombustion/include.cmake)
include(../../../../../src/lagrangian/distributionModels/include.cmake)
include(../../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../../src/transportModels/compressible/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../../src/thermophysicalModels/properties/liquidProperties/include.cmake)
include(../../../../../src/thermophysicalModels/properties/liquidMixtureProperties/include.cmake)
include(../../../../../src/thermophysicalModels/properties/solidProperties/include.cmake)
include(../../../../../src/thermophysicalModels/properties/solidMixtureProperties/include.cmake)
include(../../../../../src/thermophysicalModels/thermophysicalFunctions/include.cmake)
include(../../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../../src/thermophysicalModels/SLGThermo/include.cmake)
include(../../../../../src/thermophysicalModels/chemistryModel/include.cmake)
include(../../../../../src/thermophysicalModels/radiation/include.cmake)
include(../../../../../src/regionModels/regionModel/include.cmake)
include(../../../../../src/regionModels/surfaceFilmModels/include.cmake)
include(../../../../../src/ODE/include.cmake)
include(../../../../../src/combustionModels/include.cmake)
include_directories(../../../../../applications/solvers/combustion/reactingFoam)
include(../../../../../src/fvOptions/include.cmake)
include(../../../../../src/sampling/include.cmake)

add_executable(LTSCoalChemistryFoam ${SOURCES})

target_link_libraries(LTSCoalChemistryFoam ${LIBRARIES})

install(TARGETS LTSCoalChemistryFoam DESTINATION applications OPTIONAL)
