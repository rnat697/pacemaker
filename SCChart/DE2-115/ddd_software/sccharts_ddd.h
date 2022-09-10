/*
 * sccharts_ddd.h
 *
 *  Created on: 10/09/2022
 *      Author: smiy200
 */

#ifndef SCCHARTS_DDD_H_
#define SCCHARTS_DDD_H_

/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"


typedef struct {
  int AVI_DEADLINE;
  int URI_DEADLINE;
  int AEI_DEADLINE;
  int LRI_DEADLINE;
  int PVARP_DEADLINE;
  int VRP_DEADLINE;
  char AS;
  char VS;
  double AVI_counter;
  double AEI_counter;
  double PVARP_counter;
  double VRP_counter;
  double LRI_counter;
  double URI_counter;
  char AP;
  char VP;
  double deltaT;
  double sleepT;
  char _DDDpacemake2_local_AVI_state;
  char _DDDpacemake2_local_AEI_state;
  char _DDDpacemake2_local_LRI_state;
  char _DDDpacemake2_local_PVARP_state;
  char _DDDpacemake2_local_VRP_state;
  char _DDDpacemake2_local_URI_state;
  char _DDDpacemake2_local_AR;
  char _DDDpacemake2_local_VR;
  char _DDDpacemake2_local_AP_temp;
  char _DDDpacemake2_local_VP_temp;
  char _DDDpacemake2_local_real_AS;
  char _DDDpacemake2_local_real_VS;
  char _DDDpacemake2_local__reg_VP_temp;
  char _DDDpacemake2_local__pre_VP_temp;
  char _DDDpacemake2_local__reg_AP_temp;
  char _DDDpacemake2_local__pre_AP_temp;
  char _DDDpacemake2_local__Atrig;
  char _DDDpacemake2_local__Atrig1;
  char _DDDpacemake2_local__Atrig2;
  char _DDDpacemake2_local__Atrig3;
  char _DDDpacemake2_local__Atrig4;
  char _DDDpacemake2_local__Atrig5;
  char _DDDpacemake2_local__Atrig6;
  char _DDDpacemake2_local__Atrig7;
  char _DDDpacemake2_local__Atrig8;
  char _DDDpacemake2_local__Atrig9;
  char _DDDpacemake2_local__Atrig10;
  char _DDDpacemake2_local__Atrig11;
  char _g4;
  char _g5;
  char _g6;
  char _g7;
  char _g9;
  char _g10;
  char _g11;
  char _g12;
  char _g13;
  char _g14;
  char _g15;
  char _g16;
  char _g18;
  char _g19;
  char _g20;
  char _g21;
  char _g22;
  char _g23;
  char _g24;
  char _g25;
  char _g28;
  char _g29;
  char _g30;
  char _g31;
  char _g32;
  char _g33;
  char _g34;
  char _g35;
  char _g36;
  char _g37;
  char _g39;
  char _g40;
  char _g41;
  char _g42;
  char _g43;
  char _g47;
  char _g48;
  char _g49;
  char _g50;
  char _g52;
  char _g53;
  char _g54;
  char _g55;
  char _g56;
  char _g57;
  char _g58;
  char _g59;
  char _g62;
  char _g63;
  char _g64;
  char _g65;
  char _g66;
  char _g67;
  char _g68;
  char _g69;
  char _g73;
  char _g74;
  char _g75;
  char _g77;
  char _g79;
  char _g80;
  char _g81;
  char _g82;
  char _g83;
  char _g85;
  char _g86;
  char _g89;
  char _g90;
  char _g91;
  char _g92;
  char _g93;
  char _g94;
  char _g95;
  char _g96;
  char _g97;
  char _g98;
  char _g102;
  char _g103;
  char _g104;
  char _g106;
  char _g108;
  char _g109;
  char _g110;
  char _g111;
  char _g112;
  char _g114;
  char _g115;
  char _g118;
  char _g119;
  char _g120;
  char _g121;
  char _g122;
  char _g123;
  char _g124;
  char _g125;
  char _g129;
  char _g130;
  char _g132;
  char _g133;
  char _g134;
  char _g135;
  char _g136;
  char _g137;
  char _g138;
  char _g139;
  char _g142;
  char _g143;
  char _g144;
  char _g145;
  char _g146;
  char _g147;
  char _g148;
  char _g149;
  char _g153;
  char _g154;
  char _g156;
  char _g157;
  char _g158;
  char _g159;
  char _g160;
  char _g161;
  char _g162;
  char _g163;
  char _g166;
  char _g167;
  char _g168;
  char _g212;
  char _GO;
  char _cg6;
  char _cg4;
  char _cg9;
  char _cg10;
  char _cg14;
  char _cg18;
  char _cg19;
  char _cg23;
  char _cg33;
  char _cg28;
  char _cg31;
  char _cg35;
  char _cg37;
  char _cg41;
  char _cg39;
  char _cg49;
  char _cg47;
  char _cg52;
  char _cg53;
  char _cg57;
  char _cg65;
  char _cg62;
  char _cg67;
  char _cg97;
  char _cg73;
  char _cg76;
  char _cg77;
  char _cg81;
  char _cg80;
  char _cg83;
  char _cg86;
  char _cg92;
  char _cg89;
  char _cg94;
  char _cg102;
  char _cg105;
  char _cg106;
  char _cg110;
  char _cg109;
  char _cg112;
  char _cg115;
  char _cg121;
  char _cg118;
  char _cg123;
  char _cg129;
  char _cg132;
  char _cg133;
  char _cg137;
  char _cg145;
  char _cg142;
  char _cg147;
  char _cg153;
  char _cg156;
  char _cg157;
  char _cg161;
  char _cg166;
  char _g11_e1;
  char _g20_e2;
  char _g30_e3;
  char _g54_e1;
  char _g64_e2;
  char _g82_e1;
  char _g91_e2;
  char _g111_e1;
  char _g120_e2;
  char _g134_e1;
  char _g144_e2;
  char _g158_e1;
  char _g167_e2;
  char _TERM;
  char _pg91_e2;
  char _pg11_e1;
  char _pg120_e2;
  char _pg23;
  char _pg144_e2;
  char _pg168;
  char _pg161;
  char _pg159;
  char _pg162;
  char _pg134_e1;
  char _pg12;
  char _pg15;
  char _pg21;
  char _pg24;
  char _pg39;
  char _pg54_e1;
  char _pg53;
  char _pg147;
  char _pg55;
  char _pg58;
  char _pg94;
  char _pg98;
  char _pg95;
  char _pg149;
  char _pg124;
  char _pg125;
  char _pg103;
  char _pg129;
  char _pg137;
  char _pg148;
  char _pg144;
  char _pg135;
  char _pg138;
} TickData;

void reset(TickData* d);
void logic(TickData* d);
void tick(TickData* d);






#endif /* SCCHARTS_DDD_H_ */
