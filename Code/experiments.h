/*
 * experiments.h
 *
 *  Created on: 25-Nov-2018
 *      Author: jithin
 */

#ifndef EXPERIMENTS_H_
#define EXPERIMENTS_H_

#include "global.h"
#include "data.h"
#include "minHeap.h"
#include "minHeapInt.h"
#include "arrayListInt.h"
#include "binaryFingerPrint.h"
#include "nonBinaryFingerPrint.h"
#include "dataBinary.h"
#include "dataNonBinary.h"
#include "invertedIndexSmall.h"
#include "AOR.h"
#include "divideSkip.h"
#include "chemFP.h"

extern int 	kStart_G;
extern int 	kEnd_G;
extern int 	k_G[];
extern int 	rSize_G;
extern double r_G[];

extern int num_exp_G;

extern int CHECK_SOLUTION_G;

extern int releasePublic;

void experiments_work 			(DataBinary *data, 		DataBinary *dataQueries, 	char *rnamePartial);
void experiments_work_small 	(DataSmall  *data, 		DataSmall  *dataQueries, 	char *rnamePartial);
void experiments_nonBinary_work (DataNonBinary *data, 	DataNonBinary *dataQueries, char *rnamePartial);
void notImplemented (void *source, char *fname);

minHeapInttype * _experiments_runTopK_inMemory (void *index, DataBinary *data, arrayListtype *queryFP, int k, int mode);
minHeapInttype * _experiments_runTopK_NB_inMemory (void *index, MolNonBinary *queryFP, int k, int method);
arrayListtype * _experiments_runRange_InMemory (void *index, DataBinary *data, arrayListtype *queryFP, double r, int mode);
arrayListtype * _experiments_runRange_NB_InMemory (void *index, MolNonBinary *queryFP, double r, int method);

void* getIndex(DataBinary *data, int mode);
void* getIndex_NB(DataNonBinary *data, int method);
void writeResults(char* rFname, DataBinary *data, minHeapInttype * solutionHeap, int k);
void writeResults_NB(char* rFname, DataNonBinary *data, minHeapInttype * solutionHeap, int k);
void writeResults_Range(char* rFname, DataBinary *data, arrayListtype *solutionList);
void writeResults_NB_Range(char* rFname, DataNonBinary *data, arrayListtype *solutionList);

#endif /* EXPERIMENTS_H_ */

