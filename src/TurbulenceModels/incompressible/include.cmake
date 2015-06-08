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

include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/.)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/IncompressibleTurbulenceModel)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/SpecificIncompressibleTurbulenceModel)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/derivedFvPatchFields)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/derivedFvPatchFields/wallFunctions/alphatWallFunctions/alphatJayatillekeWallFunction)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/RAS/kkLOmega)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/RAS/LamBremhorstKE)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/RAS/LienCubicKE)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/RAS/LienLeschziner)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/RAS/qZeta)
include_directories(${PROJECT_SOURCE_DIR}/src/TurbulenceModels/incompressible/turbulentTransportModels/RAS/ShihQuadraticKE)
