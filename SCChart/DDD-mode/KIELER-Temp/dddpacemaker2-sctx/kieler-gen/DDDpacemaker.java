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
  public boolean AP;
  public boolean VP;
  public int[] _taken_transitions;
  public double deltaT;
  public double sleepT;
  public boolean _DDDpacemaker_local_AVI_start;
  public boolean _DDDpacemaker_local_AVI_stop;
  public boolean _DDDpacemaker_local_AVI_state;
  public boolean _DDDpacemaker_local_URI_state;
  public double _DDDpacemaker_local_AVI_counter;
  public double _DDDpacemaker_local_URI_counter;
  public boolean _DDDpacemaker_local_real_AS;
  public boolean _DDDpacemaker_local_real_VS;
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
  public boolean _DDDpacemaker_local__Atrig8;
  public boolean _g3;
  public boolean _g5;
  public boolean _g6;
  public boolean _g7;
  public boolean _g10;
  public boolean _g11;
  public boolean _g12;
  public boolean _g15;
  public boolean _g16;
  public boolean _g19;
  public boolean _g20;
  public boolean _g21;
  public boolean _g24;
  public boolean _g26;
  public boolean _g27;
  public boolean _g28;
  public boolean _g31;
  public boolean _g32;
  public boolean _g33;
  public boolean _g34;
  public boolean _g35;
  public boolean _g36;
  public boolean _g37;
  public boolean _g41;
  public boolean _g42;
  public boolean _g44;
  public boolean _g46;
  public boolean _g47;
  public boolean _g48;
  public boolean _g49;
  public boolean _g52;
  public boolean _g57;
  public boolean _g58;
  public boolean _g59;
  public boolean _g67;
  public boolean _GO;
  public boolean _cg4;
  public boolean _cg6;
  public boolean _cg10;
  public boolean _cg13;
  public boolean _cg15;
  public boolean _cg19;
  public boolean _cg25;
  public boolean _cg27;
  public boolean _cg34;
  public boolean _cg31;
  public boolean _cg36;
  public boolean _cg39;
  public boolean _cg41;
  public boolean _cg43;
  public boolean _cg44;
  public boolean _cg48;
  public boolean _cg47;
  public boolean _cg50;
  public boolean _cg53;
  public boolean _cg56;
  public boolean _g7_e1;
  public boolean _g11_e2;
  public boolean _g16_e1;
  public boolean _g20_e2;
  public boolean _g28_e1;
  public boolean _g33_e2;
  public boolean _g42_e1;
  public boolean _g49_e2;
  public boolean _g57_e3;
  public boolean _TERM;

  public DDDpacemaker() {
    _taken_transitions = new int[9];
  }
  public boolean _pg11;
  public boolean _pg7_e1;
  public boolean _pg3;
  public boolean _pg5;
  public boolean _pg33;
  public boolean _pg41;
  public boolean _pg37;
  public boolean _pg36;
  public boolean _pg34;
  public boolean _pg57;
  public boolean _pg26;
  public boolean _pg44;

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
    _DDDpacemaker_local_AVI_state = 0;
    _DDDpacemaker_local_URI_state = false;
    _DDDpacemaker_local_AVI_counter = 0;
    _DDDpacemaker_local_URI_counter = 0;
    _DDDpacemaker_local__reg_VP_out = false;
    _pg11 = false;
    _pg7_e1 = false;
    _pg3 = false;
    _pg5 = false;
    _pg33 = false;
    _pg41 = false;
    _pg37 = false;
    _pg36 = false;
    _pg34 = false;
    _pg57 = false;
    _pg26 = false;
    _pg44 = false;
  }

  public void logic() {
    _g15 = _pg11;
    if (_g15) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _g16_e1 = !_g15;
    _g19 = _pg7_e1;
    _g20 = _g19 && VS;
    if (_g20) {
      _DDDpacemaker_local__Atrig1 = true;
    }
    _cg15 = _DDDpacemaker_local__Atrig1;
    _g16 = _g15 && _cg15;
    _g20_e2 = !_g19;
    _g16_e1 = (_g16_e1 || _g16) && (_g20_e2 || _g20) && (_g16 || _g20);
    if (_g16_e1) {
      VP = 0;
      _DDDpacemaker_local_VP_out = false;
      _taken_transitions[1] += 1;
    }
    _g16 = _GO || _g16_e1;
    if (_g16) {
      _DDDpacemaker_local__Atrig = false;
    }
    _cg4 = _DDDpacemaker_local__Atrig;
    _g20 = _pg3;
    _g20_e2 = _g20 && AS;
    if (_g20_e2) {
      _DDDpacemaker_local__Atrig = true;
    }
    _g21 = _pg5;
    if (_g21) {
      _DDDpacemaker_local_AVI_counter += deltaT;
    }
    _cg6 = _DDDpacemaker_local__Atrig;
    _g5 = _g16 && !_cg4 || _g21 && !_cg6;
    _g7 = _g21 && _cg6;
    _g3 = _g16 || _g20 && !AS;
    _g6 = !_g21;
    _g10 = !_g20;
    _g11_e2 = (_g6 || _g7) && (_g10 || _g20_e2) && (_g7 || _g20_e2);
    if (_g11_e2) {
      _DDDpacemaker_local_AVI_state = 1;
      _DDDpacemaker_local_AVI_counter = 0;
      _taken_transitions[0] += 1;
      _DDDpacemaker_local__Atrig1 = false;
    }
    _cg13 = _DDDpacemaker_local__Atrig1;
    _g11 = _g11_e2 && !_cg13 || _g15 && !_cg15;
    _g7_e1 = _g11_e2 || _g19 && !VS;
    _g7 = _pg33;
    if (_g7) {
      _DDDpacemaker_local_URI_counter += deltaT;
    }
    _g15 = !_g7;
    _g19 = _pg41;
    _cg56 = _DDDpacemaker_local_URI_counter >= URI_VALUE;
    _g12 = _g19 && _cg56;
    if (_g12) {
      _DDDpacemaker_local__Atrig8 = true;
    }
    _cg41 = _DDDpacemaker_local__Atrig8;
    _g42 = _g7 && _cg41;
    _g52 = _pg37;
    _g46 = _pg36;
    _g49_e2 = !(_g52 || _g46);
    sleepT = 1000.0;
    _g52 = _g46 || _g52;
    _cg47 = _DDDpacemaker_local_URI_counter < URI_VALUE;
    _g46 = _g52 && _cg47;
    if (_g46) {
      sleepT = (sleepT < (URI_VALUE - _DDDpacemaker_local_URI_counter)) ? sleepT : (URI_VALUE - _DDDpacemaker_local_URI_counter);
    }
    _cg48 = _DDDpacemaker_local__Atrig8;
    _g47 = _g52 && !_cg47;
    _cg50 = _DDDpacemaker_local__Atrig8;
    _g49 = _g46 && _cg48 || _g47 && _cg50;
    _g57_e3 = !_g19;
    _g49 = (_g15 || _g42) && (_g49_e2 || _g49) && (_g57_e3 || _g12) && (_g42 || _g49 || _g12);
    if (_g49) {
      _DDDpacemaker_local_URI_state = false;
      _taken_transitions[8] += 1;
    }
    _g42 = _GO || _g49;
    if (_g42) {
      _DDDpacemaker_local__Atrig6 = false;
      _DDDpacemaker_local__Atrig7 = false;
    }
    _cg25 = _DDDpacemaker_local__Atrig6 || _DDDpacemaker_local__Atrig7;
    _g57_e3 = _pg34;
    _g49_e2 = _g57_e3 && VS;
    if (_g49_e2) {
      _DDDpacemaker_local__Atrig6 = true;
    }
    _g42_e1 = _pg57;
    _g57 = _GO || _g42_e1;
    if (_g57) {
      _DDDpacemaker_local__pre_VP_out = _DDDpacemaker_local__reg_VP_out;
    }
    _g58 = _g57_e3 && !VS;
    _cg34 = _DDDpacemaker_local__pre_VP_out;
    _g67 = _g58 && _cg34;
    if (_g67) {
      _DDDpacemaker_local__Atrig7 = true;
    }
    _g27 = _pg26;
    if (_g27) {
      _DDDpacemaker_local_URI_counter += deltaT;
    }
    _cg27 = _DDDpacemaker_local__Atrig6 || _DDDpacemaker_local__Atrig7;
    _g26 = _g42 && !_cg25 || _g27 && !_cg27;
    _g28 = _g27 && _cg27;
    _g34 = _g42 || _g58 && !_cg34;
    _g24 = _g49_e2 || _g67;
    _g35 = !_g27;
    _g32 = !_g57_e3;
    _g27 = (_g35 || _g28) && (_g32 || _g24) && (_g28 || _g24);
    _cg36 = _DDDpacemaker_local__Atrig6;
    _g31 = _g27 && _cg36;
    if (_g31) {
      _DDDpacemaker_local_URI_state = true;
      _DDDpacemaker_local_URI_counter = 0;
      _taken_transitions[6] += 1;
    }
    _g28 = _g27 && !_cg36;
    if (_g28) {
      _DDDpacemaker_local_URI_state = true;
      _DDDpacemaker_local_URI_counter = 0;
      _taken_transitions[7] += 1;
    }
    _g28_e1 = _g31 || _g28;
    if (_g28_e1) {
      _DDDpacemaker_local__Atrig8 = false;
    }
    _cg39 = _DDDpacemaker_local__Atrig8;
    _g33 = _g28_e1 && !_cg39 || _g7 && !_cg41;
    _cg43 = _DDDpacemaker_local_URI_counter < URI_VALUE;
    _g33_e2 = _g28_e1 && _cg43;
    if (_g33_e2) {
      sleepT = (sleepT < (URI_VALUE - _DDDpacemaker_local_URI_counter)) ? sleepT : (URI_VALUE - _DDDpacemaker_local_URI_counter);
    }
    _cg44 = _DDDpacemaker_local__Atrig8;
    _g36 = _g33_e2 && !_cg44 || _g46 && !_cg48;
    _g59 = _g28_e1 && !_cg43;
    _cg53 = _DDDpacemaker_local__Atrig8;
    _g37 = _g47 && !_cg50 || _g59 && !_cg53;
    _g41 = _g28_e1 || _g19 && !_cg56;
    _g48 = _pg44;
    _g44 = _GO || _g48;
    if (_g44) {
      _DDDpacemaker_local_real_AS = false;
      _DDDpacemaker_local_real_VS = false;
      _DDDpacemaker_local_AP_out = false;
      _DDDpacemaker_local_VP_out = false;
    }
    if (_g57) {
      _DDDpacemaker_local__reg_VP_out = _DDDpacemaker_local_VP_out;
    }
  }

  public void tick() {
    logic();

    _pg11 = _g11;
    _pg7_e1 = _g7_e1;
    _pg3 = _g3;
    _pg5 = _g5;
    _pg33 = _g33;
    _pg41 = _g41;
    _pg37 = _g37;
    _pg36 = _g36;
    _pg34 = _g34;
    _pg57 = _g57;
    _pg26 = _g26;
    _pg44 = _g44;
    _GO = false;
  }
}
