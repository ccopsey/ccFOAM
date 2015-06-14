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
  codedFunctionObject/codedFunctionObject.C
  CourantNo/CourantNo.C
  CourantNo/CourantNoFunctionObject.C
  Lambda2/Lambda2.C
  Lambda2/Lambda2FunctionObject.C
  Peclet/Peclet.C
  Peclet/PecletFunctionObject.C
  Q/Q.C
  Q/QFunctionObject.C
  blendingFactor/blendingFactor.C
  blendingFactor/blendingFactorFunctionObject.C
  dsmcFields/dsmcFields.C
  dsmcFields/dsmcFieldsFunctionObject.C
  pressureTools/pressureTools.C
  pressureTools/pressureToolsFunctionObject.C
  residuals/residuals.C
  residuals/residualsFunctionObject.C
  scalarTransport/scalarTransport.C
  scalarTransport/scalarTransportFunctionObject.C
  timeActivatedFileUpdate/timeActivatedFileUpdate.C
  timeActivatedFileUpdate/timeActivatedFileUpdateFunctionObject.C
  turbulenceFields/turbulenceFields.C
  turbulenceFields/turbulenceFieldsFunctionObject.C
  vorticity/vorticity.C
  vorticity/vorticityFunctionObject.C
  wallShearStress/wallShearStress.C
  wallShearStress/wallShearStressFunctionObject.C
  yPlus/yPlus.C
  yPlus/yPlusFunctionObject.C
  setTimeStep/setTimeStepFunctionObject.C
)

set(LIBRARIES
  libfvOptions
  libturbulenceModels
  libincompressibleTurbulenceModels
  libcompressibleTurbulenceModels
  libincompressibleTransportModels
  libcompressibleTransportModels
  libfluidThermophysicalModels
  libspecie
  liblagrangian
  libDSMC
  libfiniteVolume
  libmeshTools
  libsampling
)

include_directories(.)
include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/fvOptions/include.cmake)
include(../../../../src/lagrangian/basic/include.cmake)
include(../../../../src/lagrangian/DSMC/include.cmake)
include_directories(../../../../src/transportModels)
include_directories(../../../../src/transportModels/incompressible/singlePhaseTransportModel)
include(../../../../src/TurbulenceModels/turbulenceModels/include.cmake)
include(../../../../src/TurbulenceModels/incompressible/include.cmake)
include(../../../../src/TurbulenceModels/compressible/include.cmake)
include(../../../../src/transportModels/compressible/include.cmake)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/meshTools/include.cmake)
include(../../../../src/sampling/include.cmake)

add_library(libutilityFunctionObjects ${SOURCES})
set_target_properties(libutilityFunctionObjects PROPERTIES PREFIX "")

target_link_libraries(libutilityFunctionObjects ${LIBRARIES})

install(TARGETS libutilityFunctionObjects DESTINATION lib OPTIONAL)
