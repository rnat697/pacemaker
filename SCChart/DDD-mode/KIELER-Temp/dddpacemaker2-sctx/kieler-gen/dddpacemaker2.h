#ifndef DDDPACEMAKER2_H
#define DDDPACEMAKER2_H
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */


typedef struct {
  char AS;
  char VS;
  int AVI_counter;
  char AP;
  char VP;
  int _taken_transitions[4];
  char _dddpacemaker2_local_AVI_start;
  char _dddpacemaker2_local_AVI_stop;
  char _dddpacemaker2_local_AVI_state;
  char _dddpacemaker2_local_URI_state;
  char _dddpacemaker2_local_real_AS;
  char _dddpacemaker2_local_real_VS;
  char _dddpacemaker2_local__reg_AVI_stop;
  char _dddpacemaker2_local__pre_AVI_stop;
  char _dddpacemaker2_local__reg_AVI_start;
  char _dddpacemaker2_local__pre_AVI_start;
  char _g2;
  char _g3;
  char _g4;
  char _g6;
  char _g7;
  char _g13;
  char _g14;
  char _g16;
  char _g17;
  char _g21;
  char _g25;
  char _GO;
  char _cg3;
  char _cg6;
  char _cg13;
  char _cg16;
  char _TERM;
  char _pg2;
  char _pg4;
  char _pg25;
  char _pg16;
  char _pg17;
  char _pg21;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);

#endif /* !DDDPACEMAKER2_H */
