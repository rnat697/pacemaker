/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "NewSCChart.h"

void logic(TickData* d) {
  d->_NewSCChart_local__pre_URI_stop = d->_NewSCChart_local__reg_URI_stop;
  d->_NewSCChart_local__reg_URI_stop = d->_NewSCChart_local_URI_stop;
  d->_NewSCChart_local__pre_URI_start = d->_NewSCChart_local__reg_URI_start;
  d->_NewSCChart_local__reg_URI_start = d->_NewSCChart_local_URI_start;
  d->_g7 = d->_pg6;
  d->_cg7 = d->AVI_counter >= AVI_VALUE && d->_NewSCChart_local__pre_URI_start;
  d->_g14 = d->_g7 && !d->_cg7;
  d->_cg14 = d->AVI_counter >= AVI_VALUE && d->_NewSCChart_local__pre_URI_stop;
  d->_g14 = d->_g14 && d->_cg14;
  if (d->_g14) {
    d->VP = 1;
  }
  d->_g15 = d->_pg53;
  d->_g53 = d->_GO || d->_g15;
  if (d->_g53) {
    d->_pre_VP = d->_reg_VP;
  }
  d->_cg16 = d->VS || d->_pre_VP;
  d->_g10 = d->_pg8;
  d->_g10 = d->_g10 && !d->VS;
  d->_cg12 = d->_NewSCChart_local__pre_URI_stop;
  d->_g13 = d->_g10 && d->_cg12;
  if (d->_g13) {
    d->VP = 1;
  }
  d->_g13 = d->_pg57;
  d->_g57 = d->_GO || d->_g13;
  if (d->_g57) {
    d->_pre_AP = d->_reg_AP;
    d->_reg_AP = d->AP;
  }
  d->_cg4 = d->AS || d->_pre_AP;
  d->_g7 = d->_g7 && d->_cg7;
  if (d->_g7) {
    d->_taken_transitions[1] += 1;
  }
  d->_g8 = d->_g7 || d->_g10 && !d->_cg12;
  d->_g12 = d->_pg33;
  d->_g33 = d->_GO || d->_g12;
  if (d->_g33) {
    d->_NewSCChart_local__pre_AVI_stop = d->_NewSCChart_local__reg_AVI_stop;
  }
  d->_g24 = d->_pg22;
  d->_cg24 = d->_NewSCChart_local__pre_AVI_stop;
  d->_g25 = d->_g24 && d->_cg24;
  if (d->_g25) {
    d->_taken_transitions[7] += 1;
  }
  d->_NewSCChart_local__pre_AVI_start = d->_NewSCChart_local__reg_AVI_start;
  d->_g21 = d->_pg25;
  d->_cg21 = d->_NewSCChart_local__pre_AVI_start;
  d->_g25 = d->_GO || d->_g25 || d->_g21 && !d->_cg21;
  d->_g21 = d->_g21 && d->_cg21;
  if (d->_g21) {
    d->_taken_transitions[6] += 1;
  }
  d->_g22 = d->_g21 || d->_g24 && !d->_cg24;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->_reg_VP = 0;
  d->_reg_AP = 0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_taken_transitions[4] = 0;
  d->_taken_transitions[5] = 0;
  d->_taken_transitions[6] = 0;
  d->_taken_transitions[7] = 0;
  d->_NewSCChart_local_URI_start = 1;
  d->_NewSCChart_local_URI_stop = 0;
  d->_NewSCChart_local__reg_AVI_stop = 0;
  d->_NewSCChart_local__reg_AVI_start = 0;
  d->_NewSCChart_local__reg_URI_stop = 0;
  d->_NewSCChart_local__reg_URI_start = 0;
  d->_pg6 = 0;
  d->_pg53 = 0;
  d->_pg8 = 0;
  d->_pg57 = 0;
  d->_pg33 = 0;
  d->_pg22 = 0;
  d->_pg25 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg6 = d->_g6;
  d->_pg53 = d->_g53;
  d->_pg8 = d->_g8;
  d->_pg57 = d->_g57;
  d->_pg33 = d->_g33;
  d->_pg22 = d->_g22;
  d->_pg25 = d->_g25;
  d->_GO = 0;
}
