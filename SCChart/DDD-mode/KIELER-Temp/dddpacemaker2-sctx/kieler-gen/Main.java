

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
            // Receive _DDDpacemaker_local_AVI_state
            if (json.has("_DDDpacemaker_local_AVI_state")) {
                model._DDDpacemaker_local_AVI_state = json.getBoolean("_DDDpacemaker_local_AVI_state");
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
            // Receive _DDDpacemaker_local__pre_VP_out
            if (json.has("_DDDpacemaker_local__pre_VP_out")) {
                model._DDDpacemaker_local__pre_VP_out = json.getBoolean("_DDDpacemaker_local__pre_VP_out");
            }
            // Receive _DDDpacemaker_local__reg_VP_out
            if (json.has("_DDDpacemaker_local__reg_VP_out")) {
                model._DDDpacemaker_local__reg_VP_out = json.getBoolean("_DDDpacemaker_local__reg_VP_out");
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
            // Receive _cg22
            if (json.has("_cg22")) {
                model._cg22 = json.getBoolean("_cg22");
            }
            // Receive _cg24
            if (json.has("_cg24")) {
                model._cg24 = json.getBoolean("_cg24");
            }
            // Receive _cg26
            if (json.has("_cg26")) {
                model._cg26 = json.getBoolean("_cg26");
            }
            // Receive _cg27
            if (json.has("_cg27")) {
                model._cg27 = json.getBoolean("_cg27");
            }
            // Receive _cg30
            if (json.has("_cg30")) {
                model._cg30 = json.getBoolean("_cg30");
            }
            // Receive _cg31
            if (json.has("_cg31")) {
                model._cg31 = json.getBoolean("_cg31");
            }
            // Receive _cg33
            if (json.has("_cg33")) {
                model._cg33 = json.getBoolean("_cg33");
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
            // Receive _cg42
            if (json.has("_cg42")) {
                model._cg42 = json.getBoolean("_cg42");
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
            // Receive _cg52
            if (json.has("_cg52")) {
                model._cg52 = json.getBoolean("_cg52");
            }
            // Receive _cg56
            if (json.has("_cg56")) {
                model._cg56 = json.getBoolean("_cg56");
            }
            // Receive _cg6
            if (json.has("_cg6")) {
                model._cg6 = json.getBoolean("_cg6");
            }
            // Receive _cg65
            if (json.has("_cg65")) {
                model._cg65 = json.getBoolean("_cg65");
            }
            // Receive _cg67
            if (json.has("_cg67")) {
                model._cg67 = json.getBoolean("_cg67");
            }
            // Receive _cg71
            if (json.has("_cg71")) {
                model._cg71 = json.getBoolean("_cg71");
            }
            // Receive _cg74
            if (json.has("_cg74")) {
                model._cg74 = json.getBoolean("_cg74");
            }
            // Receive _cg76
            if (json.has("_cg76")) {
                model._cg76 = json.getBoolean("_cg76");
            }
            // Receive _cg79
            if (json.has("_cg79")) {
                model._cg79 = json.getBoolean("_cg79");
            }
            // Receive _cg81
            if (json.has("_cg81")) {
                model._cg81 = json.getBoolean("_cg81");
            }
            // Receive _cg83
            if (json.has("_cg83")) {
                model._cg83 = json.getBoolean("_cg83");
            }
            // Receive _cg84
            if (json.has("_cg84")) {
                model._cg84 = json.getBoolean("_cg84");
            }
            // Receive _cg87
            if (json.has("_cg87")) {
                model._cg87 = json.getBoolean("_cg87");
            }
            // Receive _cg88
            if (json.has("_cg88")) {
                model._cg88 = json.getBoolean("_cg88");
            }
            // Receive _cg90
            if (json.has("_cg90")) {
                model._cg90 = json.getBoolean("_cg90");
            }
            // Receive _cg93
            if (json.has("_cg93")) {
                model._cg93 = json.getBoolean("_cg93");
            }
            // Receive _cg96
            if (json.has("_cg96")) {
                model._cg96 = json.getBoolean("_cg96");
            }
            // Receive _g10
            if (json.has("_g10")) {
                model._g10 = json.getBoolean("_g10");
            }
            // Receive _g103
            if (json.has("_g103")) {
                model._g103 = json.getBoolean("_g103");
            }
            // Receive _g107
            if (json.has("_g107")) {
                model._g107 = json.getBoolean("_g107");
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
            // Receive _g14
            if (json.has("_g14")) {
                model._g14 = json.getBoolean("_g14");
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
            // Receive _g25
            if (json.has("_g25")) {
                model._g25 = json.getBoolean("_g25");
            }
            // Receive _g25_e1
            if (json.has("_g25_e1")) {
                model._g25_e1 = json.getBoolean("_g25_e1");
            }
            // Receive _g27
            if (json.has("_g27")) {
                model._g27 = json.getBoolean("_g27");
            }
            // Receive _g29
            if (json.has("_g29")) {
                model._g29 = json.getBoolean("_g29");
            }
            // Receive _g3
            if (json.has("_g3")) {
                model._g3 = json.getBoolean("_g3");
            }
            // Receive _g30
            if (json.has("_g30")) {
                model._g30 = json.getBoolean("_g30");
            }
            // Receive _g31
            if (json.has("_g31")) {
                model._g31 = json.getBoolean("_g31");
            }
            // Receive _g32
            if (json.has("_g32")) {
                model._g32 = json.getBoolean("_g32");
            }
            // Receive _g32_e2
            if (json.has("_g32_e2")) {
                model._g32_e2 = json.getBoolean("_g32_e2");
            }
            // Receive _g33
            if (json.has("_g33")) {
                model._g33 = json.getBoolean("_g33");
            }
            // Receive _g35
            if (json.has("_g35")) {
                model._g35 = json.getBoolean("_g35");
            }
            // Receive _g36
            if (json.has("_g36")) {
                model._g36 = json.getBoolean("_g36");
            }
            // Receive _g39
            if (json.has("_g39")) {
                model._g39 = json.getBoolean("_g39");
            }
            // Receive _g40
            if (json.has("_g40")) {
                model._g40 = json.getBoolean("_g40");
            }
            // Receive _g41
            if (json.has("_g41")) {
                model._g41 = json.getBoolean("_g41");
            }
            // Receive _g41_e3
            if (json.has("_g41_e3")) {
                model._g41_e3 = json.getBoolean("_g41_e3");
            }
            // Receive _g42
            if (json.has("_g42")) {
                model._g42 = json.getBoolean("_g42");
            }
            // Receive _g43
            if (json.has("_g43")) {
                model._g43 = json.getBoolean("_g43");
            }
            // Receive _g44
            if (json.has("_g44")) {
                model._g44 = json.getBoolean("_g44");
            }
            // Receive _g45
            if (json.has("_g45")) {
                model._g45 = json.getBoolean("_g45");
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
            // Receive _g5
            if (json.has("_g5")) {
                model._g5 = json.getBoolean("_g5");
            }
            // Receive _g52
            if (json.has("_g52")) {
                model._g52 = json.getBoolean("_g52");
            }
            // Receive _g53
            if (json.has("_g53")) {
                model._g53 = json.getBoolean("_g53");
            }
            // Receive _g53_e1
            if (json.has("_g53_e1")) {
                model._g53_e1 = json.getBoolean("_g53_e1");
            }
            // Receive _g56
            if (json.has("_g56")) {
                model._g56 = json.getBoolean("_g56");
            }
            // Receive _g57
            if (json.has("_g57")) {
                model._g57 = json.getBoolean("_g57");
            }
            // Receive _g57_e2
            if (json.has("_g57_e2")) {
                model._g57_e2 = json.getBoolean("_g57_e2");
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
            // Receive _g61
            if (json.has("_g61")) {
                model._g61 = json.getBoolean("_g61");
            }
            // Receive _g64
            if (json.has("_g64")) {
                model._g64 = json.getBoolean("_g64");
            }
            // Receive _g67
            if (json.has("_g67")) {
                model._g67 = json.getBoolean("_g67");
            }
            // Receive _g68
            if (json.has("_g68")) {
                model._g68 = json.getBoolean("_g68");
            }
            // Receive _g68_e1
            if (json.has("_g68_e1")) {
                model._g68_e1 = json.getBoolean("_g68_e1");
            }
            // Receive _g7
            if (json.has("_g7")) {
                model._g7 = json.getBoolean("_g7");
            }
            // Receive _g71
            if (json.has("_g71")) {
                model._g71 = json.getBoolean("_g71");
            }
            // Receive _g72
            if (json.has("_g72")) {
                model._g72 = json.getBoolean("_g72");
            }
            // Receive _g73
            if (json.has("_g73")) {
                model._g73 = json.getBoolean("_g73");
            }
            // Receive _g73_e2
            if (json.has("_g73_e2")) {
                model._g73_e2 = json.getBoolean("_g73_e2");
            }
            // Receive _g74
            if (json.has("_g74")) {
                model._g74 = json.getBoolean("_g74");
            }
            // Receive _g75
            if (json.has("_g75")) {
                model._g75 = json.getBoolean("_g75");
            }
            // Receive _g76
            if (json.has("_g76")) {
                model._g76 = json.getBoolean("_g76");
            }
            // Receive _g7_e1
            if (json.has("_g7_e1")) {
                model._g7_e1 = json.getBoolean("_g7_e1");
            }
            // Receive _g82
            if (json.has("_g82")) {
                model._g82 = json.getBoolean("_g82");
            }
            // Receive _g82_e1
            if (json.has("_g82_e1")) {
                model._g82_e1 = json.getBoolean("_g82_e1");
            }
            // Receive _g86
            if (json.has("_g86")) {
                model._g86 = json.getBoolean("_g86");
            }
            // Receive _g87
            if (json.has("_g87")) {
                model._g87 = json.getBoolean("_g87");
            }
            // Receive _g89
            if (json.has("_g89")) {
                model._g89 = json.getBoolean("_g89");
            }
            // Receive _g89_e2
            if (json.has("_g89_e2")) {
                model._g89_e2 = json.getBoolean("_g89_e2");
            }
            // Receive _g92
            if (json.has("_g92")) {
                model._g92 = json.getBoolean("_g92");
            }
            // Receive _g96
            if (json.has("_g96")) {
                model._g96 = json.getBoolean("_g96");
            }
            // Receive _g97
            if (json.has("_g97")) {
                model._g97 = json.getBoolean("_g97");
            }
            // Receive _g97_e3
            if (json.has("_g97_e3")) {
                model._g97_e3 = json.getBoolean("_g97_e3");
            }
            // Receive _g98
            if (json.has("_g98")) {
                model._g98 = json.getBoolean("_g98");
            }
            // Receive _g99
            if (json.has("_g99")) {
                model._g99 = json.getBoolean("_g99");
            }
            // Receive _pg107
            if (json.has("_pg107")) {
                model._pg107 = json.getBoolean("_pg107");
            }
            // Receive _pg12
            if (json.has("_pg12")) {
                model._pg12 = json.getBoolean("_pg12");
            }
            // Receive _pg14
            if (json.has("_pg14")) {
                model._pg14 = json.getBoolean("_pg14");
            }
            // Receive _pg16_e1
            if (json.has("_pg16_e1")) {
                model._pg16_e1 = json.getBoolean("_pg16_e1");
            }
            // Receive _pg20_e2
            if (json.has("_pg20_e2")) {
                model._pg20_e2 = json.getBoolean("_pg20_e2");
            }
            // Receive _pg21
            if (json.has("_pg21")) {
                model._pg21 = json.getBoolean("_pg21");
            }
            // Receive _pg27
            if (json.has("_pg27")) {
                model._pg27 = json.getBoolean("_pg27");
            }
            // Receive _pg3
            if (json.has("_pg3")) {
                model._pg3 = json.getBoolean("_pg3");
            }
            // Receive _pg31
            if (json.has("_pg31")) {
                model._pg31 = json.getBoolean("_pg31");
            }
            // Receive _pg32_e2
            if (json.has("_pg32_e2")) {
                model._pg32_e2 = json.getBoolean("_pg32_e2");
            }
            // Receive _pg36
            if (json.has("_pg36")) {
                model._pg36 = json.getBoolean("_pg36");
            }
            // Receive _pg42
            if (json.has("_pg42")) {
                model._pg42 = json.getBoolean("_pg42");
            }
            // Receive _pg47
            if (json.has("_pg47")) {
                model._pg47 = json.getBoolean("_pg47");
            }
            // Receive _pg49
            if (json.has("_pg49")) {
                model._pg49 = json.getBoolean("_pg49");
            }
            // Receive _pg5
            if (json.has("_pg5")) {
                model._pg5 = json.getBoolean("_pg5");
            }
            // Receive _pg52
            if (json.has("_pg52")) {
                model._pg52 = json.getBoolean("_pg52");
            }
            // Receive _pg64
            if (json.has("_pg64")) {
                model._pg64 = json.getBoolean("_pg64");
            }
            // Receive _pg67
            if (json.has("_pg67")) {
                model._pg67 = json.getBoolean("_pg67");
            }
            // Receive _pg99
            if (json.has("_pg99")) {
                model._pg99 = json.getBoolean("_pg99");
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
        // Send _DDDpacemaker_local_AVI_state
        json.put("_DDDpacemaker_local_AVI_state", JSONObject.wrap(model._DDDpacemaker_local_AVI_state));
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
        // Send _DDDpacemaker_local__pre_VP_out
        json.put("_DDDpacemaker_local__pre_VP_out", JSONObject.wrap(model._DDDpacemaker_local__pre_VP_out));
        // Send _DDDpacemaker_local__reg_VP_out
        json.put("_DDDpacemaker_local__reg_VP_out", JSONObject.wrap(model._DDDpacemaker_local__reg_VP_out));
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
        // Send _cg22
        json.put("_cg22", JSONObject.wrap(model._cg22));
        // Send _cg24
        json.put("_cg24", JSONObject.wrap(model._cg24));
        // Send _cg26
        json.put("_cg26", JSONObject.wrap(model._cg26));
        // Send _cg27
        json.put("_cg27", JSONObject.wrap(model._cg27));
        // Send _cg30
        json.put("_cg30", JSONObject.wrap(model._cg30));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(model._cg31));
        // Send _cg33
        json.put("_cg33", JSONObject.wrap(model._cg33));
        // Send _cg36
        json.put("_cg36", JSONObject.wrap(model._cg36));
        // Send _cg39
        json.put("_cg39", JSONObject.wrap(model._cg39));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(model._cg4));
        // Send _cg42
        json.put("_cg42", JSONObject.wrap(model._cg42));
        // Send _cg44
        json.put("_cg44", JSONObject.wrap(model._cg44));
        // Send _cg47
        json.put("_cg47", JSONObject.wrap(model._cg47));
        // Send _cg48
        json.put("_cg48", JSONObject.wrap(model._cg48));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(model._cg50));
        // Send _cg52
        json.put("_cg52", JSONObject.wrap(model._cg52));
        // Send _cg56
        json.put("_cg56", JSONObject.wrap(model._cg56));
        // Send _cg6
        json.put("_cg6", JSONObject.wrap(model._cg6));
        // Send _cg65
        json.put("_cg65", JSONObject.wrap(model._cg65));
        // Send _cg67
        json.put("_cg67", JSONObject.wrap(model._cg67));
        // Send _cg71
        json.put("_cg71", JSONObject.wrap(model._cg71));
        // Send _cg74
        json.put("_cg74", JSONObject.wrap(model._cg74));
        // Send _cg76
        json.put("_cg76", JSONObject.wrap(model._cg76));
        // Send _cg79
        json.put("_cg79", JSONObject.wrap(model._cg79));
        // Send _cg81
        json.put("_cg81", JSONObject.wrap(model._cg81));
        // Send _cg83
        json.put("_cg83", JSONObject.wrap(model._cg83));
        // Send _cg84
        json.put("_cg84", JSONObject.wrap(model._cg84));
        // Send _cg87
        json.put("_cg87", JSONObject.wrap(model._cg87));
        // Send _cg88
        json.put("_cg88", JSONObject.wrap(model._cg88));
        // Send _cg90
        json.put("_cg90", JSONObject.wrap(model._cg90));
        // Send _cg93
        json.put("_cg93", JSONObject.wrap(model._cg93));
        // Send _cg96
        json.put("_cg96", JSONObject.wrap(model._cg96));
        // Send _g10
        json.put("_g10", JSONObject.wrap(model._g10));
        // Send _g103
        json.put("_g103", JSONObject.wrap(model._g103));
        // Send _g107
        json.put("_g107", JSONObject.wrap(model._g107));
        // Send _g11
        json.put("_g11", JSONObject.wrap(model._g11));
        // Send _g11_e2
        json.put("_g11_e2", JSONObject.wrap(model._g11_e2));
        // Send _g12
        json.put("_g12", JSONObject.wrap(model._g12));
        // Send _g14
        json.put("_g14", JSONObject.wrap(model._g14));
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
        // Send _g25
        json.put("_g25", JSONObject.wrap(model._g25));
        // Send _g25_e1
        json.put("_g25_e1", JSONObject.wrap(model._g25_e1));
        // Send _g27
        json.put("_g27", JSONObject.wrap(model._g27));
        // Send _g29
        json.put("_g29", JSONObject.wrap(model._g29));
        // Send _g3
        json.put("_g3", JSONObject.wrap(model._g3));
        // Send _g30
        json.put("_g30", JSONObject.wrap(model._g30));
        // Send _g31
        json.put("_g31", JSONObject.wrap(model._g31));
        // Send _g32
        json.put("_g32", JSONObject.wrap(model._g32));
        // Send _g32_e2
        json.put("_g32_e2", JSONObject.wrap(model._g32_e2));
        // Send _g33
        json.put("_g33", JSONObject.wrap(model._g33));
        // Send _g35
        json.put("_g35", JSONObject.wrap(model._g35));
        // Send _g36
        json.put("_g36", JSONObject.wrap(model._g36));
        // Send _g39
        json.put("_g39", JSONObject.wrap(model._g39));
        // Send _g40
        json.put("_g40", JSONObject.wrap(model._g40));
        // Send _g41
        json.put("_g41", JSONObject.wrap(model._g41));
        // Send _g41_e3
        json.put("_g41_e3", JSONObject.wrap(model._g41_e3));
        // Send _g42
        json.put("_g42", JSONObject.wrap(model._g42));
        // Send _g43
        json.put("_g43", JSONObject.wrap(model._g43));
        // Send _g44
        json.put("_g44", JSONObject.wrap(model._g44));
        // Send _g45
        json.put("_g45", JSONObject.wrap(model._g45));
        // Send _g46
        json.put("_g46", JSONObject.wrap(model._g46));
        // Send _g47
        json.put("_g47", JSONObject.wrap(model._g47));
        // Send _g48
        json.put("_g48", JSONObject.wrap(model._g48));
        // Send _g49
        json.put("_g49", JSONObject.wrap(model._g49));
        // Send _g5
        json.put("_g5", JSONObject.wrap(model._g5));
        // Send _g52
        json.put("_g52", JSONObject.wrap(model._g52));
        // Send _g53
        json.put("_g53", JSONObject.wrap(model._g53));
        // Send _g53_e1
        json.put("_g53_e1", JSONObject.wrap(model._g53_e1));
        // Send _g56
        json.put("_g56", JSONObject.wrap(model._g56));
        // Send _g57
        json.put("_g57", JSONObject.wrap(model._g57));
        // Send _g57_e2
        json.put("_g57_e2", JSONObject.wrap(model._g57_e2));
        // Send _g58
        json.put("_g58", JSONObject.wrap(model._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(model._g59));
        // Send _g6
        json.put("_g6", JSONObject.wrap(model._g6));
        // Send _g61
        json.put("_g61", JSONObject.wrap(model._g61));
        // Send _g64
        json.put("_g64", JSONObject.wrap(model._g64));
        // Send _g67
        json.put("_g67", JSONObject.wrap(model._g67));
        // Send _g68
        json.put("_g68", JSONObject.wrap(model._g68));
        // Send _g68_e1
        json.put("_g68_e1", JSONObject.wrap(model._g68_e1));
        // Send _g7
        json.put("_g7", JSONObject.wrap(model._g7));
        // Send _g71
        json.put("_g71", JSONObject.wrap(model._g71));
        // Send _g72
        json.put("_g72", JSONObject.wrap(model._g72));
        // Send _g73
        json.put("_g73", JSONObject.wrap(model._g73));
        // Send _g73_e2
        json.put("_g73_e2", JSONObject.wrap(model._g73_e2));
        // Send _g74
        json.put("_g74", JSONObject.wrap(model._g74));
        // Send _g75
        json.put("_g75", JSONObject.wrap(model._g75));
        // Send _g76
        json.put("_g76", JSONObject.wrap(model._g76));
        // Send _g7_e1
        json.put("_g7_e1", JSONObject.wrap(model._g7_e1));
        // Send _g82
        json.put("_g82", JSONObject.wrap(model._g82));
        // Send _g82_e1
        json.put("_g82_e1", JSONObject.wrap(model._g82_e1));
        // Send _g86
        json.put("_g86", JSONObject.wrap(model._g86));
        // Send _g87
        json.put("_g87", JSONObject.wrap(model._g87));
        // Send _g89
        json.put("_g89", JSONObject.wrap(model._g89));
        // Send _g89_e2
        json.put("_g89_e2", JSONObject.wrap(model._g89_e2));
        // Send _g92
        json.put("_g92", JSONObject.wrap(model._g92));
        // Send _g96
        json.put("_g96", JSONObject.wrap(model._g96));
        // Send _g97
        json.put("_g97", JSONObject.wrap(model._g97));
        // Send _g97_e3
        json.put("_g97_e3", JSONObject.wrap(model._g97_e3));
        // Send _g98
        json.put("_g98", JSONObject.wrap(model._g98));
        // Send _g99
        json.put("_g99", JSONObject.wrap(model._g99));
        // Send _pg107
        json.put("_pg107", JSONObject.wrap(model._pg107));
        // Send _pg12
        json.put("_pg12", JSONObject.wrap(model._pg12));
        // Send _pg14
        json.put("_pg14", JSONObject.wrap(model._pg14));
        // Send _pg16_e1
        json.put("_pg16_e1", JSONObject.wrap(model._pg16_e1));
        // Send _pg20_e2
        json.put("_pg20_e2", JSONObject.wrap(model._pg20_e2));
        // Send _pg21
        json.put("_pg21", JSONObject.wrap(model._pg21));
        // Send _pg27
        json.put("_pg27", JSONObject.wrap(model._pg27));
        // Send _pg3
        json.put("_pg3", JSONObject.wrap(model._pg3));
        // Send _pg31
        json.put("_pg31", JSONObject.wrap(model._pg31));
        // Send _pg32_e2
        json.put("_pg32_e2", JSONObject.wrap(model._pg32_e2));
        // Send _pg36
        json.put("_pg36", JSONObject.wrap(model._pg36));
        // Send _pg42
        json.put("_pg42", JSONObject.wrap(model._pg42));
        // Send _pg47
        json.put("_pg47", JSONObject.wrap(model._pg47));
        // Send _pg49
        json.put("_pg49", JSONObject.wrap(model._pg49));
        // Send _pg5
        json.put("_pg5", JSONObject.wrap(model._pg5));
        // Send _pg52
        json.put("_pg52", JSONObject.wrap(model._pg52));
        // Send _pg64
        json.put("_pg64", JSONObject.wrap(model._pg64));
        // Send _pg67
        json.put("_pg67", JSONObject.wrap(model._pg67));
        // Send _pg99
        json.put("_pg99", JSONObject.wrap(model._pg99));
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