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
  public boolean _DDDpacemaker_local_LRI_start;
  public boolean _DDDpacemaker_local_LRI_reset;
  public boolean _DDDpacemaker_local_LRI_stop;
  public boolean _DDDpacemaker_local_PVARP_state;
  public boolean _DDDpacemaker_local_VRP_state;
  public boolean _DDDpacemaker_local_URI_start;
  public boolean _DDDpacemaker_local_URI_stop;
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
  public boolean _g4;
  public boolean _g5;
  public boolean _g7;
  public boolean _g8;
  public boolean _g9;
  public boolean _g10;
  public boolean _g11;
  public boolean _g12;
  public boolean _g13;
  public boolean _g14;
  public boolean _g16;
  public boolean _g17;
  public boolean _g18;
  public boolean _g19;
  public boolean _g20;
  public boolean _g21;
  public boolean _g22;
  public boolean _g23;
  public boolean _g26;
  public boolean _g27;
  public boolean _g28;
  public boolean _g29;
  public boolean _g30;
  public boolean _g31;
  public boolean _g32;
  public boolean _g33;
  public boolean _g34;
  public boolean _g35;
  public boolean _g36;
  public boolean _g38;
  public boolean _g39;
  public boolean _g40;
  public boolean _g41;
  public boolean _g42;
  public boolean _g46;
  public boolean _g47;
  public boolean _g49;
  public boolean _g50;
  public boolean _g51;
  public boolean _g52;
  public boolean _g53;
  public boolean _g54;
  public boolean _g55;
  public boolean _g56;
  public boolean _g59;
  public boolean _g60;
  public boolean _g61;
  public boolean _g62;
  public boolean _g63;
  public boolean _g64;
  public boolean _g65;
  public boolean _g66;
  public boolean _g70;
  public boolean _g71;
  public boolean _g72;
  public boolean _g74;
  public boolean _g76;
  public boolean _g77;
  public boolean _g78;
  public boolean _g79;
  public boolean _g80;
  public boolean _g82;
  public boolean _g83;
  public boolean _g86;
  public boolean _g87;
  public boolean _g88;
  public boolean _g89;
  public boolean _g90;
  public boolean _g91;
  public boolean _g92;
  public boolean _g93;
  public boolean _g94;
  public boolean _g95;
  public boolean _g99;
  public boolean _g100;
  public boolean _g101;
  public boolean _g103;
  public boolean _g105;
  public boolean _g106;
  public boolean _g107;
  public boolean _g108;
  public boolean _g109;
  public boolean _g111;
  public boolean _g112;
  public boolean _g115;
  public boolean _g116;
  public boolean _g117;
  public boolean _g118;
  public boolean _g119;
  public boolean _g120;
  public boolean _g121;
  public boolean _g122;
  public boolean _g123;
  public boolean _g124;
  public boolean _g128;
  public boolean _g129;
  public boolean _g131;
  public boolean _g132;
  public boolean _g133;
  public boolean _g134;
  public boolean _g135;
  public boolean _g136;
  public boolean _g137;
  public boolean _g138;
  public boolean _g141;
  public boolean _g142;
  public boolean _g187;
  public boolean _GO;
  public boolean _cg4;
  public boolean _cg7;
  public boolean _cg8;
  public boolean _cg12;
  public boolean _cg16;
  public boolean _cg17;
  public boolean _cg21;
  public boolean _cg31;
  public boolean _cg26;
  public boolean _cg29;
  public boolean _cg33;
  public boolean _cg35;
  public boolean _cg40;
  public boolean _cg38;
  public boolean _cg46;
  public boolean _cg49;
  public boolean _cg50;
  public boolean _cg54;
  public boolean _cg62;
  public boolean _cg59;
  public boolean _cg64;
  public boolean _cg94;
  public boolean _cg70;
  public boolean _cg73;
  public boolean _cg74;
  public boolean _cg78;
  public boolean _cg77;
  public boolean _cg80;
  public boolean _cg83;
  public boolean _cg89;
  public boolean _cg86;
  public boolean _cg91;
  public boolean _cg123;
  public boolean _cg99;
  public boolean _cg102;
  public boolean _cg103;
  public boolean _cg107;
  public boolean _cg106;
  public boolean _cg109;
  public boolean _cg112;
  public boolean _cg118;
  public boolean _cg115;
  public boolean _cg120;
  public boolean _cg128;
  public boolean _cg131;
  public boolean _cg132;
  public boolean _cg136;
  public boolean _cg141;
  public boolean _g9_e1;
  public boolean _g18_e2;
  public boolean _g28_e3;
  public boolean _g51_e1;
  public boolean _g61_e2;
  public boolean _g79_e1;
  public boolean _g88_e2;
  public boolean _g108_e1;
  public boolean _g117_e2;
  public boolean _g133_e1;
  public boolean _g142_e2;
  public boolean _TERM;

  public DDDpacemaker() {
    _taken_transitions = new int[19];
  }
  public boolean _pg108_e1;
  public boolean _pg21;
  public boolean _pg100;
  public boolean _pg128;
  public boolean _pg136;
  public boolean _pg134;
  public boolean _pg137;
  public boolean _pg103;
  public boolean _pg88;
  public boolean _pg18_e2;
  public boolean _pg10;
  public boolean _pg13;
  public boolean _pg19;
  public boolean _pg22;
  public boolean _pg33;
  public boolean _pg50;
  public boolean _pg107;
  public boolean _pg51_e1;
  public boolean _pg52;
  public boolean _pg55;
  public boolean _pg91;
  public boolean _pg94;
  public boolean _pg92;
  public boolean _pg112;
  public boolean _pg120;
  public boolean _pg122;
  public boolean _pg121;
  public boolean _pg109;
  public boolean _pg118;

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
    _DDDpacemaker_local__reg_VP_temp = false;
    _DDDpacemaker_local__reg_AP_temp = false;
    _pg108_e1 = false;
    _pg21 = false;
    _pg100 = false;
    _pg128 = false;
    _pg136 = false;
    _pg134 = false;
    _pg137 = false;
    _pg103 = false;
    _pg88 = false;
    _pg18_e2 = false;
    _pg10 = false;
    _pg13 = false;
    _pg19 = false;
    _pg22 = false;
    _pg33 = false;
    _pg50 = false;
    _pg107 = false;
    _pg51_e1 = false;
    _pg52 = false;
    _pg55 = false;
    _pg91 = false;
    _pg94 = false;
    _pg92 = false;
    _pg112 = false;
    _pg120 = false;
    _pg122 = false;
    _pg121 = false;
    _pg109 = false;
    _pg118 = false;
  }

  public void logic() {
    _DDDpacemaker_local_AP_temp = false;
    _DDDpacemaker_local_VP_temp = false;
    _DDDpacemaker_local_real_AS = false;
    _DDDpacemaker_local_real_VS = false;
    _DDDpacemaker_local__pre_VP_temp = _DDDpacemaker_local__reg_VP_temp;
    _g99 = _pg108_e1;
    _cg99 = VS || _DDDpacemaker_local__pre_VP_temp;
    _g123 = _g99 && !_cg99;
    _g124 = _g123 && VS;
    if (_g124) {
      _DDDpacemaker_local_real_VS |= true;
      _taken_transitions[14] += 1;
    }
    _g26 = _pg21;
    _cg26 = _DDDpacemaker_local_real_VS;
    _g27 = _g26 && _cg26;
    if (_g27) {
      _DDDpacemaker_local__Atrig = true;
    }
    _g128 = _pg100;
    _cg128 = _DDDpacemaker_local_real_VS || _DDDpacemaker_local__pre_VP_temp;
    _g129 = _g128 && _cg128;
    if (_g129) {
      _DDDpacemaker_local_URI_start = true;
      _DDDpacemaker_local_URI_stop = false;
    }
    _g187 = _pg128;
    if (_g187) {
      URI_counter += deltaT;
    }
    _g141 = _pg136;
    _cg141 = URI_counter >= URI_DEADLINE;
    _g142 = _g141 && _cg141;
    if (_g142) {
      _DDDpacemaker_local__Atrig9 = true;
    }
    if (_g129) {
      URI_counter = 0;
      _taken_transitions[17] += 1;
      _DDDpacemaker_local__Atrig9 = false;
    }
    _g135 = _pg134;
    _g138 = _pg137;
    _g138 = _g129 || _g135 || _g138;
    _cg131 = URI_counter < URI_DEADLINE;
    _g135 = _g138 && !_cg131;
    _cg136 = _DDDpacemaker_local__Atrig9;
    _g137 = _g135 && !_cg136;
    sleepT = 1000.0;
    _g131 = _g138 && _cg131;
    if (_g131) {
      sleepT = (sleepT < (URI_DEADLINE - URI_counter)) ? sleepT : (URI_DEADLINE - URI_counter);
    }
    _cg132 = _DDDpacemaker_local__Atrig9;
    _g134 = _g131 && !_cg132;
    _g133_e1 = !(_g137 || _g134);
    _g132 = _g131 && _cg132 || _g135 && _cg136;
    _g136 = _g129 || _g141 && !_cg141;
    _g141 = !_g136;
    _g129 = (_g133_e1 || _g132) && (_g141 || _g142) && (_g132 || _g142);
    if (_g129) {
      _DDDpacemaker_local_URI_stop = true;
      _DDDpacemaker_local_URI_start = false;
      _taken_transitions[18] += 1;
    }
    _g133 = _pg103;
    if (_g133) {
      AVI_counter += deltaT;
    }
    _g133_e1 = _g26 && !_cg26;
    _cg29 = AVI_counter >= AVI_DEADLINE && _DDDpacemaker_local_URI_start;
    _g142 = _g133_e1 && _cg29;
    if (_g142) {
      _DDDpacemaker_local__Atrig1 = true;
    }
    _g142_e2 = _g133_e1 && !_cg29;
    _cg31 = AVI_counter >= AVI_DEADLINE && _DDDpacemaker_local_URI_stop;
    _g26 = _g142_e2 && _cg31;
    if (_g26) {
      _DDDpacemaker_local__Atrig2 = true;
    }
    _g29 = _pg88;
    _cg70 = VS || _DDDpacemaker_local__pre_VP_temp;
    _g94 = _g29 && !_cg70;
    _g95 = _g94 && AS;
    if (_g95) {
      _DDDpacemaker_local_real_AS |= true;
      _taken_transitions[10] += 1;
    }
    _DDDpacemaker_local__pre_AP_temp = _DDDpacemaker_local__reg_AP_temp;
    _g4 = _pg18_e2;
    _cg4 = _DDDpacemaker_local_real_AS || _DDDpacemaker_local__pre_AP_temp;
    _g5 = _g4 && _cg4;
    if (_g5) {
      _DDDpacemaker_local_AVI_state = true;
      AVI_counter = 0;
      _taken_transitions[0] += 1;
      _DDDpacemaker_local__Atrig = false;
      _DDDpacemaker_local__Atrig1 = false;
      _DDDpacemaker_local__Atrig2 = false;
    }
    _g11 = _pg10;
    _g14 = _pg13;
    _g11 = _g5 || _g11 || _g14;
    _cg7 = AVI_counter < AVI_DEADLINE;
    _g14 = _g11 && !_cg7;
    _cg12 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g13 = _g14 && !_cg12;
    _g7 = _g11 && _cg7;
    if (_g7) {
      sleepT = (sleepT < (AVI_DEADLINE - AVI_counter)) ? sleepT : (AVI_DEADLINE - AVI_counter);
    }
    _cg8 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g10 = _g7 && !_cg8;
    _g9_e1 = !(_g13 || _g10);
    _g12 = _g7 && _cg8 || _g14 && _cg12;
    _g8 = _pg19;
    _g23 = _pg22;
    _g23 = _g5 || _g8 || _g23;
    _cg16 = AVI_counter < AVI_DEADLINE;
    _g20 = _g23 && !_cg16;
    _cg21 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g22 = _g20 && !_cg21;
    _g16 = _g23 && _cg16;
    if (_g16) {
      sleepT = (sleepT < (AVI_DEADLINE - AVI_counter)) ? sleepT : (AVI_DEADLINE - AVI_counter);
    }
    _cg17 = _DDDpacemaker_local__Atrig || _DDDpacemaker_local__Atrig1 || _DDDpacemaker_local__Atrig2;
    _g19 = _g16 && !_cg17;
    _g18_e2 = !(_g22 || _g19);
    _g17 = _g16 && _cg17 || _g20 && _cg21;
    _g21 = _g5 || _g142_e2 && !_cg31;
    _g5 = !_g21;
    _g31 = _g27 || _g142 || _g26;
    _g27 = (_g9_e1 || _g12) && (_g18_e2 || _g17) && (_g5 || _g31) && (_g12 || _g17 || _g31);
    _cg33 = _DDDpacemaker_local__Atrig;
    _g30 = _g27 && _cg33;
    if (_g30) {
      _DDDpacemaker_local_AVI_state = false;
      VP = false;
      _taken_transitions[1] += 1;
    }
    _g32 = _pg33;
    _cg38 = _DDDpacemaker_local_real_VS;
    _g9 = _g32 && _cg38;
    if (_g9) {
      VP = false;
      _DDDpacemaker_local_AVI_state = false;
      _taken_transitions[4] += 1;
    }
    _g28_e3 = _g32 && !_cg38;
    _cg40 = _DDDpacemaker_local_URI_stop;
    _g9_e1 = _g28_e3 && _cg40;
    if (_g9_e1) {
      VP = true;
      _DDDpacemaker_local_VP_temp |= true;
      _DDDpacemaker_local_AVI_state = false;
      _taken_transitions[5] += 1;
    }
    _g28 = _g27 && !_cg33;
    _cg35 = _DDDpacemaker_local__Atrig1;
    _g18 = _g28 && !_cg35;
    if (_g18) {
      VP = true;
      _DDDpacemaker_local_VP_temp |= true;
      _DDDpacemaker_local_AVI_state = false;
      _taken_transitions[3] += 1;
    }
    _g18_e2 = _GO || _g30 || _g9 || _g9_e1 || _g18 || _g4 && !_cg4;
    _g38 = _g28 && _cg35;
    if (_g38) {
      _taken_transitions[2] += 1;
    }
    _g33 = _g38 || _g28_e3 && !_cg40;
    _g41 = _pg50;
    _cg59 = _DDDpacemaker_local_real_AS;
    _g42 = _g41 && _cg59;
    if (_g42) {
      _DDDpacemaker_local__Atrig3 = true;
    }
    _g39 = _pg107;
    if (_g39) {
      AEI_counter += deltaT;
    }
    _g4 = _g41 && !_cg59;
    _cg62 = AEI_counter >= AEI_DEADLINE;
    _g34 = _g4 && _cg62;
    if (_g34) {
      _DDDpacemaker_local__Atrig4 = true;
    }
    _g35 = _pg51_e1;
    _cg46 = _DDDpacemaker_local_real_VS || _DDDpacemaker_local_VP_temp;
    _g40 = _g35 && _cg46;
    if (_g40) {
      _DDDpacemaker_local_AEI_state = true;
      AEI_counter = 0;
      _taken_transitions[6] += 1;
      _DDDpacemaker_local__Atrig3 = false;
      _DDDpacemaker_local__Atrig4 = false;
    }
    _g36 = _pg52;
    _g59 = _pg55;
    _g56 = _g40 || _g36 || _g59;
    _cg49 = AEI_counter < AEI_DEADLINE;
    _g53 = _g56 && !_cg49;
    _cg54 = _DDDpacemaker_local__Atrig3 || _DDDpacemaker_local__Atrig4;
    _g55 = _g53 && !_cg54;
    _g49 = _g56 && _cg49;
    if (_g49) {
      sleepT = (sleepT < (AEI_DEADLINE - AEI_counter)) ? sleepT : (AEI_DEADLINE - AEI_counter);
    }
    _cg50 = _DDDpacemaker_local__Atrig3 || _DDDpacemaker_local__Atrig4;
    _g52 = _g49 && !_cg50;
    _g51_e1 = !(_g55 || _g52);
    _g54 = _g49 && _cg50 || _g53 && _cg54;
    _g50 = _g40 || _g4 && !_cg62;
    _g62 = !_g50;
    _g47 = _g42 || _g34;
    _g63 = (_g51_e1 || _g54) && (_g62 || _g47) && (_g54 || _g47);
    _cg64 = _DDDpacemaker_local__Atrig3;
    _g60 = _g63 && _cg64;
    if (_g60) {
      _DDDpacemaker_local_AEI_state = false;
      AP = false;
      _taken_transitions[7] += 1;
    }
    _g51 = _g63 && !_cg64;
    if (_g51) {
      AP = true;
      _DDDpacemaker_local_AP_temp |= true;
      _DDDpacemaker_local_AEI_state = false;
      _taken_transitions[8] += 1;
    }
    _g51_e1 = _GO || _g60 || _g51 || _g35 && !_cg46;
    _g61_e2 = _pg91;
    _g61 = _pg94;
    _g64 = !(_g61_e2 || _g61);
    _g66 = _pg92;
    _g46 = _g66 && AS;
    if (_g46) {
      _DDDpacemaker_local__Atrig5 = true;
    }
    _g65 = _pg112;
    if (_g65) {
      PVARP_counter += deltaT;
    }
    _g89 = _g66 && !AS;
    _cg89 = PVARP_counter >= PVARP_DEADLINE;
    _g90 = _g89 && _cg89;
    if (_g90) {
      _DDDpacemaker_local__Atrig6 = true;
    }
    _g82 = _g61 || _g61_e2;
    _cg77 = PVARP_counter < PVARP_DEADLINE;
    _g76 = _g82 && _cg77;
    if (_g76) {
      sleepT = (sleepT < (PVARP_DEADLINE - PVARP_counter)) ? sleepT : (PVARP_DEADLINE - PVARP_counter);
    }
    _cg78 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g77 = _g82 && !_cg77;
    _cg80 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g79 = _g76 && _cg78 || _g77 && _cg80;
    _g86 = !_g66;
    _g87 = _g46 || _g90;
    _g90 = (_g64 || _g79) && (_g86 || _g87) && (_g79 || _g87);
    _cg91 = _DDDpacemaker_local__Atrig5;
    _g79_e1 = _g90 && !_cg91;
    if (_g79_e1) {
      _DDDpacemaker_local_PVARP_state = false;
      _DDDpacemaker_local_AR = false;
      _taken_transitions[12] += 1;
    }
    _g88 = _GO || _g79_e1 || _g95 || _g94 && !AS;
    _g79 = _g29 && _cg70;
    if (_g79) {
      _DDDpacemaker_local_PVARP_state = true;
      PVARP_counter = 0;
      _taken_transitions[9] += 1;
    }
    _g88_e2 = _g90 && _cg91;
    if (_g88_e2) {
      _DDDpacemaker_local_AR = true;
      _taken_transitions[11] += 1;
    }
    _g95 = _g79 || _g88_e2;
    if (_g95) {
      _DDDpacemaker_local__Atrig5 = false;
      _DDDpacemaker_local__Atrig6 = false;
    }
    _cg73 = PVARP_counter < PVARP_DEADLINE;
    _g93 = _g95 && _cg73;
    if (_g93) {
      sleepT = (sleepT < (PVARP_DEADLINE - PVARP_counter)) ? sleepT : (PVARP_DEADLINE - PVARP_counter);
    }
    _cg74 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g94 = _g93 && !_cg74 || _g76 && !_cg78;
    _g70 = _g95 && !_cg73;
    _cg83 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g91 = _g77 && !_cg80 || _g70 && !_cg83;
    _g92 = _g95 || _g89 && !_cg89;
    _g71 = _pg120;
    _g78 = _pg122;
    _g74 = !(_g71 || _g78);
    _g80 = _pg121;
    _g83 = _g80 && VS;
    if (_g83) {
      _DDDpacemaker_local__Atrig7 = true;
    }
    _g89 = _pg109;
    if (_g89) {
      VRP_counter += deltaT;
    }
    _g72 = _g80 && !VS;
    _cg118 = VRP_counter >= VRP_DEADLINE;
    _g119 = _g72 && _cg118;
    if (_g119) {
      _DDDpacemaker_local__Atrig8 = true;
    }
    _g105 = _g78 || _g71;
    _cg106 = VRP_counter < VRP_DEADLINE;
    _g111 = _g105 && _cg106;
    if (_g111) {
      sleepT = (sleepT < (VRP_DEADLINE - VRP_counter)) ? sleepT : (VRP_DEADLINE - VRP_counter);
    }
    _cg107 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g106 = _g105 && !_cg106;
    _cg109 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g108 = _g111 && _cg107 || _g106 && _cg109;
    _g115 = !_g80;
    _g116 = _g83 || _g119;
    _g119 = (_g74 || _g108) && (_g115 || _g116) && (_g108 || _g116);
    _cg120 = _DDDpacemaker_local__Atrig7;
    _g108 = _g119 && !_cg120;
    if (_g108) {
      _DDDpacemaker_local_VR = false;
      _DDDpacemaker_local_VRP_state = false;
      _taken_transitions[16] += 1;
    }
    _g108_e1 = _GO || _g108 || _g124 || _g123 && !VS;
    _g117 = _g99 && _cg99;
    if (_g117) {
      _DDDpacemaker_local_VRP_state = true;
      VRP_counter = 0;
      _taken_transitions[13] += 1;
    }
    _g117_e2 = _g119 && _cg120;
    if (_g117_e2) {
      _DDDpacemaker_local_VR = true;
      _taken_transitions[15] += 1;
    }
    _g123 = _g117 || _g117_e2;
    if (_g123) {
      _DDDpacemaker_local__Atrig7 = false;
      _DDDpacemaker_local__Atrig8 = false;
    }
    _cg102 = VRP_counter < VRP_DEADLINE;
    _g124 = _g123 && _cg102;
    if (_g124) {
      sleepT = (sleepT < (VRP_DEADLINE - VRP_counter)) ? sleepT : (VRP_DEADLINE - VRP_counter);
    }
    _cg103 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g122 = _g124 && !_cg103 || _g111 && !_cg107;
    _g99 = _g123 && !_cg102;
    _cg112 = _DDDpacemaker_local__Atrig7 || _DDDpacemaker_local__Atrig8;
    _g120 = _g106 && !_cg109 || _g99 && !_cg112;
    _g121 = _g123 || _g72 && !_cg118;
    _g100 = _GO || _g129 || _g128 && !_cg128;
    _DDDpacemaker_local__reg_VP_temp = _DDDpacemaker_local_VP_temp;
    _DDDpacemaker_local__reg_AP_temp = _DDDpacemaker_local_AP_temp;
    _g103 = _GO || _g133;
    _g107 = _GO || _g39;
    _g112 = _GO || _g65;
    _g109 = _GO || _g89;
    _g101 = _pg118;
    if (_g101) {
      LRI_counter += deltaT;
    }
    _g118 = _GO || _g101;
    _g128 = _GO || _g187;
  }

  public void tick() {
    logic();

    _pg108_e1 = _g108_e1;
    _pg21 = _g21;
    _pg100 = _g100;
    _pg128 = _g128;
    _pg136 = _g136;
    _pg134 = _g134;
    _pg137 = _g137;
    _pg103 = _g103;
    _pg88 = _g88;
    _pg18_e2 = _g18_e2;
    _pg10 = _g10;
    _pg13 = _g13;
    _pg19 = _g19;
    _pg22 = _g22;
    _pg33 = _g33;
    _pg50 = _g50;
    _pg107 = _g107;
    _pg51_e1 = _g51_e1;
    _pg52 = _g52;
    _pg55 = _g55;
    _pg91 = _g91;
    _pg94 = _g94;
    _pg92 = _g92;
    _pg112 = _g112;
    _pg120 = _g120;
    _pg122 = _g122;
    _pg121 = _g121;
    _pg109 = _g109;
    _pg118 = _g118;
    _GO = false;
  }
}
