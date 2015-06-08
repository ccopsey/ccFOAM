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
  compressibleTurbulenceModel.C
  turbulentFluidThermoModels/turbulentFluidThermoModels.C
  turbulentFluidThermoModels/derivedFvPatchFields/turbulentHeatFluxTemperature/turbulentHeatFluxTemperatureFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/temperatureCoupledBase/temperatureCoupledBase.C
  turbulentFluidThermoModels/derivedFvPatchFields/turbulentTemperatureCoupledBaffleMixed/turbulentTemperatureCoupledBaffleMixedFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/thermalBaffle1D/thermalBaffle1DFvPatchScalarFields.C
  turbulentFluidThermoModels/derivedFvPatchFields/totalFlowRateAdvectiveDiffusive/totalFlowRateAdvectiveDiffusiveFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/turbulentTemperatureRadCoupledMixed/turbulentTemperatureRadCoupledMixedFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/externalWallHeatFluxTemperature/externalWallHeatFluxTemperatureFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/wallHeatTransfer/wallHeatTransferFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/externalCoupledTemperatureMixed/externalCoupledTemperatureMixedFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/convectiveHeatTransfer/convectiveHeatTransferFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatWallFunction/alphatWallFunctionFvPatchScalarField.C
  turbulentFluidThermoModels/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction/alphatJayatillekeWallFunctionFvPatchScalarField.C
)

set(LIBRARIES
  libcompressibleTransportModels
  libfluidThermophysicalModels
  libsolidThermo
  libsolidSpecie
  libturbulenceModels
  libspecie
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../turbulenceModels/include.cmake)
include(../../../src/transportModels/compressible/include.cmake)
include(../../../src/thermophysicalModels/basic/include.cmake)
include(../../../src/thermophysicalModels/specie/include.cmake)
include(../../../src/thermophysicalModels/solidThermo/include.cmake)
include(../../../src/thermophysicalModels/solidSpecie/include.cmake)
include(../../../src/meshTools/include.cmake)

add_library(libcompressibleTurbulenceModels ${SOURCES})
set_target_properties(libcompressibleTurbulenceModels PROPERTIES PREFIX "")

target_link_libraries(libcompressibleTurbulenceModels ${LIBRARIES})

install(TARGETS libcompressibleTurbulenceModels DESTINATION lib OPTIONAL)
