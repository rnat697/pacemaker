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
  int _taken_transitions[34];
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
  char _DDDpacemaker_local_AR;
  char _DDDpacemaker_local_VR;
  char _DDDpacemaker_local_real_AS;
  char _DDDpacemaker_local_real_VS;
  char _g5;
  char _g6;
  char _g7;
  char _g10;
  char _g11;
  char _g12;
  char _g30;
  char _g31;
  char _g32;
  char _g48;
  char _g49;
  char _g50;
  char _g51;
  char _g52;
  char _g60;
  char _g61;
  char _g68;
  char _g71;
  char _g72;
  char _g106;
  char _g107;
  char _g108;
  char _GO;
  char _cg3;
  char _cg15;
  char _cg6;
  char _cg8;
  char _cg13;
  char _cg11;
  char _cg20;
  char _cg23;
  char _cg28;
  char _cg33;
  char _cg31;
  char _cg38;
  char _cg41;
  char _cg53;
  char _cg46;
  char _cg51;
  char _cg49;
  char _cg58;
  char _cg61;
  char _cg73;
  char _cg66;
  char _cg71;
  char _cg69;
  char _cg78;
  char _cg81;
  char _cg86;
  char _cg91;
  char _cg89;
  char _cg96;
  char _cg99;
  char _cg104;
  char _cg107;
  char _cg112;
  char _cg115;
  char _TERM;
  char _pg5;
  char _pg10;
  char _pg106;
  char _pg30;
  char _pg68;
  char _pg48;
  char _pg60;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !DDDPACEMAKER_H */
