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
  parcels/derived/basicKinematicParcel/makeBasicKinematicParcelSubmodels.C
  parcels/derived/basicKinematicCollidingParcel/makeBasicKinematicCollidingParcelSubmodels.C
  parcels/derived/basicThermoParcel/makeBasicThermoParcelSubmodels.C
  parcels/derived/basicReactingParcel/makeBasicReactingParcelSubmodels.C
  parcels/derived/basicReactingMultiphaseParcel/makeBasicReactingMultiphaseParcelSubmodels.C
  parcels/derived/basicKinematicMPPICParcel/makeBasicKinematicMPPICParcelSubmodels.C
)

set(LIBRARIES
  liblagrangian
  liblagrangianIntermediate
  libdistributionModels
  libspecie
  libcompressibleTransportModels
  libfluidThermophysicalModels
  libliquidProperties
  libliquidMixtureProperties
  libsolidProperties
  libsolidMixtureProperties
  libreactionThermophysicalModels
  libSLGThermo
  libradiationModels
  libturbulenceModels
  libincompressibleTurbulenceModels
  libcompressibleTurbulenceModels
  libincompressibleTransportModels
  libregionModels
  libsurfaceFilmModels
  libdynamicFvMesh
  libsampling
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/lagrangian/basic/include.cmake)
include(../../../src/lagrangian/intermediate/include.cmake)
include(../../../src/lagrangian/distributionModels/include.cmake)
include(../../../src/transportModels/compressible/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/basic/include.cmake)
include(../../../src/thermophysicalModels/properties/liquidProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/liquidMixtureProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/solidProperties/include.cmake)
include(../../../src/thermophysicalModels/properties/solidMixtureProperties/include.cmake)
include(../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../src/thermophysicalModels/SLGThermo/include.cmake)
include(../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../src/TurbulenceModels/incompressible/include.cmake)
include(../../../src/TurbulenceModels/compressible/include.cmake)
include_directories(../../../src/transportModels)
include(../../../src/regionModels/regionModel/include.cmake)
include(../../../src/regionModels/surfaceFilmModels/include.cmake)
include(../../../src/dynamicFvMesh/include.cmake)
include(../../../src/sampling/include.cmake)
include(../../../src/meshTools/include.cmake)

add_library(liblagrangianTurbulence ${SOURCES})
set_target_properties(liblagrangianTurbulence PROPERTIES PREFIX "")

target_link_libraries(liblagrangianTurbulence ${LIBRARIES})

install(TARGETS liblagrangianTurbulence DESTINATION lib OPTIONAL)
