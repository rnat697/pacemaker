/*
 * sccharts_ddd.c
 *
 *  Created on: 10/09/2022
 *      Author: smiy200
 */
/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"
#include "sccharts_ddd.h"

void logic(TickData* d) {
  d->_DDDpacemake2_local_AP_temp = 0;
  d->_DDDpacemake2_local_VP_temp = 0;
  d->_DDDpacemake2_local_real_AS = 0;
  d->_DDDpacemake2_local_real_VS = 0;
  d->_DDDpacemake2_local__pre_VP_temp = d->_DDDpacemake2_local__reg_VP_temp;
  d->_g73 = d->_pg91_e2;
  d->_cg73 = d->VS || d->_DDDpacemake2_local__pre_VP_temp;
  d->_g97 = d->_g73 && !d->_cg73;
  d->_g98 = d->_g97 && d->AS;
  if (d->_g98) {
    d->_DDDpacemake2_local_real_AS |= 1;
  }
  d->_DDDpacemake2_local__pre_AP_temp = d->_DDDpacemake2_local__reg_AP_temp;
  d->_g4 = d->_pg11_e1;
  d->_cg4 = !d->_DDDpacemake2_local_real_AS && !d->_DDDpacemake2_local__pre_AP_temp;
  d->_g5 = d->_g4 && d->_cg4;
  if (d->_g5) {
    d->VP = 0;
  }
  d->_g102 = d->_pg120_e2;
  d->_cg102 = d->VS || d->_DDDpacemake2_local__pre_VP_temp;
  d->_g103 = d->_g102 && d->_cg102;
  if (d->_g103) {
    d->_DDDpacemake2_local_real_VS |= 1;
    d->_DDDpacemake2_local_VRP_state = 1;
  }
  d->_g28 = d->_pg23;
  d->_cg28 = d->_DDDpacemake2_local_real_VS;
  d->_g29 = d->_g28 && d->_cg28;
  if (d->_g29) {
    d->_DDDpacemake2_local__Atrig = 1;
  }
  d->_g153 = d->_pg144_e2;
  d->_cg153 = d->_DDDpacemake2_local_real_VS || d->_DDDpacemake2_local__pre_VP_temp;
  d->_g154 = d->_g153 && d->_cg153;
  if (d->_g154) {
    d->_DDDpacemake2_local_URI_state = 1;
  }
  d->_g212 = d->_pg168;
  if (d->_g212) {
    d->URI_counter += d->deltaT;
  }
  d->_g166 = d->_pg161;
  d->_cg166 = d->URI_counter >= d->URI_DEADLINE;
  d->_g167 = d->_g166 && d->_cg166;
  if (d->_g167) {
    d->_DDDpacemake2_local__Atrig11 = 1;
  }
  if (d->_g154) {
    d->URI_counter = 0;
    d->_DDDpacemake2_local__Atrig11 = 0;
  }
  d->_g160 = d->_pg159;
  d->_g163 = d->_pg162;
  d->_g163 = d->_g154 || d->_g160 || d->_g163;
  d->_cg156 = d->URI_counter < d->URI_DEADLINE;
  d->_g160 = d->_g163 && !d->_cg156;
  d->_cg161 = d->_DDDpacemake2_local__Atrig11;
  d->_g162 = d->_g160 && !d->_cg161;
  d->sleepT = 1000.0;
  d->_g156 = d->_g163 && d->_cg156;
  if (d->_g156) {
    d->sleepT = (d->sleepT < (d->URI_DEADLINE - d->URI_counter)) ? d->sleepT : (d->URI_DEADLINE - d->URI_counter);
  }
  d->_cg157 = d->_DDDpacemake2_local__Atrig11;
  d->_g159 = d->_g156 && !d->_cg157;
  d->_g158_e1 = !(d->_g162 || d->_g159);
  d->_g157 = d->_g156 && d->_cg157 || d->_g160 && d->_cg161;
  d->_g161 = d->_g154 || d->_g166 && !d->_cg166;
  d->_g154 = !d->_g161;
  d->_g166 = (d->_g158_e1 || d->_g157) && (d->_g154 || d->_g167) && (d->_g157 || d->_g167);
  if (d->_g166) {
    d->_DDDpacemake2_local_URI_state = 0;
  }
  d->_g167 = d->_pg134_e1;
  if (d->_g167) {
    d->AVI_counter += d->deltaT;
  }
  d->_g167_e2 = d->_g28 && !d->_cg28;
  d->_cg31 = d->AVI_counter >= d->AVI_DEADLINE && d->_DDDpacemake2_local_URI_state == 1;
  d->_g158_e1 = d->_g167_e2 && d->_cg31;
  if (d->_g158_e1) {
    d->_DDDpacemake2_local__Atrig1 = 1;
  }
  d->_g158 = d->_g167_e2 && !d->_cg31;
  d->_cg33 = d->AVI_counter >= d->AVI_DEADLINE && d->_DDDpacemake2_local_URI_state == 0;
  d->_g28 = d->_g158 && d->_cg33;
  if (d->_g28) {
    d->_DDDpacemake2_local__Atrig2 = 1;
  }
  d->_g31 = d->_g4 && !d->_cg4;
  d->_cg6 = d->_DDDpacemake2_local_real_AS || d->_DDDpacemake2_local__pre_AP_temp;
  d->_g4 = d->_g31 && d->_cg6;
  if (d->_g4) {
    d->_DDDpacemake2_local_AVI_state = 1;
    d->AVI_counter = 0;
    d->_DDDpacemake2_local__Atrig = 0;
    d->_DDDpacemake2_local__Atrig1 = 0;
    d->_DDDpacemake2_local__Atrig2 = 0;
  }
  d->_g13 = d->_pg12;
  d->_g16 = d->_pg15;
  d->_g16 = d->_g4 || d->_g13 || d->_g16;
  d->_cg9 = d->AVI_counter < d->AVI_DEADLINE;
  d->_g13 = d->_g16 && !d->_cg9;
  d->_cg14 = d->_DDDpacemake2_local__Atrig || d->_DDDpacemake2_local__Atrig1 || d->_DDDpacemake2_local__Atrig2;
  d->_g15 = d->_g13 && !d->_cg14;
  d->_g9 = d->_g16 && d->_cg9;
  if (d->_g9) {
    d->sleepT = (d->sleepT < (d->AVI_DEADLINE - d->AVI_counter)) ? d->sleepT : (d->AVI_DEADLINE - d->AVI_counter);
  }
  d->_cg10 = d->_DDDpacemake2_local__Atrig || d->_DDDpacemake2_local__Atrig1 || d->_DDDpacemake2_local__Atrig2;
  d->_g12 = d->_g9 && !d->_cg10;
  d->_g11_e1 = !(d->_g15 || d->_g12);
  d->_g14 = d->_g9 && d->_cg10 || d->_g13 && d->_cg14;
  d->_g10 = d->_pg21;
  d->_g25 = d->_pg24;
  d->_g22 = d->_g4 || d->_g10 || d->_g25;
  d->_cg18 = d->AVI_counter < d->AVI_DEADLINE;
  d->_g25 = d->_g22 && !d->_cg18;
  d->_cg23 = d->_DDDpacemake2_local__Atrig || d->_DDDpacemake2_local__Atrig1 || d->_DDDpacemake2_local__Atrig2;
  d->_g24 = d->_g25 && !d->_cg23;
  d->_g18 = d->_g22 && d->_cg18;
  if (d->_g18) {
    d->sleepT = (d->sleepT < (d->AVI_DEADLINE - d->AVI_counter)) ? d->sleepT : (d->AVI_DEADLINE - d->AVI_counter);
  }
  d->_cg19 = d->_DDDpacemake2_local__Atrig || d->_DDDpacemake2_local__Atrig1 || d->_DDDpacemake2_local__Atrig2;
  d->_g21 = d->_g18 && !d->_cg19;
  d->_g20_e2 = !(d->_g24 || d->_g21);
  d->_g19 = d->_g18 && d->_cg19 || d->_g25 && d->_cg23;
  d->_g23 = d->_g4 || d->_g158 && !d->_cg33;
  d->_g33 = !d->_g23;
  d->_g7 = d->_g29 || d->_g158_e1 || d->_g28;
  d->_g34 = (d->_g11_e1 || d->_g14) && (d->_g20_e2 || d->_g19) && (d->_g33 || d->_g7) && (d->_g14 || d->_g19 || d->_g7);
  d->_cg35 = d->_DDDpacemake2_local__Atrig;
  d->_g29 = d->_g34 && d->_cg35;
  if (d->_g29) {
    d->_DDDpacemake2_local_AVI_state = 0;
    d->VP = 0;
  }
  d->_g32 = d->_pg39;
  d->_cg39 = d->_DDDpacemake2_local_real_VS;
  d->_g30 = d->_g32 && d->_cg39;
  if (d->_g30) {
    d->VP = 0;
    d->_DDDpacemake2_local_AVI_state = 0;
  }
  d->_g30_e3 = d->_g32 && !d->_cg39;
  d->_cg41 = d->_DDDpacemake2_local_URI_state == 0;
  d->_g20 = d->_g30_e3 && d->_cg41;
  if (d->_g20) {
    d->VP = 1;
    d->_DDDpacemake2_local_VP_temp |= 1;
    d->_DDDpacemake2_local_AVI_state = 0;
  }
  d->_g11 = d->_g34 && !d->_cg35;
  d->_cg37 = d->_DDDpacemake2_local__Atrig1;
  d->_g20_e2 = d->_g11 && !d->_cg37;
  if (d->_g20_e2) {
    d->VP = 1;
    d->_DDDpacemake2_local_VP_temp |= 1;
    d->_DDDpacemake2_local_AVI_state = 0;
  }
  d->_g11_e1 = d->_GO || d->_g5 || d->_g29 || d->_g30 || d->_g20 || d->_g20_e2 || d->_g31 && !d->_cg6;
  d->_g39 = d->_g11 && d->_cg37 || d->_g30_e3 && !d->_cg41;
  d->_g35 = d->_pg54_e1;
  d->_cg47 = !d->_DDDpacemake2_local_real_VS && !d->_DDDpacemake2_local_AP_temp;
  d->_g40 = d->_g35 && d->_cg47;
  if (d->_g40) {
    d->AP = 0;
  }
  d->_g42 = d->_pg53;
  d->_cg62 = d->_DDDpacemake2_local_real_AS;
  d->_g43 = d->_g42 && d->_cg62;
  if (d->_g43) {
    d->_DDDpacemake2_local__Atrig3 = 1;
  }
  d->_g5 = d->_pg147;
  if (d->_g5) {
    d->AEI_counter += d->deltaT;
  }
  d->_g6 = d->_g42 && !d->_cg62;
  d->_cg65 = d->AEI_counter >= d->AEI_DEADLINE;
  d->_g36 = d->_g6 && d->_cg65;
  if (d->_g36) {
    d->_DDDpacemake2_local__Atrig4 = 1;
  }
  d->_g37 = d->_g35 && !d->_cg47;
  d->_cg49 = d->_DDDpacemake2_local_real_VS || d->_DDDpacemake2_local_VP_temp;
  d->_g41 = d->_g37 && d->_cg49;
  if (d->_g41) {
    d->_DDDpacemake2_local_AEI_state = 1;
    d->AEI_counter = 0;
    d->_DDDpacemake2_local__Atrig3 = 0;
    d->_DDDpacemake2_local__Atrig4 = 0;
  }
  d->_g62 = d->_pg55;
  d->_g47 = d->_pg58;
  d->_g59 = d->_g41 || d->_g62 || d->_g47;
  d->_cg52 = d->AEI_counter < d->AEI_DEADLINE;
  d->_g56 = d->_g59 && !d->_cg52;
  d->_cg57 = d->_DDDpacemake2_local__Atrig3 || d->_DDDpacemake2_local__Atrig4;
  d->_g58 = d->_g56 && !d->_cg57;
  d->_g52 = d->_g59 && d->_cg52;
  if (d->_g52) {
    d->sleepT = (d->sleepT < (d->AEI_DEADLINE - d->AEI_counter)) ? d->sleepT : (d->AEI_DEADLINE - d->AEI_counter);
  }
  d->_cg53 = d->_DDDpacemake2_local__Atrig3 || d->_DDDpacemake2_local__Atrig4;
  d->_g55 = d->_g52 && !d->_cg53;
  d->_g54_e1 = !(d->_g58 || d->_g55);
  d->_g57 = d->_g52 && d->_cg53 || d->_g56 && d->_cg57;
  d->_g53 = d->_g41 || d->_g6 && !d->_cg65;
  d->_g65 = !d->_g53;
  d->_g50 = d->_g43 || d->_g36;
  d->_g66 = (d->_g54_e1 || d->_g57) && (d->_g65 || d->_g50) && (d->_g57 || d->_g50);
  d->_cg67 = d->_DDDpacemake2_local__Atrig3;
  d->_g63 = d->_g66 && d->_cg67;
  if (d->_g63) {
    d->_DDDpacemake2_local_AEI_state = 0;
    d->AP = 0;
  }
  d->_g64 = d->_g66 && !d->_cg67;
  if (d->_g64) {
    d->AP = 1;
    d->_DDDpacemake2_local_AP_temp |= 1;
    d->_DDDpacemake2_local_AEI_state = 0;
  }
  d->_g54_e1 = d->_GO || d->_g40 || d->_g63 || d->_g64 || d->_g37 && !d->_cg49;
  d->_g54 = d->_pg94;
  d->_g64_e2 = d->_pg98;
  d->_g67 = !(d->_g54 || d->_g64_e2);
  d->_g48 = d->_pg95;
  d->_g49 = d->_g48 && d->AS;
  if (d->_g49) {
    d->_DDDpacemake2_local__Atrig5 = 1;
  }
  d->_g68 = d->_pg149;
  if (d->_g68) {
    d->PVARP_counter += d->deltaT;
  }
  d->_g69 = d->_g48 && !d->AS;
  d->_cg92 = d->PVARP_counter >= d->PVARP_DEADLINE;
  d->_g93 = d->_g69 && d->_cg92;
  if (d->_g93) {
    d->_DDDpacemake2_local__Atrig6 = 1;
  }
  d->_g85 = d->_g64_e2 || d->_g54;
  d->_cg80 = d->PVARP_counter < d->PVARP_DEADLINE;
  d->_g79 = d->_g85 && d->_cg80;
  if (d->_g79) {
    d->sleepT = (d->sleepT < (d->PVARP_DEADLINE - d->PVARP_counter)) ? d->sleepT : (d->PVARP_DEADLINE - d->PVARP_counter);
  }
  d->_cg81 = d->_DDDpacemake2_local__Atrig5 || d->_DDDpacemake2_local__Atrig6;
  d->_g80 = d->_g85 && !d->_cg80;
  d->_cg83 = d->_DDDpacemake2_local__Atrig5 || d->_DDDpacemake2_local__Atrig6;
  d->_g82 = d->_g79 && d->_cg81 || d->_g80 && d->_cg83;
  d->_g89 = !d->_g48;
  d->_g93 = d->_g49 || d->_g93;
  d->_g90 = (d->_g67 || d->_g82) && (d->_g89 || d->_g93) && (d->_g82 || d->_g93);
  d->_cg94 = d->_DDDpacemake2_local__Atrig5;
  d->_g82_e1 = d->_g90 && !d->_cg94;
  if (d->_g82_e1) {
    d->_DDDpacemake2_local_PVARP_state = 0;
    d->_DDDpacemake2_local_AR = 0;
  }
  d->_g91_e2 = d->_GO || d->_g82_e1 || d->_g98 || d->_g97 && !d->AS;
  d->_g91 = d->_g73 && d->_cg73;
  if (d->_g91) {
    d->_DDDpacemake2_local_PVARP_state = 1;
    d->PVARP_counter = 0;
  }
  d->_g82 = d->_g90 && d->_cg94;
  if (d->_g82) {
    d->_DDDpacemake2_local_AR = 1;
  }
  d->_g96 = d->_g91 || d->_g82;
  if (d->_g96) {
    d->_DDDpacemake2_local__Atrig5 = 0;
    d->_DDDpacemake2_local__Atrig6 = 0;
  }
  d->_cg76 = d->PVARP_counter < d->PVARP_DEADLINE;
  d->_g97 = d->_g96 && d->_cg76;
  if (d->_g97) {
    d->sleepT = (d->sleepT < (d->PVARP_DEADLINE - d->PVARP_counter)) ? d->sleepT : (d->PVARP_DEADLINE - d->PVARP_counter);
  }
  d->_cg77 = d->_DDDpacemake2_local__Atrig5 || d->_DDDpacemake2_local__Atrig6;
  d->_g98 = d->_g97 && !d->_cg77 || d->_g79 && !d->_cg81;
  d->_g73 = d->_g96 && !d->_cg76;
  d->_cg86 = d->_DDDpacemake2_local__Atrig5 || d->_DDDpacemake2_local__Atrig6;
  d->_g94 = d->_g80 && !d->_cg83 || d->_g73 && !d->_cg86;
  d->_g95 = d->_g96 || d->_g69 && !d->_cg92;
  d->_g74 = d->_pg124;
  d->_g77 = d->_pg125;
  d->_g81 = !(d->_g74 || d->_g77);
  d->_g86 = d->_pg103;
  d->_g83 = d->_g86 && d->VS;
  if (d->_g83) {
    d->_DDDpacemake2_local__Atrig7 = 1;
  }
  d->_g92 = d->_pg129;
  if (d->_g92) {
    d->VRP_counter += d->deltaT;
  }
  d->_g75 = d->_g86 && !d->VS;
  d->_cg121 = d->VRP_counter >= d->VRP_DEADLINE;
  d->_g122 = d->_g75 && d->_cg121;
  if (d->_g122) {
    d->_DDDpacemake2_local__Atrig8 = 1;
  }
  d->_g114 = d->_g77 || d->_g74;
  d->_cg109 = d->VRP_counter < d->VRP_DEADLINE;
  d->_g108 = d->_g114 && d->_cg109;
  if (d->_g108) {
    d->sleepT = (d->sleepT < (d->VRP_DEADLINE - d->VRP_counter)) ? d->sleepT : (d->VRP_DEADLINE - d->VRP_counter);
  }
  d->_cg110 = d->_DDDpacemake2_local__Atrig7 || d->_DDDpacemake2_local__Atrig8;
  d->_g109 = d->_g114 && !d->_cg109;
  d->_cg112 = d->_DDDpacemake2_local__Atrig7 || d->_DDDpacemake2_local__Atrig8;
  d->_g111 = d->_g108 && d->_cg110 || d->_g109 && d->_cg112;
  d->_g118 = !d->_g86;
  d->_g122 = d->_g83 || d->_g122;
  d->_g119 = (d->_g81 || d->_g111) && (d->_g118 || d->_g122) && (d->_g111 || d->_g122);
  d->_cg123 = d->_DDDpacemake2_local__Atrig7;
  d->_g111 = d->_g119 && !d->_cg123;
  if (d->_g111) {
    d->_DDDpacemake2_local_VR = 0;
    d->_DDDpacemake2_local_VRP_state = 0;
  }
  d->_g120_e2 = d->_GO || d->_g111 || d->_g102 && !d->_cg102;
  if (d->_g103) {
    d->VRP_counter = 0;
  }
  d->_g111_e1 = d->_g119 && d->_cg123;
  if (d->_g111_e1) {
    d->_DDDpacemake2_local_VR = 1;
  }
  d->_g120 = d->_g103 || d->_g111_e1;
  if (d->_g120) {
    d->_DDDpacemake2_local__Atrig7 = 0;
    d->_DDDpacemake2_local__Atrig8 = 0;
  }
  d->_cg105 = d->VRP_counter < d->VRP_DEADLINE;
  d->_g102 = d->_g120 && d->_cg105;
  if (d->_g102) {
    d->sleepT = (d->sleepT < (d->VRP_DEADLINE - d->VRP_counter)) ? d->sleepT : (d->VRP_DEADLINE - d->VRP_counter);
  }
  d->_cg106 = d->_DDDpacemake2_local__Atrig7 || d->_DDDpacemake2_local__Atrig8;
  d->_g125 = d->_g102 && !d->_cg106 || d->_g108 && !d->_cg110;
  d->_g123 = d->_g120 && !d->_cg105;
  d->_cg115 = d->_DDDpacemake2_local__Atrig7 || d->_DDDpacemake2_local__Atrig8;
  d->_g124 = d->_g109 && !d->_cg112 || d->_g123 && !d->_cg115;
  d->_g103 = d->_g120 || d->_g75 && !d->_cg121;
  d->_g106 = d->_pg137;
  d->_cg142 = d->VS || d->_DDDpacemake2_local__pre_VP_temp;
  d->_g110 = d->_g106 && d->_cg142;
  if (d->_g110) {
    d->_DDDpacemake2_local__Atrig9 = 1;
  }
  d->_g112 = d->_pg148;
  if (d->_g112) {
    d->LRI_counter += d->deltaT;
  }
  d->_g115 = d->_g106 && !d->_cg142;
  d->_cg145 = d->LRI_counter >= d->LRI_DEADLINE;
  d->_g121 = d->_g115 && d->_cg145;
  if (d->_g121) {
    d->_DDDpacemake2_local__Atrig10 = 1;
  }
  d->_g104 = d->_pg144;
  d->_cg129 = d->VS || d->_DDDpacemake2_local__pre_VP_temp;
  d->_g142 = d->_g104 && d->_cg129;
  if (d->_g142) {
    d->_DDDpacemake2_local_LRI_state = 1;
    d->LRI_counter = 0;
    d->_DDDpacemake2_local__Atrig9 = 0;
    d->_DDDpacemake2_local__Atrig10 = 0;
  }
  d->_g136 = d->_pg135;
  d->_g139 = d->_pg138;
  d->_g139 = d->_g142 || d->_g136 || d->_g139;
  d->_cg132 = d->LRI_counter < d->LRI_DEADLINE;
  d->_g136 = d->_g139 && !d->_cg132;
  d->_cg137 = d->_DDDpacemake2_local__Atrig9 || d->_DDDpacemake2_local__Atrig10;
  d->_g138 = d->_g136 && !d->_cg137;
  d->_g132 = d->_g139 && d->_cg132;
  if (d->_g132) {
    d->sleepT = (d->sleepT < (d->LRI_DEADLINE - d->LRI_counter)) ? d->sleepT : (d->LRI_DEADLINE - d->LRI_counter);
  }
  d->_cg133 = d->_DDDpacemake2_local__Atrig9 || d->_DDDpacemake2_local__Atrig10;
  d->_g135 = d->_g132 && !d->_cg133;
  d->_g134_e1 = !(d->_g138 || d->_g135);
  d->_g133 = d->_g132 && d->_cg133 || d->_g136 && d->_cg137;
  d->_g137 = d->_g142 || d->_g115 && !d->_cg145;
  d->_g130 = !d->_g137;
  d->_g145 = d->_g110 || d->_g121;
  d->_g146 = (d->_g134_e1 || d->_g133) && (d->_g130 || d->_g145) && (d->_g133 || d->_g145);
  d->_cg147 = d->_DDDpacemake2_local__Atrig9;
  d->_g143 = d->_g146 && d->_cg147;
  if (d->_g143) {
    d->_DDDpacemake2_local_LRI_state = 0;
  }
  d->_g134 = d->_g146 && !d->_cg147;
  if (d->_g134) {
    d->_DDDpacemake2_local_LRI_state = 0;
  }
  d->_g144 = d->_GO || d->_g143 || d->_g134 || d->_g104 && !d->_cg129;
  d->_g144_e2 = d->_GO || d->_g166 || d->_g153 && !d->_cg153;
  d->_DDDpacemake2_local__reg_VP_temp = d->_DDDpacemake2_local_VP_temp;
  d->_DDDpacemake2_local__reg_AP_temp = d->_DDDpacemake2_local_AP_temp;
  d->_g134_e1 = d->_GO || d->_g167;
  d->_g147 = d->_GO || d->_g5;
  d->_g149 = d->_GO || d->_g68;
  d->_g129 = d->_GO || d->_g92;
  d->_g148 = d->_GO || d->_g112;
  d->_g168 = d->_GO || d->_g212;
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
  d->_DDDpacemake2_local__reg_VP_temp = 0;
  d->_DDDpacemake2_local__reg_AP_temp = 0;
  d->_pg91_e2 = 0;
  d->_pg11_e1 = 0;
  d->_pg120_e2 = 0;
  d->_pg23 = 0;
  d->_pg144_e2 = 0;
  d->_pg168 = 0;
  d->_pg161 = 0;
  d->_pg159 = 0;
  d->_pg162 = 0;
  d->_pg134_e1 = 0;
  d->_pg12 = 0;
  d->_pg15 = 0;
  d->_pg21 = 0;
  d->_pg24 = 0;
  d->_pg39 = 0;
  d->_pg54_e1 = 0;
  d->_pg53 = 0;
  d->_pg147 = 0;
  d->_pg55 = 0;
  d->_pg58 = 0;
  d->_pg94 = 0;
  d->_pg98 = 0;
  d->_pg95 = 0;
  d->_pg149 = 0;
  d->_pg124 = 0;
  d->_pg125 = 0;
  d->_pg103 = 0;
  d->_pg129 = 0;
  d->_pg137 = 0;
  d->_pg148 = 0;
  d->_pg144 = 0;
  d->_pg135 = 0;
  d->_pg138 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg91_e2 = d->_g91_e2;
  d->_pg11_e1 = d->_g11_e1;
  d->_pg120_e2 = d->_g120_e2;
  d->_pg23 = d->_g23;
  d->_pg144_e2 = d->_g144_e2;
  d->_pg168 = d->_g168;
  d->_pg161 = d->_g161;
  d->_pg159 = d->_g159;
  d->_pg162 = d->_g162;
  d->_pg134_e1 = d->_g134_e1;
  d->_pg12 = d->_g12;
  d->_pg15 = d->_g15;
  d->_pg21 = d->_g21;
  d->_pg24 = d->_g24;
  d->_pg39 = d->_g39;
  d->_pg54_e1 = d->_g54_e1;
  d->_pg53 = d->_g53;
  d->_pg147 = d->_g147;
  d->_pg55 = d->_g55;
  d->_pg58 = d->_g58;
  d->_pg94 = d->_g94;
  d->_pg98 = d->_g98;
  d->_pg95 = d->_g95;
  d->_pg149 = d->_g149;
  d->_pg124 = d->_g124;
  d->_pg125 = d->_g125;
  d->_pg103 = d->_g103;
  d->_pg129 = d->_g129;
  d->_pg137 = d->_g137;
  d->_pg148 = d->_g148;
  d->_pg144 = d->_g144;
  d->_pg135 = d->_g135;
  d->_pg138 = d->_g138;
  d->_GO = 0;
}




