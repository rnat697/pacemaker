/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"

#include "DDDpacemaker.h"

void logic(TickData* d) {
  d->_g7 = d->_pg6;
  d->_g7 = d->_g7 && d->VS;
  if (d->_g7) {
    d->_taken_transitions[2] += 1;
    d->AVI_stop = 1;
    d->VP = 0;
    d->_taken_transitions[4] += 1;
  }
  d->_g8 = d->_pg3;
  d->_g4 = d->_g8 && d->AS;
  if (d->_g4) {
    d->_taken_transitions[0] += 1;
    d->AVI_start = 1;
    d->_taken_transitions[1] += 1;
  }
  d->_g5 = d->_pg13;
  d->_cg14 = d->AVI_start;
  d->_g14 = d->_g5 && d->_cg14;
  if (d->_g14) {
    d->_taken_transitions[6] += 1;
  }
  d->_g15 = d->_pg28;
  d->_g28 = d->_GO || d->_g15;
  if (d->_g28) {
    d->doneAS = 0;
    d->doneVS = 0;
    d->doneAVI = 0;
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
  d->_pg6 = 0;
  d->_pg3 = 0;
  d->_pg13 = 0;
  d->_pg28 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg6 = d->_g6;
  d->_pg3 = d->_g3;
  d->_pg13 = d->_g13;
  d->_pg28 = d->_g28;
  d->_GO = 0;
}
