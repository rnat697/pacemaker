#ifndef DDDPACEMAKER_H
#define DDDPACEMAKER_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"


typedef struct {
  char AP;
  char VP;
  char AVI_start;
  char AVI_extend;
  char AVI_stop;
  char AEI_start;
  char AEI_stop;
  char LRI_start;
  char LRI_reset;
  char LRI_stop;
  char PVARP_start;
  char PVARP_stop;
  char VRP_start;
  char VRP_stop;
  char URI_start;
  char URI_stop;
  int _taken_transitions[9];
  char AS;
  char VS;
  char AVI_counter;
  char AEI_counter;
  char PVARP_counter;
  char VRP_counter;
  char LRI_counter;
  char URI_counter;
  char doneAS;
  char doneVS;
  char doneAVI;
  char _g3;
  char _g4;
  char _g5;
  char _g6;
  char _g7;
  char _g8;
  char _g13;
  char _g14;
  char _g15;
  char _g28;
  char _GO;
  char _cg4;
  char _cg9;
  char _cg7;
  char _cg14;
  char _cg19;
  char _cg17;
  char _TERM;
  char _pg6;
  char _pg3;
  char _pg13;
  char _pg28;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !DDDPACEMAKER_H */
