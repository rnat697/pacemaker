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
    d->_taken_transitions[2] += 1;
  }
  d->_g12 = d->_pg11;
  d->_g13 = d->_g12 && d->VS;
  if (d->_g13) {
    d->_taken_transitions[5] += 1;
  }
  d->_g13 = d->_g6 || d->_g13;
  if (d->_g13) {
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->VP = 0;
    d->_taken_transitions[7] += 1;
  }
  d->_g7 = d->_g12 && !d->VS;
  d->_cg14 = d->AVI_counter >= URI_VALUE;
  d->_g8 = d->_g7 && d->_cg14;
  if (d->_g8) {
    d->_taken_transitions[6] += 1;
  }
  d->_g12 = d->_pg2;
  d->_g14 = d->_g12 && d->AS;
  if (d->_g14) {
    d->_taken_transitions[0] += 1;
    d->_DDDpacemaker_local_AVI_start = 1;
    d->_taken_transitions[1] += 1;
  }
  d->_g15 = d->_pg21;
  d->_cg22 = d->_DDDpacemaker_local_AVI_start;
  d->_g3 = d->_g15 && d->_cg22;
  if (d->_g3) {
    d->_taken_transitions[9] += 1;
  }
  d->_g4 = d->_pg32;
  d->_g22 = d->_g4 && d->AS;
  if (d->_g22) {
    d->_taken_transitions[14] += 1;
    d->_DDDpacemaker_local_AEI_stop = 1;
    d->AP = 0;
    d->_taken_transitions[16] += 1;
  }
  d->_g23 = d->_g4 && !d->AS;
  d->_cg37 = d->AEI_counter >= AEI_VALUE;
  d->_g35 = d->_g23 && d->_cg37;
  if (d->_g35) {
    d->_taken_transitions[15] += 1;
    d->AP = 1;
    d->_DDDpacemaker_local_AEI_stop = 1;
    d->_taken_transitions[17] += 1;
  }
  d->_g32 = d->_pg38;
  d->_g38 = d->_GO || d->_g22 || d->_g35 || d->_g32 && !d->VS;
  d->_g36 = d->_g32 && d->VS;
  if (d->_g36) {
    d->_taken_transitions[12] += 1;
    d->_DDDpacemaker_local_AEI_start = 1;
    d->_taken_transitions[13] += 1;
  }
  d->_g32 = d->_g36 || d->_g23 && !d->_cg37;
  d->_g37 = d->_pg41;
  d->_cg42 = d->_DDDpacemaker_local_AEI_start;
  d->_g33 = d->_g37 && d->_cg42;
  if (d->_g33) {
    d->_taken_transitions[18] += 1;
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
  d->_pg5 = 0;
  d->_pg11 = 0;
  d->_pg2 = 0;
  d->_pg21 = 0;
  d->_pg32 = 0;
  d->_pg38 = 0;
  d->_pg41 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg5 = d->_g5;
  d->_pg11 = d->_g11;
  d->_pg2 = d->_g2;
  d->_pg21 = d->_g21;
  d->_pg32 = d->_g32;
  d->_pg38 = d->_g38;
  d->_pg41 = d->_g41;
  d->_GO = 0;
}
