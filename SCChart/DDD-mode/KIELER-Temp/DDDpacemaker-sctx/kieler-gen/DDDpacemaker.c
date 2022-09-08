/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"

#include "DDDpacemaker.h"

void logic(TickData* d) {
  d->_g9 = d->_pg9;
  d->_cg9 = d->VS || d->VP;
  d->_g10 = d->_g9 && d->_cg9;
  if (d->_g10) {
    d->_DDDpacemaker_local_AVI_state = 0;
    d->_taken_transitions[2] += 1;
  }
  d->_g3 = d->_pg10;
  d->_g10 = d->_GO || d->_g10 || d->_g3 && !d->AS;
  d->_g3 = d->_g3 && d->AS;
  if (d->_g3) {
    d->_DDDpacemaker_local_AVI_state = 1;
    d->_taken_transitions[0] += 1;
  }
  d->_g6 = d->_pg4;
  d->_cg6 = d->AVI_counter >= AVI_Value && d->_DDDpacemaker_local_URI_state == 1;
  d->_g4 = d->_g3 || d->_g6 && !d->_cg6;
  d->_g6 = d->_g6 && d->_cg6;
  if (d->_g6) {
    d->_taken_transitions[1] += 1;
  }
  d->_g9 = d->_g6 || d->_g9 && !d->_cg9;
  d->_g7 = d->_pg26;
  d->_g26 = d->_GO || d->_g7;
  if (d->_g26) {
    d->_DDDpacemaker_local__pre_AVI_stop = d->_DDDpacemaker_local__reg_AVI_stop;
    d->_DDDpacemaker_local__reg_AVI_stop = d->_DDDpacemaker_local_AVI_stop;
  }
  d->_g17 = d->_pg15;
  d->_cg17 = d->_DDDpacemaker_local__pre_AVI_stop;
  d->_g18 = d->_g17 && d->_cg17;
  if (d->_g18) {
    d->_taken_transitions[4] += 1;
  }
  d->_DDDpacemaker_local__pre_AVI_start = d->_DDDpacemaker_local__reg_AVI_start;
  d->_DDDpacemaker_local__reg_AVI_start = d->_DDDpacemaker_local_AVI_start;
  d->_g14 = d->_pg18;
  d->_cg14 = d->_DDDpacemaker_local__pre_AVI_start;
  d->_g18 = d->_GO || d->_g18 || d->_g14 && !d->_cg14;
  d->_g14 = d->_g14 && d->_cg14;
  if (d->_g14) {
    d->_taken_transitions[3] += 1;
  }
  d->_g15 = d->_g14 || d->_g17 && !d->_cg17;
  d->_g17 = d->_pg22;
  d->_g22 = d->_GO || d->_g17;
  if (d->_g22) {
    d->_DDDpacemaker_local_real_AS = 0;
    d->_DDDpacemaker_local_real_VS = 0;
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
  d->_DDDpacemaker_local__reg_AVI_stop = 0;
  d->_DDDpacemaker_local__reg_AVI_start = 0;
  d->_pg9 = 0;
  d->_pg10 = 0;
  d->_pg4 = 0;
  d->_pg26 = 0;
  d->_pg15 = 0;
  d->_pg18 = 0;
  d->_pg22 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg9 = d->_g9;
  d->_pg10 = d->_g10;
  d->_pg4 = d->_g4;
  d->_pg26 = d->_g26;
  d->_pg15 = d->_g15;
  d->_pg18 = d->_g18;
  d->_pg22 = d->_g22;
  d->_GO = 0;
}
