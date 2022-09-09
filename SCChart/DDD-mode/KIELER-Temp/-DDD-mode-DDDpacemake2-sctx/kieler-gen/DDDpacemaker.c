/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"

#include "DDDpacemaker.h"

void logic(TickData* d) {
  d->_DDDpacemaker_local_AP_temp = 0;
  d->_DDDpacemaker_local_VP_temp = 0;
  d->_DDDpacemaker_local_real_AS = 0;
  d->_DDDpacemaker_local_real_VS = 0;
  d->_DDDpacemaker_local__pre_VP_temp = d->_DDDpacemaker_local__reg_VP_temp;
  d->_g74 = d->_pg92_e2;
  d->_cg74 = d->VS || d->_DDDpacemaker_local__pre_VP_temp;
  d->_g98 = d->_g74 && !d->_cg74;
  d->_g99 = d->_g98 && d->AS;
  if (d->_g99) {
    d->_DDDpacemaker_local_real_AS |= 1;
    d->_taken_transitions[12] += 1;
  }
  d->_DDDpacemaker_local__pre_AP_temp = d->_DDDpacemaker_local__reg_AP_temp;
  d->_g4 = d->_pg11_e1;
  d->_cg4 = !d->_DDDpacemaker_local_real_AS && !d->_DDDpacemaker_local__pre_AP_temp;
  d->_g5 = d->_g4 && d->_cg4;
  if (d->_g5) {
    d->VP = 0;
    d->_taken_transitions[0] += 1;
  }
  d->_g103 = d->_pg112;
  d->_cg103 = d->VS || d->_DDDpacemaker_local__pre_VP_temp;
  d->_g127 = d->_g103 && !d->_cg103;
  d->_g128 = d->_g127 && d->VS;
  if (d->_g128) {
    d->_DDDpacemaker_local_real_VS |= 1;
    d->_taken_transitions[16] += 1;
  }
  d->_g28 = d->_pg23;
  d->_cg28 = d->_DDDpacemaker_local_real_VS;
  d->_g29 = d->_g28 && d->_cg28;
  if (d->_g29) {
    d->_DDDpacemaker_local__Atrig = 1;
  }
  d->_g156 = d->_pg147;
  d->_cg156 = d->_DDDpacemaker_local_real_VS || d->_DDDpacemaker_local__pre_VP_temp;
  d->_g157 = d->_g156 && d->_cg156;
  if (d->_g157) {
    d->_DDDpacemaker_local_URI_state = 1;
  }
  d->_g215 = d->_pg156;
  if (d->_g215) {
    d->URI_counter += d->deltaT;
  }
  d->_g169 = d->_pg164;
  d->_cg169 = d->URI_counter >= d->URI_DEADLINE;
  d->_g170 = d->_g169 && d->_cg169;
  if (d->_g170) {
    d->_DDDpacemaker_local__Atrig11 = 1;
  }
  if (d->_g157) {
    d->URI_counter = 0;
    d->_taken_transitions[22] += 1;
    d->_DDDpacemaker_local__Atrig11 = 0;
  }
  d->_g163 = d->_pg162;
  d->_g166 = d->_pg165;
  d->_g163 = d->_g157 || d->_g163 || d->_g166;
  d->_cg159 = d->URI_counter < d->URI_DEADLINE;
  d->_g166 = d->_g163 && !d->_cg159;
  d->_cg164 = d->_DDDpacemaker_local__Atrig11;
  d->_g165 = d->_g166 && !d->_cg164;
  d->sleepT = 1000.0;
  d->_g159 = d->_g163 && d->_cg159;
  if (d->_g159) {
    d->sleepT = (d->sleepT < (d->URI_DEADLINE - d->URI_counter)) ? d->sleepT : (d->URI_DEADLINE - d->URI_counter);
  }
  d->_cg160 = d->_DDDpacemaker_local__Atrig11;
  d->_g162 = d->_g159 && !d->_cg160;
  d->_g161_e1 = !(d->_g165 || d->_g162);
  d->_g160 = d->_g159 && d->_cg160 || d->_g166 && d->_cg164;
  d->_g164 = d->_g157 || d->_g169 && !d->_cg169;
  d->_g157 = !d->_g164;
  d->_g169 = (d->_g161_e1 || d->_g160) && (d->_g157 || d->_g170) && (d->_g160 || d->_g170);
  if (d->_g169) {
    d->_DDDpacemaker_local_URI_state = 0;
    d->_taken_transitions[23] += 1;
  }
  d->_g161_e1 = d->_pg137;
  if (d->_g161_e1) {
    d->AVI_counter += d->deltaT;
  }
  d->_g170 = d->_g28 && !d->_cg28;
  d->_cg31 = d->AVI_counter >= d->AVI_DEADLINE && d->_DDDpacemaker_local_URI_state == 1;
  d->_g161 = d->_g170 && d->_cg31;
  if (d->_g161) {
    d->_DDDpacemaker_local__Atrig1 = 1;
  }
  d->_g170_e2 = d->_g170 && !d->_cg31;
  d->_cg33 = d->AVI_counter >= d->AVI_DEADLINE && d->_DDDpacemaker_local_URI_state == 0;
  d->_g28 = d->_g170_e2 && d->_cg33;
  if (d->_g28) {
    d->_DDDpacemaker_local__Atrig2 = 1;
  }
  d->_g31 = d->_g4 && !d->_cg4;
  d->_cg6 = d->_DDDpacemaker_local_real_AS || d->_DDDpacemaker_local__pre_AP_temp;
  d->_g4 = d->_g31 && d->_cg6;
  if (d->_g4) {
    d->_DDDpacemaker_local_AVI_state = 1;
    d->AVI_counter = 0;
    d->_taken_transitions[1] += 1;
    d->_DDDpacemaker_local__Atrig = 0;
    d->_DDDpacemaker_local__Atrig1 = 0;
    d->_DDDpacemaker_local__Atrig2 = 0;
  }
  d->_g13 = d->_pg12;
  d->_g16 = d->_pg15;
  d->_g16 = d->_g4 || d->_g13 || d->_g16;
  d->_cg9 = d->AVI_counter < d->AVI_DEADLINE;
  d->_g13 = d->_g16 && !d->_cg9;
  d->_cg14 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g15 = d->_g13 && !d->_cg14;
  d->_g9 = d->_g16 && d->_cg9;
  if (d->_g9) {
    d->sleepT = (d->sleepT < (d->AVI_DEADLINE - d->AVI_counter)) ? d->sleepT : (d->AVI_DEADLINE - d->AVI_counter);
  }
  d->_cg10 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g12 = d->_g9 && !d->_cg10;
  d->_g11_e1 = !(d->_g15 || d->_g12);
  d->_g14 = d->_g9 && d->_cg10 || d->_g13 && d->_cg14;
  d->_g10 = d->_pg21;
  d->_g25 = d->_pg24;
  d->_g22 = d->_g4 || d->_g10 || d->_g25;
  d->_cg18 = d->AVI_counter < d->AVI_DEADLINE;
  d->_g25 = d->_g22 && !d->_cg18;
  d->_cg23 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g24 = d->_g25 && !d->_cg23;
  d->_g18 = d->_g22 && d->_cg18;
  if (d->_g18) {
    d->sleepT = (d->sleepT < (d->AVI_DEADLINE - d->AVI_counter)) ? d->sleepT : (d->AVI_DEADLINE - d->AVI_counter);
  }
  d->_cg19 = d->_DDDpacemaker_local__Atrig || d->_DDDpacemaker_local__Atrig1 || d->_DDDpacemaker_local__Atrig2;
  d->_g21 = d->_g18 && !d->_cg19;
  d->_g20_e2 = !(d->_g24 || d->_g21);
  d->_g19 = d->_g18 && d->_cg19 || d->_g25 && d->_cg23;
  d->_g23 = d->_g4 || d->_g170_e2 && !d->_cg33;
  d->_g33 = !d->_g23;
  d->_g7 = d->_g29 || d->_g161 || d->_g28;
  d->_g34 = (d->_g11_e1 || d->_g14) && (d->_g20_e2 || d->_g19) && (d->_g33 || d->_g7) && (d->_g14 || d->_g19 || d->_g7);
  d->_cg35 = d->_DDDpacemaker_local__Atrig;
  d->_g29 = d->_g34 && d->_cg35;
  if (d->_g29) {
    d->_DDDpacemaker_local_AVI_state = 0;
    d->VP = 0;
    d->_taken_transitions[2] += 1;
  }
  d->_g32 = d->_pg35;
  d->_cg40 = d->_DDDpacemaker_local_real_VS;
  d->_g30 = d->_g32 && d->_cg40;
  if (d->_g30) {
    d->VP = 0;
    d->_DDDpacemaker_local_AVI_state = 0;
    d->_taken_transitions[5] += 1;
  }
  d->_g30_e3 = d->_g32 && !d->_cg40;
  d->_cg42 = d->_DDDpacemaker_local_URI_state == 0;
  d->_g20 = d->_g30_e3 && d->_cg42;
  if (d->_g20) {
    d->VP = 1;
    d->_DDDpacemaker_local_VP_temp |= 1;
    d->_DDDpacemaker_local_AVI_state = 0;
    d->_taken_transitions[6] += 1;
  }
  d->_g11 = d->_g34 && !d->_cg35;
  d->_cg37 = d->_DDDpacemaker_local__Atrig1;
  d->_g20_e2 = d->_g11 && !d->_cg37;
  if (d->_g20_e2) {
    d->VP = 1;
    d->_DDDpacemaker_local_VP_temp |= 1;
    d->_DDDpacemaker_local_AVI_state = 0;
    d->_taken_transitions[4] += 1;
  }
  d->_g11_e1 = d->_GO || d->_g5 || d->_g29 || d->_g30 || d->_g20 || d->_g20_e2 || d->_g31 && !d->_cg6;
  d->_g40 = d->_g11 && d->_cg37;
  if (d->_g40) {
    d->_taken_transitions[3] += 1;
  }
  d->_g35 = d->_g40 || d->_g30_e3 && !d->_cg42;
  d->_g41 = d->_pg65;
  d->_cg48 = !d->_DDDpacemaker_local_real_VS && !d->_DDDpacemaker_local_AP_temp;
  d->_g43 = d->_g41 && d->_cg48;
  if (d->_g43) {
    d->AP = 0;
    d->_taken_transitions[7] += 1;
  }
  d->_g44 = d->_pg54;
  d->_cg63 = d->_DDDpacemaker_local_real_AS;
  d->_g5 = d->_g44 && d->_cg63;
  if (d->_g5) {
    d->_DDDpacemaker_local__Atrig3 = 1;
  }
  d->_g6 = d->_pg150;
  if (d->_g6) {
    d->AEI_counter += d->deltaT;
  }
  d->_g36 = d->_g44 && !d->_cg63;
  d->_cg66 = d->AEI_counter >= d->AEI_DEADLINE;
  d->_g37 = d->_g36 && d->_cg66;
  if (d->_g37) {
    d->_DDDpacemaker_local__Atrig4 = 1;
  }
  d->_g38 = d->_g41 && !d->_cg48;
  d->_cg50 = d->_DDDpacemaker_local_real_VS || d->_DDDpacemaker_local_VP_temp;
  d->_g42 = d->_g38 && d->_cg50;
  if (d->_g42) {
    d->_DDDpacemaker_local_AEI_state = 1;
    d->AEI_counter = 0;
    d->_taken_transitions[8] += 1;
    d->_DDDpacemaker_local__Atrig3 = 0;
    d->_DDDpacemaker_local__Atrig4 = 0;
  }
  d->_g63 = d->_pg56;
  d->_g48 = d->_pg59;
  d->_g60 = d->_g42 || d->_g63 || d->_g48;
  d->_cg53 = d->AEI_counter < d->AEI_DEADLINE;
  d->_g57 = d->_g60 && !d->_cg53;
  d->_cg58 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g59 = d->_g57 && !d->_cg58;
  d->_g53 = d->_g60 && d->_cg53;
  if (d->_g53) {
    d->sleepT = (d->sleepT < (d->AEI_DEADLINE - d->AEI_counter)) ? d->sleepT : (d->AEI_DEADLINE - d->AEI_counter);
  }
  d->_cg54 = d->_DDDpacemaker_local__Atrig3 || d->_DDDpacemaker_local__Atrig4;
  d->_g56 = d->_g53 && !d->_cg54;
  d->_g55_e1 = !(d->_g59 || d->_g56);
  d->_g58 = d->_g53 && d->_cg54 || d->_g57 && d->_cg58;
  d->_g54 = d->_g42 || d->_g36 && !d->_cg66;
  d->_g66 = !d->_g54;
  d->_g51 = d->_g5 || d->_g37;
  d->_g67 = (d->_g55_e1 || d->_g58) && (d->_g66 || d->_g51) && (d->_g58 || d->_g51);
  d->_cg68 = d->_DDDpacemaker_local__Atrig3;
  d->_g64 = d->_g67 && d->_cg68;
  if (d->_g64) {
    d->_DDDpacemaker_local_AEI_state = 0;
    d->AP = 0;
    d->_taken_transitions[9] += 1;
  }
  d->_g65_e2 = d->_g67 && !d->_cg68;
  if (d->_g65_e2) {
    d->AP = 1;
    d->_DDDpacemaker_local_AP_temp |= 1;
    d->_DDDpacemaker_local_AEI_state = 0;
    d->_taken_transitions[10] += 1;
  }
  d->_g65 = d->_GO || d->_g43 || d->_g64 || d->_g65_e2 || d->_g38 && !d->_cg50;
  d->_g55 = d->_pg95;
  d->_g55_e1 = d->_pg98;
  d->_g68 = !(d->_g55 || d->_g55_e1);
  d->_g49 = d->_pg96;
  d->_g70 = d->_g49 && d->AS;
  if (d->_g70) {
    d->_DDDpacemaker_local__Atrig5 = 1;
  }
  d->_g69 = d->_pg152;
  if (d->_g69) {
    d->PVARP_counter += d->deltaT;
  }
  d->_g50 = d->_g49 && !d->AS;
  d->_cg93 = d->PVARP_counter >= d->PVARP_DEADLINE;
  d->_g94 = d->_g50 && d->_cg93;
  if (d->_g94) {
    d->_DDDpacemaker_local__Atrig6 = 1;
  }
  d->_g80 = d->_g55_e1 || d->_g55;
  d->_cg81 = d->PVARP_counter < d->PVARP_DEADLINE;
  d->_g86 = d->_g80 && d->_cg81;
  if (d->_g86) {
    d->sleepT = (d->sleepT < (d->PVARP_DEADLINE - d->PVARP_counter)) ? d->sleepT : (d->PVARP_DEADLINE - d->PVARP_counter);
  }
  d->_cg82 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g81 = d->_g80 && !d->_cg81;
  d->_cg84 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g83 = d->_g86 && d->_cg82 || d->_g81 && d->_cg84;
  d->_g90 = !d->_g49;
  d->_g91 = d->_g70 || d->_g94;
  d->_g94 = (d->_g68 || d->_g83) && (d->_g90 || d->_g91) && (d->_g83 || d->_g91);
  d->_cg95 = d->_DDDpacemaker_local__Atrig5;
  d->_g83_e1 = d->_g94 && !d->_cg95;
  if (d->_g83_e1) {
    d->_DDDpacemaker_local_PVARP_state = 0;
    d->_DDDpacemaker_local_AR = 0;
    d->_taken_transitions[14] += 1;
  }
  d->_g92_e2 = d->_GO || d->_g83_e1 || d->_g99 || d->_g98 && !d->AS;
  d->_g92 = d->_g74 && d->_cg74;
  if (d->_g92) {
    d->_DDDpacemaker_local_PVARP_state = 1;
    d->PVARP_counter = 0;
    d->_taken_transitions[11] += 1;
  }
  d->_g83 = d->_g94 && d->_cg95;
  if (d->_g83) {
    d->_DDDpacemaker_local_AR = 1;
    d->_taken_transitions[13] += 1;
  }
  d->_g99 = d->_g92 || d->_g83;
  if (d->_g99) {
    d->_DDDpacemaker_local__Atrig5 = 0;
    d->_DDDpacemaker_local__Atrig6 = 0;
  }
  d->_cg77 = d->PVARP_counter < d->PVARP_DEADLINE;
  d->_g97 = d->_g99 && d->_cg77;
  if (d->_g97) {
    d->sleepT = (d->sleepT < (d->PVARP_DEADLINE - d->PVARP_counter)) ? d->sleepT : (d->PVARP_DEADLINE - d->PVARP_counter);
  }
  d->_cg78 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g98 = d->_g97 && !d->_cg78 || d->_g86 && !d->_cg82;
  d->_g74 = d->_g99 && !d->_cg77;
  d->_cg87 = d->_DDDpacemaker_local__Atrig5 || d->_DDDpacemaker_local__Atrig6;
  d->_g95 = d->_g81 && !d->_cg84 || d->_g74 && !d->_cg87;
  d->_g96 = d->_g99 || d->_g50 && !d->_cg93;
  d->_g75 = d->_pg124;
  d->_g78 = d->_pg126;
  d->_g82 = !(d->_g75 || d->_g78);
  d->_g84 = d->_pg125;
  d->_g87 = d->_g84 && d->VS;
  if (d->_g87) {
    d->_DDDpacemaker_local__Atrig7 = 1;
  }
  d->_g93 = d->_pg132;
  if (d->_g93) {
    d->VRP_counter += d->deltaT;
  }
  d->_g76 = d->_g84 && !d->VS;
  d->_cg122 = d->VRP_counter >= d->VRP_DEADLINE;
  d->_g123 = d->_g76 && d->_cg122;
  if (d->_g123) {
    d->_DDDpacemaker_local__Atrig8 = 1;
  }
  d->_g109 = d->_g78 || d->_g75;
  d->_cg110 = d->VRP_counter < d->VRP_DEADLINE;
  d->_g115 = d->_g109 && d->_cg110;
  if (d->_g115) {
    d->sleepT = (d->sleepT < (d->VRP_DEADLINE - d->VRP_counter)) ? d->sleepT : (d->VRP_DEADLINE - d->VRP_counter);
  }
  d->_cg111 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g110 = d->_g109 && !d->_cg110;
  d->_cg113 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g112 = d->_g115 && d->_cg111 || d->_g110 && d->_cg113;
  d->_g119 = !d->_g84;
  d->_g123 = d->_g87 || d->_g123;
  d->_g120 = (d->_g82 || d->_g112) && (d->_g119 || d->_g123) && (d->_g112 || d->_g123);
  d->_cg124 = d->_DDDpacemaker_local__Atrig7;
  d->_g112_e1 = d->_g120 && !d->_cg124;
  if (d->_g112_e1) {
    d->_DDDpacemaker_local_VR = 0;
    d->_DDDpacemaker_local_VRP_state = 0;
    d->_taken_transitions[18] += 1;
  }
  d->_g112 = d->_GO || d->_g112_e1 || d->_g128 || d->_g127 && !d->VS;
  d->_g121 = d->_g103 && d->_cg103;
  if (d->_g121) {
    d->_DDDpacemaker_local_VRP_state = 1;
    d->VRP_counter = 0;
    d->_taken_transitions[15] += 1;
  }
  d->_g121_e2 = d->_g120 && d->_cg124;
  if (d->_g121_e2) {
    d->_DDDpacemaker_local_VR = 1;
    d->_taken_transitions[17] += 1;
  }
  d->_g127 = d->_g121 || d->_g121_e2;
  if (d->_g127) {
    d->_DDDpacemaker_local__Atrig7 = 0;
    d->_DDDpacemaker_local__Atrig8 = 0;
  }
  d->_cg106 = d->VRP_counter < d->VRP_DEADLINE;
  d->_g128 = d->_g127 && d->_cg106;
  if (d->_g128) {
    d->sleepT = (d->sleepT < (d->VRP_DEADLINE - d->VRP_counter)) ? d->sleepT : (d->VRP_DEADLINE - d->VRP_counter);
  }
  d->_cg107 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g126 = d->_g128 && !d->_cg107 || d->_g115 && !d->_cg111;
  d->_g103 = d->_g127 && !d->_cg106;
  d->_cg116 = d->_DDDpacemaker_local__Atrig7 || d->_DDDpacemaker_local__Atrig8;
  d->_g124 = d->_g110 && !d->_cg113 || d->_g103 && !d->_cg116;
  d->_g125 = d->_g127 || d->_g76 && !d->_cg122;
  d->_g104 = d->_pg140;
  d->_cg145 = d->VS || d->_DDDpacemaker_local__pre_VP_temp;
  d->_g107 = d->_g104 && d->_cg145;
  if (d->_g107) {
    d->_DDDpacemaker_local__Atrig9 = 1;
  }
  d->_g111 = d->_pg151;
  if (d->_g111) {
    d->LRI_counter += d->deltaT;
  }
  d->_g116 = d->_g104 && !d->_cg145;
  d->_cg148 = d->LRI_counter >= d->LRI_DEADLINE;
  d->_g113 = d->_g116 && d->_cg148;
  if (d->_g113) {
    d->_DDDpacemaker_local__Atrig10 = 1;
  }
  d->_g105 = d->_pg147_e2;
  d->_cg132 = d->VS || d->_DDDpacemaker_local__pre_VP_temp;
  d->_g122 = d->_g105 && d->_cg132;
  if (d->_g122) {
    d->_DDDpacemaker_local_LRI_state = 1;
    d->LRI_counter = 0;
    d->_taken_transitions[19] += 1;
    d->_DDDpacemaker_local__Atrig9 = 0;
    d->_DDDpacemaker_local__Atrig10 = 0;
  }
  d->_g145 = d->_pg138;
  d->_g142 = d->_pg141;
  d->_g139 = d->_g122 || d->_g145 || d->_g142;
  d->_cg135 = d->LRI_counter < d->LRI_DEADLINE;
  d->_g142 = d->_g139 && !d->_cg135;
  d->_cg140 = d->_DDDpacemaker_local__Atrig9 || d->_DDDpacemaker_local__Atrig10;
  d->_g141 = d->_g142 && !d->_cg140;
  d->_g135 = d->_g139 && d->_cg135;
  if (d->_g135) {
    d->sleepT = (d->sleepT < (d->LRI_DEADLINE - d->LRI_counter)) ? d->sleepT : (d->LRI_DEADLINE - d->LRI_counter);
  }
  d->_cg136 = d->_DDDpacemaker_local__Atrig9 || d->_DDDpacemaker_local__Atrig10;
  d->_g138 = d->_g135 && !d->_cg136;
  d->_g137_e1 = !(d->_g141 || d->_g138);
  d->_g136 = d->_g135 && d->_cg136 || d->_g142 && d->_cg140;
  d->_g140 = d->_g122 || d->_g116 && !d->_cg148;
  d->_g133 = !d->_g140;
  d->_g148 = d->_g107 || d->_g113;
  d->_g149 = (d->_g137_e1 || d->_g136) && (d->_g133 || d->_g148) && (d->_g136 || d->_g148);
  d->_cg150 = d->_DDDpacemaker_local__Atrig9;
  d->_g146 = d->_g149 && d->_cg150;
  if (d->_g146) {
    d->_DDDpacemaker_local_LRI_state = 0;
    d->_taken_transitions[20] += 1;
  }
  d->_g137_e1 = d->_g149 && !d->_cg150;
  if (d->_g137_e1) {
    d->_DDDpacemaker_local_LRI_state = 0;
    d->_taken_transitions[21] += 1;
  }
  d->_g147_e2 = d->_GO || d->_g146 || d->_g137_e1 || d->_g105 && !d->_cg132;
  d->_g147 = d->_GO || d->_g169 || d->_g156 && !d->_cg156;
  d->_DDDpacemaker_local__reg_VP_temp = d->_DDDpacemaker_local_VP_temp;
  d->_DDDpacemaker_local__reg_AP_temp = d->_DDDpacemaker_local_AP_temp;
  d->_g137 = d->_GO || d->_g161_e1;
  d->_g150 = d->_GO || d->_g6;
  d->_g152 = d->_GO || d->_g69;
  d->_g132 = d->_GO || d->_g93;
  d->_g151 = d->_GO || d->_g111;
  d->_g156 = d->_GO || d->_g215;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->AVI_DEADLINE = AVI_VALUE;
  d->URI_DEADLINE = URI_VALUE;
  d->AEI_DEADLINE = AEI_VALUE;
  d->LRI_DEADLINE = LRI_VALUE;
  d->PVARP_DEADLINE = PVARP_VALUE;
  d->VRP_DEADLINE = VRP_VALUE;
  d->AVI_counter = 0.0;
  d->AEI_counter = 0.0;
  d->PVARP_counter = 0.0;
  d->VRP_counter = 0.0;
  d->LRI_counter = 0.0;
  d->URI_counter = 0.0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
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
  d->_DDDpacemaker_local__reg_VP_temp = 0;
  d->_DDDpacemaker_local__reg_AP_temp = 0;
  d->_pg92_e2 = 0;
  d->_pg11_e1 = 0;
  d->_pg112 = 0;
  d->_pg23 = 0;
  d->_pg147 = 0;
  d->_pg156 = 0;
  d->_pg164 = 0;
  d->_pg162 = 0;
  d->_pg165 = 0;
  d->_pg137 = 0;
  d->_pg12 = 0;
  d->_pg15 = 0;
  d->_pg21 = 0;
  d->_pg24 = 0;
  d->_pg35 = 0;
  d->_pg65 = 0;
  d->_pg54 = 0;
  d->_pg150 = 0;
  d->_pg56 = 0;
  d->_pg59 = 0;
  d->_pg95 = 0;
  d->_pg98 = 0;
  d->_pg96 = 0;
  d->_pg152 = 0;
  d->_pg124 = 0;
  d->_pg126 = 0;
  d->_pg125 = 0;
  d->_pg132 = 0;
  d->_pg140 = 0;
  d->_pg151 = 0;
  d->_pg147_e2 = 0;
  d->_pg138 = 0;
  d->_pg141 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg92_e2 = d->_g92_e2;
  d->_pg11_e1 = d->_g11_e1;
  d->_pg112 = d->_g112;
  d->_pg23 = d->_g23;
  d->_pg147 = d->_g147;
  d->_pg156 = d->_g156;
  d->_pg164 = d->_g164;
  d->_pg162 = d->_g162;
  d->_pg165 = d->_g165;
  d->_pg137 = d->_g137;
  d->_pg12 = d->_g12;
  d->_pg15 = d->_g15;
  d->_pg21 = d->_g21;
  d->_pg24 = d->_g24;
  d->_pg35 = d->_g35;
  d->_pg65 = d->_g65;
  d->_pg54 = d->_g54;
  d->_pg150 = d->_g150;
  d->_pg56 = d->_g56;
  d->_pg59 = d->_g59;
  d->_pg95 = d->_g95;
  d->_pg98 = d->_g98;
  d->_pg96 = d->_g96;
  d->_pg152 = d->_g152;
  d->_pg124 = d->_g124;
  d->_pg126 = d->_g126;
  d->_pg125 = d->_g125;
  d->_pg132 = d->_g132;
  d->_pg140 = d->_g140;
  d->_pg151 = d->_g151;
  d->_pg147_e2 = d->_g147_e2;
  d->_pg138 = d->_g138;
  d->_pg141 = d->_g141;
  d->_GO = 0;
}
