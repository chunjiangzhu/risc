%module pyrisc
%{
/* Put header files here or function declarations like below */

#include "binaryFingerPrint.h"
#include "nonBinaryFingerPrint.h"
#include "experiments.h"
#include "dataBinary.h"
#include "dataNonBinary.h"
#include "arrayListInt.h"
%}

arrayListtype*  dataBinary_getFingerPrint(DataBinary *data, int index);
MolNonBinary* 	dataNonBinary_getFingerPrint (DataNonBinary *data, unsigned long index);
minHeapInttype * _experiments_runTopK_inMemory (void *index, DataBinary *data, arrayListtype *queryFP, int k, int mode);
minHeapInttype * _experiments_runTopK_NB_inMemory (void *index, MolNonBinary *queryFP, int k, int method);
arrayListtype * _experiments_runRange_InMemory (void *index, DataBinary *data, arrayListtype *queryFP, double r, int mode);
arrayListtype * _experiments_runRange_NB_InMemory (void *index, MolNonBinary *queryFP, double r, int method);

arrayListtype * getFeatureId (char* fNameTarget, char* featureIds);
DataBinary* readDatabase (char* fNameTarget, arrayListtype *featureIds);
DataBinary* readQueries (char* fNameQueries, arrayListtype *featureIds);
arrayListtype * getFeatureId_NB (char* fNameTarget, char* fNameFeatures);
DataNonBinary* readDatabase_NB (char* fNameTarget, arrayListtype *featureIds);
DataNonBinary* readQueries_NB (char* fNameQueries, arrayListtype *featureIds);

void* getIndex(DataBinary *data, int mode);
void* getIndex_NB(DataNonBinary *data, int method);
void writeResults(char* rFname, DataBinary *data, minHeapInttype * solutionHeap, int k);
void writeResults_NB(char* rFname, DataNonBinary *data, minHeapInttype * solutionHeap, int k);
void writeResults_Range(char* rFname, DataBinary *data, arrayListtype *solutionList);
void writeResults_NB_Range(char* rFname, DataNonBinary *data, arrayListtype *solutionList);
