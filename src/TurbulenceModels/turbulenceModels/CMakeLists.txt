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
  turbulenceModel.C
  RAS/v2f/v2fBase.C
  LES/LESdeltas/LESdelta/LESdelta.C
  LES/LESdeltas/cubeRootVolDelta/cubeRootVolDelta.C
  LES/LESdeltas/PrandtlDelta/PrandtlDelta.C
  LES/LESdeltas/vanDriestDelta/vanDriestDelta.C
  LES/LESdeltas/smoothDelta/smoothDelta.C
  LES/LESdeltas/maxDeltaxyz/maxDeltaxyz.C
  LES/LESdeltas/IDDESDelta/IDDESDelta.C
  LES/LESfilters/LESfilter/LESfilter.C
  LES/LESfilters/simpleFilter/simpleFilter.C
  LES/LESfilters/laplaceFilter/laplaceFilter.C
  LES/LESfilters/anisotropicFilter/anisotropicFilter.C
  derivedFvPatchFields/fixedShearStress/fixedShearStressFvPatchVectorField.C
  derivedFvPatchFields/porousBafflePressure/porousBafflePressureFvPatchField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutWallFunction/nutWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkWallFunction/nutkWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkRoughWallFunction/nutkRoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutkAtmRoughWallFunction/nutkAtmRoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUWallFunction/nutUWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUSpaldingWallFunction/nutUSpaldingWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutUTabulatedWallFunction/nutUTabulatedWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutLowReWallFunction/nutLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/nutWallFunctions/nutURoughWallFunction/nutURoughWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonWallFunction/epsilonWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/epsilonWallFunctions/epsilonLowReWallFunction/epsilonLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/omegaWallFunctions/omegaWallFunction/omegaWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/kqRWallFunctions/kqRWallFunction/kqRWallFunctionFvPatchFields.C
  derivedFvPatchFields/wallFunctions/kqRWallFunctions/kLowReWallFunction/kLowReWallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/v2WallFunctions/v2WallFunction/v2WallFunctionFvPatchScalarField.C
  derivedFvPatchFields/wallFunctions/fWallFunctions/fWallFunction/fWallFunctionFvPatchScalarField.C
  RAS/derivedFvPatchFields/turbulentMixingLengthDissipationRateInlet/turbulentMixingLengthDissipationRateInletFvPatchScalarField.C
  RAS/derivedFvPatchFields/turbulentMixingLengthFrequencyInlet/turbulentMixingLengthFrequencyInletFvPatchScalarField.C
  RAS/derivedFvPatchFields/atmBoundaryLayer/atmBoundaryLayer.C
  RAS/derivedFvPatchFields/atmBoundaryLayerInletVelocity/atmBoundaryLayerInletVelocityFvPatchVectorField.C
  RAS/derivedFvPatchFields/atmBoundaryLayerInletK/atmBoundaryLayerInletKFvPatchScalarField.C
  RAS/derivedFvPatchFields/atmBoundaryLayerInletEpsilon/atmBoundaryLayerInletEpsilonFvPatchScalarField.C
)

set(LIBRARIES
  libfiniteVolume
  libmeshTools
)

include(include.cmake)
include(../../../src/OpenFOAM/include.cmake)
include(../../../src/OSspecific/POSIX/include.cmake)
include(../../../src/finiteVolume/include.cmake)
include(../../../src/meshTools/include.cmake)

add_library(libturbulenceModels ${SOURCES})
set_target_properties(libturbulenceModels PROPERTIES PREFIX "")

target_link_libraries(libturbulenceModels ${LIBRARIES})

install(TARGETS libturbulenceModels DESTINATION lib OPTIONAL)
