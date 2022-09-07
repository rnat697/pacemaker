#ifndef VVIPACEMAKER_EXAMPLE_H
#define VVIPACEMAKER_EXAMPLE_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


typedef struct {
  char VSense;
  char LRITO;
  char VRPTO;
  char VPace;
  int _taken_transitions[18];
  char _VVIPacemaker_example_local_LRI_start;
  char _VVIPacemaker_example_local_LRI_ex;
  char _VVIPacemaker_example_local_LRI_stop;
  char _VVIPacemaker_example_local_VRP_start;
  char _VVIPacemaker_example_local_VRP_stop;
  char _VVIPacemaker_example_local_VRP_ex;
  char _g2;
  char _g3;
  char _g4;
  char _g5;
  char _g7;
  char _g8;
  char _g10;
  char _g11;
  char _g12;
  char _g13;
  char _g17;
  char _g18;
  char _g20;
  char _g21;
  char _g22;
  char _g23;
  char _g27;
  char _g28;
  char _g29;
  char _g31;
  char _g32;
  char _g33;
  char _g34;
  char _g35;
  char _g36;
  char _g40;
  char _g44;
  char _GO;
  char _cg3;
  char _cg7;
  char _cg12;
  char _cg10;
  char _cg17;
  char _cg22;
  char _cg20;
  char _cg35;
  char _cg27;
  char _cg33;
  char _cg31;
  char _cg40;
  char _cg43;
  char _TERM;
  char _pg2;
  char _pg8;
  char _pg17;
  char _pg40;
  char _pg5;
  char _pg23;
  char _pg33;
  char _pg32;
  char _pg29;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !VVIPACEMAKER_EXAMPLE_H */
