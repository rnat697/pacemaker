/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"

#include "DDDpacemaker.h"

void logic(TickData* d) {
  d->_g6 = d->_pg5;
  d->_g6 = d->_g6 && d->VS;
  if (d->_g6) {
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->_DDDpacemaker_local_AVI_start = 0;
    d->VP = 0;
    d->_taken_transitions[1] += 1;
  }
  d->_g7 = d->_pg10;
  d->_g11 = d->_g7 && d->VS;
  if (d->_g11) {
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->VP = 0;
    d->_DDDpacemaker_local_AVI_start = 0;
    d->_DDDpacemaker_local_AVI_extend = 0;
    d->_taken_transitions[4] += 1;
  }
  d->_g12 = d->_pg106;
  d->_cg107 = d->URI_counter >= URI_VALUE;
  d->_g107 = d->_g12 && d->_cg107;
  if (d->_g107) {
    d->_DDDpacemaker_local_URI_stop = 1;
    d->_DDDpacemaker_local_URI_start = 0;
    d->_taken_transitions[31] += 1;
  }
  d->_g108 = d->_pg30;
  d->_g31 = d->_g108 && d->AS;
  if (d->_g31) {
    d->_DDDpacemaker_local_AEI_stop = 1;
    d->_DDDpacemaker_local_AEI_start = 0;
    d->AP = 0;
    d->_taken_transitions[9] += 1;
  }
  d->_g32 = d->_pg68;
  d->_g71 = d->_g32 && !d->VS;
  d->_cg71 = d->VRP_counter >= VRP_VALUE;
  d->_g71 = d->_g71 && d->_cg71;
  if (d->_g71) {
    d->_DDDpacemaker_local_VRP_stop = 1;
  }
  d->_cg33 = d->AEI_counter >= AEI_VALUE;
  d->_g72 = d->_pg48;
  d->_g51 = d->_g72 && !d->AS;
  d->_cg51 = d->PVARP_counter >= PVARP_VALUE;
  d->_g51 = d->_g51 && d->_cg51;
  if (d->_g51) {
    d->_DDDpacemaker_local_PVARP_stop = 1;
    d->_DDDpacemaker_local_AR = 0;
    d->_taken_transitions[16] += 1;
  }
  d->_g52 = d->_g72 && d->AS;
  if (d->_g52) {
    d->_DDDpacemaker_local_AR = 1;
    d->_taken_transitions[15] += 1;
  }
  d->_g49 = d->_pg60;
  d->_cg61 = d->_DDDpacemaker_local_PVARP_stop;
  d->_g50 = d->_g49 && d->_cg61;
  if (d->_g50) {
    d->_taken_transitions[18] += 1;
  }
  d->_g61 = d->_g32 && d->VS;
  if (d->_g61) {
    d->_DDDpacemaker_local_VR = 1;
    d->_taken_transitions[21] += 1;
  }
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_taken_transitions[4] = 0;
  d->_taken_transitions[5] = 0;
  d->_taken_transitions[6] = 0;
  d->_taken_transitions[7] = 0;
  d->_taken_transitions[8] = 0;
  d->_taken_transitions[9] = 0;
  d->_taken_transitions[10] = 0;
  d->_taken_transitions[11] = 0;
  d->_taken_transitions[12] = 0;
  d->_taken_transitions[13] = 0;
  d->_taken_transitions[14] = 0;
  d->_taken_transitions[15] = 0;
  d->_taken_transitions[16] = 0;
  d->_taken_transitions[17] = 0;
  d->_taken_transitions[18] = 0;
  d->_taken_transitions[19] = 0;
  d->_taken_transitions[20] = 0;
  d->_taken_transitions[21] = 0;
  d->_taken_transitions[22] = 0;
  d->_taken_transitions[23] = 0;
  d->_taken_transitions[24] = 0;
  d->_taken_transitions[25] = 0;
  d->_taken_transitions[26] = 0;
  d->_taken_transitions[27] = 0;
  d->_taken_transitions[28] = 0;
  d->_taken_transitions[29] = 0;
  d->_taken_transitions[30] = 0;
  d->_taken_transitions[31] = 0;
  d->_taken_transitions[32] = 0;
  d->_taken_transitions[33] = 0;
  d->_pg5 = 0;
  d->_pg10 = 0;
  d->_pg106 = 0;
  d->_pg30 = 0;
  d->_pg68 = 0;
  d->_pg48 = 0;
  d->_pg60 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg5 = d->_g5;
  d->_pg10 = d->_g10;
  d->_pg106 = d->_g106;
  d->_pg30 = d->_g30;
  d->_pg68 = d->_g68;
  d->_pg48 = d->_g48;
  d->_pg60 = d->_g60;
  d->_GO = 0;
}
