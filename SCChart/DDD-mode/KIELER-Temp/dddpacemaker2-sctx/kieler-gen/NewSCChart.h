#ifndef NEWSCCHART_H
#define NEWSCCHART_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


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
  int _taken_transitions[8];
  char _reg_VP;
  char _pre_VP;
  char _reg_AP;
  char _pre_AP;
  char _NewSCChart_local_AEI_start;
  char _NewSCChart_local_AEI_stop;
  char _NewSCChart_local_LRI_start;
  char _NewSCChart_local_LRI_reset;
  char _NewSCChart_local_LRI_stop;
  char _NewSCChart_local_PVARP_start;
  char _NewSCChart_local_PVARP_stop;
  char _NewSCChart_local_VRP_start;
  char _NewSCChart_local_VRP_stop;
  char _NewSCChart_local_URI_start;
  char _NewSCChart_local_URI_stop;
  char _NewSCChart_local_AR;
  char _NewSCChart_local_VR;
  char _NewSCChart_local_AVI_start;
  char _NewSCChart_local_AVI_stop;
  char _NewSCChart_local_real_AS;
  char _NewSCChart_local_real_VS;
  char _NewSCChart_local__reg_AVI_stop;
  char _NewSCChart_local__pre_AVI_stop;
  char _NewSCChart_local__reg_AVI_start;
  char _NewSCChart_local__pre_AVI_start;
  char _NewSCChart_local__reg_URI_stop;
  char _NewSCChart_local__pre_URI_stop;
  char _NewSCChart_local__reg_URI_start;
  char _NewSCChart_local__pre_URI_start;
  char _g6;
  char _g7;
  char _g8;
  char _g10;
  char _g12;
  char _g13;
  char _g14;
  char _g15;
  char _g21;
  char _g22;
  char _g24;
  char _g25;
  char _g33;
  char _g53;
  char _g57;
  char _GO;
  char _cg4;
  char _cg16;
  char _cg7;
  char _cg12;
  char _cg10;
  char _cg14;
  char _cg21;
  char _cg24;
  char _TERM;
  char _pg6;
  char _pg53;
  char _pg8;
  char _pg57;
  char _pg33;
  char _pg22;
  char _pg25;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !NEWSCCHART_H */
