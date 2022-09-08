/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"

#include "DDDpacemaker.h"

void logic(TickData* d) {
  d->_g26 = d->_pg21;
  d->_g27 = d->_g26 && d->VS;
  if (d->_g27) {
    d->_DDDpacemaker_local__Atrig = 1;
  }
  d->_DDDpacemaker_local__pre_URI_start = d->_DDDpacemaker_local__reg_URI_start;
  d->_g279 = d->_pg211;
  if (d->_g279) {
    d->AVI_counter += d->deltaT;
  }
  d->_g26 = d->_g26 && !d->VS;
  d->_cg29 = d->AVI_counter >= AVI_VALUE && d->_DDDpacemaker_local__pre_URI_start;
  d->_g30 = d->_g26 && d->_cg29;
  if (d->_g30) {
    d->_DDDpacemaker_local__Atrig1 = 1;
  }
  d->_DDDpacemaker_local__pre_URI_stop = d->_DDDpacemaker_local__reg_URI_stop;
  d->_g29 = d->_g26 && !d->_cg29;
  d->_cg31 = d->AVI_counter >= AVI_VALUE && d->_DDDpacemaker_local__pre_URI_stop;
  d->_g32 = d->_g29 && d->_cg31;
  if (d->_g32) {
    d->_DDDpacemaker_local__Atrig2 = 1;
  }
  d->_DDDpacemaker_local__pre_real_AS = d->_DDDpacemaker_local__reg_real_AS;
  d->_pre_AP = d->_reg_AP;
  d->_g4 = d->_pg18_e2;
  d->_cg4 = d->_DDDpacemaker_local__pre_real_AS || d->_pre_AP;
  d->_g5 = d->_g4 && d->_cg4;
  if (d->_g5) {
    d->_DDDpacemaker_local_AVI_start = 1;
    d->_DDDpacemaker_local_AVI_stop = 0;
    d->_taken_transitions[0] += 1;
    d->_DDDpacemaker_local__Atrig = 0;
    d->_DDDpacemaker_local__Atrig1 = 0;
    d->_DDDpacemaker_local__Atrig2 = 0;
  }
  d->_g11 = d->_pg10;
  d->_g14 = d->_pg13;
  d->_g11 = d->_g5 || d->_g11 || d->_g14;
  d->_cg7 = d->AVI_counter < AVI_VALUE;
  d->_g14 = d->_g11 && !d->_cg7;
  d->_cg12 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g13 = d->_g14 && !d->_cg12;
  d->sleepT = 1000.0;
  d->_g7 = d->_g11 && d->_cg7;
  if (d->_g7) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->AVI_counter)) ? d->sleepT : (AVI_VALUE - d->AVI_counter);
  }
  d->_cg8 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g10 = d->_g7 && !d->_cg8;
  d->_g9_e1 = !(d->_g13 || d->_g10);
  d->_g12 = d->_g7 && d->_cg8 || d->_g14 && d->_cg12;
  d->_g8 = d->_pg19;
  d->_g23 = d->_pg22;
  d->_g23 = d->_g5 || d->_g8 || d->_g23;
  d->_cg16 = d->AVI_counter < AVI_VALUE;
  d->_g20 = d->_g23 && !d->_cg16;
  d->_cg21 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g22 = d->_g20 && !d->_cg21;
  d->_g16 = d->_g23 && d->_cg16;
  if (d->_g16) {
    d->sleepT = (d->sleepT < (AVI_VALUE - d->AVI_counter)) ? d->sleepT : (AVI_VALUE - d->AVI_counter);
  }
  d->_cg17 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g19 = d->_g16 && !d->_cg17;
  d->_g18_e2 = !(d->_g22 || d->_g19);
  d->_g17 = d->_g16 && d->_cg17 || d->_g20 && d->_cg21;
  d->_g21 = d->_g5 || d->_g29 && !d->_cg31;
  d->_g5 = !d->_g21;
  d->_g31 = d->_g27 || d->_g30 || d->_g32;
  d->_g27 = (d->_g9_e1 || d->_g12) && (d->_g18_e2 || d->_g17) && (d->_g5 || d->_g31) && (d->_g12 || d->_g17 || d->_g31);
  d->_cg33 = d->_DDDpacemaker_local__Atrig;
  d->_g30 = d->_g27 && d->_cg33;
  if (d->_g30) {
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->_DDDpacemaker_local_AVI_start = 0;
    d->VP = 0;
    d->_taken_transitions[1] += 1;
  }
  d->_g32 = d->_pg33;
  d->_g9 = d->_g32 && d->VS;
  if (d->_g9) {
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->VP = 0;
    d->_DDDpacemaker_local_AVI_start = 0;
    d->AVI_counter = 0;
    d->_taken_transitions[4] += 1;
  }
  d->_g28_e3 = d->_g32 && !d->VS;
  d->_cg40 = d->_DDDpacemaker_local__pre_URI_stop;
  d->_g9_e1 = d->_g28_e3 && d->_cg40;
  if (d->_g9_e1) {
    d->VP = 1;
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->_DDDpacemaker_local_AVI_start = 0;
    d->AVI_counter = 0;
    d->_taken_transitions[5] += 1;
  }
  d->_g28 = d->_g27 && !d->_cg33;
  d->_cg35 = d->_DDDpacemaker_local__Atrig1;
  d->_g18 = d->_g28 && !d->_cg35;
  if (d->_g18) {
    d->VP = 1;
    d->_DDDpacemaker_local_AVI_start = 0;
    d->_DDDpacemaker_local_AVI_stop = 1;
    d->AVI_counter = 0;
    d->_taken_transitions[3] += 1;
  }
  d->_g18_e2 = d->_GO || d->_g30 || d->_g9 || d->_g9_e1 || d->_g18 || d->_g4 && !d->_cg4;
  d->_g38 = d->_g28 && d->_cg35;
  if (d->_g38) {
    d->_taken_transitions[2] += 1;
  }
  d->_g33 = d->_g38 || d->_g28_e3 && !d->_cg40;
  d->_g41 = d->_pg42;
  d->_g42 = d->_GO || d->_g41;
  if (d->_g42) {
    d->_DDDpacemaker_local__pre_AVI_stop = d->_DDDpacemaker_local__reg_AVI_stop;
  }
  d->_g39 = d->_pg263;
  d->_cg49 = d->_DDDpacemaker_local__pre_AVI_stop;
  d->_g34 = d->_g39 && d->_cg49;
  if (d->_g34) {
    d->_taken_transitions[7] += 1;
  }
  d->_g4 = d->_pg35;
  d->_g35 = d->_GO || d->_g4;
  if (d->_g35) {
    d->_DDDpacemaker_local__pre_AVI_start = d->_DDDpacemaker_local__reg_AVI_start;
  }
  d->_g40 = d->_pg36;
  d->_cg46 = d->_DDDpacemaker_local__pre_AVI_start;
  d->_g36 = d->_GO || d->_g34 || d->_g40 && !d->_cg46;
  d->_g259 = d->_g40 && d->_cg46;
  if (d->_g259) {
    d->_taken_transitions[6] += 1;
  }
  d->_g263 = d->_g259 || d->_g39 && !d->_cg49;
  d->_g50 = d->_pg58;
  d->_g46 = d->_g50 && d->AS;
  if (d->_g46) {
    d->_DDDpacemaker_local__Atrig3 = 1;
  }
  d->_g49 = d->_pg212;
  if (d->_g49) {
    d->AEI_counter += d->deltaT;
  }
  d->_g47 = d->_g50 && !d->AS;
  d->_cg70 = d->AEI_counter >= AEI_VALUE;
  d->_g67 = d->_g47 && d->_cg70;
  if (d->_g67) {
    d->_DDDpacemaker_local__Atrig4 = 1;
  }
  d->_DDDpacemaker_local__pre_real_VS = d->_DDDpacemaker_local__reg_real_VS;
  d->_pre_VP = d->_reg_VP;
  d->_g54 = d->_pg53;
  d->_cg54 = d->_DDDpacemaker_local__pre_real_VS || d->_pre_VP;
  d->_g54 = d->_g54 && d->_cg54;
  if (d->_g54) {
    d->_DDDpacemaker_local_AEI_start = 1;
    d->_DDDpacemaker_local_AEI_stop = 0;
    d->_taken_transitions[8] += 1;
    d->_DDDpacemaker_local__Atrig3 = 0;
    d->_DDDpacemaker_local__Atrig4 = 0;
  }
  d->_g61 = d->_pg60;
  d->_g64 = d->_pg63;
  d->_g64 = d->_g54 || d->_g61 || d->_g64;
  d->_cg57 = d->AEI_counter < AEI_VALUE;
  d->_g61 = d->_g64 && !d->_cg57;
  d->_cg62 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g63 = d->_g61 && !d->_cg62;
  d->_g57 = d->_g64 && d->_cg57;
  if (d->_g57) {
    d->sleepT = (d->sleepT < (AEI_VALUE - d->AEI_counter)) ? d->sleepT : (AEI_VALUE - d->AEI_counter);
  }
  d->_cg58 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g60 = d->_g57 && !d->_cg58;
  d->_g59_e1 = !(d->_g63 || d->_g60);
  d->_g62 = d->_g57 && d->_cg58 || d->_g61 && d->_cg62;
  d->_g58 = d->_g54 || d->_g47 && !d->_cg70;
  d->_g55 = !d->_g58;
  d->_g70 = d->_g46 || d->_g67;
  d->_g68 = (d->_g59_e1 || d->_g62) && (d->_g55 || d->_g70) && (d->_g62 || d->_g70);
  d->_cg72 = d->_DDDpacemaker_local__Atrig3;
  d->_g71 = d->_g68 && d->_cg72;
  if (d->_g71) {
    d->_DDDpacemaker_local_AEI_stop = 1;
    d->_DDDpacemaker_local_AEI_start = 0;
    d->AP = 0;
    d->_taken_transitions[9] += 1;
  }
  d->_g59 = d->_pg136;
  d->_g59_e1 = d->_pg127;
  d->_g69_e2 = !(d->_g59 || d->_g59_e1);
  d->_g69 = d->_pg133;
  d->_g72 = d->_g69 && d->VS;
  if (d->_g72) {
    d->_DDDpacemaker_local__Atrig7 = 1;
  }
  d->_g73 = d->_pg279;
  if (d->_g73) {
    d->VRP_counter += d->deltaT;
  }
  d->_g142 = d->_g69 && !d->VS;
  d->_cg142 = d->VRP_counter >= VRP_VALUE;
  d->_g143 = d->_g142 && d->_cg142;
  if (d->_g143) {
    d->_DDDpacemaker_local__Atrig8 = 1;
  }
  d->_g135 = d->_g59_e1 || d->_g59;
  d->_cg130 = d->VRP_counter < VRP_VALUE;
  d->_g129 = d->_g135 && d->_cg130;
  if (d->_g129) {
    d->sleepT = (d->sleepT < (VRP_VALUE - d->VRP_counter)) ? d->sleepT : (VRP_VALUE - d->VRP_counter);
  }
  d->_cg131 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g130 = d->_g135 && !d->_cg130;
  d->_cg133 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g132 = d->_g129 && d->_cg131 || d->_g130 && d->_cg133;
  d->_g139 = !d->_g69;
  d->_g143 = d->_g72 || d->_g143;
  d->_g140 = (d->_g69_e2 || d->_g132) && (d->_g139 || d->_g143) && (d->_g132 || d->_g143);
  d->_cg144 = d->_DDDpacemaker_local__Atrig7;
  d->_g132 = d->_g140 && !d->_cg144;
  if (d->_g132) {
    d->_DDDpacemaker_local_VRP_stop = 1;
  }
  d->_g141 = d->_pg214;
  if (d->_g141) {
    d->PVARP_counter += d->deltaT;
  }
  d->_g141_e2 = d->_pg87;
  d->_g132_e1 = d->_pg107;
  d->_g146 = !(d->_g141_e2 || d->_g132_e1);
  d->_g102 = d->_pg90;
  d->_g103 = d->_g102 && d->AS;
  if (d->_g103) {
    d->_DDDpacemaker_local__Atrig5 = 1;
  }
  d->_g105 = d->_g102 && !d->AS;
  d->_cg105 = d->PVARP_counter >= PVARP_VALUE;
  d->_g106 = d->_g105 && d->_cg105;
  if (d->_g106) {
    d->_DDDpacemaker_local__Atrig6 = 1;
  }
  d->_g92 = d->_g132_e1 || d->_g141_e2;
  d->_cg93 = d->PVARP_counter < PVARP_VALUE;
  d->_g98 = d->_g92 && d->_cg93;
  if (d->_g98) {
    d->sleepT = (d->sleepT < (PVARP_VALUE - d->PVARP_counter)) ? d->sleepT : (PVARP_VALUE - d->PVARP_counter);
  }
  d->_cg94 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g93 = d->_g92 && !d->_cg93;
  d->_cg96 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g95 = d->_g98 && d->_cg94 || d->_g93 && d->_cg96;
  d->_g102 = !d->_g102;
  d->_g106 = d->_g103 || d->_g106;
  d->_g103 = (d->_g146 || d->_g95) && (d->_g102 || d->_g106) && (d->_g95 || d->_g106);
  d->_cg107 = d->_DDDpacemaker_local__Atrig5;
  d->_g95 = d->_g103 && !d->_cg107;
  if (d->_g95) {
    d->_DDDpacemaker_local_PVARP_stop = 1;
    d->_DDDpacemaker_local_AR = 0;
    d->PVARP_counter = 0;
    d->_taken_transitions[16] += 1;
  }
  d->_g95_e1 = d->_pg85;
  d->_cg86 = d->VS || d->_pre_VP;
  d->_g104_e2 = d->_g95_e1 && d->_cg86;
  if (d->_g104_e2) {
    d->_DDDpacemaker_local_PVARP_start = 1;
    d->_DDDpacemaker_local_PVARP_stop = 0;
    d->_taken_transitions[13] += 1;
  }
  d->_g104 = d->_g103 && d->_cg107;
  if (d->_g104) {
    d->_DDDpacemaker_local_AR = 1;
    d->_taken_transitions[15] += 1;
  }
  d->_g109 = d->_g104_e2 || d->_g104;
  if (d->_g109) {
    d->_DDDpacemaker_local__Atrig5 = 0;
    d->_DDDpacemaker_local__Atrig6 = 0;
  }
  d->_cg89 = d->PVARP_counter < PVARP_VALUE;
  d->_g86 = d->_g109 && d->_cg89;
  if (d->_g86) {
    d->sleepT = (d->sleepT < (PVARP_VALUE - d->PVARP_counter)) ? d->sleepT : (PVARP_VALUE - d->PVARP_counter);
  }
  d->_cg90 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g107 = d->_g86 && !d->_cg90 || d->_g98 && !d->_cg94;
  d->_g108 = d->_g109 && !d->_cg89;
  d->_cg99 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g87 = d->_g93 && !d->_cg96 || d->_g108 && !d->_cg99;
  d->_g90 = d->_g109 || d->_g105 && !d->_cg105;
  d->_g94 = d->_pg99;
  d->_g99 = d->_GO || d->_g94;
  if (d->_g99) {
    d->_DDDpacemaker_local__pre_PVARP_stop = d->_DDDpacemaker_local__reg_PVARP_stop;
  }
  d->_g96 = d->_pg116;
  d->_cg118 = d->_DDDpacemaker_local__pre_PVARP_stop;
  d->_g105 = d->_g96 && d->_cg118;
  if (d->_g105) {
    d->_taken_transitions[18] += 1;
  }
  d->_g88 = d->_pg251;
  d->_g251 = d->_GO || d->_g88;
  if (d->_g251) {
    d->_DDDpacemaker_local__pre_PVARP_start = d->_DDDpacemaker_local__reg_PVARP_start;
  }
  d->_g247 = d->_pg119;
  d->_cg115 = d->_DDDpacemaker_local__pre_PVARP_start;
  d->_g119 = d->_GO || d->_g105 || d->_g247 && !d->_cg115;
  d->_g115 = d->_g247 && d->_cg115;
  if (d->_g115) {
    d->_taken_transitions[17] += 1;
  }
  d->_g116 = d->_g115 || d->_g96 && !d->_cg118;
  d->_g118 = d->_pg122;
  d->_cg123 = d->_DDDpacemaker_local__pre_PVARP_start;
  d->_g123 = d->_g118 && d->_cg123;
  if (d->_g123) {
    d->_DDDpacemaker_local_VRP_start = 1;
    d->_DDDpacemaker_local_VRP_stop = 0;
    d->_taken_transitions[19] += 1;
  }
  d->_g144 = d->_g140 && d->_cg144;
  if (d->_g144) {
    d->_DDDpacemaker_local_VR = 1;
    d->_taken_transitions[21] += 1;
  }
  d->_g145 = d->_g123 || d->_g144;
  if (d->_g145) {
    d->_DDDpacemaker_local__Atrig7 = 0;
    d->_DDDpacemaker_local__Atrig8 = 0;
  }
  d->_cg126 = d->VRP_counter < VRP_VALUE;
  d->_g124 = d->_g145 && d->_cg126;
  if (d->_g124) {
    d->sleepT = (d->sleepT < (VRP_VALUE - d->VRP_counter)) ? d->sleepT : (VRP_VALUE - d->VRP_counter);
  }
  d->_cg127 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g127 = d->_g124 && !d->_cg127 || d->_g129 && !d->_cg131;
  d->_g131 = d->_g145 && !d->_cg126;
  d->_cg136 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g136 = d->_g130 && !d->_cg133 || d->_g131 && !d->_cg136;
  d->_g133 = d->_g145 || d->_g142 && !d->_cg142;
  d->_g142 = d->_pg125;
  d->_g125 = d->_GO || d->_g142;
  if (d->_g125) {
    d->_DDDpacemaker_local__pre_VRP_stop = d->_DDDpacemaker_local__reg_VRP_stop;
  }
  d->_g239 = d->_pg153;
  d->_cg155 = d->_DDDpacemaker_local__pre_VRP_stop;
  d->_g156 = d->_g239 && d->_cg155;
  if (d->_g156) {
    d->_taken_transitions[24] += 1;
  }
  d->_DDDpacemaker_local__pre_VRP_start = d->_DDDpacemaker_local__reg_VRP_start;
  d->_g152 = d->_pg156;
  d->_cg152 = d->_DDDpacemaker_local__pre_VRP_start;
  d->_g156 = d->_GO || d->_g156 || d->_g152 && !d->_cg152;
  d->_g152 = d->_g152 && d->_cg152;
  if (d->_g152) {
    d->_taken_transitions[23] += 1;
  }
  d->_g153 = d->_g152 || d->_g239 && !d->_cg155;
  d->_g155 = d->_pg164;
  d->_cg173 = d->VS || d->_pre_VP;
  d->_g174 = d->_g155 && d->_cg173;
  if (d->_g174) {
    d->_DDDpacemaker_local__Atrig9 = 1;
  }
  d->_g295 = d->_pg283;
  if (d->_g295) {
    d->LRI_counter += d->deltaT;
  }
  d->_g173 = d->_g155 && !d->_cg173;
  d->_cg176 = d->LRI_counter >= LRI_VALUE;
  d->_g177 = d->_g173 && d->_cg176;
  if (d->_g177) {
    d->_DDDpacemaker_local__Atrig10 = 1;
  }
  d->_g160 = d->_pg165;
  d->_cg160 = d->VS || d->_pre_VP;
  d->_g161 = d->_g160 && d->_cg160;
  if (d->_g161) {
    d->_DDDpacemaker_local_LRI_start = 1;
    d->_DDDpacemaker_local_LRI_stop = 0;
    d->_taken_transitions[25] += 1;
    d->_DDDpacemaker_local__Atrig9 = 0;
    d->_DDDpacemaker_local__Atrig10 = 0;
  }
  d->_g167 = d->_pg166;
  d->_g170 = d->_pg169;
  d->_g170 = d->_g161 || d->_g167 || d->_g170;
  d->_cg163 = d->LRI_counter < LRI_VALUE;
  d->_g167 = d->_g170 && !d->_cg163;
  d->_cg168 = d->_DDDpacemaker_local__Atrig9 || d->_DDDpacemaker_local__Atrig10;
  d->_g169 = d->_g167 && !d->_cg168;
  d->_g163 = d->_g170 && d->_cg163;
  if (d->_g163) {
    d->sleepT = (d->sleepT < (LRI_VALUE - d->LRI_counter)) ? d->sleepT : (LRI_VALUE - d->LRI_counter);
  }
  d->_cg164 = d->_DDDpacemaker_local__Atrig9 || d->_DDDpacemaker_local__Atrig10;
  d->_g166 = d->_g163 && !d->_cg164;
  d->_g165_e1 = !(d->_g169 || d->_g166);
  d->_g168 = d->_g163 && d->_cg164 || d->_g167 && d->_cg168;
  d->_g164 = d->_g161 || d->_g173 && !d->_cg176;
  d->_g176 = !d->_g164;
  d->_g161 = d->_g174 || d->_g177;
  d->_g174 = (d->_g165_e1 || d->_g168) && (d->_g176 || d->_g161) && (d->_g168 || d->_g161);
  d->_cg178 = d->_DDDpacemaker_local__Atrig9;
  d->_g177 = d->_g174 && d->_cg178;
  if (d->_g177) {
    d->_DDDpacemaker_local_LRI_stop = 1;
    d->_DDDpacemaker_local_LRI_start = 0;
    d->_taken_transitions[26] += 1;
  }
  d->_g175_e2 = d->_g174 && !d->_cg178;
  if (d->_g175_e2) {
    d->_DDDpacemaker_local_LRI_stop = 1;
    d->_DDDpacemaker_local_LRI_start = 0;
    d->LRI_counter = 0;
    d->_taken_transitions[27] += 1;
  }
  d->_g165 = d->_GO || d->_g177 || d->_g175_e2 || d->_g160 && !d->_cg160;
  d->_g165_e1 = d->_pg175;
  d->_g175 = d->_GO || d->_g165_e1;
  if (d->_g175) {
    d->_DDDpacemaker_local__pre_LRI_stop = d->_DDDpacemaker_local__reg_LRI_stop;
  }
  d->_g178 = d->_pg184;
  d->_cg187 = d->_DDDpacemaker_local__pre_LRI_stop;
  d->_g179 = d->_g178 && d->_cg187;
  if (d->_g179) {
    d->_taken_transitions[29] += 1;
  }
  d->_g160 = d->_pg180;
  d->_g180 = d->_GO || d->_g160;
  if (d->_g180) {
    d->_DDDpacemaker_local__pre_LRI_start = d->_DDDpacemaker_local__reg_LRI_start;
  }
  d->_g231 = d->_pg235;
  d->_cg184 = d->_DDDpacemaker_local__pre_LRI_start;
  d->_g235 = d->_GO || d->_g179 || d->_g231 && !d->_cg184;
  d->_g188 = d->_g231 && d->_cg184;
  if (d->_g188) {
    d->_taken_transitions[28] += 1;
  }
  d->_g184 = d->_g188 || d->_g178 && !d->_cg187;
  d->_g185 = d->_pg287;
  if (d->_g185) {
    d->URI_counter += d->deltaT;
  }
  d->_g187 = d->_pg200;
  d->_cg205 = d->URI_counter >= URI_VALUE;
  d->_g206 = d->_g187 && d->_cg205;
  if (d->_g206) {
    d->_DDDpacemaker_local__Atrig11 = 1;
  }
  d->_g192 = d->_pg197_e1;
  d->_cg192 = d->VS || d->_pre_VP;
  d->_g193 = d->_g192 && d->_cg192;
  if (d->_g193) {
    d->_DDDpacemaker_local_URI_start = 1;
    d->_DDDpacemaker_local_URI_stop = 0;
    d->_taken_transitions[30] += 1;
    d->_DDDpacemaker_local__Atrig11 = 0;
  }
  d->_g199 = d->_pg198;
  d->_g202 = d->_pg201;
  d->_g202 = d->_g193 || d->_g199 || d->_g202;
  d->_cg195 = d->URI_counter < URI_VALUE;
  d->_g199 = d->_g202 && !d->_cg195;
  d->_cg200 = d->_DDDpacemaker_local__Atrig11;
  d->_g201 = d->_g199 && !d->_cg200;
  d->_g195 = d->_g202 && d->_cg195;
  if (d->_g195) {
    d->sleepT = (d->sleepT < (URI_VALUE - d->URI_counter)) ? d->sleepT : (URI_VALUE - d->URI_counter);
  }
  d->_cg196 = d->_DDDpacemaker_local__Atrig11;
  d->_g198 = d->_g195 && !d->_cg196;
  d->_g197_e1 = !(d->_g201 || d->_g198);
  d->_g196 = d->_g195 && d->_cg196 || d->_g199 && d->_cg200;
  d->_g200 = d->_g193 || d->_g187 && !d->_cg205;
  d->_g193 = !d->_g200;
  d->_g205 = (d->_g197_e1 || d->_g196) && (d->_g193 || d->_g206) && (d->_g196 || d->_g206);
  if (d->_g205) {
    d->_DDDpacemaker_local_URI_stop = 1;
    d->_DDDpacemaker_local_URI_start = 0;
    d->URI_counter = 0;
    d->_taken_transitions[31] += 1;
  }
  d->_g197_e1 = d->_GO || d->_g205 || d->_g192 && !d->_cg192;
  d->_g206 = d->_pg215;
  d->_cg214 = d->_DDDpacemaker_local__pre_URI_stop;
  d->_g197 = d->_g206 && d->_cg214;
  if (d->_g197) {
    d->_taken_transitions[33] += 1;
  }
  d->_g206_e2 = d->_pg192;
  d->_cg211 = d->_DDDpacemaker_local__pre_URI_start;
  d->_g192 = d->_GO || d->_g197 || d->_g206_e2 && !d->_cg211;
  d->_g207 = d->_g206_e2 && d->_cg211;
  if (d->_g207) {
    d->_taken_transitions[32] += 1;
  }
  d->_g215 = d->_g207 || d->_g206 && !d->_cg214;
  d->_DDDpacemaker_local__reg_URI_stop = d->_DDDpacemaker_local_URI_stop;
  d->_DDDpacemaker_local__reg_URI_start = d->_DDDpacemaker_local_URI_start;
  if (d->_g175) {
    d->_DDDpacemaker_local__reg_LRI_stop = d->_DDDpacemaker_local_LRI_stop;
  }
  if (d->_g180) {
    d->_DDDpacemaker_local__reg_LRI_start = d->_DDDpacemaker_local_LRI_start;
  }
  if (d->_g125) {
    d->_DDDpacemaker_local__reg_VRP_stop = d->_DDDpacemaker_local_VRP_stop;
  }
  if (d->_g251) {
    d->_DDDpacemaker_local__reg_PVARP_start = d->_DDDpacemaker_local_PVARP_start;
  }
  if (d->_g99) {
    d->_DDDpacemaker_local__reg_PVARP_stop = d->_DDDpacemaker_local_PVARP_stop;
  }
  if (d->_g42) {
    d->_DDDpacemaker_local__reg_AVI_stop = d->_DDDpacemaker_local_AVI_stop;
  }
  if (d->_g35) {
    d->_DDDpacemaker_local__reg_AVI_start = d->_DDDpacemaker_local_AVI_start;
  }
  d->_g211 = d->_GO || d->_g279;
  d->_g212 = d->_GO || d->_g49;
  d->_g214 = d->_GO || d->_g141;
  d->_g279 = d->_GO || d->_g73;
  d->_g283 = d->_GO || d->_g295;
  d->_g287 = d->_GO || d->_g185;
  d->_reg_VP = d->VP;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->AVI_counter = 0;
  d->AEI_counter = 0;
  d->PVARP_counter = 0;
  d->VRP_counter = 0;
  d->LRI_counter = 0;
  d->URI_counter = 0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->_reg_VP = 0;
  d->_reg_AP = 0;
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
  d->_taken_transitions[18] = 0;
  d->_taken_transitions[19] = 0;
  d->_taken_transitions[20] = 0;
  d->_taken_transitions[21] = 0;
  d->_taken_transitions[22] = 0;
  d->_taken_transitions[23] = 0;
  d->_taken_transitions[24] = 0;
  d->_taken_transitions[25] = 0;
  d->_taken_transitions[26] = 0;
  d->_taken_transitions[27] = 0;
  d->_taken_transitions[28] = 0;
  d->_taken_transitions[29] = 0;
  d->_taken_transitions[30] = 0;
  d->_taken_transitions[31] = 0;
  d->_taken_transitions[32] = 0;
  d->_taken_transitions[33] = 0;
  d->_DDDpacemaker_local__reg_URI_stop = 0;
  d->_DDDpacemaker_local__reg_URI_start = 0;
  d->_DDDpacemaker_local__reg_LRI_stop = 0;
  d->_DDDpacemaker_local__reg_LRI_start = 0;
  d->_DDDpacemaker_local__reg_VRP_stop = 0;
  d->_DDDpacemaker_local__reg_VRP_start = 0;
  d->_DDDpacemaker_local__reg_PVARP_start = 0;
  d->_DDDpacemaker_local__reg_PVARP_stop = 0;
  d->_DDDpacemaker_local__reg_real_VS = 0;
  d->_DDDpacemaker_local__reg_AVI_stop = 0;
  d->_DDDpacemaker_local__reg_AVI_start = 0;
  d->_DDDpacemaker_local__reg_real_AS = 0;
  d->_pg21 = 0;
  d->_pg211 = 0;
  d->_pg18_e2 = 0;
  d->_pg10 = 0;
  d->_pg13 = 0;
  d->_pg19 = 0;
  d->_pg22 = 0;
  d->_pg33 = 0;
  d->_pg42 = 0;
  d->_pg263 = 0;
  d->_pg35 = 0;
  d->_pg36 = 0;
  d->_pg58 = 0;
  d->_pg212 = 0;
  d->_pg53 = 0;
  d->_pg60 = 0;
  d->_pg63 = 0;
  d->_pg136 = 0;
  d->_pg127 = 0;
  d->_pg133 = 0;
  d->_pg279 = 0;
  d->_pg214 = 0;
  d->_pg87 = 0;
  d->_pg107 = 0;
  d->_pg90 = 0;
  d->_pg85 = 0;
  d->_pg99 = 0;
  d->_pg116 = 0;
  d->_pg251 = 0;
  d->_pg119 = 0;
  d->_pg122 = 0;
  d->_pg125 = 0;
  d->_pg153 = 0;
  d->_pg156 = 0;
  d->_pg164 = 0;
  d->_pg283 = 0;
  d->_pg165 = 0;
  d->_pg166 = 0;
  d->_pg169 = 0;
  d->_pg175 = 0;
  d->_pg184 = 0;
  d->_pg180 = 0;
  d->_pg235 = 0;
  d->_pg287 = 0;
  d->_pg200 = 0;
  d->_pg197_e1 = 0;
  d->_pg198 = 0;
  d->_pg201 = 0;
  d->_pg215 = 0;
  d->_pg192 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg21 = d->_g21;
  d->_pg211 = d->_g211;
  d->_pg18_e2 = d->_g18_e2;
  d->_pg10 = d->_g10;
  d->_pg13 = d->_g13;
  d->_pg19 = d->_g19;
  d->_pg22 = d->_g22;
  d->_pg33 = d->_g33;
  d->_pg42 = d->_g42;
  d->_pg263 = d->_g263;
  d->_pg35 = d->_g35;
  d->_pg36 = d->_g36;
  d->_pg58 = d->_g58;
  d->_pg212 = d->_g212;
  d->_pg53 = d->_g53;
  d->_pg60 = d->_g60;
  d->_pg63 = d->_g63;
  d->_pg136 = d->_g136;
  d->_pg127 = d->_g127;
  d->_pg133 = d->_g133;
  d->_pg279 = d->_g279;
  d->_pg214 = d->_g214;
  d->_pg87 = d->_g87;
  d->_pg107 = d->_g107;
  d->_pg90 = d->_g90;
  d->_pg85 = d->_g85;
  d->_pg99 = d->_g99;
  d->_pg116 = d->_g116;
  d->_pg251 = d->_g251;
  d->_pg119 = d->_g119;
  d->_pg122 = d->_g122;
  d->_pg125 = d->_g125;
  d->_pg153 = d->_g153;
  d->_pg156 = d->_g156;
  d->_pg164 = d->_g164;
  d->_pg283 = d->_g283;
  d->_pg165 = d->_g165;
  d->_pg166 = d->_g166;
  d->_pg169 = d->_g169;
  d->_pg175 = d->_g175;
  d->_pg184 = d->_g184;
  d->_pg180 = d->_g180;
  d->_pg235 = d->_g235;
  d->_pg287 = d->_g287;
  d->_pg200 = d->_g200;
  d->_pg197_e1 = d->_g197_e1;
  d->_pg198 = d->_g198;
  d->_pg201 = d->_g201;
  d->_pg215 = d->_g215;
  d->_pg192 = d->_g192;
  d->_GO = 0;
}
