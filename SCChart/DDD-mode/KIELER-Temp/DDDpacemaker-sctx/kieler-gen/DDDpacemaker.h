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
  char AP;
  char VP;
  int _taken_transitions[5];
  char _DDDpacemaker_local_AVI_start;
  char _DDDpacemaker_local_AVI_stop;
  char _DDDpacemaker_local_AVI_state;
  char _DDDpacemaker_local_URI_state;
  char _DDDpacemaker_local_real_AS;
  char _DDDpacemaker_local_real_VS;
  char _DDDpacemaker_local__reg_AVI_stop;
  char _DDDpacemaker_local__pre_AVI_stop;
  char _DDDpacemaker_local__reg_AVI_start;
  char _DDDpacemaker_local__pre_AVI_start;
  char _g3;
  char _g4;
  char _g6;
  char _g7;
  char _g9;
  char _g10;
  char _g14;
  char _g15;
  char _g17;
  char _g18;
  char _g22;
  char _g26;
  char _GO;
  char _cg3;
  char _cg6;
  char _cg9;
  char _cg14;
  char _cg17;
  char _TERM;
  char _pg9;
  char _pg10;
  char _pg4;
  char _pg26;
  char _pg15;
  char _pg18;
  char _pg22;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !DDDPACEMAKER_H */
