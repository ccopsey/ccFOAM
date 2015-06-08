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

include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/derivedFvPatchFields/greyDiffusiveRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/derivedFvPatchFields/greyDiffusiveViewFactor)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/derivedFvPatchFields/MarshakRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/derivedFvPatchFields/MarshakRadiationFixedTemperature)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/derivedFvPatchFields/radiationCoupledBase)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/derivedFvPatchFields/wideBandDiffusiveRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/include)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/fvDOM/absorptionCoeffs)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/fvDOM/blackBodyEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/fvDOM/fvDOM)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/fvDOM/radiativeIntensityRay)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/noRadiation)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/opaqueSolid)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/P1)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/radiationModel)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/radiationModels/viewFactor)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/absorptionEmissionModel)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/binaryAbsorptionEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/constantAbsorptionEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/greyMeanAbsorptionEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/greyMeanSolidAbsorptionEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/noAbsorptionEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/absorptionEmissionModel/wideBandAbsorptionEmission)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/scatterModel/constantScatter)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/scatterModel/noScatter)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/scatterModel/scatterModel)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/sootModel/mixtureFractionSoot)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/sootModel/noSoot)
include_directories(${PROJECT_SOURCE_DIR}/src/thermophysicalModels/radiation/submodels/sootModel/sootModel)
