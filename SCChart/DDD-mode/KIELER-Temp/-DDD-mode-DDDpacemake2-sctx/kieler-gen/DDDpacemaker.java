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
  public boolean _DDDpacemaker_local__reg_PVARP_start;
  public boolean _DDDpacemaker_local__pre_PVARP_start;
  public boolean _DDDpacemaker_local__reg_real_VS;
  public boolean _DDDpacemaker_local__pre_real_VS;
  public boolean _DDDpacemaker_local__reg_URI_stop;
  public boolean _DDDpacemaker_local__pre_URI_stop;
  public boolean _DDDpacemaker_local__reg_URI_start;
  public boolean _DDDpacemaker_local__pre_URI_start;
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
  public boolean _g20;
  public boolean _g21;
  public boolean _g22;
  public boolean _g24;
  public boolean _g25;
  public boolean _g26;
  public boolean _g31;
  public boolean _g32;
  public boolean _g34;
  public boolean _g35;
  public boolean _g36;
  public boolean _g37;
  public boolean _g38;
  public boolean _g39;
  public boolean _g42;
  public boolean _g43;
  public boolean _g44;
  public boolean _g46;
  public boolean _g47;
  public boolean _g48;
  public boolean _g49;
  public boolean _g50;
  public boolean _g51;
  public boolean _g55;
  public boolean _g56;
  public boolean _g58;
  public boolean _g59;
  public boolean _g60;
  public boolean _g61;
  public boolean _g65;
  public boolean _g66;
  public boolean _g69;
  public boolean _g77;
  public boolean _g81;
  public boolean _g101;
  public boolean _GO;
  public boolean _cg4;
  public boolean _cg16;
  public boolean _cg7;
  public boolean _cg9;
  public boolean _cg14;
  public boolean _cg12;
  public boolean _cg21;
  public boolean _cg26;
  public boolean _cg24;
  public boolean _cg38;
  public boolean _cg31;
  public boolean _cg36;
  public boolean _cg34;
  public boolean _cg50;
  public boolean _cg43;
  public boolean _cg48;
  public boolean _cg46;
  public boolean _cg55;
  public boolean _cg60;
  public boolean _cg58;
  public boolean _cg65;
  public boolean _cg68;
  public boolean _TERM;

  public DDDpacemaker() {
    _taken_transitions = new int[22];
  }
  public boolean _pg17;
  public boolean _pg4;
  public boolean _pg15;
  public boolean _pg26;
  public boolean _pg43;
  public boolean _pg24;
  public boolean _pg101;
  public boolean _pg20;
  public boolean _pg31;
  public boolean _pg37;
  public boolean _pg35;
  public boolean _pg42;
  public boolean _pg55;
  public boolean _pg59;
  public boolean _pg66;
  public boolean _pg69;

  public void reset() {
    _GO = true;
    _TERM = false;
    AVI_DEADLINE = AVI_VALUE;
    URI_DEADLINE = URI_VALUE;
    AEI_DEADLINE = AEI_VALUE;
    LRI_DEADLINE = LRI_VALUE;
    PVARP_DEADLINE = PVARP_VALUE;
    VRP_DEADLINE = VRP_VALUE;
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
    _DDDpacemaker_local__reg_PVARP_start = false;
    _DDDpacemaker_local__reg_real_VS = false;
    _DDDpacemaker_local__reg_URI_stop = false;
    _DDDpacemaker_local__reg_URI_start = false;
    _DDDpacemaker_local__reg_real_AS = false;
    _pg17 = false;
    _pg4 = false;
    _pg15 = false;
    _pg26 = false;
    _pg43 = false;
    _pg24 = false;
    _pg101 = false;
    _pg20 = false;
    _pg31 = false;
    _pg37 = false;
    _pg35 = false;
    _pg42 = false;
    _pg55 = false;
    _pg59 = false;
    _pg66 = false;
    _pg69 = false;
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
    _cg9 = AVI_counter >= AVI_DEADLINE && _DDDpacemaker_local__pre_URI_start;
    _g16 = _g7 && !_cg9;
    _cg16 = AVI_counter >= AVI_DEADLINE && _DDDpacemaker_local__pre_URI_stop;
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
    _g5 = _pg26;
    _g16 = _g5 && AS;
    if (_g16) {
      _DDDpacemaker_local_AEI_stop = true;
      _DDDpacemaker_local_AEI_start = false;
      AP = false;
      _taken_transitions[7] += 1;
    }
    _g9 = _pg43;
    _g14 = _g9 && !VS;
    _cg48 = VRP_counter >= VRP_DEADLINE;
    _g10 = _g14 && _cg48;
    if (_g10) {
      _DDDpacemaker_local_VRP_stop = true;
    }
    _g25 = _g5 && !AS;
    _cg26 = AEI_counter >= AEI_DEADLINE;
    _g49 = _pg24;
    _g24 = _GO || _g49;
    if (_g24) {
      _DDDpacemaker_local__pre_real_VS = _DDDpacemaker_local__reg_real_VS;
    }
    _g81 = _pg101;
    _g101 = _GO || _g81;
    if (_g101) {
      _pre_VP = _reg_VP;
    }
    _g21 = _pg20;
    _cg21 = _DDDpacemaker_local__pre_real_VS || _pre_VP;
    _g21 = _g21 && _cg21;
    if (_g21) {
      _DDDpacemaker_local_AEI_start = true;
      _DDDpacemaker_local_AEI_stop = false;
      _taken_transitions[6] += 1;
    }
    _g26 = _g21 || _g25 && !_cg26;
    _g22 = _pg31;
    _g36 = _g22 && !AS;
    _cg36 = PVARP_counter >= PVARP_DEADLINE;
    _g37 = _g36 && _cg36;
    if (_g37) {
      _DDDpacemaker_local_PVARP_stop = true;
      _DDDpacemaker_local_AR = false;
      _taken_transitions[12] += 1;
    }
    _DDDpacemaker_local_real_AS = false;
    _DDDpacemaker_local_real_VS = false;
    _g31 = _pg37;
    _cg31 = VS || _pre_VP;
    _g38 = _g31 && !_cg31;
    _g39 = _g38 && AS;
    if (_g39) {
      _DDDpacemaker_local_real_AS |= true;
      _taken_transitions[10] += 1;
    }
    _g37 = _GO || _g37 || _g39 || _g38 && !AS;
    _g38 = _g31 && _cg31;
    if (_g38) {
      _DDDpacemaker_local_PVARP_start = true;
      _DDDpacemaker_local_PVARP_stop = false;
      _taken_transitions[9] += 1;
    }
    _g39 = _g22 && AS;
    if (_g39) {
      _DDDpacemaker_local_AR = true;
      _taken_transitions[11] += 1;
    }
    _g31 = _g38 || _g39 || _g36 && !_cg36;
    _g34 = _pg35;
    _g35 = _GO || _g34;
    if (_g35) {
      _DDDpacemaker_local__pre_PVARP_start = _DDDpacemaker_local__reg_PVARP_start;
    }
    _g36 = _pg42;
    _cg43 = _DDDpacemaker_local__pre_PVARP_start;
    _g32 = _g36 && !_cg43;
    _g77 = _g32 && VS;
    if (_g77) {
      _DDDpacemaker_local_real_VS |= true;
      _taken_transitions[14] += 1;
    }
    _g50 = _g36 && _cg43;
    if (_g50) {
      _DDDpacemaker_local_VRP_start = true;
      _DDDpacemaker_local_VRP_stop = false;
      _taken_transitions[13] += 1;
    }
    _g51 = _g9 && VS;
    if (_g51) {
      _DDDpacemaker_local_VR = true;
      _taken_transitions[15] += 1;
    }
    _g43 = _g50 || _g51 || _g14 && !_cg48;
    _g46 = _pg55;
    _cg58 = VS || _pre_VP;
    _g48 = _g46 && _cg58;
    if (_g48) {
      _DDDpacemaker_local_LRI_stop = true;
      _DDDpacemaker_local_LRI_start = false;
      _taken_transitions[18] += 1;
    }
    _g44 = _g46 && !_cg58;
    _cg60 = LRI_counter >= LRI_DEADLINE;
    _g47 = _g44 && _cg60;
    if (_g47) {
      _DDDpacemaker_local_LRI_stop = true;
      _DDDpacemaker_local_LRI_start = false;
      _taken_transitions[19] += 1;
    }
    _g58 = _pg59;
    _cg55 = VS || _pre_VP;
    _g59 = _GO || _g48 || _g47 || _g58 && !_cg55;
    _g61 = _g58 && _cg55;
    if (_g61) {
      _DDDpacemaker_local_LRI_start = true;
      _DDDpacemaker_local_LRI_stop = false;
      _taken_transitions[17] += 1;
    }
    _g55 = _g61 || _g44 && !_cg60;
    _g56 = _pg66;
    _cg68 = URI_counter >= URI_DEADLINE;
    _g60 = _g56 && _cg68;
    if (_g60) {
      _DDDpacemaker_local_URI_stop = true;
      _DDDpacemaker_local_URI_start = false;
      _taken_transitions[21] += 1;
    }
    _g65 = _pg69;
    _cg65 = VS || _pre_VP;
    _g69 = _GO || _g60 || _g65 && !_cg65;
    _g65 = _g65 && _cg65;
    if (_g65) {
      _DDDpacemaker_local_URI_start = true;
      _DDDpacemaker_local_URI_stop = false;
      _taken_transitions[20] += 1;
    }
    _g66 = _g65 || _g56 && !_cg68;
    if (_g35) {
      _DDDpacemaker_local__reg_PVARP_start = _DDDpacemaker_local_PVARP_start;
    }
    if (_g24) {
      _DDDpacemaker_local__reg_real_VS = _DDDpacemaker_local_real_VS;
    }
    _DDDpacemaker_local__reg_URI_stop = _DDDpacemaker_local_URI_stop;
    _DDDpacemaker_local__reg_URI_start = _DDDpacemaker_local_URI_start;
    _DDDpacemaker_local__reg_real_AS = _DDDpacemaker_local_real_AS;
    if (_g101) {
      _reg_VP = VP;
    }
  }

  public void tick() {
    logic();

    _pg17 = _g17;
    _pg4 = _g4;
    _pg15 = _g15;
    _pg26 = _g26;
    _pg43 = _g43;
    _pg24 = _g24;
    _pg101 = _g101;
    _pg20 = _g20;
    _pg31 = _g31;
    _pg37 = _g37;
    _pg35 = _g35;
    _pg42 = _g42;
    _pg55 = _g55;
    _pg59 = _g59;
    _pg66 = _g66;
    _pg69 = _g69;
    _GO = false;
  }
}
