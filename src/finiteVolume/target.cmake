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
  fvMesh/fvMeshGeometry.C
  fvMesh/fvMesh.C
  fvMesh/singleCellFvMesh/singleCellFvMesh.C
  fvMesh/fvMeshSubset/fvMeshSubset.C
  fvMesh/fvBoundaryMesh/fvBoundaryMesh.C
  fvMesh/fvPatches/fvPatch/fvPatch.C
  fvMesh/fvPatches/fvPatch/fvPatchNew.C
  fvMesh/fvPatches/basic/coupled/coupledFvPatch.C
  fvMesh/fvPatches/basic/generic/genericFvPatch.C
  fvMesh/fvPatches/constraint/cyclic/cyclicFvPatch.C
  fvMesh/fvPatches/constraint/cyclicAMI/cyclicAMIFvPatch.C
  fvMesh/fvPatches/constraint/cyclicACMI/cyclicACMIFvPatch.C
  fvMesh/fvPatches/constraint/cyclicSlip/cyclicSlipFvPatch.C
  fvMesh/fvPatches/constraint/empty/emptyFvPatch.C
  fvMesh/fvPatches/constraint/nonuniformTransformCyclic/nonuniformTransformCyclicFvPatch.C
  fvMesh/fvPatches/constraint/processor/processorFvPatch.C
  fvMesh/fvPatches/constraint/processorCyclic/processorCyclicFvPatch.C
  fvMesh/fvPatches/constraint/symmetryPlane/symmetryPlaneFvPatch.C
  fvMesh/fvPatches/constraint/symmetry/symmetryFvPatch.C
  fvMesh/fvPatches/constraint/wedge/wedgeFvPatch.C
  fvMesh/fvPatches/derived/wall/wallFvPatch.C
  fvMesh/fvPatches/derived/mapped/mappedFvPatch.C
  fvMesh/fvPatches/derived/mapped/mappedWallFvPatch.C
  fvMesh/fvPatches/derived/regionCoupled/regionCoupledBaseFvPatch.C
  fvMesh/fvPatches/derived/regionCoupled/regionCoupledFvPatch.C
  fvMesh/fvPatches/derived/regionCoupled/regionCoupledWallFvPatch.C
  fvMesh/wallDist/wallPointYPlus/wallPointYPlus.C
  fvMesh/wallDist/nearWallDist/nearWallDistNoSearch.C
  fvMesh/wallDist/nearWallDist/nearWallDist.C
  fvMesh/wallDist/wallDist/wallDist.C
  fvMesh/wallDist/patchDistMethods/patchDistMethod/patchDistMethod.C
  fvMesh/wallDist/patchDistMethods/meshWave/meshWavePatchDistMethod.C
  fvMesh/wallDist/patchDistMethods/Poisson/PoissonPatchDistMethod.C
  fvMesh/wallDist/patchDistMethods/advectionDiffusion/advectionDiffusionPatchDistMethod.C
  fvMesh/fvMeshMapper/fvPatchMapper.C
  fvMesh/fvMeshMapper/fvSurfaceMapper.C
  fvMesh/extendedStencil/cellToCell/extendedCellToCellStencil.C
  fvMesh/extendedStencil/cellToCell/extendedCentredCellToCellStencil.C
  fvMesh/extendedStencil/cellToCell/globalIndexStencils/cellToCellStencil.C
  fvMesh/extendedStencil/cellToCell/globalIndexStencils/CFCCellToCellStencil.C
  fvMesh/extendedStencil/cellToCell/globalIndexStencils/CPCCellToCellStencil.C
  fvMesh/extendedStencil/cellToCell/globalIndexStencils/CECCellToCellStencil.C
  fvMesh/extendedStencil/cellToCell/MeshObjects/centredCECCellToCellStencilObject.C
  fvMesh/extendedStencil/cellToCell/MeshObjects/centredCFCCellToCellStencilObject.C
  fvMesh/extendedStencil/cellToCell/MeshObjects/centredCPCCellToCellStencilObject.C
  fvMesh/extendedStencil/cellToFace/globalIndexStencils/cellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/globalIndexStencils/CFCCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/globalIndexStencils/CECCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/globalIndexStencils/CPCCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/globalIndexStencils/FECCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/extendedCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/extendedCentredCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/extendedUpwindCellToFaceStencil.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/centredCECCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/centredCFCCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/centredCPCCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/centredFECCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/upwindCECCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/upwindCFCCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/upwindCPCCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/upwindFECCellToFaceStencilObject.C
  fvMesh/extendedStencil/cellToFace/MeshObjects/pureUpwindCFCCellToFaceStencilObject.C
  fvMesh/extendedStencil/faceToCell/globalIndexStencils/faceToCellStencil.C
  fvMesh/extendedStencil/faceToCell/globalIndexStencils/CFCFaceToCellStencil.C
  fvMesh/extendedStencil/faceToCell/extendedFaceToCellStencil.C
  fvMesh/extendedStencil/faceToCell/extendedCentredFaceToCellStencil.C
  fvMesh/extendedStencil/faceToCell/MeshObjects/centredCFCFaceToCellStencilObject.C
  fields/fvPatchFields/fvPatchField/fvPatchFields.C
  fields/fvPatchFields/basic/basicSymmetry/basicSymmetryFvPatchScalarField.C
  fields/fvPatchFields/basic/calculated/calculatedFvPatchFields.C
  fields/fvPatchFields/basic/coupled/coupledFvPatchFields.C
  fields/fvPatchFields/basic/directionMixed/directionMixedFvPatchFields.C
  fields/fvPatchFields/basic/fixedGradient/fixedGradientFvPatchFields.C
  fields/fvPatchFields/basic/fixedValue/fixedValueFvPatchFields.C
  fields/fvPatchFields/basic/mixed/mixedFvPatchFields.C
  fields/fvPatchFields/basic/sliced/slicedFvPatchFields.C
  fields/fvPatchFields/basic/transform/transformFvPatchFields.C
  fields/fvPatchFields/basic/transform/transformFvPatchScalarField.C
  fields/fvPatchFields/basic/zeroGradient/zeroGradientFvPatchFields.C
  fields/fvPatchFields/constraint/cyclic/cyclicFvPatchFields.C
  fields/fvPatchFields/constraint/cyclicAMI/cyclicAMIFvPatchFields.C
  fields/fvPatchFields/constraint/cyclicACMI/cyclicACMIFvPatchFields.C
  fields/fvPatchFields/constraint/cyclicSlip/cyclicSlipFvPatchFields.C
  fields/fvPatchFields/constraint/empty/emptyFvPatchFields.C
  fields/fvPatchFields/constraint/jumpCyclic/jumpCyclicFvPatchFields.C
  fields/fvPatchFields/constraint/jumpCyclicAMI/jumpCyclicAMIFvPatchFields.C
  fields/fvPatchFields/constraint/nonuniformTransformCyclic/nonuniformTransformCyclicFvPatchFields.C
  fields/fvPatchFields/constraint/processor/processorFvPatchFields.C
  fields/fvPatchFields/constraint/processor/processorFvPatchScalarField.C
  fields/fvPatchFields/constraint/processorCyclic/processorCyclicFvPatchFields.C
  fields/fvPatchFields/constraint/symmetryPlane/symmetryPlaneFvPatchFields.C
  fields/fvPatchFields/constraint/symmetryPlane/symmetryPlaneFvPatchScalarField.C
  fields/fvPatchFields/constraint/symmetry/symmetryFvPatchFields.C
  fields/fvPatchFields/constraint/wedge/wedgeFvPatchFields.C
  fields/fvPatchFields/constraint/wedge/wedgeFvPatchScalarField.C
  fields/fvPatchFields/derived/activeBaffleVelocity/activeBaffleVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/activePressureForceBaffleVelocity/activePressureForceBaffleVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/advective/advectiveFvPatchFields.C
  fields/fvPatchFields/derived/codedFixedValue/codedFixedValueFvPatchFields.C
  fields/fvPatchFields/derived/codedMixed/codedMixedFvPatchFields.C
  fields/fvPatchFields/derived/cylindricalInletVelocity/cylindricalInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/externalCoupledMixed/externalCoupledMixedFvPatchFields.C
  fields/fvPatchFields/derived/fan/fanFvPatchFields.C
  fields/fvPatchFields/derived/fanPressure/fanPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/fixedFluxPressure/fixedFluxPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/fixedInternalValueFvPatchField/fixedInternalValueFvPatchFields.C
  fields/fvPatchFields/derived/fixedJump/fixedJumpFvPatchFields.C
  fields/fvPatchFields/derived/fixedJumpAMI/fixedJumpAMIFvPatchFields.C
  fields/fvPatchFields/derived/fixedMean/fixedMeanFvPatchFields.C
  fields/fvPatchFields/derived/fixedNormalSlip/fixedNormalSlipFvPatchFields.C
  fields/fvPatchFields/derived/fixedPressureCompressibleDensity/fixedPressureCompressibleDensityFvPatchScalarField.C
  fields/fvPatchFields/derived/flowRateInletVelocity/flowRateInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/fluxCorrectedVelocity/fluxCorrectedVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/freestream/freestreamFvPatchFields.C
  fields/fvPatchFields/derived/freestreamPressure/freestreamPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/inletOutlet/inletOutletFvPatchFields.C
  fields/fvPatchFields/derived/inletOutletTotalTemperature/inletOutletTotalTemperatureFvPatchScalarField.C
  fields/fvPatchFields/derived/mappedField/mappedFieldFvPatchFields.C
  fields/fvPatchFields/derived/mappedFixedInternalValue/mappedFixedInternalValueFvPatchFields.C
  fields/fvPatchFields/derived/mappedFixedPushedInternalValue/mappedFixedPushedInternalValueFvPatchFields.C
  fields/fvPatchFields/derived/mappedFixedValue/mappedFixedValueFvPatchFields.C
  fields/fvPatchFields/derived/mappedFlowRate/mappedFlowRateFvPatchVectorField.C
  fields/fvPatchFields/derived/mappedVelocityFluxFixedValue/mappedVelocityFluxFixedValueFvPatchField.C
  fields/fvPatchFields/derived/movingWallVelocity/movingWallVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/oscillatingFixedValue/oscillatingFixedValueFvPatchFields.C
  fields/fvPatchFields/derived/outletInlet/outletInletFvPatchFields.C
  fields/fvPatchFields/derived/outletMappedUniformInlet/outletMappedUniformInletFvPatchFields.C
  fields/fvPatchFields/derived/partialSlip/partialSlipFvPatchFields.C
  fields/fvPatchFields/derived/phaseHydrostaticPressure/phaseHydrostaticPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/pressureDirectedInletOutletVelocity/pressureDirectedInletOutletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/pressureDirectedInletVelocity/pressureDirectedInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/pressureInletOutletParSlipVelocity/pressureInletOutletParSlipVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/pressureInletOutletVelocity/pressureInletOutletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/pressureInletUniformVelocity/pressureInletUniformVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/pressureInletVelocity/pressureInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/pressureNormalInletOutletVelocity/pressureNormalInletOutletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/fixedNormalInletOutletVelocity/fixedNormalInletOutletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/rotatingPressureInletOutletVelocity/rotatingPressureInletOutletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/rotatingTotalPressure/rotatingTotalPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/rotatingWallVelocity/rotatingWallVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/slip/slipFvPatchFields.C
  fields/fvPatchFields/derived/supersonicFreestream/supersonicFreestreamFvPatchVectorField.C
  fields/fvPatchFields/derived/surfaceNormalFixedValue/surfaceNormalFixedValueFvPatchVectorField.C
  fields/fvPatchFields/derived/swirlFlowRateInletVelocity/swirlFlowRateInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/syringePressure/syringePressureFvPatchScalarField.C
  fields/fvPatchFields/derived/timeVaryingMappedFixedValue/AverageIOFields.C
  fields/fvPatchFields/derived/timeVaryingMappedFixedValue/timeVaryingMappedFixedValueFvPatchFields.C
  fields/fvPatchFields/derived/totalPressure/totalPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/totalTemperature/totalTemperatureFvPatchScalarField.C
  fields/fvPatchFields/derived/translatingWallVelocity/translatingWallVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/turbulentInlet/turbulentInletFvPatchFields.C
  fields/fvPatchFields/derived/turbulentIntensityKineticEnergyInlet/turbulentIntensityKineticEnergyInletFvPatchScalarField.C
  fields/fvPatchFields/derived/uniformDensityHydrostaticPressure/uniformDensityHydrostaticPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/uniformFixedGradient/uniformFixedGradientFvPatchFields.C
  fields/fvPatchFields/derived/uniformFixedValue/uniformFixedValueFvPatchFields.C
  fields/fvPatchFields/derived/uniformInletOutlet/uniformInletOutletFvPatchFields.C
  fields/fvPatchFields/derived/uniformJump/uniformJumpFvPatchFields.C
  fields/fvPatchFields/derived/uniformJumpAMI/uniformJumpAMIFvPatchFields.C
  fields/fvPatchFields/derived/uniformTotalPressure/uniformTotalPressureFvPatchScalarField.C
  fields/fvPatchFields/derived/variableHeightFlowRate/variableHeightFlowRateFvPatchField.C
  fields/fvPatchFields/derived/variableHeightFlowRateInletVelocity/variableHeightFlowRateInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/outletPhaseMeanVelocity/outletPhaseMeanVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/waveTransmissive/waveTransmissiveFvPatchFields.C
  fields/fvPatchFields/derived/waveSurfacePressure/waveSurfacePressureFvPatchScalarField.C
  fields/fvPatchFields/derived/interstitialInletVelocity/interstitialInletVelocityFvPatchVectorField.C
  fields/fvPatchFields/derived/prghPressure/prghPressureFvPatchScalarField.C
  fields/fvsPatchFields/fvsPatchField/fvsPatchFields.C
  fields/fvsPatchFields/basic/calculated/calculatedFvsPatchFields.C
  fields/fvsPatchFields/basic/coupled/coupledFvsPatchFields.C
  fields/fvsPatchFields/basic/fixedValue/fixedValueFvsPatchFields.C
  fields/fvsPatchFields/basic/sliced/slicedFvsPatchFields.C
  fields/fvsPatchFields/constraint/cyclic/cyclicFvsPatchFields.C
  fields/fvsPatchFields/constraint/cyclicAMI/cyclicAMIFvsPatchFields.C
  fields/fvsPatchFields/constraint/cyclicACMI/cyclicACMIFvsPatchFields.C
  fields/fvsPatchFields/constraint/cyclicSlip/cyclicSlipFvsPatchFields.C
  fields/fvsPatchFields/constraint/empty/emptyFvsPatchFields.C
  fields/fvsPatchFields/constraint/nonuniformTransformCyclic/nonuniformTransformCyclicFvsPatchFields.C
  fields/fvsPatchFields/constraint/processor/processorFvsPatchFields.C
  fields/fvsPatchFields/constraint/processorCyclic/processorCyclicFvsPatchFields.C
  fields/fvsPatchFields/constraint/symmetryPlane/symmetryPlaneFvsPatchFields.C
  fields/fvsPatchFields/constraint/symmetry/symmetryFvsPatchFields.C
  fields/fvsPatchFields/constraint/wedge/wedgeFvsPatchFields.C
  fields/volFields/volFields.C
  fields/surfaceFields/surfaceFields.C
  fvMatrices/fvMatrices.C
  fvMatrices/fvScalarMatrix/fvScalarMatrix.C
  fvMatrices/solvers/MULES/MULES.C
  fvMatrices/solvers/MULES/CMULES.C
  fvMatrices/solvers/MULES/IMULES.C
  fvMatrices/solvers/GAMGSymSolver/GAMGAgglomerations/faceAreaPairGAMGAgglomeration/faceAreaPairGAMGAgglomeration.C
  interpolation/interpolation/interpolation/interpolations.C
  interpolation/interpolation/interpolationCell/makeInterpolationCell.C
  interpolation/interpolation/interpolationCellPatchConstrained/makeInterpolationCellPatchConstrained.C
  interpolation/interpolation/interpolationCellPoint/cellPointWeight/cellPointWeight.C
  interpolation/interpolation/interpolationCellPoint/makeInterpolationCellPoint.C
  interpolation/interpolation/interpolationCellPointFace/makeInterpolationCellPointFace.C
  interpolation/interpolation/interpolationCellPointWallModified/cellPointWeightWallModified/cellPointWeightWallModified.C
  interpolation/interpolation/interpolationCellPointWallModified/makeInterpolationCellPointWallModified.C
  interpolation/interpolation/interpolationPointMVC/pointMVCWeight.C
  interpolation/interpolation/interpolationPointMVC/makeInterpolationPointMVC.C
  interpolation/volPointInterpolation/volPointInterpolation.C
  interpolation/volPointInterpolation/pointConstraints.C
  interpolation/surfaceInterpolation/surfaceInterpolation/surfaceInterpolation.C
  interpolation/surfaceInterpolation/surfaceInterpolationScheme/surfaceInterpolationSchemes.C
  interpolation/surfaceInterpolation/blendedSchemeBase/blendedSchemeBaseName.C
  interpolation/surfaceInterpolation/schemes/linear/linear.C
  interpolation/surfaceInterpolation/schemes/pointLinear/pointLinear.C
  interpolation/surfaceInterpolation/schemes/midPoint/midPoint.C
  interpolation/surfaceInterpolation/schemes/downwind/downwind.C
  interpolation/surfaceInterpolation/schemes/weighted/weighted.C
  interpolation/surfaceInterpolation/schemes/cubic/cubic.C
  interpolation/surfaceInterpolation/schemes/skewCorrected/skewCorrectionVectors.C
  interpolation/surfaceInterpolation/schemes/skewCorrected/skewCorrected.C
  interpolation/surfaceInterpolation/schemes/outletStabilised/outletStabilised.C
  interpolation/surfaceInterpolation/schemes/reverseLinear/reverseLinear.C
  interpolation/surfaceInterpolation/schemes/clippedLinear/clippedLinear.C
  interpolation/surfaceInterpolation/schemes/harmonic/harmonic.C
  interpolation/surfaceInterpolation/schemes/fixedBlended/fixedBlended.C
  interpolation/surfaceInterpolation/schemes/localBlended/localBlended.C
  interpolation/surfaceInterpolation/schemes/limiterBlended/limiterBlended.C
  interpolation/surfaceInterpolation/schemes/CoBlended/CoBlended.C
  interpolation/surfaceInterpolation/schemes/localMax/localMax.C
  interpolation/surfaceInterpolation/schemes/localMin/localMin.C
  interpolation/surfaceInterpolation/schemes/linearFit/linearFit.C
  interpolation/surfaceInterpolation/schemes/biLinearFit/biLinearFit.C
  interpolation/surfaceInterpolation/schemes/quadraticLinearFit/quadraticLinearFit.C
  interpolation/surfaceInterpolation/schemes/quadraticFit/quadraticFit.C
  interpolation/surfaceInterpolation/schemes/quadraticLinearUpwindFit/quadraticLinearUpwindFit.C
  interpolation/surfaceInterpolation/schemes/quadraticUpwindFit/quadraticUpwindFit.C
  interpolation/surfaceInterpolation/schemes/cubicUpwindFit/cubicUpwindFit.C
  interpolation/surfaceInterpolation/schemes/linearPureUpwindFit/linearPureUpwindFit.C
  interpolation/surfaceInterpolation/schemes/linearUpwind/linearUpwind.C
  interpolation/surfaceInterpolation/schemes/linearUpwind/linearUpwindV.C
  interpolation/surfaceInterpolation/schemes/LUST/LUST.C
  interpolation/surfaceInterpolation/limitedSchemes/limitedSurfaceInterpolationScheme/limitedSurfaceInterpolationSchemes.C
  interpolation/surfaceInterpolation/limitedSchemes/upwind/upwind.C
  interpolation/surfaceInterpolation/limitedSchemes/blended/blended.C
  interpolation/surfaceInterpolation/limitedSchemes/Gamma/Gamma.C
  interpolation/surfaceInterpolation/limitedSchemes/SFCD/SFCD.C
  interpolation/surfaceInterpolation/limitedSchemes/Minmod/Minmod.C
  interpolation/surfaceInterpolation/limitedSchemes/vanLeer/vanLeer.C
  interpolation/surfaceInterpolation/limitedSchemes/vanAlbada/vanAlbada.C
  interpolation/surfaceInterpolation/limitedSchemes/OSPRE/OSPRE.C
  interpolation/surfaceInterpolation/limitedSchemes/limitedLinear/limitedLinear.C
  interpolation/surfaceInterpolation/limitedSchemes/limitedCubic/limitedCubic.C
  interpolation/surfaceInterpolation/limitedSchemes/SuperBee/SuperBee.C
  interpolation/surfaceInterpolation/limitedSchemes/QUICK/QUICK.C
  interpolation/surfaceInterpolation/limitedSchemes/MUSCL/MUSCL.C
  interpolation/surfaceInterpolation/limitedSchemes/UMIST/UMIST.C
  interpolation/surfaceInterpolation/limitedSchemes/Phi/Phi.C
  interpolation/surfaceInterpolation/limitedSchemes/filteredLinear/filteredLinear.C
  interpolation/surfaceInterpolation/limitedSchemes/filteredLinear2/filteredLinear2.C
  interpolation/surfaceInterpolation/limitedSchemes/filteredLinear3/filteredLinear3.C
  interpolation/surfaceInterpolation/limitedSchemes/limitWith/limitWith.C
  interpolation/surfaceInterpolation/multivariateSchemes/multivariateSurfaceInterpolationScheme/multivariateSurfaceInterpolationSchemes.C
  interpolation/surfaceInterpolation/multivariateSchemes/multivariateSelectionScheme/multivariateSelectionSchemes.C
  interpolation/surfaceInterpolation/multivariateSchemes/multivariateIndependentScheme/multivariateIndependentSchemes.C
  interpolation/surfaceInterpolation/multivariateSchemes/upwind/multivariateUpwind.C
  interpolation/surfaceInterpolation/multivariateSchemes/Gamma/multivariateGamma.C
  interpolation/surfaceInterpolation/multivariateSchemes/vanLeer/multivariateVanLeer.C
  interpolation/surfaceInterpolation/multivariateSchemes/Minmod/multivariateMinmod.C
  interpolation/surfaceInterpolation/multivariateSchemes/SuperBee/multivariateSuperBee.C
  interpolation/surfaceInterpolation/multivariateSchemes/MUSCL/multivariateMUSCL.C
  interpolation/surfaceInterpolation/multivariateSchemes/limitedLinear/multivariateLimitedLinear.C
  interpolation/surfaceInterpolation/multivariateSchemes/limitedCubic/multivariateLimitedCubic.C
  finiteVolume/fv/fv.C
  finiteVolume/fvSchemes/fvSchemes.C
  finiteVolume/ddtSchemes/ddtScheme/ddtSchemes.C
  finiteVolume/ddtSchemes/steadyStateDdtScheme/steadyStateDdtSchemes.C
  finiteVolume/ddtSchemes/EulerDdtScheme/EulerDdtSchemes.C
  finiteVolume/ddtSchemes/CoEulerDdtScheme/CoEulerDdtSchemes.C
  finiteVolume/ddtSchemes/SLTSDdtScheme/SLTSDdtSchemes.C
  finiteVolume/ddtSchemes/localEulerDdtScheme/localEulerDdt.C
  finiteVolume/ddtSchemes/localEulerDdtScheme/localEulerDdtSchemes.C
  finiteVolume/ddtSchemes/backwardDdtScheme/backwardDdtSchemes.C
  finiteVolume/ddtSchemes/CrankNicolsonDdtScheme/CrankNicolsonDdtSchemes.C
  finiteVolume/ddtSchemes/boundedDdtScheme/boundedDdtSchemes.C
  finiteVolume/d2dt2Schemes/d2dt2Scheme/d2dt2Schemes.C
  finiteVolume/d2dt2Schemes/steadyStateD2dt2Scheme/steadyStateD2dt2Schemes.C
  finiteVolume/d2dt2Schemes/EulerD2dt2Scheme/EulerD2dt2Schemes.C
  finiteVolume/divSchemes/divScheme/divSchemes.C
  finiteVolume/divSchemes/gaussDivScheme/gaussDivSchemes.C
  finiteVolume/gradSchemes/gradScheme/gradSchemes.C
  finiteVolume/gradSchemes/gaussGrad/gaussGrads.C
  finiteVolume/gradSchemes/leastSquaresGrad/leastSquaresVectors.C
  finiteVolume/gradSchemes/leastSquaresGrad/leastSquaresGrads.C
  finiteVolume/gradSchemes/LeastSquaresGrad/LeastSquaresGrads.C
  finiteVolume/gradSchemes/fourthGrad/fourthGrads.C
  finiteVolume/gradSchemes/limitedGradSchemes/faceLimitedGrad/faceLimitedGrads.C
  finiteVolume/gradSchemes/limitedGradSchemes/cellLimitedGrad/cellLimitedGrads.C
  finiteVolume/gradSchemes/limitedGradSchemes/faceMDLimitedGrad/faceMDLimitedGrads.C
  finiteVolume/gradSchemes/limitedGradSchemes/cellMDLimitedGrad/cellMDLimitedGrads.C
  finiteVolume/snGradSchemes/snGradScheme/snGradSchemes.C
  finiteVolume/snGradSchemes/correctedSnGrad/correctedSnGrads.C
  finiteVolume/snGradSchemes/faceCorrectedSnGrad/faceCorrectedSnGrads.C
  finiteVolume/snGradSchemes/limitedSnGrad/limitedSnGrads.C
  finiteVolume/snGradSchemes/uncorrectedSnGrad/uncorrectedSnGrads.C
  finiteVolume/snGradSchemes/orthogonalSnGrad/orthogonalSnGrads.C
  finiteVolume/snGradSchemes/quadraticFitSnGrad/quadraticFitSnGrads.C
  finiteVolume/snGradSchemes/linearFitSnGrad/linearFitSnGrads.C
  finiteVolume/convectionSchemes/convectionScheme/convectionSchemes.C
  finiteVolume/convectionSchemes/gaussConvectionScheme/gaussConvectionSchemes.C
  finiteVolume/convectionSchemes/multivariateGaussConvectionScheme/multivariateGaussConvectionSchemes.C
  finiteVolume/convectionSchemes/boundedConvectionScheme/boundedConvectionSchemes.C
  finiteVolume/laplacianSchemes/laplacianScheme/laplacianSchemes.C
  finiteVolume/laplacianSchemes/gaussLaplacianScheme/gaussLaplacianSchemes.C
  finiteVolume/fvc/fvcMeshPhi.C
  finiteVolume/fvc/fvcSmooth/fvcSmooth.C
  finiteVolume/fvc/fvcReconstructMag.C
  cfdTools/general/findRefCell/findRefCell.C
  cfdTools/general/adjustPhi/adjustPhi.C
  cfdTools/general/bound/bound.C
  cfdTools/general/CorrectPhi/correctUphiBCs.C
  cfdTools/general/solutionControl/solutionControl/solutionControl.C
  cfdTools/general/solutionControl/simpleControl/simpleControl.C
  cfdTools/general/solutionControl/pimpleControl/pimpleControl.C
  cfdTools/general/solutionControl/pisoControl/pisoControl.C
  cfdTools/general/porosityModel/porosityModel/porosityModel.C
  cfdTools/general/porosityModel/porosityModel/porosityModelNew.C
  cfdTools/general/porosityModel/porosityModel/porosityModelList.C
  cfdTools/general/porosityModel/porosityModel/IOporosityModelList.C
  cfdTools/general/porosityModel/DarcyForchheimer/DarcyForchheimer.C
  cfdTools/general/porosityModel/fixedCoeff/fixedCoeff.C
  cfdTools/general/porosityModel/powerLaw/powerLaw.C
  cfdTools/general/MRF/MRFZone.C
  cfdTools/general/MRF/MRFZoneList.C
  cfdTools/general/MRF/IOMRFZoneList.C
  cfdTools/general/SRF/SRFModel/SRFModel/SRFModel.C
  cfdTools/general/SRF/SRFModel/SRFModel/SRFModelNew.C
  cfdTools/general/SRF/SRFModel/rpm/rpm.C
  cfdTools/general/SRF/derivedFvPatchFields/SRFVelocityFvPatchVectorField/SRFVelocityFvPatchVectorField.C
  cfdTools/general/SRF/derivedFvPatchFields/SRFFreestreamVelocityFvPatchVectorField/SRFFreestreamVelocityFvPatchVectorField.C
)

set(LIBRARIES
  libOpenFOAM
  libtriSurface
  libmeshTools
)

include_directories(.)
include(../../src/OpenFOAM/include.cmake)
include(../../src/OSspecific/POSIX/include.cmake)
include(../../src/triSurface/include.cmake)
include(../../src/meshTools/include.cmake)
include(include.cmake)

add_library(libfiniteVolume ${SOURCES})
set_target_properties(libfiniteVolume PROPERTIES PREFIX "")

target_link_libraries(libfiniteVolume ${LIBRARIES})

install(TARGETS libfiniteVolume DESTINATION lib OPTIONAL)
