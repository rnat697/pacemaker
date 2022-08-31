/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "NewSCChart.h"

void logic(TickData* d) {
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->x = 0;
  d->y = 0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_GO = 0;
}
