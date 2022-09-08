/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"

#include "DDDpacemaker.h"

void logic(TickData* d) {
  d->_g50 = d->_pg24;
  if (d->_g50) {
    d->_DDDpacemaker_local_AVI_counter += d->deltaT;
  }
  d->_g51_e1 = !d->_g50;
  d->_g76 = d->_pg57;
  d->_cg76 = d->_DDDpacemaker_local_AVI_counter >= AVI_VALUE && d->_DDDpacemaker_local_URI_state == 0 && d->VS;
  d->_g77 = d->_g76 && d->_cg76;
  if (d->_g77) {
    d->_DDDpacemaker_local__Atrig3 = 1;
  }
  d->_g79 = d->_g76 && !d->_cg76;
  d->_cg79 = d->_DDDpacemaker_local_AVI_counter >= AVI_VALUE && d->_DDDpacemaker_local_URI_state == 0;
  d->_g80 = d->_g79 && d->_cg79;
  if (d->_g80) {
    d->_DDDpacemaker_local__Atrig4 = 1;
  }
  d->_cg50 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g51 = d->_g50 && d->_cg50;
  d->_g61 = d->_pg35;
  d->_g55 = d->_pg29;
  d->_g58_e2 = !(d->_g61 || d->_g55);
  d->sleepT = 1000.0;
  d->_g55 = d->_g55 || d->_g61;
  d->_cg56 = d->_DDDpacemaker_local_AVI_counter < AVI_VALUE;
  d->_g61 = d->_g55 && d->_cg56;
  if (d->_g61) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg57 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g56 = d->_g55 && !d->_cg56;
  d->_cg59 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g58 = d->_g61 && d->_cg57 || d->_g56 && d->_cg59;
  d->_g72 = d->_pg50;
  d->_g66 = d->_pg12;
  d->_g69_e3 = !(d->_g72 || d->_g66);
  d->_g66 = d->_g66 || d->_g72;
  d->_cg67 = d->_DDDpacemaker_local_AVI_counter < AVI_VALUE;
  d->_g72 = d->_g66 && d->_cg67;
  if (d->_g72) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg68 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g67 = d->_g66 && !d->_cg67;
  d->_cg70 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g69 = d->_g72 && d->_cg68 || d->_g67 && d->_cg70;
  d->_g76 = !d->_g76;
  d->_g80 = d->_g77 || d->_g80;
  d->_g77 = (d->_g51_e1 || d->_g51) && (d->_g58_e2 || d->_g58) && (d->_g69_e3 || d->_g69) && (d->_g76 || d->_g80) && (d->_g51 || d->_g58 || d->_g69 || d->_g80);
  d->_cg81 = d->_DDDpacemaker_local__Atrig3;
  d->_g78_e4 = d->_g77 && d->_cg81;
  if (d->_g78_e4) {
    d->_taken_transitions[3] += 1;
  }
  d->_g51_e1 = d->_g77 && !d->_cg81;
  if (d->_g51_e1) {
    d->VP = 1;
    d->_taken_transitions[4] += 1;
  }
  d->_g69_e3 = d->_pg3;
  if (d->_g69_e3) {
    d->_DDDpacemaker_local_AVI_counter += d->deltaT;
  }
  d->_g78 = !d->_g69_e3;
  d->_g69 = d->_pg18;
  d->_cg41 = d->_DDDpacemaker_local_AVI_counter >= AVI_Value && d->_DDDpacemaker_local_URI_state == 1;
  d->_g58 = d->_g69 && d->_cg41;
  if (d->_g58) {
    d->_DDDpacemaker_local__Atrig1 = 1;
  }
  d->_g51 = d->_g69 && !d->_cg41;
  d->_cg44 = d->_DDDpacemaker_local_AVI_counter >= AVI_VALUE && d->_DDDpacemaker_local_URI_state == 0;
  d->_g58_e2 = d->_g51 && d->_cg44;
  if (d->_g58_e2) {
    d->_DDDpacemaker_local__Atrig2 = 1;
  }
  d->_cg15 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g81 = d->_g69_e3 && d->_cg15;
  d->_g26 = d->_pg11;
  d->_g20 = d->_pg10;
  d->_g23_e2 = !(d->_g26 || d->_g20);
  d->_g26 = d->_g20 || d->_g26;
  d->_cg21 = d->_DDDpacemaker_local_AVI_counter < AVI_Value;
  d->_g20 = d->_g26 && d->_cg21;
  if (d->_g20) {
    d->sleepT = (d->sleepT < (AVI_Value - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_Value - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg22 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g21 = d->_g26 && !d->_cg21;
  d->_cg24 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g23 = d->_g20 && d->_cg22 || d->_g21 && d->_cg24;
  d->_g37 = d->_pg22;
  d->_g31 = d->_pg7;
  d->_g34_e3 = !(d->_g37 || d->_g31);
  d->_g37 = d->_g31 || d->_g37;
  d->_cg32 = d->_DDDpacemaker_local_AVI_counter < AVI_VALUE;
  d->_g31 = d->_g37 && d->_cg32;
  if (d->_g31) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg33 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g32 = d->_g37 && !d->_cg32;
  d->_cg35 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g34 = d->_g31 && d->_cg33 || d->_g32 && d->_cg35;
  d->_g41 = !d->_g69;
  d->_g45 = d->_g58 || d->_g58_e2;
  d->_g42 = (d->_g78 || d->_g81) && (d->_g23_e2 || d->_g23) && (d->_g34_e3 || d->_g34) && (d->_g41 || d->_g45) && (d->_g81 || d->_g23 || d->_g34 || d->_g45);
  d->_cg46 = d->_DDDpacemaker_local__Atrig1;
  d->_g16_e1 = d->_g42 && !d->_cg46;
  if (d->_g16_e1) {
    d->VP = 1;
    d->_taken_transitions[2] += 1;
  }
  d->_g16 = d->_GO || d->_g78_e4 || d->_g51_e1 || d->_g16_e1;
  if (d->_g16) {
    d->_DDDpacemaker_local__Atrig = 0;
  }
  d->_cg4 = d->_DDDpacemaker_local__Atrig;
  d->_g23 = d->_pg43_e4;
  d->_g34 = d->_g23 && d->AS;
  if (d->_g34) {
    d->_DDDpacemaker_local__Atrig = 1;
  }
  d->_g43 = d->_pg34_e3;
  if (d->_g43) {
    d->_DDDpacemaker_local_AVI_counter += d->deltaT;
  }
  d->_cg6 = d->_DDDpacemaker_local__Atrig;
  d->_g34_e3 = d->_g16 && !d->_cg4 || d->_g43 && !d->_cg6;
  d->_g23_e2 = d->_g43 && d->_cg6;
  d->_g43_e4 = d->_g16 || d->_g23 && !d->AS;
  d->_g84 = !d->_g43;
  d->_g82 = !d->_g23;
  d->_g83 = (d->_g84 || d->_g23_e2) && (d->_g82 || d->_g34) && (d->_g23_e2 || d->_g34);
  if (d->_g83) {
    d->_DDDpacemaker_local_AVI_state = 1;
    d->_DDDpacemaker_local_AVI_counter = 0;
    d->_taken_transitions[0] += 1;
    d->_DDDpacemaker_local__Atrig1 = 0;
    d->_DDDpacemaker_local__Atrig2 = 0;
  }
  d->_cg13 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g3 = d->_g83 && !d->_cg13 || d->_g69_e3 && !d->_cg15;
  d->_cg17 = d->_DDDpacemaker_local_AVI_counter < AVI_Value;
  d->_g6 = d->_g83 && d->_cg17;
  if (d->_g6) {
    d->sleepT = (d->sleepT < (AVI_Value - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_Value - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg18 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g10 = d->_g6 && !d->_cg18 || d->_g20 && !d->_cg22;
  d->_g11_e2 = d->_g83 && !d->_cg17;
  d->_cg27 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g11 = d->_g21 && !d->_cg24 || d->_g11_e2 && !d->_cg27;
  d->_cg28 = d->_DDDpacemaker_local_AVI_counter < AVI_VALUE;
  d->_g7_e1 = d->_g83 && d->_cg28;
  if (d->_g7_e1) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg29 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g7 = d->_g7_e1 && !d->_cg29 || d->_g31 && !d->_cg33;
  d->_g15 = d->_g83 && !d->_cg28;
  d->_cg38 = d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g22 = d->_g32 && !d->_cg35 || d->_g15 && !d->_cg38;
  d->_g18 = d->_g83 || d->_g51 && !d->_cg44;
  d->_g27 = d->_g42 && d->_cg46;
  if (d->_g27) {
    d->_taken_transitions[1] += 1;
    d->_DDDpacemaker_local__Atrig3 = 0;
    d->_DDDpacemaker_local__Atrig4 = 0;
  }
  d->_cg48 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g24 = d->_g27 && !d->_cg48 || d->_g50 && !d->_cg50;
  d->_cg52 = d->_DDDpacemaker_local_AVI_counter < AVI_VALUE;
  d->_g33 = d->_g27 && d->_cg52;
  if (d->_g33) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg53 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g29 = d->_g33 && !d->_cg53 || d->_g61 && !d->_cg57;
  d->_g38 = d->_g27 && !d->_cg52;
  d->_cg62 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g35 = d->_g56 && !d->_cg59 || d->_g38 && !d->_cg62;
  d->_cg63 = d->_DDDpacemaker_local_AVI_counter < AVI_VALUE;
  d->_g44 = d->_g27 && d->_cg63;
  if (d->_g44) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter)) ? d->sleepT : (AVI_VALUE - d->_DDDpacemaker_local_AVI_counter);
  }
  d->_cg64 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g12 = d->_g44 && !d->_cg64 || d->_g72 && !d->_cg68;
  d->_g46 = d->_g27 && !d->_cg63;
  d->_cg73 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g50 = d->_g67 && !d->_cg70 || d->_g46 && !d->_cg73;
  d->_g57 = d->_g27 || d->_g79 && !d->_cg79;
  d->_g53 = d->_pg62;
  d->_g62 = d->_GO || d->_g53;
  if (d->_g62) {
    d->_DDDpacemaker_local_real_AS = 0;
    d->_DDDpacemaker_local_real_VS = 0;
  }
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_taken_transitions[4] = 0;
  d->_DDDpacemaker_local_URI_state = 1;
  d->_DDDpacemaker_local_AVI_counter = 0;
  d->_pg24 = 0;
  d->_pg57 = 0;
  d->_pg35 = 0;
  d->_pg29 = 0;
  d->_pg50 = 0;
  d->_pg12 = 0;
  d->_pg3 = 0;
  d->_pg18 = 0;
  d->_pg11 = 0;
  d->_pg10 = 0;
  d->_pg22 = 0;
  d->_pg7 = 0;
  d->_pg43_e4 = 0;
  d->_pg34_e3 = 0;
  d->_pg62 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg24 = d->_g24;
  d->_pg57 = d->_g57;
  d->_pg35 = d->_g35;
  d->_pg29 = d->_g29;
  d->_pg50 = d->_g50;
  d->_pg12 = d->_g12;
  d->_pg3 = d->_g3;
  d->_pg18 = d->_g18;
  d->_pg11 = d->_g11;
  d->_pg10 = d->_g10;
  d->_pg22 = d->_g22;
  d->_pg7 = d->_g7;
  d->_pg43_e4 = d->_g43_e4;
  d->_pg34_e3 = d->_g34_e3;
  d->_pg62 = d->_g62;
  d->_GO = 0;
}
