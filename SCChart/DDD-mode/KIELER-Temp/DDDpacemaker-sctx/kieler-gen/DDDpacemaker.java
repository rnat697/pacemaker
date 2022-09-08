/*
 * Automatically generated Java code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

public class DDDpacemaker {

  public boolean AS;
  public boolean VS;
  public int AVI_counter;
  public int AEI_counter;
  public int PVARP_counter;
  public int VRP_counter;
  public int LRI_counter;
  public int URI_counter;
  public boolean AP;
  public boolean VP;
  public int[] _taken_transitions;
  public boolean _reg_VP;
  public boolean _pre_VP;
  public boolean _reg_AP;
  public boolean _pre_AP;
  public boolean _DDDpacemaker_local_AVI_start;
  public boolean _DDDpacemaker_local_AVI_stop;
  public boolean _DDDpacemaker_local_AEI_start;
  public boolean _DDDpacemaker_local_AEI_stop;
  public boolean _DDDpacemaker_local_LRI_start;
  public boolean _DDDpacemaker_local_LRI_reset;
  public boolean _DDDpacemaker_local_LRI_stop;
  public boolean _DDDpacemaker_local_PVARP_start;
  public boolean _DDDpacemaker_local_PVARP_stop;
  public boolean _DDDpacemaker_local_VRP_start;
  public boolean _DDDpacemaker_local_VRP_stop;
  public boolean _DDDpacemaker_local_URI_start;
  public boolean _DDDpacemaker_local_URI_stop;
  public boolean _DDDpacemaker_local_AR;
  public boolean _DDDpacemaker_local_VR;
  public boolean _DDDpacemaker_local_real_AS;
  public boolean _DDDpacemaker_local_real_VS;
  public boolean _DDDpacemaker_local__reg_URI_stop;
  public boolean _DDDpacemaker_local__pre_URI_stop;
  public boolean _DDDpacemaker_local__reg_URI_start;
  public boolean _DDDpacemaker_local__pre_URI_start;
  public boolean _DDDpacemaker_local__reg_LRI_stop;
  public boolean _DDDpacemaker_local__pre_LRI_stop;
  public boolean _DDDpacemaker_local__reg_LRI_start;
  public boolean _DDDpacemaker_local__pre_LRI_start;
  public boolean _DDDpacemaker_local__reg_VRP_stop;
  public boolean _DDDpacemaker_local__pre_VRP_stop;
  public boolean _DDDpacemaker_local__reg_VRP_start;
  public boolean _DDDpacemaker_local__pre_VRP_start;
  public boolean _DDDpacemaker_local__reg_PVARP_start;
  public boolean _DDDpacemaker_local__pre_PVARP_start;
  public boolean _DDDpacemaker_local__reg_PVARP_stop;
  public boolean _DDDpacemaker_local__pre_PVARP_stop;
  public boolean _DDDpacemaker_local__reg_AEI_stop;
  public boolean _DDDpacemaker_local__pre_AEI_stop;
  public boolean _DDDpacemaker_local__reg_AEI_start;
  public boolean _DDDpacemaker_local__pre_AEI_start;
  public boolean _DDDpacemaker_local__reg_real_VS;
  public boolean _DDDpacemaker_local__pre_real_VS;
  public boolean _DDDpacemaker_local__reg_AVI_stop;
  public boolean _DDDpacemaker_local__pre_AVI_stop;
  public boolean _DDDpacemaker_local__reg_AVI_start;
  public boolean _DDDpacemaker_local__pre_AVI_start;
  public boolean _DDDpacemaker_local__reg_real_AS;
  public boolean _DDDpacemaker_local__pre_real_AS;
  public boolean _g4;
  public boolean _g5;
  public boolean _g7;
  public boolean _g8;
  public boolean _g9;
  public boolean _g10;
  public boolean _g12;
  public boolean _g13;
  public boolean _g14;
  public boolean _g15;
  public boolean _g16;
  public boolean _g17;
  public boolean _g21;
  public boolean _g22;
  public boolean _g24;
  public boolean _g25;
  public boolean _g28;
  public boolean _g29;
  public boolean _g30;
  public boolean _g32;
  public boolean _g33;
  public boolean _g34;
  public boolean _g39;
  public boolean _g40;
  public boolean _g42;
  public boolean _g43;
  public boolean _g46;
  public boolean _g47;
  public boolean _g48;
  public boolean _g50;
  public boolean _g51;
  public boolean _g52;
  public boolean _g53;
  public boolean _g59;
  public boolean _g60;
  public boolean _g62;
  public boolean _g63;
  public boolean _g66;
  public boolean _g67;
  public boolean _g68;
  public boolean _g70;
  public boolean _g71;
  public boolean _g72;
  public boolean _g73;
  public boolean _g79;
  public boolean _g80;
  public boolean _g82;
  public boolean _g83;
  public boolean _g87;
  public boolean _g88;
  public boolean _g90;
  public boolean _g91;
  public boolean _g92;
  public boolean _g93;
  public boolean _g97;
  public boolean _g98;
  public boolean _g100;
  public boolean _g101;
  public boolean _g105;
  public boolean _g106;
  public boolean _g108;
  public boolean _g109;
  public boolean _g113;
  public boolean _g116;
  public boolean _g117;
  public boolean _g133;
  public boolean _g141;
  public boolean _g153;
  public boolean _g157;
  public boolean _g165;
  public boolean _g169;
  public boolean _g173;
  public boolean _GO;
  public boolean _cg4;
  public boolean _cg16;
  public boolean _cg7;
  public boolean _cg9;
  public boolean _cg14;
  public boolean _cg12;
  public boolean _cg21;
  public boolean _cg24;
  public boolean _cg29;
  public boolean _cg34;
  public boolean _cg32;
  public boolean _cg39;
  public boolean _cg42;
  public boolean _cg54;
  public boolean _cg47;
  public boolean _cg52;
  public boolean _cg50;
  public boolean _cg59;
  public boolean _cg62;
  public boolean _cg74;
  public boolean _cg67;
  public boolean _cg72;
  public boolean _cg70;
  public boolean _cg79;
  public boolean _cg82;
  public boolean _cg87;
  public boolean _cg92;
  public boolean _cg90;
  public boolean _cg97;
  public boolean _cg100;
  public boolean _cg105;
  public boolean _cg108;
  public boolean _cg113;
  public boolean _cg116;
  public boolean _TERM;

  public DDDpacemaker() {
    _taken_transitions = new int[34];
  }
  public boolean _pg17;
  public boolean _pg4;
  public boolean _pg15;
  public boolean _pg16;
  public boolean _pg22;
  public boolean _pg169;
  public boolean _pg25;
  public boolean _pg34;
  public boolean _pg68;
  public boolean _pg165;
  public boolean _pg28;
  public boolean _pg157;
  public boolean _pg40;
  public boolean _pg43;
  public boolean _pg48;
  public boolean _pg46;
  public boolean _pg52;
  public boolean _pg62;
  public boolean _pg63;
  public boolean _pg66;
  public boolean _pg72;
  public boolean _pg80;
  public boolean _pg83;
  public boolean _pg87;
  public boolean _pg91;
  public boolean _pg92;
  public boolean _pg98;
  public boolean _pg101;
  public boolean _pg106;
  public boolean _pg109;
  public boolean _pg116;
  public boolean _pg117;

  public void reset() {
    _GO = true;
    _TERM = false;
    _reg_VP = false;
    _reg_AP = false;
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
    _taken_transitions[24] = 0;
    _taken_transitions[25] = 0;
    _taken_transitions[26] = 0;
    _taken_transitions[27] = 0;
    _taken_transitions[28] = 0;
    _taken_transitions[29] = 0;
    _taken_transitions[30] = 0;
    _taken_transitions[31] = 0;
    _taken_transitions[32] = 0;
    _taken_transitions[33] = 0;
    _DDDpacemaker_local__reg_URI_stop = false;
    _DDDpacemaker_local__reg_URI_start = false;
    _DDDpacemaker_local__reg_LRI_stop = false;
    _DDDpacemaker_local__reg_LRI_start = false;
    _DDDpacemaker_local__reg_VRP_stop = false;
    _DDDpacemaker_local__reg_VRP_start = false;
    _DDDpacemaker_local__reg_PVARP_start = false;
    _DDDpacemaker_local__reg_PVARP_stop = false;
    _DDDpacemaker_local__reg_AEI_stop = false;
    _DDDpacemaker_local__reg_AEI_start = false;
    _DDDpacemaker_local__reg_real_VS = false;
    _DDDpacemaker_local__reg_AVI_stop = false;
    _DDDpacemaker_local__reg_AVI_start = false;
    _DDDpacemaker_local__reg_real_AS = false;
    _pg17 = false;
    _pg4 = false;
    _pg15 = false;
    _pg16 = false;
    _pg22 = false;
    _pg169 = false;
    _pg25 = false;
    _pg34 = false;
    _pg68 = false;
    _pg165 = false;
    _pg28 = false;
    _pg157 = false;
    _pg40 = false;
    _pg43 = false;
    _pg48 = false;
    _pg46 = false;
    _pg52 = false;
    _pg62 = false;
    _pg63 = false;
    _pg66 = false;
    _pg72 = false;
    _pg80 = false;
    _pg83 = false;
    _pg87 = false;
    _pg91 = false;
    _pg92 = false;
    _pg98 = false;
    _pg101 = false;
    _pg106 = false;
    _pg109 = false;
    _pg116 = false;
    _pg117 = false;
  }

  public void logic() {
    _g7 = _pg17;
    _g8 = _g7 && VS;
    if (_g8) {
      _DDDpacemaker_local_AVI_stop = true;
      _DDDpacemaker_local_AVI_start = false;
      VP = false;
      _taken_transitions[1] += 1;
    }
    _g12 = _pg4;
    _g13 = _g12 && VS;
    if (_g13) {
      _DDDpacemaker_local_AVI_stop = true;
      VP = false;
      _DDDpacemaker_local_AVI_start = false;
      _taken_transitions[4] += 1;
    }
    _DDDpacemaker_local__pre_URI_stop = _DDDpacemaker_local__reg_URI_stop;
    _g12 = _g12 && !VS;
    _cg14 = _DDDpacemaker_local__pre_URI_stop;
    _g15 = _g12 && _cg14;
    if (_g15) {
      VP = true;
      _DDDpacemaker_local_AVI_stop = true;
      _DDDpacemaker_local_AVI_start = false;
      _taken_transitions[5] += 1;
    }
    _DDDpacemaker_local__pre_URI_start = _DDDpacemaker_local__reg_URI_start;
    _g7 = _g7 && !VS;
    _cg9 = AVI_counter >= AVI_VALUE && _DDDpacemaker_local__pre_URI_start;
    _g16 = _g7 && !_cg9;
    _cg16 = AVI_counter >= AVI_VALUE && _DDDpacemaker_local__pre_URI_stop;
    _g17 = _g16 && _cg16;
    if (_g17) {
      VP = true;
      _DDDpacemaker_local_AVI_stop = true;
      _DDDpacemaker_local_AVI_start = false;
      _taken_transitions[3] += 1;
    }
    _DDDpacemaker_local__pre_real_AS = _DDDpacemaker_local__reg_real_AS;
    _pre_AP = _reg_AP;
    _g4 = _pg15;
    _cg4 = _DDDpacemaker_local__pre_real_AS || _pre_AP;
    _g15 = _GO || _g8 || _g13 || _g15 || _g17 || _g4 && !_cg4;
    _g8 = _g4 && _cg4;
    if (_g8) {
      _DDDpacemaker_local_AVI_start = true;
      _DDDpacemaker_local_AVI_stop = false;
      _taken_transitions[0] += 1;
    }
    _g17 = _g8 || _g16 && !_cg16;
    _g13 = _g7 && _cg9;
    if (_g13) {
      _taken_transitions[2] += 1;
    }
    _g4 = _g13 || _g12 && !_cg14;
    _g5 = _pg16;
    _g16 = _GO || _g5;
    if (_g16) {
      _DDDpacemaker_local__pre_AVI_stop = _DDDpacemaker_local__reg_AVI_stop;
    }
    _g9 = _pg22;
    _cg24 = _DDDpacemaker_local__pre_AVI_stop;
    _g14 = _g9 && _cg24;
    if (_g14) {
      _taken_transitions[7] += 1;
    }
    _g10 = _pg169;
    _g169 = _GO || _g10;
    if (_g169) {
      _DDDpacemaker_local__pre_AVI_start = _DDDpacemaker_local__reg_AVI_start;
    }
    _g173 = _pg25;
    _cg21 = _DDDpacemaker_local__pre_AVI_start;
    _g25 = _GO || _g14 || _g173 && !_cg21;
    _g21 = _g173 && _cg21;
    if (_g21) {
      _taken_transitions[6] += 1;
    }
    _g22 = _g21 || _g9 && !_cg24;
    _g24 = _pg34;
    _g33 = _g24 && AS;
    if (_g33) {
      _DDDpacemaker_local_AEI_stop = true;
      _DDDpacemaker_local_AEI_start = false;
      AP = false;
      _taken_transitions[9] += 1;
    }
    _g33 = _pg68;
    _g72 = _g33 && !VS;
    _cg72 = VRP_counter >= VRP_VALUE;
    _g73 = _g72 && _cg72;
    if (_g73) {
      _DDDpacemaker_local_VRP_stop = true;
    }
    _g73 = _g24 && !AS;
    _cg34 = AEI_counter >= AEI_VALUE;
    _g32 = _pg165;
    _g165 = _GO || _g32;
    if (_g165) {
      _DDDpacemaker_local__pre_real_VS = _DDDpacemaker_local__reg_real_VS;
    }
    _pre_VP = _reg_VP;
    _g29 = _pg28;
    _cg29 = _DDDpacemaker_local__pre_real_VS || _pre_VP;
    _g29 = _g29 && _cg29;
    if (_g29) {
      _DDDpacemaker_local_AEI_start = true;
      _DDDpacemaker_local_AEI_stop = false;
      _taken_transitions[8] += 1;
    }
    _g34 = _g29 || _g73 && !_cg34;
    _g30 = _pg157;
    _g157 = _GO || _g30;
    if (_g157) {
      _DDDpacemaker_local__pre_AEI_stop = _DDDpacemaker_local__reg_AEI_stop;
    }
    _g42 = _pg40;
    _cg42 = _DDDpacemaker_local__pre_AEI_stop;
    _g43 = _g42 && _cg42;
    if (_g43) {
      _taken_transitions[12] += 1;
    }
    _DDDpacemaker_local__pre_AEI_start = _DDDpacemaker_local__reg_AEI_start;
    _g39 = _pg43;
    _cg39 = _DDDpacemaker_local__pre_AEI_start;
    _g43 = _GO || _g43 || _g39 && !_cg39;
    _g39 = _g39 && _cg39;
    if (_g39) {
      _taken_transitions[11] += 1;
    }
    _g40 = _g39 || _g42 && !_cg42;
    _g42 = _pg48;
    _g52 = _g42 && !AS;
    _cg52 = PVARP_counter >= PVARP_VALUE;
    _g53 = _g52 && _cg52;
    if (_g53) {
      _DDDpacemaker_local_PVARP_stop = true;
      _DDDpacemaker_local_AR = false;
      _taken_transitions[16] += 1;
    }
    _g53 = _pg46;
    _cg47 = VS || _pre_VP;
    _g47 = _g53 && _cg47;
    if (_g47) {
      _DDDpacemaker_local_PVARP_start = true;
      _DDDpacemaker_local_PVARP_stop = false;
      _taken_transitions[13] += 1;
    }
    _g50 = _g42 && AS;
    if (_g50) {
      _DDDpacemaker_local_AR = true;
      _taken_transitions[15] += 1;
    }
    _g48 = _g47 || _g50 || _g52 && !_cg52;
    _g51 = _pg52;
    _g52 = _GO || _g51;
    if (_g52) {
      _DDDpacemaker_local__pre_PVARP_stop = _DDDpacemaker_local__reg_PVARP_stop;
    }
    _g153 = _pg62;
    _cg62 = _DDDpacemaker_local__pre_PVARP_stop;
    _g63 = _g153 && _cg62;
    if (_g63) {
      _taken_transitions[18] += 1;
    }
    _DDDpacemaker_local__pre_PVARP_start = _DDDpacemaker_local__reg_PVARP_start;
    _g59 = _pg63;
    _cg59 = _DDDpacemaker_local__pre_PVARP_start;
    _g63 = _GO || _g63 || _g59 && !_cg59;
    _g59 = _g59 && _cg59;
    if (_g59) {
      _taken_transitions[17] += 1;
    }
    _g62 = _g59 || _g153 && !_cg62;
    _g60 = _pg66;
    _cg67 = _DDDpacemaker_local__pre_PVARP_start;
    _g67 = _g60 && _cg67;
    if (_g67) {
      _DDDpacemaker_local_VRP_start = true;
      _DDDpacemaker_local_VRP_stop = false;
      _taken_transitions[19] += 1;
    }
    _g70 = _g33 && VS;
    if (_g70) {
      _DDDpacemaker_local_VR = true;
      _taken_transitions[21] += 1;
    }
    _g68 = _g67 || _g70 || _g72 && !_cg72;
    _g71 = _pg72;
    _g72 = _GO || _g71;
    if (_g72) {
      _DDDpacemaker_local__pre_VRP_stop = _DDDpacemaker_local__reg_VRP_stop;
    }
    _g141 = _pg80;
    _cg82 = _DDDpacemaker_local__pre_VRP_stop;
    _g83 = _g141 && _cg82;
    if (_g83) {
      _taken_transitions[24] += 1;
    }
    _DDDpacemaker_local__pre_VRP_start = _DDDpacemaker_local__reg_VRP_start;
    _g79 = _pg83;
    _cg79 = _DDDpacemaker_local__pre_VRP_start;
    _g83 = _GO || _g83 || _g79 && !_cg79;
    _g79 = _g79 && _cg79;
    if (_g79) {
      _taken_transitions[23] += 1;
    }
    _g80 = _g79 || _g141 && !_cg82;
    _g82 = _pg87;
    _cg90 = VS || _pre_VP;
    _g91 = _g82 && _cg90;
    if (_g91) {
      _DDDpacemaker_local_LRI_stop = true;
      _DDDpacemaker_local_LRI_start = false;
      _taken_transitions[26] += 1;
    }
    _g90 = _g82 && !_cg90;
    _cg92 = LRI_counter >= LRI_VALUE;
    _g93 = _g90 && _cg92;
    if (_g93) {
      _DDDpacemaker_local_LRI_stop = true;
      _DDDpacemaker_local_LRI_start = false;
      _taken_transitions[27] += 1;
    }
    _g87 = _pg91;
    _cg87 = VS || _pre_VP;
    _g91 = _GO || _g91 || _g93 || _g87 && !_cg87;
    _g93 = _g87 && _cg87;
    if (_g93) {
      _DDDpacemaker_local_LRI_start = true;
      _DDDpacemaker_local_LRI_stop = false;
      _taken_transitions[25] += 1;
    }
    _g87 = _g93 || _g90 && !_cg92;
    _g88 = _pg92;
    _g92 = _GO || _g88;
    if (_g92) {
      _DDDpacemaker_local__pre_LRI_stop = _DDDpacemaker_local__reg_LRI_stop;
    }
    _g133 = _pg98;
    _cg100 = _DDDpacemaker_local__pre_LRI_stop;
    _g101 = _g133 && _cg100;
    if (_g101) {
      _taken_transitions[29] += 1;
    }
    _DDDpacemaker_local__pre_LRI_start = _DDDpacemaker_local__reg_LRI_start;
    _g97 = _pg101;
    _cg97 = _DDDpacemaker_local__pre_LRI_start;
    _g101 = _GO || _g101 || _g97 && !_cg97;
    _g97 = _g97 && _cg97;
    if (_g97) {
      _taken_transitions[28] += 1;
    }
    _g98 = _g97 || _g133 && !_cg100;
    _g100 = _pg106;
    _cg108 = URI_counter >= URI_VALUE;
    _g109 = _g100 && _cg108;
    if (_g109) {
      _DDDpacemaker_local_URI_stop = true;
      _DDDpacemaker_local_URI_start = false;
      _taken_transitions[31] += 1;
    }
    _g105 = _pg109;
    _cg105 = VS || _pre_VP;
    _g109 = _GO || _g109 || _g105 && !_cg105;
    _g105 = _g105 && _cg105;
    if (_g105) {
      _DDDpacemaker_local_URI_start = true;
      _DDDpacemaker_local_URI_stop = false;
      _taken_transitions[30] += 1;
    }
    _g106 = _g105 || _g100 && !_cg108;
    _g108 = _pg116;
    _cg116 = _DDDpacemaker_local__pre_URI_stop;
    _g117 = _g108 && _cg116;
    if (_g117) {
      _taken_transitions[33] += 1;
    }
    _g113 = _pg117;
    _cg113 = _DDDpacemaker_local__pre_URI_start;
    _g117 = _GO || _g117 || _g113 && !_cg113;
    _g113 = _g113 && _cg113;
    if (_g113) {
      _taken_transitions[32] += 1;
    }
    _g116 = _g113 || _g108 && !_cg116;
    _DDDpacemaker_local__reg_URI_stop = _DDDpacemaker_local_URI_stop;
    _DDDpacemaker_local__reg_URI_start = _DDDpacemaker_local_URI_start;
    if (_g92) {
      _DDDpacemaker_local__reg_LRI_stop = _DDDpacemaker_local_LRI_stop;
    }
    _DDDpacemaker_local__reg_LRI_start = _DDDpacemaker_local_LRI_start;
    if (_g72) {
      _DDDpacemaker_local__reg_VRP_stop = _DDDpacemaker_local_VRP_stop;
    }
    _DDDpacemaker_local__reg_PVARP_start = _DDDpacemaker_local_PVARP_start;
    if (_g52) {
      _DDDpacemaker_local__reg_PVARP_stop = _DDDpacemaker_local_PVARP_stop;
    }
    if (_g16) {
      _DDDpacemaker_local__reg_AVI_stop = _DDDpacemaker_local_AVI_stop;
    }
    if (_g169) {
      _DDDpacemaker_local__reg_AVI_start = _DDDpacemaker_local_AVI_start;
    }
    _reg_VP = VP;
  }

  public void tick() {
    logic();

    _pg17 = _g17;
    _pg4 = _g4;
    _pg15 = _g15;
    _pg16 = _g16;
    _pg22 = _g22;
    _pg169 = _g169;
    _pg25 = _g25;
    _pg34 = _g34;
    _pg68 = _g68;
    _pg165 = _g165;
    _pg28 = _g28;
    _pg157 = _g157;
    _pg40 = _g40;
    _pg43 = _g43;
    _pg48 = _g48;
    _pg46 = _g46;
    _pg52 = _g52;
    _pg62 = _g62;
    _pg63 = _g63;
    _pg66 = _g66;
    _pg72 = _g72;
    _pg80 = _g80;
    _pg83 = _g83;
    _pg87 = _g87;
    _pg91 = _g91;
    _pg92 = _g92;
    _pg98 = _g98;
    _pg101 = _g101;
    _pg106 = _g106;
    _pg109 = _g109;
    _pg116 = _g116;
    _pg117 = _g117;
    _GO = false;
  }
}
