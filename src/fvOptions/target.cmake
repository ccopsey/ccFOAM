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
  fvOption/fvOption.C
  fvOption/fvOptionIO.C
  fvOption/fvOptionList.C
  fvOption/fvIOoptionList.C
  cellSetOption/cellSetOption.C
  cellSetOption/cellSetOptionIO.C
  interRegionOption/interRegionOption.C
  interRegionOption/interRegionOptionIO.C
  sources/general/codedSource/codedSource.C
  sources/general/semiImplicitSource/semiImplicitSource.C
  sources/derived/actuationDiskSource/actuationDiskSource.C
  sources/derived/effectivenessHeatExchangerSource/effectivenessHeatExchangerSource.C
  sources/derived/explicitPorositySource/explicitPorositySource.C
  sources/derived/meanVelocityForce/meanVelocityForce.C
  sources/derived/meanVelocityForce/meanVelocityForceIO.C
  sources/derived/meanVelocityForce/patchMeanVelocityForce/patchMeanVelocityForce.C
  sources/derived/radialActuationDiskSource/radialActuationDiskSource.C
  sources/derived/rotorDiskSource/rotorDiskSource.C
  sources/derived/rotorDiskSource/bladeModel/bladeModel.C
  sources/derived/rotorDiskSource/profileModel/profileModel.C
  sources/derived/rotorDiskSource/profileModel/profileModelList.C
  sources/derived/rotorDiskSource/profileModel/lookup/lookupProfile.C
  sources/derived/rotorDiskSource/profileModel/series/seriesProfile.C
  sources/derived/rotorDiskSource/trimModel/trimModel/trimModel.C
  sources/derived/rotorDiskSource/trimModel/trimModel/trimModelNew.C
  sources/derived/rotorDiskSource/trimModel/fixed/fixedTrim.C
  sources/derived/rotorDiskSource/trimModel/targetCoeff/targetCoeffTrim.C
  sources/derived/solidificationMeltingSource/solidificationMeltingSource.C
  sources/derived/solidificationMeltingSource/solidificationMeltingSourceIO.C
  sources/derived/tabulatedAccelerationSource/tabulatedAccelerationSource.C
  sources/derived/tabulatedAccelerationSource/tabulated6DoFAcceleration/tabulated6DoFAcceleration.C
  sources/interRegion/interRegionHeatTransfer/interRegionHeatTransferModel/interRegionHeatTransferModel.C
  sources/interRegion/interRegionHeatTransfer/interRegionHeatTransferModel/interRegionHeatTransferModelIO.C
  sources/interRegion/interRegionHeatTransfer/constantHeatTransfer/constantHeatTransfer.C
  sources/interRegion/interRegionHeatTransfer/tabulatedHeatTransfer/tabulatedHeatTransfer.C
  sources/interRegion/interRegionHeatTransfer/variableHeatTransfer/variableHeatTransfer.C
  sources/interRegion/interRegionExplicitPorositySource/interRegionExplicitPorositySource.C
  constraints/general/explicitSetValue/explicitSetValue.C
  constraints/derived/fixedTemperatureConstraint/fixedTemperatureConstraint.C
  corrections/limitTemperature/limitTemperature.C
)

set(LIBRARIES
  libfiniteVolume
  libsampling
  libmeshTools
  libturbulenceModels
  libcompressibleTurbulenceModels
)

include_directories(.)
include(include.cmake)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/finiteVolume/include.cmake)
include(../../src/meshTools/include.cmake)
include(../../src/sampling/include.cmake)
include(../../src/thermophysicalModels/solidThermo/include.cmake)
include(../../src/transportModels/compressible/include.cmake)
include(../../src/thermophysicalModels/basic/include.cmake)
include(../../src/thermophysicalModels/specie/include.cmake)
include(../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../src/TurbulenceModels/compressible/include.cmake)

add_library(libfvOptions ${SOURCES})
set_target_properties(libfvOptions PROPERTIES PREFIX "")

target_link_libraries(libfvOptions ${LIBRARIES})

install(TARGETS libfvOptions DESTINATION lib OPTIONAL)
