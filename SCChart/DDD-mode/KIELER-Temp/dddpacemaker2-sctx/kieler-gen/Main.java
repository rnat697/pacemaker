

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.*;

public class Main {

    public static DDDpacemaker model = new DDDpacemaker();
    
    private static long _tickstart;
private static long _ticktime;

    
    public static BufferedReader stdInReader = new BufferedReader(new InputStreamReader(System.in));
            
    private static void receiveVariables() {
        try {
            String line = stdInReader.readLine();
            JSONObject json = new JSONObject(line);
            
            // Receive AS
            if (json.has("AS")) {
                model.AS = json.getBoolean("AS");
            }
            // Receive AVI_counter
            if (json.has("AVI_counter")) {
                model.AVI_counter = json.getInt("AVI_counter");
            }
            // Receive VS
            if (json.has("VS")) {
                model.VS = json.getBoolean("VS");
            }
            // Receive deltaT
            if (json.has("deltaT")) {
                model.deltaT = json.getDouble("deltaT");
            }
            // Receive AP
            if (json.has("AP")) {
                model.AP = json.getBoolean("AP");
            }
            // Receive VP
            if (json.has("VP")) {
                model.VP = json.getBoolean("VP");
            }
            // Receive sleepT
            if (json.has("sleepT")) {
                model.sleepT = json.getDouble("sleepT");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive _DDDpacemaker_local_AP_out
            if (json.has("_DDDpacemaker_local_AP_out")) {
                model._DDDpacemaker_local_AP_out = json.getBoolean("_DDDpacemaker_local_AP_out");
            }
            // Receive _DDDpacemaker_local_AVI_counter
            if (json.has("_DDDpacemaker_local_AVI_counter")) {
                model._DDDpacemaker_local_AVI_counter = json.getDouble("_DDDpacemaker_local_AVI_counter");
            }
            // Receive _DDDpacemaker_local_AVI_start
            if (json.has("_DDDpacemaker_local_AVI_start")) {
                model._DDDpacemaker_local_AVI_start = json.getBoolean("_DDDpacemaker_local_AVI_start");
            }
            // Receive _DDDpacemaker_local_AVI_state
            if (json.has("_DDDpacemaker_local_AVI_state")) {
                model._DDDpacemaker_local_AVI_state = json.getBoolean("_DDDpacemaker_local_AVI_state");
            }
            // Receive _DDDpacemaker_local_AVI_stop
            if (json.has("_DDDpacemaker_local_AVI_stop")) {
                model._DDDpacemaker_local_AVI_stop = json.getBoolean("_DDDpacemaker_local_AVI_stop");
            }
            // Receive _DDDpacemaker_local_URI_counter
            if (json.has("_DDDpacemaker_local_URI_counter")) {
                model._DDDpacemaker_local_URI_counter = json.getDouble("_DDDpacemaker_local_URI_counter");
            }
            // Receive _DDDpacemaker_local_URI_state
            if (json.has("_DDDpacemaker_local_URI_state")) {
                model._DDDpacemaker_local_URI_state = json.getBoolean("_DDDpacemaker_local_URI_state");
            }
            // Receive _DDDpacemaker_local_VP_out
            if (json.has("_DDDpacemaker_local_VP_out")) {
                model._DDDpacemaker_local_VP_out = json.getBoolean("_DDDpacemaker_local_VP_out");
            }
            // Receive _DDDpacemaker_local__Atrig
            if (json.has("_DDDpacemaker_local__Atrig")) {
                model._DDDpacemaker_local__Atrig = json.getBoolean("_DDDpacemaker_local__Atrig");
            }
            // Receive _DDDpacemaker_local__Atrig1
            if (json.has("_DDDpacemaker_local__Atrig1")) {
                model._DDDpacemaker_local__Atrig1 = json.getBoolean("_DDDpacemaker_local__Atrig1");
            }
            // Receive _DDDpacemaker_local__Atrig2
            if (json.has("_DDDpacemaker_local__Atrig2")) {
                model._DDDpacemaker_local__Atrig2 = json.getBoolean("_DDDpacemaker_local__Atrig2");
            }
            // Receive _DDDpacemaker_local__Atrig3
            if (json.has("_DDDpacemaker_local__Atrig3")) {
                model._DDDpacemaker_local__Atrig3 = json.getBoolean("_DDDpacemaker_local__Atrig3");
            }
            // Receive _DDDpacemaker_local__Atrig4
            if (json.has("_DDDpacemaker_local__Atrig4")) {
                model._DDDpacemaker_local__Atrig4 = json.getBoolean("_DDDpacemaker_local__Atrig4");
            }
            // Receive _DDDpacemaker_local__Atrig5
            if (json.has("_DDDpacemaker_local__Atrig5")) {
                model._DDDpacemaker_local__Atrig5 = json.getBoolean("_DDDpacemaker_local__Atrig5");
            }
            // Receive _DDDpacemaker_local__Atrig6
            if (json.has("_DDDpacemaker_local__Atrig6")) {
                model._DDDpacemaker_local__Atrig6 = json.getBoolean("_DDDpacemaker_local__Atrig6");
            }
            // Receive _DDDpacemaker_local__Atrig7
            if (json.has("_DDDpacemaker_local__Atrig7")) {
                model._DDDpacemaker_local__Atrig7 = json.getBoolean("_DDDpacemaker_local__Atrig7");
            }
            // Receive _DDDpacemaker_local__Atrig8
            if (json.has("_DDDpacemaker_local__Atrig8")) {
                model._DDDpacemaker_local__Atrig8 = json.getBoolean("_DDDpacemaker_local__Atrig8");
            }
            // Receive _DDDpacemaker_local__pre_VP_out
            if (json.has("_DDDpacemaker_local__pre_VP_out")) {
                model._DDDpacemaker_local__pre_VP_out = json.getBoolean("_DDDpacemaker_local__pre_VP_out");
            }
            // Receive _DDDpacemaker_local__reg_VP_out
            if (json.has("_DDDpacemaker_local__reg_VP_out")) {
                model._DDDpacemaker_local__reg_VP_out = json.getBoolean("_DDDpacemaker_local__reg_VP_out");
            }
            // Receive _DDDpacemaker_local_real_AS
            if (json.has("_DDDpacemaker_local_real_AS")) {
                model._DDDpacemaker_local_real_AS = json.getBoolean("_DDDpacemaker_local_real_AS");
            }
            // Receive _DDDpacemaker_local_real_VS
            if (json.has("_DDDpacemaker_local_real_VS")) {
                model._DDDpacemaker_local_real_VS = json.getBoolean("_DDDpacemaker_local_real_VS");
            }
            // Receive _GO
            if (json.has("_GO")) {
                model._GO = json.getBoolean("_GO");
            }
            // Receive _TERM
            if (json.has("_TERM")) {
                model._TERM = json.getBoolean("_TERM");
            }
            // Receive _cg10
            if (json.has("_cg10")) {
                model._cg10 = json.getBoolean("_cg10");
            }
            // Receive _cg13
            if (json.has("_cg13")) {
                model._cg13 = json.getBoolean("_cg13");
            }
            // Receive _cg15
            if (json.has("_cg15")) {
                model._cg15 = json.getBoolean("_cg15");
            }
            // Receive _cg19
            if (json.has("_cg19")) {
                model._cg19 = json.getBoolean("_cg19");
            }
            // Receive _cg25
            if (json.has("_cg25")) {
                model._cg25 = json.getBoolean("_cg25");
            }
            // Receive _cg27
            if (json.has("_cg27")) {
                model._cg27 = json.getBoolean("_cg27");
            }
            // Receive _cg31
            if (json.has("_cg31")) {
                model._cg31 = json.getBoolean("_cg31");
            }
            // Receive _cg34
            if (json.has("_cg34")) {
                model._cg34 = json.getBoolean("_cg34");
            }
            // Receive _cg36
            if (json.has("_cg36")) {
                model._cg36 = json.getBoolean("_cg36");
            }
            // Receive _cg39
            if (json.has("_cg39")) {
                model._cg39 = json.getBoolean("_cg39");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                model._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg41
            if (json.has("_cg41")) {
                model._cg41 = json.getBoolean("_cg41");
            }
            // Receive _cg43
            if (json.has("_cg43")) {
                model._cg43 = json.getBoolean("_cg43");
            }
            // Receive _cg44
            if (json.has("_cg44")) {
                model._cg44 = json.getBoolean("_cg44");
            }
            // Receive _cg47
            if (json.has("_cg47")) {
                model._cg47 = json.getBoolean("_cg47");
            }
            // Receive _cg48
            if (json.has("_cg48")) {
                model._cg48 = json.getBoolean("_cg48");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                model._cg50 = json.getBoolean("_cg50");
            }
            // Receive _cg53
            if (json.has("_cg53")) {
                model._cg53 = json.getBoolean("_cg53");
            }
            // Receive _cg56
            if (json.has("_cg56")) {
                model._cg56 = json.getBoolean("_cg56");
            }
            // Receive _cg6
            if (json.has("_cg6")) {
                model._cg6 = json.getBoolean("_cg6");
            }
            // Receive _g10
            if (json.has("_g10")) {
                model._g10 = json.getBoolean("_g10");
            }
            // Receive _g11
            if (json.has("_g11")) {
                model._g11 = json.getBoolean("_g11");
            }
            // Receive _g11_e2
            if (json.has("_g11_e2")) {
                model._g11_e2 = json.getBoolean("_g11_e2");
            }
            // Receive _g12
            if (json.has("_g12")) {
                model._g12 = json.getBoolean("_g12");
            }
            // Receive _g15
            if (json.has("_g15")) {
                model._g15 = json.getBoolean("_g15");
            }
            // Receive _g16
            if (json.has("_g16")) {
                model._g16 = json.getBoolean("_g16");
            }
            // Receive _g16_e1
            if (json.has("_g16_e1")) {
                model._g16_e1 = json.getBoolean("_g16_e1");
            }
            // Receive _g19
            if (json.has("_g19")) {
                model._g19 = json.getBoolean("_g19");
            }
            // Receive _g20
            if (json.has("_g20")) {
                model._g20 = json.getBoolean("_g20");
            }
            // Receive _g20_e2
            if (json.has("_g20_e2")) {
                model._g20_e2 = json.getBoolean("_g20_e2");
            }
            // Receive _g21
            if (json.has("_g21")) {
                model._g21 = json.getBoolean("_g21");
            }
            // Receive _g24
            if (json.has("_g24")) {
                model._g24 = json.getBoolean("_g24");
            }
            // Receive _g26
            if (json.has("_g26")) {
                model._g26 = json.getBoolean("_g26");
            }
            // Receive _g27
            if (json.has("_g27")) {
                model._g27 = json.getBoolean("_g27");
            }
            // Receive _g28
            if (json.has("_g28")) {
                model._g28 = json.getBoolean("_g28");
            }
            // Receive _g28_e1
            if (json.has("_g28_e1")) {
                model._g28_e1 = json.getBoolean("_g28_e1");
            }
            // Receive _g3
            if (json.has("_g3")) {
                model._g3 = json.getBoolean("_g3");
            }
            // Receive _g31
            if (json.has("_g31")) {
                model._g31 = json.getBoolean("_g31");
            }
            // Receive _g32
            if (json.has("_g32")) {
                model._g32 = json.getBoolean("_g32");
            }
            // Receive _g33
            if (json.has("_g33")) {
                model._g33 = json.getBoolean("_g33");
            }
            // Receive _g33_e2
            if (json.has("_g33_e2")) {
                model._g33_e2 = json.getBoolean("_g33_e2");
            }
            // Receive _g34
            if (json.has("_g34")) {
                model._g34 = json.getBoolean("_g34");
            }
            // Receive _g35
            if (json.has("_g35")) {
                model._g35 = json.getBoolean("_g35");
            }
            // Receive _g36
            if (json.has("_g36")) {
                model._g36 = json.getBoolean("_g36");
            }
            // Receive _g37
            if (json.has("_g37")) {
                model._g37 = json.getBoolean("_g37");
            }
            // Receive _g41
            if (json.has("_g41")) {
                model._g41 = json.getBoolean("_g41");
            }
            // Receive _g42
            if (json.has("_g42")) {
                model._g42 = json.getBoolean("_g42");
            }
            // Receive _g42_e1
            if (json.has("_g42_e1")) {
                model._g42_e1 = json.getBoolean("_g42_e1");
            }
            // Receive _g44
            if (json.has("_g44")) {
                model._g44 = json.getBoolean("_g44");
            }
            // Receive _g46
            if (json.has("_g46")) {
                model._g46 = json.getBoolean("_g46");
            }
            // Receive _g47
            if (json.has("_g47")) {
                model._g47 = json.getBoolean("_g47");
            }
            // Receive _g48
            if (json.has("_g48")) {
                model._g48 = json.getBoolean("_g48");
            }
            // Receive _g49
            if (json.has("_g49")) {
                model._g49 = json.getBoolean("_g49");
            }
            // Receive _g49_e2
            if (json.has("_g49_e2")) {
                model._g49_e2 = json.getBoolean("_g49_e2");
            }
            // Receive _g5
            if (json.has("_g5")) {
                model._g5 = json.getBoolean("_g5");
            }
            // Receive _g52
            if (json.has("_g52")) {
                model._g52 = json.getBoolean("_g52");
            }
            // Receive _g57
            if (json.has("_g57")) {
                model._g57 = json.getBoolean("_g57");
            }
            // Receive _g57_e3
            if (json.has("_g57_e3")) {
                model._g57_e3 = json.getBoolean("_g57_e3");
            }
            // Receive _g58
            if (json.has("_g58")) {
                model._g58 = json.getBoolean("_g58");
            }
            // Receive _g59
            if (json.has("_g59")) {
                model._g59 = json.getBoolean("_g59");
            }
            // Receive _g6
            if (json.has("_g6")) {
                model._g6 = json.getBoolean("_g6");
            }
            // Receive _g67
            if (json.has("_g67")) {
                model._g67 = json.getBoolean("_g67");
            }
            // Receive _g7
            if (json.has("_g7")) {
                model._g7 = json.getBoolean("_g7");
            }
            // Receive _g7_e1
            if (json.has("_g7_e1")) {
                model._g7_e1 = json.getBoolean("_g7_e1");
            }
            // Receive _pg11
            if (json.has("_pg11")) {
                model._pg11 = json.getBoolean("_pg11");
            }
            // Receive _pg26
            if (json.has("_pg26")) {
                model._pg26 = json.getBoolean("_pg26");
            }
            // Receive _pg3
            if (json.has("_pg3")) {
                model._pg3 = json.getBoolean("_pg3");
            }
            // Receive _pg33
            if (json.has("_pg33")) {
                model._pg33 = json.getBoolean("_pg33");
            }
            // Receive _pg34
            if (json.has("_pg34")) {
                model._pg34 = json.getBoolean("_pg34");
            }
            // Receive _pg36
            if (json.has("_pg36")) {
                model._pg36 = json.getBoolean("_pg36");
            }
            // Receive _pg37
            if (json.has("_pg37")) {
                model._pg37 = json.getBoolean("_pg37");
            }
            // Receive _pg41
            if (json.has("_pg41")) {
                model._pg41 = json.getBoolean("_pg41");
            }
            // Receive _pg44
            if (json.has("_pg44")) {
                model._pg44 = json.getBoolean("_pg44");
            }
            // Receive _pg5
            if (json.has("_pg5")) {
                model._pg5 = json.getBoolean("_pg5");
            }
            // Receive _pg57
            if (json.has("_pg57")) {
                model._pg57 = json.getBoolean("_pg57");
            }
            // Receive _pg7_e1
            if (json.has("_pg7_e1")) {
                model._pg7_e1 = json.getBoolean("_pg7_e1");
            }
            // Receive _taken_transitions
            if (json.has("_taken_transitions")) {
                JSONArray _array = json.getJSONArray("_taken_transitions");
                for (int i = 0; i < _array.length(); i++) {
                    model._taken_transitions[i] = _array.getInt(i);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e) {
           // Ignore other input
        }
    }
    
    private static void sendVariables() {
        JSONObject json = new JSONObject();
        
        // Send AS
        json.put("AS", JSONObject.wrap(model.AS));
        // Send AVI_counter
        json.put("AVI_counter", JSONObject.wrap(model.AVI_counter));
        // Send VS
        json.put("VS", JSONObject.wrap(model.VS));
        // Send deltaT
        json.put("deltaT", JSONObject.wrap(model.deltaT));
        // Send AP
        json.put("AP", JSONObject.wrap(model.AP));
        // Send VP
        json.put("VP", JSONObject.wrap(model.VP));
        // Send sleepT
        json.put("sleepT", JSONObject.wrap(model.sleepT));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send _DDDpacemaker_local_AP_out
        json.put("_DDDpacemaker_local_AP_out", JSONObject.wrap(model._DDDpacemaker_local_AP_out));
        // Send _DDDpacemaker_local_AVI_counter
        json.put("_DDDpacemaker_local_AVI_counter", JSONObject.wrap(model._DDDpacemaker_local_AVI_counter));
        // Send _DDDpacemaker_local_AVI_start
        json.put("_DDDpacemaker_local_AVI_start", JSONObject.wrap(model._DDDpacemaker_local_AVI_start));
        // Send _DDDpacemaker_local_AVI_state
        json.put("_DDDpacemaker_local_AVI_state", JSONObject.wrap(model._DDDpacemaker_local_AVI_state));
        // Send _DDDpacemaker_local_AVI_stop
        json.put("_DDDpacemaker_local_AVI_stop", JSONObject.wrap(model._DDDpacemaker_local_AVI_stop));
        // Send _DDDpacemaker_local_URI_counter
        json.put("_DDDpacemaker_local_URI_counter", JSONObject.wrap(model._DDDpacemaker_local_URI_counter));
        // Send _DDDpacemaker_local_URI_state
        json.put("_DDDpacemaker_local_URI_state", JSONObject.wrap(model._DDDpacemaker_local_URI_state));
        // Send _DDDpacemaker_local_VP_out
        json.put("_DDDpacemaker_local_VP_out", JSONObject.wrap(model._DDDpacemaker_local_VP_out));
        // Send _DDDpacemaker_local__Atrig
        json.put("_DDDpacemaker_local__Atrig", JSONObject.wrap(model._DDDpacemaker_local__Atrig));
        // Send _DDDpacemaker_local__Atrig1
        json.put("_DDDpacemaker_local__Atrig1", JSONObject.wrap(model._DDDpacemaker_local__Atrig1));
        // Send _DDDpacemaker_local__Atrig2
        json.put("_DDDpacemaker_local__Atrig2", JSONObject.wrap(model._DDDpacemaker_local__Atrig2));
        // Send _DDDpacemaker_local__Atrig3
        json.put("_DDDpacemaker_local__Atrig3", JSONObject.wrap(model._DDDpacemaker_local__Atrig3));
        // Send _DDDpacemaker_local__Atrig4
        json.put("_DDDpacemaker_local__Atrig4", JSONObject.wrap(model._DDDpacemaker_local__Atrig4));
        // Send _DDDpacemaker_local__Atrig5
        json.put("_DDDpacemaker_local__Atrig5", JSONObject.wrap(model._DDDpacemaker_local__Atrig5));
        // Send _DDDpacemaker_local__Atrig6
        json.put("_DDDpacemaker_local__Atrig6", JSONObject.wrap(model._DDDpacemaker_local__Atrig6));
        // Send _DDDpacemaker_local__Atrig7
        json.put("_DDDpacemaker_local__Atrig7", JSONObject.wrap(model._DDDpacemaker_local__Atrig7));
        // Send _DDDpacemaker_local__Atrig8
        json.put("_DDDpacemaker_local__Atrig8", JSONObject.wrap(model._DDDpacemaker_local__Atrig8));
        // Send _DDDpacemaker_local__pre_VP_out
        json.put("_DDDpacemaker_local__pre_VP_out", JSONObject.wrap(model._DDDpacemaker_local__pre_VP_out));
        // Send _DDDpacemaker_local__reg_VP_out
        json.put("_DDDpacemaker_local__reg_VP_out", JSONObject.wrap(model._DDDpacemaker_local__reg_VP_out));
        // Send _DDDpacemaker_local_real_AS
        json.put("_DDDpacemaker_local_real_AS", JSONObject.wrap(model._DDDpacemaker_local_real_AS));
        // Send _DDDpacemaker_local_real_VS
        json.put("_DDDpacemaker_local_real_VS", JSONObject.wrap(model._DDDpacemaker_local_real_VS));
        // Send _GO
        json.put("_GO", JSONObject.wrap(model._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(model._TERM));
        // Send _cg10
        json.put("_cg10", JSONObject.wrap(model._cg10));
        // Send _cg13
        json.put("_cg13", JSONObject.wrap(model._cg13));
        // Send _cg15
        json.put("_cg15", JSONObject.wrap(model._cg15));
        // Send _cg19
        json.put("_cg19", JSONObject.wrap(model._cg19));
        // Send _cg25
        json.put("_cg25", JSONObject.wrap(model._cg25));
        // Send _cg27
        json.put("_cg27", JSONObject.wrap(model._cg27));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(model._cg31));
        // Send _cg34
        json.put("_cg34", JSONObject.wrap(model._cg34));
        // Send _cg36
        json.put("_cg36", JSONObject.wrap(model._cg36));
        // Send _cg39
        json.put("_cg39", JSONObject.wrap(model._cg39));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(model._cg4));
        // Send _cg41
        json.put("_cg41", JSONObject.wrap(model._cg41));
        // Send _cg43
        json.put("_cg43", JSONObject.wrap(model._cg43));
        // Send _cg44
        json.put("_cg44", JSONObject.wrap(model._cg44));
        // Send _cg47
        json.put("_cg47", JSONObject.wrap(model._cg47));
        // Send _cg48
        json.put("_cg48", JSONObject.wrap(model._cg48));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(model._cg50));
        // Send _cg53
        json.put("_cg53", JSONObject.wrap(model._cg53));
        // Send _cg56
        json.put("_cg56", JSONObject.wrap(model._cg56));
        // Send _cg6
        json.put("_cg6", JSONObject.wrap(model._cg6));
        // Send _g10
        json.put("_g10", JSONObject.wrap(model._g10));
        // Send _g11
        json.put("_g11", JSONObject.wrap(model._g11));
        // Send _g11_e2
        json.put("_g11_e2", JSONObject.wrap(model._g11_e2));
        // Send _g12
        json.put("_g12", JSONObject.wrap(model._g12));
        // Send _g15
        json.put("_g15", JSONObject.wrap(model._g15));
        // Send _g16
        json.put("_g16", JSONObject.wrap(model._g16));
        // Send _g16_e1
        json.put("_g16_e1", JSONObject.wrap(model._g16_e1));
        // Send _g19
        json.put("_g19", JSONObject.wrap(model._g19));
        // Send _g20
        json.put("_g20", JSONObject.wrap(model._g20));
        // Send _g20_e2
        json.put("_g20_e2", JSONObject.wrap(model._g20_e2));
        // Send _g21
        json.put("_g21", JSONObject.wrap(model._g21));
        // Send _g24
        json.put("_g24", JSONObject.wrap(model._g24));
        // Send _g26
        json.put("_g26", JSONObject.wrap(model._g26));
        // Send _g27
        json.put("_g27", JSONObject.wrap(model._g27));
        // Send _g28
        json.put("_g28", JSONObject.wrap(model._g28));
        // Send _g28_e1
        json.put("_g28_e1", JSONObject.wrap(model._g28_e1));
        // Send _g3
        json.put("_g3", JSONObject.wrap(model._g3));
        // Send _g31
        json.put("_g31", JSONObject.wrap(model._g31));
        // Send _g32
        json.put("_g32", JSONObject.wrap(model._g32));
        // Send _g33
        json.put("_g33", JSONObject.wrap(model._g33));
        // Send _g33_e2
        json.put("_g33_e2", JSONObject.wrap(model._g33_e2));
        // Send _g34
        json.put("_g34", JSONObject.wrap(model._g34));
        // Send _g35
        json.put("_g35", JSONObject.wrap(model._g35));
        // Send _g36
        json.put("_g36", JSONObject.wrap(model._g36));
        // Send _g37
        json.put("_g37", JSONObject.wrap(model._g37));
        // Send _g41
        json.put("_g41", JSONObject.wrap(model._g41));
        // Send _g42
        json.put("_g42", JSONObject.wrap(model._g42));
        // Send _g42_e1
        json.put("_g42_e1", JSONObject.wrap(model._g42_e1));
        // Send _g44
        json.put("_g44", JSONObject.wrap(model._g44));
        // Send _g46
        json.put("_g46", JSONObject.wrap(model._g46));
        // Send _g47
        json.put("_g47", JSONObject.wrap(model._g47));
        // Send _g48
        json.put("_g48", JSONObject.wrap(model._g48));
        // Send _g49
        json.put("_g49", JSONObject.wrap(model._g49));
        // Send _g49_e2
        json.put("_g49_e2", JSONObject.wrap(model._g49_e2));
        // Send _g5
        json.put("_g5", JSONObject.wrap(model._g5));
        // Send _g52
        json.put("_g52", JSONObject.wrap(model._g52));
        // Send _g57
        json.put("_g57", JSONObject.wrap(model._g57));
        // Send _g57_e3
        json.put("_g57_e3", JSONObject.wrap(model._g57_e3));
        // Send _g58
        json.put("_g58", JSONObject.wrap(model._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(model._g59));
        // Send _g6
        json.put("_g6", JSONObject.wrap(model._g6));
        // Send _g67
        json.put("_g67", JSONObject.wrap(model._g67));
        // Send _g7
        json.put("_g7", JSONObject.wrap(model._g7));
        // Send _g7_e1
        json.put("_g7_e1", JSONObject.wrap(model._g7_e1));
        // Send _pg11
        json.put("_pg11", JSONObject.wrap(model._pg11));
        // Send _pg26
        json.put("_pg26", JSONObject.wrap(model._pg26));
        // Send _pg3
        json.put("_pg3", JSONObject.wrap(model._pg3));
        // Send _pg33
        json.put("_pg33", JSONObject.wrap(model._pg33));
        // Send _pg34
        json.put("_pg34", JSONObject.wrap(model._pg34));
        // Send _pg36
        json.put("_pg36", JSONObject.wrap(model._pg36));
        // Send _pg37
        json.put("_pg37", JSONObject.wrap(model._pg37));
        // Send _pg41
        json.put("_pg41", JSONObject.wrap(model._pg41));
        // Send _pg44
        json.put("_pg44", JSONObject.wrap(model._pg44));
        // Send _pg5
        json.put("_pg5", JSONObject.wrap(model._pg5));
        // Send _pg57
        json.put("_pg57", JSONObject.wrap(model._pg57));
        // Send _pg7_e1
        json.put("_pg7_e1", JSONObject.wrap(model._pg7_e1));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(model._taken_transitions));
        
        System.out.println(json.toString());
    }
    
    public static void main(String[] args) {
        
        
        // Initialize 
        model.reset();
        
        sendVariables();

        
        while (true) {
            
        
           // Read inputs
           receiveVariables();

           
           _tickstart = System.nanoTime();

        
           // Reaction of model
           model.tick();
           
           _ticktime = System.nanoTime() - _tickstart;

           
           // Send outputs
           sendVariables();

           
           
        }
    }
    
}