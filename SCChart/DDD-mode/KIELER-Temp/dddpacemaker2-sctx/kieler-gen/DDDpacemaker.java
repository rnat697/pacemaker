/*
 * Automatically generated Java code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

public class DDDpacemaker {

  public boolean AS;
  public boolean VS;
  public boolean AP;
  public boolean VP;
  public int[] _taken_transitions;
  public double deltaT;
  public double sleepT;
  public boolean _DDDpacemaker_local_AVI_state;
  public boolean _DDDpacemaker_local_URI_state;
  public double _DDDpacemaker_local_AVI_counter;
  public double _DDDpacemaker_local_URI_counter;
  public boolean _DDDpacemaker_local_AP_out;
  public boolean _DDDpacemaker_local_VP_out;
  public boolean _DDDpacemaker_local__reg_VP_out;
  public boolean _DDDpacemaker_local__pre_VP_out;
  public boolean _DDDpacemaker_local__Atrig;
  public boolean _DDDpacemaker_local__Atrig1;
  public boolean _DDDpacemaker_local__Atrig2;
  public boolean _DDDpacemaker_local__Atrig3;
  public boolean _DDDpacemaker_local__Atrig4;
  public boolean _DDDpacemaker_local__Atrig5;
  public boolean _DDDpacemaker_local__Atrig6;
  public boolean _DDDpacemaker_local__Atrig7;
  public boolean _g3;
  public boolean _g5;
  public boolean _g6;
  public boolean _g7;
  public boolean _g10;
  public boolean _g11;
  public boolean _g12;
  public boolean _g14;
  public boolean _g15;
  public boolean _g16;
  public boolean _g19;
  public boolean _g20;
  public boolean _g21;
  public boolean _g24;
  public boolean _g25;
  public boolean _g27;
  public boolean _g29;
  public boolean _g30;
  public boolean _g31;
  public boolean _g32;
  public boolean _g33;
  public boolean _g35;
  public boolean _g36;
  public boolean _g39;
  public boolean _g40;
  public boolean _g41;
  public boolean _g42;
  public boolean _g43;
  public boolean _g44;
  public boolean _g45;
  public boolean _g46;
  public boolean _g47;
  public boolean _g48;
  public boolean _g49;
  public boolean _g52;
  public boolean _g53;
  public boolean _g56;
  public boolean _g57;
  public boolean _g58;
  public boolean _g59;
  public boolean _g61;
  public boolean _g64;
  public boolean _g67;
  public boolean _g68;
  public boolean _g71;
  public boolean _g72;
  public boolean _g73;
  public boolean _g74;
  public boolean _g75;
  public boolean _g76;
  public boolean _g82;
  public boolean _g86;
  public boolean _g87;
  public boolean _g89;
  public boolean _g92;
  public boolean _g96;
  public boolean _g97;
  public boolean _g98;
  public boolean _g99;
  public boolean _g103;
  public boolean _g107;
  public boolean _GO;
  public boolean _cg4;
  public boolean _cg6;
  public boolean _cg10;
  public boolean _cg13;
  public boolean _cg15;
  public boolean _cg19;
  public boolean _cg22;
  public boolean _cg24;
  public boolean _cg26;
  public boolean _cg27;
  public boolean _cg31;
  public boolean _cg30;
  public boolean _cg33;
  public boolean _cg36;
  public boolean _cg42;
  public boolean _cg39;
  public boolean _cg44;
  public boolean _cg47;
  public boolean _cg48;
  public boolean _cg50;
  public boolean _cg52;
  public boolean _cg56;
  public boolean _cg65;
  public boolean _cg67;
  public boolean _cg74;
  public boolean _cg71;
  public boolean _cg76;
  public boolean _cg79;
  public boolean _cg81;
  public boolean _cg83;
  public boolean _cg84;
  public boolean _cg88;
  public boolean _cg87;
  public boolean _cg90;
  public boolean _cg93;
  public boolean _cg96;
  public boolean _g7_e1;
  public boolean _g11_e2;
  public boolean _g16_e1;
  public boolean _g20_e2;
  public boolean _g25_e1;
  public boolean _g32_e2;
  public boolean _g41_e3;
  public boolean _g53_e1;
  public boolean _g57_e2;
  public boolean _g68_e1;
  public boolean _g73_e2;
  public boolean _g82_e1;
  public boolean _g89_e2;
  public boolean _g97_e3;
  public boolean _TERM;

  public DDDpacemaker() {
    _taken_transitions = new int[10];
  }
  public boolean _pg16_e1;
  public boolean _pg31;
  public boolean _pg27;
  public boolean _pg20_e2;
  public boolean _pg32_e2;
  public boolean _pg36;
  public boolean _pg47;
  public boolean _pg99;
  public boolean _pg64;
  public boolean _pg67;
  public boolean _pg52;
  public boolean _pg49;
  public boolean _pg107;
  public boolean _pg42;
  public boolean _pg21;
  public boolean _pg3;
  public boolean _pg5;
  public boolean _pg12;
  public boolean _pg14;

  public void reset() {
    _GO = true;
    _TERM = false;
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
    _DDDpacemaker_local_AVI_state = false;
    _DDDpacemaker_local_URI_state = false;
    _DDDpacemaker_local_AVI_counter = 0.0;
    _DDDpacemaker_local_URI_counter = 0.0;
    _DDDpacemaker_local__reg_VP_out = false;
    _pg16_e1 = false;
    _pg31 = false;
    _pg27 = false;
    _pg20_e2 = false;
    _pg32_e2 = false;
    _pg36 = false;
    _pg47 = false;
    _pg99 = false;
    _pg64 = false;
    _pg67 = false;
    _pg52 = false;
    _pg49 = false;
    _pg107 = false;
    _pg42 = false;
    _pg21 = false;
    _pg3 = false;
    _pg5 = false;
    _pg12 = false;
    _pg14 = false;
  }

  public void logic() {
    _g24 = _pg16_e1;
    if (_g24) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _g25_e1 = !_g24;
    _g39 = _pg31;
    _g40 = _g39 && VS;
    if (_g40) {
      _DDDpacemaker_local__Atrig2 = true;
    }
    _g42 = _g39 && !VS;
    _cg42 = _DDDpacemaker_local_AVI_counter >= 100;
    _g43 = _g42 && _cg42;
    if (_g43) {
      _DDDpacemaker_local__Atrig3 = true;
    }
    _cg24 = _DDDpacemaker_local__Atrig2 || _DDDpacemaker_local__Atrig3;
    _g25 = _g24 && _cg24;
    _g35 = _pg27;
    _g29 = _pg20_e2;
    _g32_e2 = !(_g35 || _g29);
    sleepT = 1000.0;
    _g35 = _g29 || _g35;
    _cg30 = _DDDpacemaker_local_AVI_counter < 100.0;
    _g29 = _g35 && _cg30;
    if (_g29) {
      sleepT = (sleepT < (100.0 - _DDDpacemaker_local_AVI_counter)) ? sleepT : (100.0 - _DDDpacemaker_local_AVI_counter);
    }
    _cg31 = _DDDpacemaker_local__Atrig2 || _DDDpacemaker_local__Atrig3;
    _g30 = _g35 && !_cg30;
    _cg33 = _DDDpacemaker_local__Atrig2 || _DDDpacemaker_local__Atrig3;
    _g32 = _g29 && _cg31 || _g30 && _cg33;
    _g39 = !_g39;
    _g40 = _g40 || _g43;
    _g43 = (_g25_e1 || _g25) && (_g32_e2 || _g32) && (_g39 || _g40) && (_g25 || _g32 || _g40);
    _cg44 = _DDDpacemaker_local__Atrig2;
    _g41 = _g43 && _cg44;
    if (_g41) {
      _DDDpacemaker_local_AVI_state = false;
      VP = false;
      _taken_transitions[2] += 1;
    }
    _g32 = _pg32_e2;
    _g32_e2 = _GO || _g32;
    if (_g32_e2) {
      _DDDpacemaker_local_AP_out = false;
      _DDDpacemaker_local_VP_out = false;
    }
    _g25_e1 = _pg36;
    if (_g25_e1) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _g25 = !_g25_e1;
    _g41_e3 = _pg47;
    if (_g41_e3) {
      _DDDpacemaker_local_URI_counter += deltaT;
    }
    _g103 = !_g41_e3;
    _g96 = _pg99;
    _cg96 = _DDDpacemaker_local_URI_counter >= 200;
    _g97 = _g96 && _cg96;
    if (_g97) {
      _DDDpacemaker_local__Atrig7 = true;
    }
    _cg81 = _DDDpacemaker_local__Atrig7;
    _g82 = _g41_e3 && _cg81;
    _g92 = _pg64;
    _g86 = _pg67;
    _g89_e2 = !(_g92 || _g86);
    _g92 = _g86 || _g92;
    _cg87 = _DDDpacemaker_local_URI_counter < 200.0;
    _g86 = _g92 && _cg87;
    if (_g86) {
      sleepT = (sleepT < (200.0 - _DDDpacemaker_local_URI_counter)) ? sleepT : (200.0 - _DDDpacemaker_local_URI_counter);
    }
    _cg88 = _DDDpacemaker_local__Atrig7;
    _g87 = _g92 && !_cg87;
    _cg90 = _DDDpacemaker_local__Atrig7;
    _g89 = _g86 && _cg88 || _g87 && _cg90;
    _g97_e3 = !_g96;
    _g89_e2 = (_g103 || _g82) && (_g89_e2 || _g89) && (_g97_e3 || _g97) && (_g82 || _g89 || _g97);
    if (_g89_e2) {
      _DDDpacemaker_local_URI_state = false;
      _taken_transitions[9] += 1;
    }
    _g82_e1 = _pg52;
    if (_g82_e1) {
      _DDDpacemaker_local_URI_counter += deltaT;
    }
    _g97 = !_g82_e1;
    _g89 = _pg49;
    _g82 = _g89 && VS;
    if (_g82) {
      _DDDpacemaker_local__Atrig5 = true;
    }
    _g97_e3 = _pg107;
    _g107 = _GO || _g97_e3;
    if (_g107) {
      _DDDpacemaker_local__pre_VP_out = _DDDpacemaker_local__reg_VP_out;
    }
    _g74 = _g89 && !VS;
    _cg74 = _DDDpacemaker_local__pre_VP_out;
    _g75 = _g74 && _cg74;
    if (_g75) {
      _DDDpacemaker_local__Atrig6 = true;
    }
    _cg67 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g68 = _g82_e1 && _cg67;
    _g71 = !_g89;
    _g75 = _g82 || _g75;
    _g72 = (_g97 || _g68) && (_g71 || _g75) && (_g68 || _g75);
    _cg76 = _DDDpacemaker_local__Atrig5;
    _g73 = _g72 && _cg76;
    if (_g73) {
      _DDDpacemaker_local_URI_state = true;
      _DDDpacemaker_local_URI_counter = 0;
      _taken_transitions[7] += 1;
    }
    _g73_e2 = _g72 && !_cg76;
    if (_g73_e2) {
      _DDDpacemaker_local_URI_state = true;
      _DDDpacemaker_local_URI_counter = 0;
      _taken_transitions[8] += 1;
    }
    _g68_e1 = _pg42;
    _cg56 = _DDDpacemaker_local_URI_state == false;
    _g68 = _g68_e1 && _cg56;
    if (_g68) {
      _DDDpacemaker_local__Atrig4 = true;
    }
    _cg52 = _DDDpacemaker_local__Atrig4;
    _g76 = _g25_e1 && _cg52;
    _g57_e2 = !_g68_e1;
    _g57_e2 = (_g25 || _g76) && (_g57_e2 || _g68) && (_g76 || _g68);
    if (_g57_e2) {
      VP = true;
      _DDDpacemaker_local_VP_out |= true;
      _taken_transitions[6] += 1;
    }
    _g53 = _g43 && !_cg44;
    if (_g53) {
      _taken_transitions[3] += 1;
    }
    _g53_e1 = _pg21;
    if (_g53_e1) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _g57 = _g53 || _g53_e1;
    _cg47 = _DDDpacemaker_local_URI_state == false || VS;
    _g44 = _g57 && _cg47;
    _cg48 = _DDDpacemaker_local_URI_state == false;
    _g46 = _g44 && !_cg48;
    if (_g46) {
      _DDDpacemaker_local_AVI_state = false;
      VP = false;
      _taken_transitions[5] += 1;
    }
    _g61 = _GO || _g41 || _g57_e2 || _g46;
    if (_g61) {
      _DDDpacemaker_local__Atrig = false;
    }
    _cg4 = _DDDpacemaker_local__Atrig;
    _g59 = _pg3;
    _g45 = _g59 && AS;
    if (_g45) {
      _DDDpacemaker_local__Atrig = true;
    }
    _g58 = _pg5;
    if (_g58) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _cg6 = _DDDpacemaker_local__Atrig;
    _g5 = _g61 && !_cg4 || _g58 && !_cg6;
    _g7 = _g58 && _cg6;
    _g3 = _g61 || _g59 && !AS;
    _g6 = !_g58;
    _g10 = !_g59;
    _g11_e2 = (_g6 || _g7) && (_g10 || _g45) && (_g7 || _g45);
    if (_g11_e2) {
      _DDDpacemaker_local_AVI_state = true;
      _DDDpacemaker_local_AVI_counter = 0;
      _taken_transitions[0] += 1;
      _DDDpacemaker_local__Atrig1 = false;
    }
    _cg13 = _DDDpacemaker_local__Atrig1;
    _g11 = _pg12;
    _cg19 = _DDDpacemaker_local_URI_state == true;
    _g7 = _g11 && _cg19;
    if (_g7) {
      _DDDpacemaker_local__Atrig1 = true;
    }
    _g7_e1 = _pg14;
    if (_g7_e1) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _cg15 = _DDDpacemaker_local__Atrig1;
    _g14 = _g11_e2 && !_cg13 || _g7_e1 && !_cg15;
    _g16 = _g7_e1 && _cg15;
    _g12 = _g11_e2 || _g11 && !_cg19;
    _g15 = !_g7_e1;
    _g19 = !_g11;
    _g16 = (_g15 || _g16) && (_g19 || _g7) && (_g16 || _g7);
    if (_g16) {
      _taken_transitions[1] += 1;
      _DDDpacemaker_local__Atrig2 = false;
      _DDDpacemaker_local__Atrig3 = false;
    }
    _cg22 = _DDDpacemaker_local__Atrig2 || _DDDpacemaker_local__Atrig3;
    _g16_e1 = _g16 && !_cg22 || _g24 && !_cg24;
    _cg26 = _DDDpacemaker_local_AVI_counter < 100.0;
    _g20 = _g16 && _cg26;
    if (_g20) {
      sleepT = (sleepT < (100.0 - _DDDpacemaker_local_AVI_counter)) ? sleepT : (100.0 - _DDDpacemaker_local_AVI_counter);
    }
    _cg27 = _DDDpacemaker_local__Atrig2 || _DDDpacemaker_local__Atrig3;
    _g20_e2 = _g20 && !_cg27 || _g29 && !_cg31;
    _g24 = _g16 && !_cg26;
    _cg36 = _DDDpacemaker_local__Atrig2 || _DDDpacemaker_local__Atrig3;
    _g27 = _g30 && !_cg33 || _g24 && !_cg36;
    _g31 = _g16 || _g42 && !_cg42;
    _g33 = _g44 && _cg48;
    if (_g33) {
      _taken_transitions[4] += 1;
      _DDDpacemaker_local__Atrig4 = false;
    }
    _cg50 = _DDDpacemaker_local__Atrig4;
    _g36 = _g33 && !_cg50 || _g25_e1 && !_cg52;
    _g42 = _g33 || _g68_e1 && !_cg56;
    _g21 = _g57 && !_cg47;
    _g48 = _GO || _g89_e2;
    if (_g48) {
      _DDDpacemaker_local__Atrig5 = false;
      _DDDpacemaker_local__Atrig6 = false;
    }
    _cg65 = _DDDpacemaker_local__Atrig5 || _DDDpacemaker_local__Atrig6;
    _g52 = _g48 && !_cg65 || _g82_e1 && !_cg67;
    _g49 = _g48 || _g74 && !_cg74;
    _g56 = _g73 || _g73_e2;
    if (_g56) {
      _DDDpacemaker_local__Atrig7 = false;
    }
    _cg79 = _DDDpacemaker_local__Atrig7;
    _g47 = _g56 && !_cg79 || _g41_e3 && !_cg81;
    _cg83 = _DDDpacemaker_local_URI_counter < 200.0;
    _g98 = _g56 && _cg83;
    if (_g98) {
      sleepT = (sleepT < (200.0 - _DDDpacemaker_local_URI_counter)) ? sleepT : (200.0 - _DDDpacemaker_local_URI_counter);
    }
    _cg84 = _DDDpacemaker_local__Atrig7;
    _g67 = _g98 && !_cg84 || _g86 && !_cg88;
    _g74 = _g56 && !_cg83;
    _cg93 = _DDDpacemaker_local__Atrig7;
    _g64 = _g87 && !_cg90 || _g74 && !_cg93;
    _g99 = _g56 || _g96 && !_cg96;
    if (_g107) {
      _DDDpacemaker_local__reg_VP_out = _DDDpacemaker_local_VP_out;
    }
  }

  public void tick() {
    logic();

    _pg16_e1 = _g16_e1;
    _pg31 = _g31;
    _pg27 = _g27;
    _pg20_e2 = _g20_e2;
    _pg32_e2 = _g32_e2;
    _pg36 = _g36;
    _pg47 = _g47;
    _pg99 = _g99;
    _pg64 = _g64;
    _pg67 = _g67;
    _pg52 = _g52;
    _pg49 = _g49;
    _pg107 = _g107;
    _pg42 = _g42;
    _pg21 = _g21;
    _pg3 = _g3;
    _pg5 = _g5;
    _pg12 = _g12;
    _pg14 = _g14;
    _GO = false;
  }
}
