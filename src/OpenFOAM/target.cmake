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
  global/global.C
  global/argList/argList.C
  global/clock/clock.C
  primitives/bools/bool/bool.C
  primitives/bools/bool/boolIO.C
  primitives/bools/Switch/Switch.C
  primitives/bools/Switch/SwitchIO.C
  primitives/bools/lists/boolList.C
  primitives/chars/char/charIO.C
  primitives/chars/wchar/wcharIO.C
  primitives/ints/uint32/uint32.C
  primitives/ints/uint32/uint32IO.C
  primitives/ints/uint64/uint64.C
  primitives/ints/uint64/uint64IO.C
  primitives/ints/uint/uintIO.C
  primitives/ints/int32/int32.C
  primitives/ints/int32/int32IO.C
  primitives/ints/int64/int64.C
  primitives/ints/int64/int64IO.C
  primitives/ints/int/intIO.C
  primitives/ints/label/label.C
  primitives/ints/uLabel/uLabel.C
  primitives/ints/lists/labelIOList.C
  primitives/ints/lists/labelListIOList.C
  primitives/Scalar/doubleScalar/doubleScalar.C
  primitives/Scalar/floatScalar/floatScalar.C
  primitives/Scalar/scalar/scalar.C
  primitives/Scalar/lists/scalarList.C
  primitives/Scalar/lists/scalarIOList.C
  primitives/Scalar/lists/scalarListIOList.C
  primitives/DiagTensor/diagTensor/diagTensor.C
  primitives/SphericalTensor/sphericalTensor/sphericalTensor.C
  primitives/SphericalTensor/labelSphericalTensor/labelSphericalTensor.C
  primitives/SymmTensor/labelSymmTensor/labelSymmTensor.C
  primitives/SymmTensor/symmTensor/symmTensor.C
  primitives/Tensor/labelTensor/labelTensor.C
  primitives/Tensor/tensor/tensor.C
  primitives/Tensor/lists/sphericalTensorList.C
  primitives/Tensor/lists/symmTensorList.C
  primitives/Tensor/lists/tensorList.C
  primitives/Vector/complexVector/complexVector.C
  primitives/Vector/labelVector/labelVector.C
  primitives/Vector/vector/vector.C
  primitives/Vector/lists/vectorList.C
  primitives/Vector/lists/vectorIOList.C
  primitives/Vector/lists/vectorListIOList.C
  primitives/Tensor2D/tensor2D/tensor2D.C
  primitives/SphericalTensor2D/sphericalTensor2D/sphericalTensor2D.C
  primitives/SymmTensor2D/symmTensor2D/symmTensor2D.C
  primitives/Vector2D/vector2D/vector2D.C
  primitives/complex/complex.C
  primitives/globalIndexAndTransform/globalIndexAndTransform.C
  primitives/globalIndexAndTransform/vectorTensorTransform/vectorTensorTransform.C
  primitives/quaternion/quaternion.C
  primitives/septernion/septernion.C
  primitives/triad/triad.C
  primitives/functions/DataEntry/makeDataEntries.C
  primitives/functions/Polynomial/polynomialFunction.C
  primitives/subModelBase/subModelBase.C
  primitives/strings/string/string.C
  primitives/strings/string/stringIO.C
  primitives/strings/string/stringIOList.C
  primitives/strings/word/word.C
  primitives/strings/word/wordIO.C
  primitives/strings/word/wordIOList.C
  primitives/strings/fileName/fileName.C
  primitives/strings/fileName/fileNameIO.C
  primitives/strings/keyType/keyType.C
  primitives/strings/wordRe/wordRe.C
  primitives/strings/lists/hashedWordList.C
  primitives/strings/stringOps/stringOps.C
  primitives/hashes/Hasher/Hasher.C
  primitives/hashes/SHA1/SHA1.C
  primitives/hashes/SHA1/SHA1Digest.C
  primitives/random/Random/Random.C
  primitives/random/cachedRandom/cachedRandom.C
  primitives/ranges/labelRange/labelRange.C
  primitives/ranges/labelRange/labelRanges.C
  primitives/ranges/scalarRange/scalarRange.C
  primitives/ranges/scalarRange/scalarRanges.C
  containers/HashTables/HashTable/HashTableCore.C
  containers/HashTables/StaticHashTable/StaticHashTableCore.C
  containers/Lists/SortableList/ParSortableListName.C
  containers/Lists/PackedList/PackedListCore.C
  containers/Lists/PackedList/PackedBoolList.C
  containers/Lists/ListOps/ListOps.C
  containers/LinkedLists/linkTypes/SLListBase/SLListBase.C
  containers/LinkedLists/linkTypes/DLListBase/DLListBase.C
  db/IOstreams/token/tokenIO.C
  db/IOstreams/IOstreams/IOstream.C
  db/IOstreams/IOstreams/Istream.C
  db/IOstreams/IOstreams/Ostream.C
  db/IOstreams/Sstreams/ISstream.C
  db/IOstreams/Sstreams/OSstream.C
  db/IOstreams/Sstreams/SstreamsPrint.C
  db/IOstreams/Sstreams/readHexLabel.C
  db/IOstreams/Sstreams/prefixOSstream.C
  db/IOstreams/gzstream/gzstream.C
  db/IOstreams/Fstreams/IFstream.C
  db/IOstreams/Fstreams/OFstream.C
  db/IOstreams/Tstreams/ITstream.C
  db/IOstreams/StringStreams/StringStreamsPrint.C
  db/IOstreams/Pstreams/UIPstream.C
  db/IOstreams/Pstreams/IPstream.C
  db/IOstreams/Pstreams/UPstreamCommsStruct.C
  db/IOstreams/Pstreams/Pstream.C
  db/IOstreams/Pstreams/UOPstream.C
  db/IOstreams/Pstreams/OPstream.C
  db/IOstreams/Pstreams/PstreamBuffers.C
  db/dictionary/dictionary.C
  db/dictionary/dictionaryIO.C
  db/dictionary/entry/entry.C
  db/dictionary/entry/entryIO.C
  db/dictionary/primitiveEntry/primitiveEntry.C
  db/dictionary/primitiveEntry/primitiveEntryIO.C
  db/dictionary/dictionaryEntry/dictionaryEntry.C
  db/dictionary/dictionaryEntry/dictionaryEntryIO.C
  db/dictionary/functionEntries/calcEntry/calcEntry.C
  db/dictionary/functionEntries/codeStream/codeStream.C
  db/dictionary/functionEntries/functionEntry/functionEntry.C
  db/dictionary/functionEntries/includeEntry/includeEntry.C
  db/dictionary/functionEntries/includeEtcEntry/includeEtcEntry.C
  db/dictionary/functionEntries/includeIfPresentEntry/includeIfPresentEntry.C
  db/dictionary/functionEntries/inputModeEntry/inputModeEntry.C
  db/dictionary/functionEntries/removeEntry/removeEntry.C
  db/IOobjects/IOdictionary/IOdictionary.C
  db/IOobjects/IOdictionary/IOdictionaryIO.C
  db/IOobjects/IOMap/IOMapName.C
  db/IOobject/IOobject.C
  db/IOobject/IOobjectIO.C
  db/IOobject/IOobjectReadHeader.C
  db/IOobject/IOobjectWriteHeader.C
  db/regIOobject/regIOobjectRead.C
  db/regIOobject/regIOobjectWrite.C
  db/IOobjectList/IOobjectList.C
  db/objectRegistry/objectRegistry.C
  db/CallbackRegistry/CallbackRegistryName.C
  db/dynamicLibrary/dlLibraryTable/dlLibraryTable.C
  db/dynamicLibrary/dynamicCode/dynamicCode.C
  db/dynamicLibrary/dynamicCode/dynamicCodeContext.C
  db/dynamicLibrary/codedBase/codedBase.C
  db/functionObjects/functionObject/functionObject.C
  db/functionObjects/functionObjectList/functionObjectList.C
  db/functionObjects/functionObjectFile/functionObjectFile.C
  db/functionObjects/outputFilterOutputControl/outputFilterOutputControl.C
  db/Time/TimePaths.C
  db/Time/TimeState.C
  db/Time/Time.C
  db/Time/TimeIO.C
  db/Time/findTimes.C
  db/Time/subCycleTime.C
  db/Time/findInstance.C
  db/Time/timeSelector.C
  db/Time/instant/instant.C
  dimensionSet/dimensionSet.C
  dimensionSet/dimensionSetIO.C
  dimensionSet/dimensionSets.C
  dimensionedTypes/dimensionedScalar/dimensionedScalar.C
  dimensionedTypes/dimensionedSphericalTensor/dimensionedSphericalTensor.C
  dimensionedTypes/dimensionedSymmTensor/dimensionedSymmTensor.C
  dimensionedTypes/dimensionedTensor/dimensionedTensor.C
  matrices/solution/solution.C
  matrices/scalarMatrices/scalarMatrices.C
  matrices/scalarMatrices/SVD/SVD.C
  matrices/LUscalarMatrix/LUscalarMatrix.C
  matrices/LUscalarMatrix/procLduMatrix.C
  matrices/LUscalarMatrix/procLduInterface.C
  matrices/lduMatrix/lduMatrix/lduMatrix.C
  matrices/lduMatrix/lduMatrix/lduMatrixOperations.C
  matrices/lduMatrix/lduMatrix/lduMatrixATmul.C
  matrices/lduMatrix/lduMatrix/lduMatrixUpdateMatrixInterfaces.C
  matrices/lduMatrix/lduMatrix/lduMatrixSolver.C
  matrices/lduMatrix/lduMatrix/lduMatrixSmoother.C
  matrices/lduMatrix/lduMatrix/lduMatrixPreconditioner.C
  matrices/lduMatrix/solvers/diagonalSolver/diagonalSolver.C
  matrices/lduMatrix/solvers/smoothSolver/smoothSolver.C
  matrices/lduMatrix/solvers/PCG/PCG.C
  matrices/lduMatrix/solvers/PBiCG/PBiCG.C
  matrices/lduMatrix/solvers/ICCG/ICCG.C
  matrices/lduMatrix/solvers/BICCG/BICCG.C
  matrices/lduMatrix/smoothers/GaussSeidel/GaussSeidelSmoother.C
  matrices/lduMatrix/smoothers/symGaussSeidel/symGaussSeidelSmoother.C
  matrices/lduMatrix/smoothers/nonBlockingGaussSeidel/nonBlockingGaussSeidelSmoother.C
  matrices/lduMatrix/smoothers/DIC/DICSmoother.C
  matrices/lduMatrix/smoothers/FDIC/FDICSmoother.C
  matrices/lduMatrix/smoothers/DICGaussSeidel/DICGaussSeidelSmoother.C
  matrices/lduMatrix/smoothers/DILU/DILUSmoother.C
  matrices/lduMatrix/smoothers/DILUGaussSeidel/DILUGaussSeidelSmoother.C
  matrices/lduMatrix/preconditioners/noPreconditioner/noPreconditioner.C
  matrices/lduMatrix/preconditioners/diagonalPreconditioner/diagonalPreconditioner.C
  matrices/lduMatrix/preconditioners/DICPreconditioner/DICPreconditioner.C
  matrices/lduMatrix/preconditioners/FDICPreconditioner/FDICPreconditioner.C
  matrices/lduMatrix/preconditioners/DILUPreconditioner/DILUPreconditioner.C
  matrices/lduMatrix/preconditioners/GAMGPreconditioner/GAMGPreconditioner.C
  matrices/lduMatrix/lduAddressing/lduAddressing.C
  matrices/lduMatrix/lduAddressing/lduInterface/lduInterface.C
  matrices/lduMatrix/lduAddressing/lduInterface/processorLduInterface.C
  matrices/lduMatrix/lduAddressing/lduInterface/cyclicLduInterface.C
  matrices/lduMatrix/lduAddressing/lduInterfaceFields/lduInterfaceField/lduInterfaceField.C
  matrices/lduMatrix/lduAddressing/lduInterfaceFields/processorLduInterfaceField/processorLduInterfaceField.C
  matrices/lduMatrix/lduAddressing/lduInterfaceFields/cyclicLduInterfaceField/cyclicLduInterfaceField.C
  matrices/lduMatrix/solvers/GAMG/GAMGSolver.C
  matrices/lduMatrix/solvers/GAMG/GAMGSolverAgglomerateMatrix.C
  matrices/lduMatrix/solvers/GAMG/GAMGSolverInterpolate.C
  matrices/lduMatrix/solvers/GAMG/GAMGSolverScale.C
  matrices/lduMatrix/solvers/GAMG/GAMGSolverSolve.C
  matrices/lduMatrix/solvers/GAMG/interfaces/GAMGInterface/GAMGInterface.C
  matrices/lduMatrix/solvers/GAMG/interfaces/GAMGInterface/GAMGInterfaceNew.C
  matrices/lduMatrix/solvers/GAMG/interfaces/processorGAMGInterface/processorGAMGInterface.C
  matrices/lduMatrix/solvers/GAMG/interfaces/processorCyclicGAMGInterface/processorCyclicGAMGInterface.C
  matrices/lduMatrix/solvers/GAMG/interfaces/cyclicGAMGInterface/cyclicGAMGInterface.C
  matrices/lduMatrix/solvers/GAMG/interfaceFields/GAMGInterfaceField/GAMGInterfaceField.C
  matrices/lduMatrix/solvers/GAMG/interfaceFields/GAMGInterfaceField/GAMGInterfaceFieldNew.C
  matrices/lduMatrix/solvers/GAMG/interfaceFields/processorGAMGInterfaceField/processorGAMGInterfaceField.C
  matrices/lduMatrix/solvers/GAMG/interfaceFields/processorCyclicGAMGInterfaceField/processorCyclicGAMGInterfaceField.C
  matrices/lduMatrix/solvers/GAMG/interfaceFields/cyclicGAMGInterfaceField/cyclicGAMGInterfaceField.C
  matrices/lduMatrix/solvers/GAMG/GAMGAgglomerations/GAMGAgglomeration/GAMGAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGAgglomerations/GAMGAgglomeration/GAMGAgglomerateLduAddressing.C
  matrices/lduMatrix/solvers/GAMG/GAMGAgglomerations/pairGAMGAgglomeration/pairGAMGAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGAgglomerations/pairGAMGAgglomeration/pairGAMGAgglomerate.C
  matrices/lduMatrix/solvers/GAMG/GAMGAgglomerations/algebraicPairGAMGAgglomeration/algebraicPairGAMGAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGAgglomerations/dummyAgglomeration/dummyAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGProcAgglomerations/GAMGProcAgglomeration/GAMGProcAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGProcAgglomerations/masterCoarsestGAMGProcAgglomeration/masterCoarsestGAMGProcAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGProcAgglomerations/manualGAMGProcAgglomeration/manualGAMGProcAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGProcAgglomerations/eagerGAMGProcAgglomeration/eagerGAMGProcAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGProcAgglomerations/noneGAMGProcAgglomeration/noneGAMGProcAgglomeration.C
  matrices/lduMatrix/solvers/GAMG/GAMGProcAgglomerations/procFacesGAMGProcAgglomeration/procFacesGAMGProcAgglomeration.C
  meshes/lduMesh/lduMesh.C
  meshes/lduMesh/lduPrimitiveMesh.C
  matrices/LduMatrix/LduMatrix/lduMatrices.C
  matrices/LduMatrix/LduMatrix/solverPerformance.C
  matrices/LduMatrix/LduMatrix/LduInterfaceField/LduInterfaceFields.C
  matrices/LduMatrix/Smoothers/lduSmoothers.C
  matrices/LduMatrix/Preconditioners/lduPreconditioners.C
  matrices/LduMatrix/Solvers/lduSolvers.C
  meshes/primitiveShapes/line/line.C
  meshes/primitiveShapes/plane/plane.C
  meshes/primitiveShapes/triangle/intersection.C
  meshes/primitiveShapes/objectHit/pointIndexHitIOList.C
  meshes/meshShapes/edge/edge.C
  meshes/meshShapes/edge/edgeIOList.C
  meshes/meshShapes/face/face.C
  meshes/meshShapes/face/faceIntersection.C
  meshes/meshShapes/face/faceContactSphere.C
  meshes/meshShapes/face/faceAreaInContact.C
  meshes/meshShapes/face/faceIOList.C
  meshes/meshShapes/cell/cell.C
  meshes/meshShapes/cell/oppositeCellFace.C
  meshes/meshShapes/cell/cellIOList.C
  meshes/meshShapes/tetCell/tetCell.C
  meshes/meshShapes/cellModeller/cellModeller.C
  meshes/meshShapes/cellModel/cellModel.C
  meshes/meshShapes/cellModel/cellModelIO.C
  meshes/meshShapes/cellShape/cellShape.C
  meshes/meshShapes/cellShape/cellShapeEqual.C
  meshes/meshShapes/cellShape/cellShapeIO.C
  meshes/meshShapes/cellShape/cellShapeIOList.C
  meshes/Identifiers/patch/patchIdentifier.C
  meshes/Identifiers/patch/coupleGroupIdentifier.C
  meshes/MeshObject/meshObject.C
  meshes/polyMesh/polyPatches/polyPatch/polyPatch.C
  meshes/polyMesh/polyPatches/polyPatch/polyPatchNew.C
  meshes/polyMesh/polyPatches/basic/coupled/coupledPolyPatch.C
  meshes/polyMesh/polyPatches/basic/generic/genericPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/cyclic/cyclicPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/cyclicSlip/cyclicSlipPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/oldCyclic/oldCyclicPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/empty/emptyPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/nonuniformTransformCyclic/nonuniformTransformCyclicPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/processorCyclic/processorCyclicPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/processor/processorPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/symmetryPlane/symmetryPlanePolyPatch.C
  meshes/polyMesh/polyPatches/constraint/symmetry/symmetryPolyPatch.C
  meshes/polyMesh/polyPatches/constraint/wedge/wedgePolyPatch.C
  meshes/polyMesh/polyPatches/derived/wall/wallPolyPatch.C
  meshes/polyMesh/polyBoundaryMesh/polyBoundaryMesh.C
  meshes/polyMesh/polyBoundaryMesh/polyBoundaryMeshEntries.C
  meshes/ProcessorTopology/commSchedule.C
  meshes/polyMesh/globalMeshData/globalMeshData.C
  meshes/polyMesh/globalMeshData/globalPoints.C
  meshes/polyMesh/globalMeshData/globalIndex.C
  meshes/polyMesh/syncTools/syncTools.C
  meshes/polyMesh/polyMeshTetDecomposition/polyMeshTetDecomposition.C
  meshes/polyMesh/polyMeshTetDecomposition/tetIndices.C
  meshes/polyMesh/zones/zone/zone.C
  meshes/polyMesh/zones/cellZone/cellZone.C
  meshes/polyMesh/zones/cellZone/cellZoneNew.C
  meshes/polyMesh/zones/faceZone/faceZone.C
  meshes/polyMesh/zones/faceZone/faceZoneNew.C
  meshes/polyMesh/zones/pointZone/pointZone.C
  meshes/polyMesh/zones/pointZone/pointZoneNew.C
  meshes/polyMesh/polyMesh.C
  meshes/polyMesh/polyMeshFromShapeMesh.C
  meshes/polyMesh/polyMeshIO.C
  meshes/polyMesh/polyMeshInitMesh.C
  meshes/polyMesh/polyMeshClear.C
  meshes/polyMesh/polyMeshUpdate.C
  meshes/polyMesh/polyMeshCheck/polyMeshCheck.C
  meshes/polyMesh/polyMeshCheck/polyMeshTools.C
  meshes/primitiveMesh/primitiveMesh.C
  meshes/primitiveMesh/primitiveMeshCellCells.C
  meshes/primitiveMesh/primitiveMeshCellCentresAndVols.C
  meshes/primitiveMesh/primitiveMeshCellEdges.C
  meshes/primitiveMesh/primitiveMeshCells.C
  meshes/primitiveMesh/primitiveMeshClear.C
  meshes/primitiveMesh/primitiveMeshEdgeCells.C
  meshes/primitiveMesh/primitiveMeshEdgeFaces.C
  meshes/primitiveMesh/primitiveMeshEdges.C
  meshes/primitiveMesh/primitiveMeshFaceCentresAndAreas.C
  meshes/primitiveMesh/primitiveMeshFindCell.C
  meshes/primitiveMesh/primitiveMeshPointCells.C
  meshes/primitiveMesh/primitiveMeshPointFaces.C
  meshes/primitiveMesh/primitiveMeshPointPoints.C
  meshes/primitiveMesh/primitiveMeshCellPoints.C
  meshes/primitiveMesh/primitiveMeshCalcCellShapes.C
  meshes/primitiveMesh/primitiveMeshCheck/primitiveMeshCheck.C
  meshes/primitiveMesh/primitiveMeshCheck/primitiveMeshCheckPointNearness.C
  meshes/primitiveMesh/primitiveMeshCheck/primitiveMeshCheckEdgeLength.C
  meshes/primitiveMesh/primitiveMeshCheck/primitiveMeshTools.C
  meshes/primitiveMesh/primitivePatch/patchZones.C
  meshes/primitiveMesh/primitivePatch/walkPatch.C
  meshes/meshShapes/cellMatcher/cellMatcher.C
  meshes/meshShapes/cellMatcher/hexMatcher.C
  meshes/meshShapes/cellMatcher/wedgeMatcher.C
  meshes/meshShapes/cellMatcher/prismMatcher.C
  meshes/meshShapes/cellMatcher/pyrMatcher.C
  meshes/meshShapes/cellMatcher/tetWedgeMatcher.C
  meshes/meshShapes/cellMatcher/tetMatcher.C
  meshes/meshShapes/cellMatcher/degenerateMatcher.C
  meshes/polyMesh/mapPolyMesh/mapPolyMesh.C
  meshes/polyMesh/mapPolyMesh/faceMapper/faceMapper.C
  meshes/polyMesh/mapPolyMesh/cellMapper/cellMapper.C
  meshes/polyMesh/mapPolyMesh/mapDistribute/mapDistribute.C
  meshes/polyMesh/mapPolyMesh/mapDistribute/mapDistributePolyMesh.C
  meshes/polyMesh/mapPolyMesh/mapDistribute/IOmapDistribute.C
  meshes/polyMesh/mapPolyMesh/mapAddedPolyMesh.C
  meshes/primitiveMesh/PrimitivePatch/PrimitivePatchName.C
  meshes/pointMesh/pointMesh.C
  meshes/pointMesh/pointMeshMapper/pointMapper.C
  meshes/pointMesh/pointMeshMapper/pointPatchMapper.C
  meshes/pointMesh/pointPatches/pointPatch/pointPatch.C
  meshes/pointMesh/pointPatches/facePointPatch/facePointPatch.C
  meshes/pointMesh/pointPatches/facePointPatch/facePointPatchNew.C
  meshes/pointMesh/pointPatches/basic/coupled/coupledPointPatch.C
  meshes/pointMesh/pointPatches/basic/generic/genericPointPatch.C
  meshes/pointMesh/pointPatches/constraint/cyclic/cyclicPointPatch.C
  meshes/pointMesh/pointPatches/constraint/cyclicSlip/cyclicSlipPointPatch.C
  meshes/pointMesh/pointPatches/constraint/empty/emptyPointPatch.C
  meshes/pointMesh/pointPatches/constraint/nonuniformTransformCyclic/nonuniformTransformCyclicPointPatch.C
  meshes/pointMesh/pointPatches/constraint/processor/processorPointPatch.C
  meshes/pointMesh/pointPatches/constraint/processorCyclic/processorCyclicPointPatch.C
  meshes/pointMesh/pointPatches/constraint/symmetryPlane/symmetryPlanePointPatch.C
  meshes/pointMesh/pointPatches/constraint/symmetry/symmetryPointPatch.C
  meshes/pointMesh/pointPatches/constraint/wedge/wedgePointPatch.C
  meshes/pointMesh/pointPatches/derived/coupled/coupledFacePointPatch.C
  meshes/pointMesh/pointPatches/derived/wall/wallPointPatch.C
  meshes/pointMesh/pointBoundaryMesh/pointBoundaryMesh.C
  meshes/boundBox/boundBox.C
  meshes/treeBoundBox/treeBoundBox.C
  meshes/meshTools/matchPoints.C
  fields/UniformDimensionedFields/uniformDimensionedFields.C
  fields/cloud/cloud.C
  fields/Fields/labelField/labelField.C
  fields/Fields/scalarField/scalarField.C
  fields/Fields/sphericalTensorField/sphericalTensorField.C
  fields/Fields/diagTensorField/diagTensorField.C
  fields/Fields/symmTensorField/symmTensorField.C
  fields/Fields/tensorField/tensorField.C
  fields/Fields/quaternionField/quaternionField.C
  fields/Fields/triadField/triadField.C
  fields/Fields/complexFields/complexFields.C
  fields/Fields/labelField/labelIOField.C
  fields/Fields/labelField/labelFieldIOField.C
  fields/Fields/scalarField/scalarIOField.C
  fields/Fields/scalarField/scalarFieldIOField.C
  fields/Fields/vectorField/vectorIOField.C
  fields/Fields/vectorField/vectorFieldIOField.C
  fields/Fields/vector2DField/vector2DIOField.C
  fields/Fields/vector2DField/vector2DFieldIOField.C
  fields/Fields/sphericalTensorField/sphericalTensorIOField.C
  fields/Fields/sphericalTensorField/sphericalTensorFieldIOField.C
  fields/Fields/diagTensorField/diagTensorIOField.C
  fields/Fields/diagTensorField/diagTensorFieldIOField.C
  fields/Fields/symmTensorField/symmTensorIOField.C
  fields/Fields/symmTensorField/symmTensorFieldIOField.C
  fields/Fields/tensorField/tensorIOField.C
  fields/Fields/tensorField/tensorFieldIOField.C
  fields/Fields/quaternionField/quaternionIOField.C
  fields/Fields/triadField/triadIOField.C
  fields/Fields/transformField/transformField.C
  fields/pointPatchFields/pointPatchField/pointPatchFields.C
  fields/pointPatchFields/basic/calculated/calculatedPointPatchFields.C
  fields/pointPatchFields/basic/coupled/coupledPointPatchFields.C
  fields/pointPatchFields/basic/value/valuePointPatchFields.C
  fields/pointPatchFields/basic/fixedValue/fixedValuePointPatchFields.C
  fields/pointPatchFields/basic/zeroGradient/zeroGradientPointPatchFields.C
  fields/pointPatchFields/constraint/cyclic/cyclicPointPatchFields.C
  fields/pointPatchFields/constraint/cyclicSlip/cyclicSlipPointPatchFields.C
  fields/pointPatchFields/constraint/empty/emptyPointPatchFields.C
  fields/pointPatchFields/constraint/nonuniformTransformCyclic/nonuniformTransformCyclicPointPatchFields.C
  fields/pointPatchFields/constraint/processor/processorPointPatchFields.C
  fields/pointPatchFields/constraint/processorCyclic/processorCyclicPointPatchFields.C
  fields/pointPatchFields/constraint/symmetryPlane/symmetryPlanePointPatchFields.C
  fields/pointPatchFields/constraint/symmetry/symmetryPointPatchFields.C
  fields/pointPatchFields/constraint/wedge/wedgePointPatchFields.C
  fields/pointPatchFields/derived/slip/slipPointPatchFields.C
  fields/pointPatchFields/derived/fixedNormalSlip/fixedNormalSlipPointPatchFields.C
  fields/pointPatchFields/derived/uniformFixedValue/uniformFixedValuePointPatchFields.C
  fields/pointPatchFields/derived/timeVaryingUniformFixedValue/timeVaryingUniformFixedValuePointPatchFields.C
  fields/pointPatchFields/derived/codedFixedValue/codedFixedValuePointPatchFields.C
  fields/GeometricFields/pointFields/pointFields.C
  meshes/bandCompression/bandCompression.C
  meshes/preservePatchTypes/preservePatchTypes.C
  interpolations/patchToPatchInterpolation/PatchToPatchInterpolationName.C
  interpolations/interpolationTable/tableReaders/tableReaders.C
  interpolations/interpolationTable/tableReaders/openFoam/openFoamTableReaders.C
  interpolations/interpolationTable/tableReaders/csv/csvTableReaders.C
  interpolations/interpolationWeights/interpolationWeights/interpolationWeights.C
  interpolations/interpolationWeights/linearInterpolationWeights/linearInterpolationWeights.C
  interpolations/interpolationWeights/splineInterpolationWeights/splineInterpolationWeights.C
  algorithms/indexedOctree/indexedOctreeName.C
  algorithms/indexedOctree/treeDataCell.C
  algorithms/indexedOctree/volumeType.C
  algorithms/dynamicIndexedOctree/dynamicIndexedOctreeName.C
  algorithms/dynamicIndexedOctree/dynamicTreeDataPoint.C
  graph/curve/curve.C
  graph/graph.C
  graph/writers/rawGraph/rawGraph.C
  graph/writers/gnuplotGraph/gnuplotGraph.C
  graph/writers/xmgrGraph/xmgrGraph.C
  graph/writers/jplotGraph/jplotGraph.C
  meshes/data/data.C
)

if(NOT WM_SP)
  set(SOURCES
    ${SOURCES}
    primitives/Vector/floatVector/floatVector.C
  )
endif(NOT WM_SP)

set(LIBRARIES
  libmpiPstream
  libOSspecific
  z
)

include_directories(.)
include(../../src/OSspecific/POSIX/include.cmake)
include(include.cmake)
include_directories(${ZLIB_INCLUDE_DIR})

add_library(libOpenFOAM ${SOURCES})
set_target_properties(libOpenFOAM PROPERTIES PREFIX "")

target_link_libraries(libOpenFOAM ${LIBRARIES})

install(TARGETS libOpenFOAM DESTINATION lib OPTIONAL)