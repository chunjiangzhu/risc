%module pyrisc
%{
/* Put header files here or function declarations like below */
#include "binaryFingerPrint.h"
#include "experiments.h"
#include "dataBinary.h"
#include "arrayListInt.h"
%}

arrayListtype* 	dataBinary_getFingerPrint(DataBinary *data, int index);
minHeapInttype * _experiments_runTopK_inMemory (void *index, DataBinary *data, arrayListtype *queryFP, int k);
DataBinary* readDatabase (char* fNameTarget, char* fNameFeatures);
DataBinary* readQueries (char* fNameTarget, char* fNameQueries, char* fNameFeatures);
void* getIndex(DataBinary *data);
void writeResults(char* rFname, DataBinary *data, minHeapInttype * solutionHeap, int k);