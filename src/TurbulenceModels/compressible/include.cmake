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

include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/.)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/CompressibleTurbulenceModel)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/eddyDiffusivity)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/RAS/buoyantKEpsilon)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/SpecificCompressibleTurbulenceModel)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/thermalDiffusivity)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/convectiveHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/externalCoupledTemperatureMixed)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/externalWallHeatFluxTemperature)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/temperatureCoupledBase)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/thermalBaffle1D)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/totalFlowRateAdvectiveDiffusive)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/turbulentHeatFluxTemperature)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/turbulentTemperatureCoupledBaffleMixed)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/turbulentTemperatureRadCoupledMixed)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/compressible/turbulentFluidThermoModels/derivedFvPatchFields/wallHeatTransfer)
