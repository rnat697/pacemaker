/*
 * Automatically generated Java code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

public class DDDpacemaker {

  public int AVI_DEADLINE;
  public int URI_DEADLINE;
  public int AEI_DEADLINE;
  public int LRI_DEADLINE;
  public int PVARP_DEADLINE;
  public int VRP_DEADLINE;
  public boolean AS;
  public boolean VS;
  public double AVI_counter;
  public double AEI_counter;
  public double PVARP_counter;
  public double VRP_counter;
  public double LRI_counter;
  public double URI_counter;
  public boolean AP;
  public boolean VP;
  public int[] _taken_transitions;
  public double deltaT;
  public double sleepT;
  public boolean _DDDpacemaker_local_AVI_state;
  public boolean _DDDpacemaker_local_AEI_state;
  public boolean _DDDpacemaker_local_LRI_state;
  public boolean _DDDpacemaker_local_PVARP_state;
  public boolean _DDDpacemaker_local_VRP_state;
  public boolean _DDDpacemaker_local_URI_state;
  public boolean _DDDpacemaker_local_AR;
  public boolean _DDDpacemaker_local_VR;
  public boolean _DDDpacemaker_local_AP_temp;
  public boolean _DDDpacemaker_local_VP_temp;
  public boolean _DDDpacemaker_local_real_AS;
  public boolean _DDDpacemaker_local_real_VS;
  public boolean _DDDpacemaker_local__reg_VP_temp;
  public boolean _DDDpacemaker_local__pre_VP_temp;
  public boolean _DDDpacemaker_local__reg_AP_temp;
  public boolean _DDDpacemaker_local__pre_AP_temp;
  public boolean _DDDpacemaker_local__Atrig;
  public boolean _DDDpacemaker_local__Atrig1;
  public boolean _DDDpacemaker_local__Atrig2;
  public boolean _DDDpacemaker_local__Atrig3;
  public boolean _DDDpacemaker_local__Atrig4;
  public boolean _DDDpacemaker_local__Atrig5;
  public boolean _DDDpacemaker_local__Atrig6;
  public boolean _DDDpacemaker_local__Atrig7;
  public boolean _DDDpacemaker_local__Atrig8;
  public boolean _DDDpacemaker_local__Atrig9;
  public boolean _DDDpacemaker_local__Atrig10;
  public boolean _DDDpacemaker_local__Atrig11;
  public boolean _g4;
  public boolean _g5;
  public boolean _g6;
  public boolean _g7;
  public boolean _g9;
  public boolean _g10;
  public boolean _g11;
  public boolean _g12;
  public boolean _g13;
  public boolean _g14;
  public boolean _g15;
  public boolean _g16;
  public boolean _g18;
  public boolean _g19;
  public boolean _g20;
  public boolean _g21;
  public boolean _g22;
  public boolean _g23;
  public boolean _g24;
  public boolean _g25;
  public boolean _g28;
  public boolean _g29;
  public boolean _g30;
  public boolean _g31;
  public boolean _g32;
  public boolean _g33;
  public boolean _g34;
  public boolean _g35;
  public boolean _g36;
  public boolean _g37;
  public boolean _g38;
  public boolean _g40;
  public boolean _g41;
  public boolean _g42;
  public boolean _g43;
  public boolean _g44;
  public boolean _g48;
  public boolean _g49;
  public boolean _g50;
  public boolean _g51;
  public boolean _g53;
  public boolean _g54;
  public boolean _g55;
  public boolean _g56;
  public boolean _g57;
  public boolean _g58;
  public boolean _g59;
  public boolean _g60;
  public boolean _g63;
  public boolean _g64;
  public boolean _g65;
  public boolean _g66;
  public boolean _g67;
  public boolean _g68;
  public boolean _g69;
  public boolean _g70;
  public boolean _g74;
  public boolean _g75;
  public boolean _g76;
  public boolean _g78;
  public boolean _g80;
  public boolean _g81;
  public boolean _g82;
  public boolean _g83;
  public boolean _g84;
  public boolean _g86;
  public boolean _g87;
  public boolean _g90;
  public boolean _g91;
  public boolean _g92;
  public boolean _g93;
  public boolean _g94;
  public boolean _g95;
  public boolean _g96;
  public boolean _g97;
  public boolean _g98;
  public boolean _g99;
  public boolean _g103;
  public boolean _g104;
  public boolean _g105;
  public boolean _g107;
  public boolean _g109;
  public boolean _g110;
  public boolean _g111;
  public boolean _g112;
  public boolean _g113;
  public boolean _g115;
  public boolean _g116;
  public boolean _g119;
  public boolean _g120;
  public boolean _g121;
  public boolean _g122;
  public boolean _g123;
  public boolean _g124;
  public boolean _g125;
  public boolean _g126;
  public boolean _g127;
  public boolean _g128;
  public boolean _g132;
  public boolean _g133;
  public boolean _g135;
  public boolean _g136;
  public boolean _g137;
  public boolean _g138;
  public boolean _g139;
  public boolean _g140;
  public boolean _g141;
  public boolean _g142;
  public boolean _g145;
  public boolean _g146;
  public boolean _g147;
  public boolean _g148;
  public boolean _g149;
  public boolean _g150;
  public boolean _g151;
  public boolean _g152;
  public boolean _g156;
  public boolean _g157;
  public boolean _g159;
  public boolean _g160;
  public boolean _g161;
  public boolean _g162;
  public boolean _g163;
  public boolean _g164;
  public boolean _g165;
  public boolean _g166;
  public boolean _g169;
  public boolean _g170;
  public boolean _g215;
  public boolean _GO;
  public boolean _cg6;
  public boolean _cg4;
  public boolean _cg9;
  public boolean _cg10;
  public boolean _cg14;
  public boolean _cg18;
  public boolean _cg19;
  public boolean _cg23;
  public boolean _cg33;
  public boolean _cg28;
  public boolean _cg31;
  public boolean _cg35;
  public boolean _cg37;
  public boolean _cg42;
  public boolean _cg40;
  public boolean _cg50;
  public boolean _cg48;
  public boolean _cg53;
  public boolean _cg54;
  public boolean _cg58;
  public boolean _cg66;
  public boolean _cg63;
  public boolean _cg68;
  public boolean _cg98;
  public boolean _cg74;
  public boolean _cg77;
  public boolean _cg78;
  public boolean _cg82;
  public boolean _cg81;
  public boolean _cg84;
  public boolean _cg87;
  public boolean _cg93;
  public boolean _cg90;
  public boolean _cg95;
  public boolean _cg127;
  public boolean _cg103;
  public boolean _cg106;
  public boolean _cg107;
  public boolean _cg111;
  public boolean _cg110;
  public boolean _cg113;
  public boolean _cg116;
  public boolean _cg122;
  public boolean _cg119;
  public boolean _cg124;
  public boolean _cg132;
  public boolean _cg135;
  public boolean _cg136;
  public boolean _cg140;
  public boolean _cg148;
  public boolean _cg145;
  public boolean _cg150;
  public boolean _cg156;
  public boolean _cg159;
  public boolean _cg160;
  public boolean _cg164;
  public boolean _cg169;
  public boolean _g11_e1;
  public boolean _g20_e2;
  public boolean _g30_e3;
  public boolean _g55_e1;
  public boolean _g65_e2;
  public boolean _g83_e1;
  public boolean _g92_e2;
  public boolean _g112_e1;
  public boolean _g121_e2;
  public boolean _g137_e1;
  public boolean _g147_e2;
  public boolean _g161_e1;
  public boolean _g170_e2;
  public boolean _TERM;

  public DDDpacemaker() {
    _taken_transitions = new int[24];
  }
  public boolean _pg92_e2;
  public boolean _pg11_e1;
  public boolean _pg112;
  public boolean _pg23;
  public boolean _pg147;
  public boolean _pg156;
  public boolean _pg164;
  public boolean _pg162;
  public boolean _pg165;
  public boolean _pg137;
  public boolean _pg12;
  public boolean _pg15;
  public boolean _pg21;
  public boolean _pg24;
  public boolean _pg35;
  public boolean _pg65;
  public boolean _pg54;
  public boolean _pg150;
  public boolean _pg56;
  public boolean _pg59;
  public boolean _pg95;
  public boolean _pg98;
  public boolean _pg96;
  public boolean _pg152;
  public boolean _pg124;
  public boolean _pg126;
  public boolean _pg125;
  public boolean _pg132;
  public boolean _pg140;
  public boolean _pg151;
  public boolean _pg147_e2;
  public boolean _pg138;
  public boolean _pg141;

  public void reset() {
    _GO = true;
    _TERM = false;
    AVI_DEADLINE = AVI_VALUE;
    URI_DEADLINE = URI_VALUE;
    AEI_DEADLINE = AEI_VALUE;
    LRI_DEADLINE = LRI_VALUE;
    PVARP_DEADLINE = PVARP_VALUE;
    VRP_DEADLINE = VRP_VALUE;
    AVI_counter = 0.0;
    AEI_counter = 0.0;
    PVARP_counter = 0.0;
    VRP_counter = 0.0;
    LRI_counter = 0.0;
    URI_counter = 0.0;
    deltaT = 0.0;
    sleepT = 0.0;
    _taken_transitions[0] = 0;
    _taken_transitions[1] = 0;
    _taken_transitions[2] = 0;
    _taken_transitions[3] = 0;
    _taken_transitions[4] = 0;
    _taken_transitions[5] = 0;
    _taken_transitions[6] = 0;
    _taken_transitions[7] = 0;
    _taken_transitions[8] = 0;
    _taken_transitions[9] = 0;
    _taken_transitions[10] = 0;
    _taken_transitions[11] = 0;
    _taken_transitions[12] = 0;
    _taken_transitions[13] = 0;
    _taken_transitions[14] = 0;
    _taken_transitions[15] = 0;
    _taken_transitions[16] = 0;
    _taken_transitions[17] = 0;
    _taken_transitions[18] = 0;
    _taken_transitions[19] = 0;
    _taken_transitions[20] = 0;
    _taken_transitions[21] = 0;
    _taken_transitions[22] = 0;
    _taken_transitions[23] = 0;
    _DDDpacemaker_local__reg_VP_temp = false;
    _DDDpacemaker_local__reg_AP_temp = false;
    _pg92_e2 = false;
    _pg11_e1 = false;
    _pg112 = false;
    _pg23 = false;
    _pg147 = false;
    _pg156 = false;
    _pg164 = false;
    _pg162 = false;
    _pg165 = false;
    _pg137 = false;
    _pg12 = false;
    _pg15 = false;
    _pg21 = false;
    _pg24 = false;
    _pg35 = false;
    _pg65 = false;
    _pg54 = false;
    _pg150 = false;
    _pg56 = false;
    _pg59 = false;
    _pg95 = false;
    _pg98 = false;
    _pg96 = false;
    _pg152 = false;
    _pg124 = false;
    _pg126 = false;
    _pg125 = false;
    _pg132 = false;
    _pg140 = false;
    _pg151 = false;
    _pg147_e2 = false;
    _pg138 = false;
    _pg141 = false;
  }

  public void logic() {
    _DDDpacemaker_local_AP_temp = false;
    _DDDpacemaker_local_VP_temp = false;
    _DDDpacemaker_local_real_AS = false;
    _DDDpacemaker_local_real_VS = false;
    _DDDpacemaker_local__pre_VP_temp = _DDDpacemaker_local__reg_VP_temp;
    _g74 = _pg92_e2;
    _cg74 = VS || _DDDpacemaker_local__pre_VP_temp;
    _g98 = _g74 && !_cg74;
    _g99 = _g98 && AS;
    if (_g99) {
      _DDDpacemaker_local_real_AS |= true;
      _taken_transitions[12] += 1;
    }
    _DDDpacemaker_local__pre_AP_temp = _DDDpacemaker_local__reg_AP_temp;
    _g4 = _pg11_e1;
    _cg4 = !_DDDpacemaker_local_real_AS && !_DDDpacemaker_local__pre_AP_temp;
    _g5 = _g4 && _cg4;
    if (_g5) {
      VP = false;
      _taken_transitions[0] += 1;
    }
    _g103 = _pg112;
    _cg103 = VS || _DDDpacemaker_local__pre_VP_temp;
    _g127 = _g103 && !_cg103;
    _g128 = _g127 && VS;
    if (_g128) {
      _DDDpacemaker_local_real_VS |= true;
      _taken_transitions[16] += 1;
    }
    _g28 = _pg23;
    _cg28 = _DDDpacemaker_local_real_VS;
    _g29 = _g28 && _cg28;
    if (_g29) {
      _DDDpacemaker_local__Atrig = true;
    }
    _g156 = _pg147;
    _cg156 = _DDDpacemaker_local_real_VS || _DDDpacemaker_local__pre_VP_temp;
    _g157 = _g156 && _cg156;
    if (_g157) {
      _DDDpacemaker_local_URI_state = true;
    }
    _g215 = _pg156;
    if (_g215) {
      URI_counter += deltaT;
    }
    _g169 = _pg164;
    _cg169 = URI_counter >= URI_DEADLINE;
    _g170 = _g169 && _cg169;
    if (_g170) {
      _DDDpacemaker_local__Atrig11 = true;
    }
    if (_g157) {
      URI_counter = 0;
      _taken_transitions[22] += 1;
      _DDDpacemaker_local__Atrig11 = false;
    }
    _g163 = _pg162;
    _g166 = _pg165;
    _g163 = _g157 || _g163 || _g166;
    _cg159 = URI_counter < URI_DEADLINE;
    _g166 = _g163 && !_cg159;
    _cg164 = _DDDpacemaker_local__Atrig11;
    _g165 = _g166 && !_cg164;
    sleepT = 1000.0;
    _g159 = _g163 && _cg159;
    if (_g159) {
      sleepT = (sleepT < (URI_DEADLINE - URI_counter)) ? sleepT : (URI_DEADLINE - URI_counter);
    }
    _cg160 = _DDDpacemaker_local__Atrig11;
    _g162 = _g159 && !_cg160;
    _g161_e1 = !(_g165 || _g162);
    _g160 = _g159 && _cg160 || _g166 && _cg164;
    _g164 = _g157 || _g169 && !_cg169;
    _g157 = !_g164;
    _g169 = (_g161_e1 || _g160) && (_g157 || _g170) && (_g160 || _g170);
    if (_g169) {
      _DDDpacemaker_local_URI_state = false;
      _taken_transitions[23] += 1;
    }
    _g161_e1 = _pg137;
    if (_g161_e1) {
      AVI_counter += deltaT;
    }
    _g170 = _g28 && !_cg28;
    _cg31 = AVI_counter >= AVI_DEADLINE && _DDDpacemaker_local_URI_state == true;
    _g161 = _g170 && _cg31;
    if (_g161) {
      _DDDpacemaker_local__Atrig1 = true;
    }
    _g170_e2 = _g170 && !_cg31;
    _cg33 = AVI_counter >= AVI_DEADLINE && _DDDpacemaker_local_URI_state == false;
    _g28 = _g170_e2 && _cg33;
    if (_g28) {
      _DDDpacemaker_local__Atrig2 = true;
    }
    _g31 = _g4 && !_cg4;
    _cg6 = _DDDpacemaker_local_real_AS || _DDDpacemaker_local__pre_AP_temp;
    _g4 = _g31 && _cg6;
    if (_g4) {
      _DDDpacemaker_local_AVI_state = true;
      AVI_counter = 0;
      _taken_transitions[1] += 1;
      _DDDpacemaker_local__Atrig = false;
      _DDDpacemaker_local__Atrig1 = false;
      _DDDpacemaker_local__Atrig2 = false;
    }
    _g13 = _pg12;
    _g16 = _pg15;
    _g16 = _g4 || _g13 || _g16;
    _cg9 = AVI_counter < AVI_DEADLINE;
    _g13 = _g16 && !_cg9;
    _cg14 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g15 = _g13 && !_cg14;
    _g9 = _g16 && _cg9;
    if (_g9) {
      sleepT = (sleepT < (AVI_DEADLINE - AVI_counter)) ? sleepT : (AVI_DEADLINE - AVI_counter);
    }
    _cg10 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g12 = _g9 && !_cg10;
    _g11_e1 = !(_g15 || _g12);
    _g14 = _g9 && _cg10 || _g13 && _cg14;
    _g10 = _pg21;
    _g25 = _pg24;
    _g22 = _g4 || _g10 || _g25;
    _cg18 = AVI_counter < AVI_DEADLINE;
    _g25 = _g22 && !_cg18;
    _cg23 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g24 = _g25 && !_cg23;
    _g18 = _g22 && _cg18;
    if (_g18) {
      sleepT = (sleepT < (AVI_DEADLINE - AVI_counter)) ? sleepT : (AVI_DEADLINE - AVI_counter);
    }
    _cg19 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g21 = _g18 && !_cg19;
    _g20_e2 = !(_g24 || _g21);
    _g19 = _g18 && _cg19 || _g25 && _cg23;
    _g23 = _g4 || _g170_e2 && !_cg33;
    _g33 = !_g23;
    _g7 = _g29 || _g161 || _g28;
    _g34 = (_g11_e1 || _g14) && (_g20_e2 || _g19) && (_g33 || _g7) && (_g14 || _g19 || _g7);
    _cg35 = _DDDpacemaker_local__Atrig;
    _g29 = _g34 && _cg35;
    if (_g29) {
      _DDDpacemaker_local_AVI_state = false;
      VP = false;
      _taken_transitions[2] += 1;
    }
    _g32 = _pg35;
    _cg40 = _DDDpacemaker_local_real_VS;
    _g30 = _g32 && _cg40;
    if (_g30) {
      VP = false;
      _DDDpacemaker_local_AVI_state = false;
      _taken_transitions[5] += 1;
    }
    _g30_e3 = _g32 && !_cg40;
    _cg42 = _DDDpacemaker_local_URI_state == false;
    _g20 = _g30_e3 && _cg42;
    if (_g20) {
      VP = true;
      _DDDpacemaker_local_VP_temp |= true;
      _DDDpacemaker_local_AVI_state = false;
      _taken_transitions[6] += 1;
    }
    _g11 = _g34 && !_cg35;
    _cg37 = _DDDpacemaker_local__Atrig1;
    _g20_e2 = _g11 && !_cg37;
    if (_g20_e2) {
      VP = true;
      _DDDpacemaker_local_VP_temp |= true;
      _DDDpacemaker_local_AVI_state = false;
      _taken_transitions[4] += 1;
    }
    _g11_e1 = _GO || _g5 || _g29 || _g30 || _g20 || _g20_e2 || _g31 && !_cg6;
    _g40 = _g11 && _cg37;
    if (_g40) {
      _taken_transitions[3] += 1;
    }
    _g35 = _g40 || _g30_e3 && !_cg42;
    _g41 = _pg65;
    _cg48 = !_DDDpacemaker_local_real_VS && !_DDDpacemaker_local_AP_temp;
    _g43 = _g41 && _cg48;
    if (_g43) {
      AP = false;
      _taken_transitions[7] += 1;
    }
    _g44 = _pg54;
    _cg63 = _DDDpacemaker_local_real_AS;
    _g5 = _g44 && _cg63;
    if (_g5) {
      _DDDpacemaker_local__Atrig3 = true;
    }
    _g6 = _pg150;
    if (_g6) {
      AEI_counter += deltaT;
    }
    _g36 = _g44 && !_cg63;
    _cg66 = AEI_counter >= AEI_DEADLINE;
    _g37 = _g36 && _cg66;
    if (_g37) {
      _DDDpacemaker_local__Atrig4 = true;
    }
    _g38 = _g41 && !_cg48;
    _cg50 = _DDDpacemaker_local_real_VS || _DDDpacemaker_local_VP_temp;
    _g42 = _g38 && _cg50;
    if (_g42) {
      _DDDpacemaker_local_AEI_state = true;
      AEI_counter = 0;
      _taken_transitions[8] += 1;
      _DDDpacemaker_local__Atrig3 = false;
      _DDDpacemaker_local__Atrig4 = false;
    }
    _g63 = _pg56;
    _g48 = _pg59;
    _g60 = _g42 || _g63 || _g48;
    _cg53 = AEI_counter < AEI_DEADLINE;
    _g57 = _g60 && !_cg53;
    _cg58 = _DDDpacemaker_local__Atrig3 || _DDDpacemaker_local__Atrig4;
    _g59 = _g57 && !_cg58;
    _g53 = _g60 && _cg53;
    if (_g53) {
      sleepT = (sleepT < (AEI_DEADLINE - AEI_counter)) ? sleepT : (AEI_DEADLINE - AEI_counter);
    }
    _cg54 = _DDDpacemaker_local__Atrig3 || _DDDpacemaker_local__Atrig4;
    _g56 = _g53 && !_cg54;
    _g55_e1 = !(_g59 || _g56);
    _g58 = _g53 && _cg54 || _g57 && _cg58;
    _g54 = _g42 || _g36 && !_cg66;
    _g66 = !_g54;
    _g51 = _g5 || _g37;
    _g67 = (_g55_e1 || _g58) && (_g66 || _g51) && (_g58 || _g51);
    _cg68 = _DDDpacemaker_local__Atrig3;
    _g64 = _g67 && _cg68;
    if (_g64) {
      _DDDpacemaker_local_AEI_state = false;
      AP = false;
      _taken_transitions[9] += 1;
    }
    _g65_e2 = _g67 && !_cg68;
    if (_g65_e2) {
      AP = true;
      _DDDpacemaker_local_AP_temp |= true;
      _DDDpacemaker_local_AEI_state = false;
      _taken_transitions[10] += 1;
    }
    _g65 = _GO || _g43 || _g64 || _g65_e2 || _g38 && !_cg50;
    _g55 = _pg95;
    _g55_e1 = _pg98;
    _g68 = !(_g55 || _g55_e1);
    _g49 = _pg96;
    _g70 = _g49 && AS;
    if (_g70) {
      _DDDpacemaker_local__Atrig5 = true;
    }
    _g69 = _pg152;
    if (_g69) {
      PVARP_counter += deltaT;
    }
    _g50 = _g49 && !AS;
    _cg93 = PVARP_counter >= PVARP_DEADLINE;
    _g94 = _g50 && _cg93;
    if (_g94) {
      _DDDpacemaker_local__Atrig6 = true;
    }
    _g80 = _g55_e1 || _g55;
    _cg81 = PVARP_counter < PVARP_DEADLINE;
    _g86 = _g80 && _cg81;
    if (_g86) {
      sleepT = (sleepT < (PVARP_DEADLINE - PVARP_counter)) ? sleepT : (PVARP_DEADLINE - PVARP_counter);
    }
    _cg82 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g81 = _g80 && !_cg81;
    _cg84 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g83 = _g86 && _cg82 || _g81 && _cg84;
    _g90 = !_g49;
    _g91 = _g70 || _g94;
    _g94 = (_g68 || _g83) && (_g90 || _g91) && (_g83 || _g91);
    _cg95 = _DDDpacemaker_local__Atrig5;
    _g83_e1 = _g94 && !_cg95;
    if (_g83_e1) {
      _DDDpacemaker_local_PVARP_state = false;
      _DDDpacemaker_local_AR = false;
      _taken_transitions[14] += 1;
    }
    _g92_e2 = _GO || _g83_e1 || _g99 || _g98 && !AS;
    _g92 = _g74 && _cg74;
    if (_g92) {
      _DDDpacemaker_local_PVARP_state = true;
      PVARP_counter = 0;
      _taken_transitions[11] += 1;
    }
    _g83 = _g94 && _cg95;
    if (_g83) {
      _DDDpacemaker_local_AR = true;
      _taken_transitions[13] += 1;
    }
    _g99 = _g92 || _g83;
    if (_g99) {
      _DDDpacemaker_local__Atrig5 = false;
      _DDDpacemaker_local__Atrig6 = false;
    }
    _cg77 = PVARP_counter < PVARP_DEADLINE;
    _g97 = _g99 && _cg77;
    if (_g97) {
      sleepT = (sleepT < (PVARP_DEADLINE - PVARP_counter)) ? sleepT : (PVARP_DEADLINE - PVARP_counter);
    }
    _cg78 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g98 = _g97 && !_cg78 || _g86 && !_cg82;
    _g74 = _g99 && !_cg77;
    _cg87 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g95 = _g81 && !_cg84 || _g74 && !_cg87;
    _g96 = _g99 || _g50 && !_cg93;
    _g75 = _pg124;
    _g78 = _pg126;
    _g82 = !(_g75 || _g78);
    _g84 = _pg125;
    _g87 = _g84 && VS;
    if (_g87) {
      _DDDpacemaker_local__Atrig7 = true;
    }
    _g93 = _pg132;
    if (_g93) {
      VRP_counter += deltaT;
    }
    _g76 = _g84 && !VS;
    _cg122 = VRP_counter >= VRP_DEADLINE;
    _g123 = _g76 && _cg122;
    if (_g123) {
      _DDDpacemaker_local__Atrig8 = true;
    }
    _g109 = _g78 || _g75;
    _cg110 = VRP_counter < VRP_DEADLINE;
    _g115 = _g109 && _cg110;
    if (_g115) {
      sleepT = (sleepT < (VRP_DEADLINE - VRP_counter)) ? sleepT : (VRP_DEADLINE - VRP_counter);
    }
    _cg111 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g110 = _g109 && !_cg110;
    _cg113 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g112 = _g115 && _cg111 || _g110 && _cg113;
    _g119 = !_g84;
    _g123 = _g87 || _g123;
    _g120 = (_g82 || _g112) && (_g119 || _g123) && (_g112 || _g123);
    _cg124 = _DDDpacemaker_local__Atrig7;
    _g112_e1 = _g120 && !_cg124;
    if (_g112_e1) {
      _DDDpacemaker_local_VR = false;
      _DDDpacemaker_local_VRP_state = false;
      _taken_transitions[18] += 1;
    }
    _g112 = _GO || _g112_e1 || _g128 || _g127 && !VS;
    _g121 = _g103 && _cg103;
    if (_g121) {
      _DDDpacemaker_local_VRP_state = true;
      VRP_counter = 0;
      _taken_transitions[15] += 1;
    }
    _g121_e2 = _g120 && _cg124;
    if (_g121_e2) {
      _DDDpacemaker_local_VR = true;
      _taken_transitions[17] += 1;
    }
    _g127 = _g121 || _g121_e2;
    if (_g127) {
      _DDDpacemaker_local__Atrig7 = false;
      _DDDpacemaker_local__Atrig8 = false;
    }
    _cg106 = VRP_counter < VRP_DEADLINE;
    _g128 = _g127 && _cg106;
    if (_g128) {
      sleepT = (sleepT < (VRP_DEADLINE - VRP_counter)) ? sleepT : (VRP_DEADLINE - VRP_counter);
    }
    _cg107 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g126 = _g128 && !_cg107 || _g115 && !_cg111;
    _g103 = _g127 && !_cg106;
    _cg116 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g124 = _g110 && !_cg113 || _g103 && !_cg116;
    _g125 = _g127 || _g76 && !_cg122;
    _g104 = _pg140;
    _cg145 = VS || _DDDpacemaker_local__pre_VP_temp;
    _g107 = _g104 && _cg145;
    if (_g107) {
      _DDDpacemaker_local__Atrig9 = true;
    }
    _g111 = _pg151;
    if (_g111) {
      LRI_counter += deltaT;
    }
    _g116 = _g104 && !_cg145;
    _cg148 = LRI_counter >= LRI_DEADLINE;
    _g113 = _g116 && _cg148;
    if (_g113) {
      _DDDpacemaker_local__Atrig10 = true;
    }
    _g105 = _pg147_e2;
    _cg132 = VS || _DDDpacemaker_local__pre_VP_temp;
    _g122 = _g105 && _cg132;
    if (_g122) {
      _DDDpacemaker_local_LRI_state = true;
      LRI_counter = 0;
      _taken_transitions[19] += 1;
      _DDDpacemaker_local__Atrig9 = false;
      _DDDpacemaker_local__Atrig10 = false;
    }
    _g145 = _pg138;
    _g142 = _pg141;
    _g139 = _g122 || _g145 || _g142;
    _cg135 = LRI_counter < LRI_DEADLINE;
    _g142 = _g139 && !_cg135;
    _cg140 = _DDDpacemaker_local__Atrig9 || _DDDpacemaker_local__Atrig10;
    _g141 = _g142 && !_cg140;
    _g135 = _g139 && _cg135;
    if (_g135) {
      sleepT = (sleepT < (LRI_DEADLINE - LRI_counter)) ? sleepT : (LRI_DEADLINE - LRI_counter);
    }
    _cg136 = _DDDpacemaker_local__Atrig9 || _DDDpacemaker_local__Atrig10;
    _g138 = _g135 && !_cg136;
    _g137_e1 = !(_g141 || _g138);
    _g136 = _g135 && _cg136 || _g142 && _cg140;
    _g140 = _g122 || _g116 && !_cg148;
    _g133 = !_g140;
    _g148 = _g107 || _g113;
    _g149 = (_g137_e1 || _g136) && (_g133 || _g148) && (_g136 || _g148);
    _cg150 = _DDDpacemaker_local__Atrig9;
    _g146 = _g149 && _cg150;
    if (_g146) {
      _DDDpacemaker_local_LRI_state = false;
      _taken_transitions[20] += 1;
    }
    _g137_e1 = _g149 && !_cg150;
    if (_g137_e1) {
      _DDDpacemaker_local_LRI_state = false;
      _taken_transitions[21] += 1;
    }
    _g147_e2 = _GO || _g146 || _g137_e1 || _g105 && !_cg132;
    _g147 = _GO || _g169 || _g156 && !_cg156;
    _DDDpacemaker_local__reg_VP_temp = _DDDpacemaker_local_VP_temp;
    _DDDpacemaker_local__reg_AP_temp = _DDDpacemaker_local_AP_temp;
    _g137 = _GO || _g161_e1;
    _g150 = _GO || _g6;
    _g152 = _GO || _g69;
    _g132 = _GO || _g93;
    _g151 = _GO || _g111;
    _g156 = _GO || _g215;
  }

  public void tick() {
    logic();

    _pg92_e2 = _g92_e2;
    _pg11_e1 = _g11_e1;
    _pg112 = _g112;
    _pg23 = _g23;
    _pg147 = _g147;
    _pg156 = _g156;
    _pg164 = _g164;
    _pg162 = _g162;
    _pg165 = _g165;
    _pg137 = _g137;
    _pg12 = _g12;
    _pg15 = _g15;
    _pg21 = _g21;
    _pg24 = _g24;
    _pg35 = _g35;
    _pg65 = _g65;
    _pg54 = _g54;
    _pg150 = _g150;
    _pg56 = _g56;
    _pg59 = _g59;
    _pg95 = _g95;
    _pg98 = _g98;
    _pg96 = _g96;
    _pg152 = _g152;
    _pg124 = _g124;
    _pg126 = _g126;
    _pg125 = _g125;
    _pg132 = _g132;
    _pg140 = _g140;
    _pg151 = _g151;
    _pg147_e2 = _g147_e2;
    _pg138 = _g138;
    _pg141 = _g141;
    _GO = false;
  }
}
