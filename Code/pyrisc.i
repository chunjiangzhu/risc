%module pyrisc
%{
/* Put header files here or function declarations like below */
#include "binaryFingerPrint.h"
#include "experiments.h"
#include "dataBinary.h"
#include "arrayListInt.h"
%}

arrayListtype*  dataBinary_getFingerPrint(DataBinary *data, int index);
minHeapInttype * _experiments_runTopK_inMemory (void *index, DataBinary *data, arrayListtype *queryFP, int k, int mode);
arrayListtype * _experiments_runRange_InMemory (void *index, DataBinary *data, arrayListtype *queryFP, double r, int mode);
arrayListtype * getFeatureId (char* fNameTarget, char* featureIds);
DataBinary* readDatabase (char* fNameTarget, arrayListtype *featureIds);
DataBinary* readQueries (char* fNameQueries, arrayListtype *featureIds);
void* getIndex(DataBinary *data, int mode);
void writeResults(char* rFname, DataBinary *data, minHeapInttype * solutionHeap, int k);
void writeResults_Range(char* rFname, DataBinary *data, arrayListtype *solutionList);
