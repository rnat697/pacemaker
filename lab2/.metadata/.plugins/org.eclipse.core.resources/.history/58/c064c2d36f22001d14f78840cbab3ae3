/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "cs303_lab2.h"

void logic(TickData* d) {
  d->_g5 = d->_pg14_e1;
  d->_g10 = d->_pg14;
  d->_g14_e1 = !(d->_g5 || d->_g10);
  d->_g6_e1 = !d->_g5;
  d->_g7 = d->_g5 && !d->R;
  d->_g5 = d->_g5 && d->R || d->_g7 && d->A;
  d->_g11_e2 = !d->_g10;
  d->_g12 = d->_g10 && !d->R;
  d->_g10 = d->_g10 && d->R || d->_g12 && d->B;
  d->_g11_e2 = (d->_g6_e1 || d->_g5) && (d->_g11_e2 || d->_g10) && (d->_g5 || d->_g10);
  d->_g11 = d->_g11_e2 && !d->R;
  if (d->_g11) {
    d->O = 1;
  }
  d->_g6_e1 = d->_g11_e2 && d->R || d->_g11;
  d->_g6 = d->_pg20;
  d->_g15 = !d->_g6;
  d->_g13 = d->_g6 && d->R;
  d->_g19_e2 = (d->_g14_e1 || d->_g6_e1) && (d->_g15 || d->_g13) && (d->_g6_e1 || d->_g13);
  d->_g19 = d->_GO || d->_g19_e2;
  if (d->_g19) {
    d->O = 0;
  }
  d->_g14_e1 = d->_g19 || d->_g7 && !d->A;
  d->_g14 = d->_g19 || d->_g12 && !d->B;
  d->_g20 = d->_g19 || d->_g6 && !d->R;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->O = 0;
  d->_pg14_e1 = 0;
  d->_pg14 = 0;
  d->_pg20 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg14_e1 = d->_g14_e1;
  d->_pg14 = d->_g14;
  d->_pg20 = d->_g20;
  d->_GO = 0;
}
