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
  double deltaT;
  double sleepT;
  char _DDDpacemaker_local_AVI_start;
  char _DDDpacemaker_local_AVI_stop;
  char _DDDpacemaker_local_AVI_state;
  char _DDDpacemaker_local_URI_state;
  double _DDDpacemaker_local_AVI_counter;
  char _DDDpacemaker_local_real_AS;
  char _DDDpacemaker_local_real_VS;
  char _DDDpacemaker_local__Atrig;
  char _DDDpacemaker_local__Atrig1;
  char _DDDpacemaker_local__Atrig2;
  char _DDDpacemaker_local__Atrig3;
  char _DDDpacemaker_local__Atrig4;
  char _g3;
  char _g6;
  char _g7;
  char _g10;
  char _g11;
  char _g12;
  char _g15;
  char _g16;
  char _g18;
  char _g20;
  char _g21;
  char _g22;
  char _g23;
  char _g24;
  char _g26;
  char _g27;
  char _g29;
  char _g31;
  char _g32;
  char _g33;
  char _g34;
  char _g35;
  char _g37;
  char _g38;
  char _g41;
  char _g42;
  char _g43;
  char _g44;
  char _g45;
  char _g46;
  char _g50;
  char _g51;
  char _g53;
  char _g55;
  char _g56;
  char _g57;
  char _g58;
  char _g61;
  char _g62;
  char _g66;
  char _g67;
  char _g69;
  char _g72;
  char _g76;
  char _g77;
  char _g78;
  char _g79;
  char _g80;
  char _g81;
  char _g82;
  char _g83;
  char _g84;
  char _GO;
  char _cg4;
  char _cg6;
  char _cg10;
  char _cg13;
  char _cg15;
  char _cg17;
  char _cg18;
  char _cg22;
  char _cg21;
  char _cg24;
  char _cg27;
  char _cg28;
  char _cg29;
  char _cg33;
  char _cg32;
  char _cg35;
  char _cg38;
  char _cg44;
  char _cg41;
  char _cg46;
  char _cg48;
  char _cg50;
  char _cg52;
  char _cg53;
  char _cg57;
  char _cg56;
  char _cg59;
  char _cg62;
  char _cg63;
  char _cg64;
  char _cg68;
  char _cg67;
  char _cg70;
  char _cg73;
  char _cg79;
  char _cg76;
  char _cg81;
  char _g7_e1;
  char _g11_e2;
  char _g16_e1;
  char _g23_e2;
  char _g34_e3;
  char _g43_e4;
  char _g51_e1;
  char _g58_e2;
  char _g69_e3;
  char _g78_e4;
  char _TERM;
  char _pg24;
  char _pg57;
  char _pg35;
  char _pg29;
  char _pg50;
  char _pg12;
  char _pg3;
  char _pg18;
  char _pg11;
  char _pg10;
  char _pg22;
  char _pg7;
  char _pg43_e4;
  char _pg34_e3;
  char _pg62;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !DDDPACEMAKER_H */
