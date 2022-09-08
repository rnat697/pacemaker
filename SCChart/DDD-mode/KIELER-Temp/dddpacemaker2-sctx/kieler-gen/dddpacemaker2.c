/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "dddpacemaker2.h"

void logic(TickData* d) {
  d->_g3 = d->_pg2;
  d->_g2 = d->_GO || d->_g3 && !d->AS;
  d->_g3 = d->_g3 && d->AS;
  if (d->_g3) {
    d->_dddpacemaker2_local_AVI_state = 1;
    d->_taken_transitions[0] += 1;
  }
  d->_g6 = d->_pg4;
  d->_cg6 = d->AVI_counter >= AVI_Value && d->_dddpacemaker2_local_URI_state == 1;
  d->_g4 = d->_g3 || d->_g6 && !d->_cg6;
  d->_g6 = d->_g6 && d->_cg6;
  if (d->_g6) {
    d->_taken_transitions[1] += 1;
  }
  d->_g7 = d->_pg25;
  d->_g25 = d->_GO || d->_g7;
  if (d->_g25) {
    d->_dddpacemaker2_local__pre_AVI_stop = d->_dddpacemaker2_local__reg_AVI_stop;
    d->_dddpacemaker2_local__reg_AVI_stop = d->_dddpacemaker2_local_AVI_stop;
  }
  d->_g16 = d->_pg16;
  d->_cg16 = d->_dddpacemaker2_local__pre_AVI_stop;
  d->_g17 = d->_g16 && d->_cg16;
  if (d->_g17) {
    d->_taken_transitions[3] += 1;
  }
  d->_dddpacemaker2_local__pre_AVI_start = d->_dddpacemaker2_local__reg_AVI_start;
  d->_dddpacemaker2_local__reg_AVI_start = d->_dddpacemaker2_local_AVI_start;
  d->_g13 = d->_pg17;
  d->_cg13 = d->_dddpacemaker2_local__pre_AVI_start;
  d->_g17 = d->_GO || d->_g17 || d->_g13 && !d->_cg13;
  d->_g13 = d->_g13 && d->_cg13;
  if (d->_g13) {
    d->_taken_transitions[2] += 1;
  }
  d->_g16 = d->_g13 || d->_g16 && !d->_cg16;
  d->_g14 = d->_pg21;
  d->_g21 = d->_GO || d->_g14;
  if (d->_g21) {
    d->_dddpacemaker2_local_real_AS = 0;
    d->_dddpacemaker2_local_real_VS = 0;
  }
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_dddpacemaker2_local__reg_AVI_stop = 0;
  d->_dddpacemaker2_local__reg_AVI_start = 0;
  d->_pg2 = 0;
  d->_pg4 = 0;
  d->_pg25 = 0;
  d->_pg16 = 0;
  d->_pg17 = 0;
  d->_pg21 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg2 = d->_g2;
  d->_pg4 = d->_g4;
  d->_pg25 = d->_g25;
  d->_pg16 = d->_g16;
  d->_pg17 = d->_g17;
  d->_pg21 = d->_g21;
  d->_GO = 0;
}
