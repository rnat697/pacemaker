#ifndef NEWSCCHART_H
#define NEWSCCHART_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


typedef struct {
  char x;
  char y;
  int _taken_transitions[2];
  char _GO;
  char _cg3;
  char _cg7;
  char _TERM;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !NEWSCCHART_H */
