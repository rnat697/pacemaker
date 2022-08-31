#ifndef ABRO_H
#define ABRO_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


typedef struct {
  char A;
  char B;
  char B1;
  char R;
  char O;
  int _taken_transitions[4];
  char _g5;
  char _g6;
  char _g7;
  char _g8;
  char _g11;
  char _g12;
  char _g13;
  char _g14;
  char _g15;
  char _g16;
  char _g17;
  char _g21;
  char _GO;
  char _cg7;
  char _cg5;
  char _cg13;
  char _cg11;
  char _cg15;
  char _cg20;
  char _g6_e1;
  char _g12_e2;
  char _g16_e1;
  char _g21_e2;
  char _TERM;
  char _pg16;
  char _pg21;
  char _pg21_e2;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !ABRO_H */
