/*
 * Automatically generated Java code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

public class VVIPacemaker_example {

  public boolean VSense;
  public boolean LRITO;
  public boolean VRPTO;
  public boolean VPace;
  public int[] _taken_transitions;
  public boolean _VVIPacemaker_example_local_LRI_start;
  public boolean _VVIPacemaker_example_local_LRI_ex;
  public boolean _VVIPacemaker_example_local_LRI_stop;
  public boolean _VVIPacemaker_example_local_VRP_start;
  public boolean _VVIPacemaker_example_local_VRP_stop;
  public boolean _VVIPacemaker_example_local_VRP_ex;
  public boolean _g2;
  public boolean _g3;
  public boolean _g4;
  public boolean _g5;
  public boolean _g7;
  public boolean _g8;
  public boolean _g10;
  public boolean _g11;
  public boolean _g12;
  public boolean _g13;
  public boolean _g17;
  public boolean _g18;
  public boolean _g20;
  public boolean _g21;
  public boolean _g22;
  public boolean _g23;
  public boolean _g27;
  public boolean _g28;
  public boolean _g29;
  public boolean _g31;
  public boolean _g32;
  public boolean _g33;
  public boolean _g34;
  public boolean _g35;
  public boolean _g36;
  public boolean _g40;
  public boolean _g44;
  public boolean _GO;
  public boolean _cg3;
  public boolean _cg7;
  public boolean _cg12;
  public boolean _cg10;
  public boolean _cg17;
  public boolean _cg22;
  public boolean _cg20;
  public boolean _cg35;
  public boolean _cg27;
  public boolean _cg33;
  public boolean _cg31;
  public boolean _cg40;
  public boolean _cg43;
  public boolean _TERM;

  public VVIPacemaker_example() {
    _taken_transitions = new int[18];
  }
  public boolean _pg2;
  public boolean _pg8;
  public boolean _pg17;
  public boolean _pg40;
  public boolean _pg5;
  public boolean _pg23;
  public boolean _pg33;
  public boolean _pg32;
  public boolean _pg29;

  public void reset() {
    _GO = true;
    _TERM = false;
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
    _pg2 = false;
    _pg8 = false;
    _pg17 = false;
    _pg40 = false;
    _pg5 = false;
    _pg23 = false;
    _pg33 = false;
    _pg32 = false;
    _pg29 = false;
  }

  public void logic() {
    _g3 = _pg2;
    _g2 = _GO || _g3 && !VSense;
    _g3 = _g3 && VSense;
    if (_g3) {
      _taken_transitions[0] += 1;
    }
    _g10 = _pg8;
    _g11 = _g10 && VSense;
    if (_g11) {
      _taken_transitions[3] += 1;
      _VVIPacemaker_example_local_LRI_stop = true;
      VPace = false;
      _taken_transitions[5] += 1;
    }
    _g20 = _pg17;
    _cg20 = _VVIPacemaker_example_local_LRI_stop;
    _g22 = _g20 && !_cg20;
    _g23 = _g22 && LRITO;
    if (_g23) {
      _VVIPacemaker_example_local_LRI_ex = true;
      _taken_transitions[9] += 1;
    }
    _g10 = _g10 && !VSense;
    _cg12 = _VVIPacemaker_example_local_LRI_ex;
    _g13 = _g10 && _cg12;
    if (_g13) {
      _taken_transitions[4] += 1;
      VPace = true;
      _taken_transitions[6] += 1;
    }
    _g11 = _g3 || _g11 || _g13;
    if (_g11) {
      _VVIPacemaker_example_local_LRI_start = true;
      _taken_transitions[1] += 1;
    }
    _g4 = _pg40;
    _g13 = _g4 && VRPTO;
    if (_g13) {
      _VVIPacemaker_example_local_VRP_ex = true;
      _taken_transitions[17] += 1;
    }
    _g7 = _pg5;
    _cg7 = _VVIPacemaker_example_local_VRP_ex;
    _g5 = _g11 || _g7 && !_cg7;
    _g7 = _g7 && _cg7;
    if (_g7) {
      _taken_transitions[2] += 1;
    }
    _g8 = _g7 || _g10 && !_cg12;
    _g12 = _g20 && _cg20;
    if (_g12) {
      _taken_transitions[8] += 1;
    }
    _g20 = _pg23;
    _cg17 = _VVIPacemaker_example_local_LRI_start;
    _g23 = _GO || _g12 || _g23 || _g20 && !_cg17;
    _g21 = _g20 && _cg17;
    if (_g21) {
      _taken_transitions[7] += 1;
    }
    _g17 = _g21 || _g22 && !LRITO;
    _g22 = _pg33;
    _cg31 = _VVIPacemaker_example_local_VRP_ex;
    _g18 = _g22 && _cg31;
    if (_g18) {
      _taken_transitions[13] += 1;
    }
    _g27 = _pg32;
    _g35 = _g27 && !VSense;
    _cg35 = VPace;
    _g32 = _GO || _g18 || _g35 && !_cg35;
    _g27 = _g27 && VSense;
    if (_g27) {
      _taken_transitions[10] += 1;
    }
    _g35 = _g35 && _cg35;
    if (_g35) {
      _taken_transitions[11] += 1;
    }
    _g28 = _g27 || _g35;
    if (_g28) {
      _VVIPacemaker_example_local_VRP_start = true;
      _taken_transitions[12] += 1;
    }
    _g36 = _g22 && !_cg31;
    _g31 = _g36 && VSense;
    if (_g31) {
      _taken_transitions[14] += 1;
      _taken_transitions[15] += 1;
    }
    _g33 = _g28 || _g31 || _g36 && !VSense;
    _g34 = _pg29;
    _cg40 = _VVIPacemaker_example_local_VRP_start;
    _g29 = _GO || _g13 || _g34 && !_cg40;
    _g44 = _g34 && _cg40;
    if (_g44) {
      _taken_transitions[16] += 1;
    }
    _g40 = _g44 || _g4 && !VRPTO;
  }

  public void tick() {
    logic();

    _pg2 = _g2;
    _pg8 = _g8;
    _pg17 = _g17;
    _pg40 = _g40;
    _pg5 = _g5;
    _pg23 = _g23;
    _pg33 = _g33;
    _pg32 = _g32;
    _pg29 = _g29;
    _GO = false;
  }
}
