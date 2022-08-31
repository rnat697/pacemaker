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
  char AS;
  char VS;
  int AVI_counter;
  int AEI_counter;
  int PVARP_counter;
  int VRP_counter;
  int LRI_counter;
  int URI_counter;
  char AP;
  char VP;
  int _taken_transitions[20];
  char _DDDpacemaker_local_AVI_start;
  char _DDDpacemaker_local_AVI_extend;
  char _DDDpacemaker_local_AVI_stop;
  char _DDDpacemaker_local_AEI_start;
  char _DDDpacemaker_local_AEI_stop;
  char _DDDpacemaker_local_LRI_start;
  char _DDDpacemaker_local_LRI_reset;
  char _DDDpacemaker_local_LRI_stop;
  char _DDDpacemaker_local_PVARP_start;
  char _DDDpacemaker_local_PVARP_stop;
  char _DDDpacemaker_local_VRP_start;
  char _DDDpacemaker_local_VRP_stop;
  char _DDDpacemaker_local_URI_start;
  char _DDDpacemaker_local_URI_stop;
  char _g2;
  char _g3;
  char _g4;
  char _g5;
  char _g6;
  char _g7;
  char _g8;
  char _g11;
  char _g12;
  char _g13;
  char _g14;
  char _g15;
  char _g21;
  char _g22;
  char _g23;
  char _g32;
  char _g33;
  char _g35;
  char _g36;
  char _g37;
  char _g38;
  char _g41;
  char _GO;
  char _cg3;
  char _cg17;
  char _cg6;
  char _cg9;
  char _cg14;
  char _cg12;
  char _cg22;
  char _cg27;
  char _cg25;
  char _cg32;
  char _cg37;
  char _cg35;
  char _cg42;
  char _cg45;
  char _TERM;
  char _pg5;
  char _pg11;
  char _pg2;
  char _pg21;
  char _pg32;
  char _pg38;
  char _pg41;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !DDDPACEMAKER_H */
