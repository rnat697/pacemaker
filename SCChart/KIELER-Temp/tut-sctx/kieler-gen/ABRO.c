/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "ABRO.h"

void logic(TickData* d) {
  d->_g5 = d->_pg16;
  d->_g11 = d->_pg21;
  d->_g16_e1 = !(d->_g5 || d->_g11);
  d->_g6_e1 = !d->_g5;
  d->_g7 = d->_g5 && !d->R;
  d->_g8 = d->_g7 && d->A;
  if (d->_g8) {
    d->_taken_transitions[2] += 1;
  }
  d->_g5 = d->_g5 && d->R || d->_g8;
  d->_g8 = !d->_g11;
  d->_g13 = d->_g11 && !d->R;
  d->_g14 = d->_g13 && d->B;
  if (d->_g14) {
    d->_taken_transitions[3] += 1;
  }
  d->_g11 = d->_g11 && d->R || d->_g14;
  d->_g14 = (d->_g6_e1 || d->_g5) && (d->_g8 || d->_g11) && (d->_g5 || d->_g11);
  d->_g6_e1 = d->_g14 && !d->R;
  if (d->_g6_e1) {
    d->O = 1;
    d->_taken_transitions[1] += 1;
  }
  d->_g12 = d->_g14 && d->R || d->_g6_e1;
  d->_g12_e2 = d->_pg21_e2;
  d->_g6 = !d->_g12_e2;
  d->_g15 = d->_g12_e2 && d->R;
  d->_g17 = (d->_g16_e1 || d->_g12) && (d->_g6 || d->_g15) && (d->_g12 || d->_g15);
  if (d->_g17) {
    d->_taken_transitions[0] += 1;
  }
  d->_g16_e1 = d->_GO || d->_g17;
  if (d->_g16_e1) {
    d->O = 0;
  }
  d->_g16 = d->_g16_e1 || d->_g7 && !d->A;
  d->_g21 = d->_g16_e1 || d->_g13 && !d->B;
  d->_g21_e2 = d->_g16_e1 || d->_g12_e2 && !d->R;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_pg16 = 0;
  d->_pg21 = 0;
  d->_pg21_e2 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg16 = d->_g16;
  d->_pg21 = d->_g21;
  d->_pg21_e2 = d->_g21_e2;
  d->_GO = 0;
}
