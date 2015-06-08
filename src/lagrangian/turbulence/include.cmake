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

include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/derived/basicKinematicCollidingParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/derived/basicKinematicMPPICParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/derived/basicKinematicParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/derived/basicReactingMultiphaseParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/derived/basicReactingParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/derived/basicThermoParcel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/parcels/include)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/submodels/Kinematic/DispersionModel/DispersionRASModel)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/submodels/Kinematic/DispersionModel/GradientDispersionRAS)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/submodels/Kinematic/DispersionModel/StochasticDispersionRAS)
include_directories(${PROJECT_SOURCE_DIR}/src/lagrangian/turbulence/submodels/Thermodynamic/ParticleForces/BrownianMotion)
