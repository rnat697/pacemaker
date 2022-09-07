/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "VVIPacemaker_example.h"

void logic(TickData* d) {
  d->_g3 = d->_pg2;
  d->_g2 = d->_GO || d->_g3 && !d->VSense;
  d->_g3 = d->_g3 && d->VSense;
  if (d->_g3) {
    d->_taken_transitions[0] += 1;
  }
  d->_g10 = d->_pg8;
  d->_g11 = d->_g10 && d->VSense;
  if (d->_g11) {
    d->_taken_transitions[3] += 1;
    d->_VVIPacemaker_example_local_LRI_stop = 1;
    d->VPace = 0;
    d->_taken_transitions[5] += 1;
  }
  d->_g20 = d->_pg17;
  d->_cg20 = d->_VVIPacemaker_example_local_LRI_stop;
  d->_g22 = d->_g20 && !d->_cg20;
  d->_g23 = d->_g22 && d->LRITO;
  if (d->_g23) {
    d->_VVIPacemaker_example_local_LRI_ex = 1;
    d->_taken_transitions[9] += 1;
  }
  d->_g10 = d->_g10 && !d->VSense;
  d->_cg12 = d->_VVIPacemaker_example_local_LRI_ex;
  d->_g13 = d->_g10 && d->_cg12;
  if (d->_g13) {
    d->_taken_transitions[4] += 1;
    d->VPace = 1;
    d->_taken_transitions[6] += 1;
  }
  d->_g11 = d->_g3 || d->_g11 || d->_g13;
  if (d->_g11) {
    d->_VVIPacemaker_example_local_LRI_start = 1;
    d->_taken_transitions[1] += 1;
  }
  d->_g4 = d->_pg40;
  d->_g13 = d->_g4 && d->VRPTO;
  if (d->_g13) {
    d->_VVIPacemaker_example_local_VRP_ex = 1;
    d->_taken_transitions[17] += 1;
  }
  d->_g7 = d->_pg5;
  d->_cg7 = d->_VVIPacemaker_example_local_VRP_ex;
  d->_g5 = d->_g11 || d->_g7 && !d->_cg7;
  d->_g7 = d->_g7 && d->_cg7;
  if (d->_g7) {
    d->_taken_transitions[2] += 1;
  }
  d->_g8 = d->_g7 || d->_g10 && !d->_cg12;
  d->_g12 = d->_g20 && d->_cg20;
  if (d->_g12) {
    d->_taken_transitions[8] += 1;
  }
  d->_g20 = d->_pg23;
  d->_cg17 = d->_VVIPacemaker_example_local_LRI_start;
  d->_g23 = d->_GO || d->_g12 || d->_g23 || d->_g20 && !d->_cg17;
  d->_g21 = d->_g20 && d->_cg17;
  if (d->_g21) {
    d->_taken_transitions[7] += 1;
  }
  d->_g17 = d->_g21 || d->_g22 && !d->LRITO;
  d->_g22 = d->_pg33;
  d->_cg31 = d->_VVIPacemaker_example_local_VRP_ex;
  d->_g18 = d->_g22 && d->_cg31;
  if (d->_g18) {
    d->_taken_transitions[13] += 1;
  }
  d->_g27 = d->_pg32;
  d->_g35 = d->_g27 && !d->VSense;
  d->_cg35 = d->VPace;
  d->_g32 = d->_GO || d->_g18 || d->_g35 && !d->_cg35;
  d->_g27 = d->_g27 && d->VSense;
  if (d->_g27) {
    d->_taken_transitions[10] += 1;
  }
  d->_g35 = d->_g35 && d->_cg35;
  if (d->_g35) {
    d->_taken_transitions[11] += 1;
  }
  d->_g28 = d->_g27 || d->_g35;
  if (d->_g28) {
    d->_VVIPacemaker_example_local_VRP_start = 1;
    d->_taken_transitions[12] += 1;
  }
  d->_g36 = d->_g22 && !d->_cg31;
  d->_g31 = d->_g36 && d->VSense;
  if (d->_g31) {
    d->_taken_transitions[14] += 1;
    d->_taken_transitions[15] += 1;
  }
  d->_g33 = d->_g28 || d->_g31 || d->_g36 && !d->VSense;
  d->_g34 = d->_pg29;
  d->_cg40 = d->_VVIPacemaker_example_local_VRP_start;
  d->_g29 = d->_GO || d->_g13 || d->_g34 && !d->_cg40;
  d->_g44 = d->_g34 && d->_cg40;
  if (d->_g44) {
    d->_taken_transitions[16] += 1;
  }
  d->_g40 = d->_g44 || d->_g4 && !d->VRPTO;
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
  d->_pg2 = 0;
  d->_pg8 = 0;
  d->_pg17 = 0;
  d->_pg40 = 0;
  d->_pg5 = 0;
  d->_pg23 = 0;
  d->_pg33 = 0;
  d->_pg32 = 0;
  d->_pg29 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg2 = d->_g2;
  d->_pg8 = d->_g8;
  d->_pg17 = d->_g17;
  d->_pg40 = d->_g40;
  d->_pg5 = d->_g5;
  d->_pg23 = d->_g23;
  d->_pg33 = d->_g33;
  d->_pg32 = d->_g32;
  d->_pg29 = d->_g29;
  d->_GO = 0;
}
