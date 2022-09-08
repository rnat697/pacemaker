<#macro simulation_imports position>
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.*;
</#macro>

<#macro simulation_in position>
receiveVariables();
</#macro>

<#macro simulation_out position>
sendVariables();
</#macro>

<#macro simulation_body position>
    public static BufferedReader stdInReader = new BufferedReader(new InputStreamReader(System.in));
            
    private static void receiveVariables() {
        try {
            String line = stdInReader.readLine();
            JSONObject json = new JSONObject(line);
            
            // Receive AS
            if (json.has("AS")) {
                ${tickdata_name}.AS = json.getBoolean("AS");
            }
            // Receive AVI_counter
            if (json.has("AVI_counter")) {
                ${tickdata_name}.AVI_counter = json.getInt("AVI_counter");
            }
            // Receive VS
            if (json.has("VS")) {
                ${tickdata_name}.VS = json.getBoolean("VS");
            }
            // Receive deltaT
            if (json.has("deltaT")) {
                ${tickdata_name}.deltaT = json.getDouble("deltaT");
            }
            // Receive AP
            if (json.has("AP")) {
                ${tickdata_name}.AP = json.getBoolean("AP");
            }
            // Receive VP
            if (json.has("VP")) {
                ${tickdata_name}.VP = json.getBoolean("VP");
            }
            // Receive sleepT
            if (json.has("sleepT")) {
                ${tickdata_name}.sleepT = json.getDouble("sleepT");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive _DDDpacemaker_local_AP_out
            if (json.has("_DDDpacemaker_local_AP_out")) {
                ${tickdata_name}._DDDpacemaker_local_AP_out = json.getBoolean("_DDDpacemaker_local_AP_out");
            }
            // Receive _DDDpacemaker_local_AVI_counter
            if (json.has("_DDDpacemaker_local_AVI_counter")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_counter = json.getDouble("_DDDpacemaker_local_AVI_counter");
            }
            // Receive _DDDpacemaker_local_AVI_start
            if (json.has("_DDDpacemaker_local_AVI_start")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_start = json.getBoolean("_DDDpacemaker_local_AVI_start");
            }
            // Receive _DDDpacemaker_local_AVI_state
            if (json.has("_DDDpacemaker_local_AVI_state")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_state = json.getBoolean("_DDDpacemaker_local_AVI_state");
            }
            // Receive _DDDpacemaker_local_AVI_stop
            if (json.has("_DDDpacemaker_local_AVI_stop")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_stop = json.getBoolean("_DDDpacemaker_local_AVI_stop");
            }
            // Receive _DDDpacemaker_local_URI_counter
            if (json.has("_DDDpacemaker_local_URI_counter")) {
                ${tickdata_name}._DDDpacemaker_local_URI_counter = json.getDouble("_DDDpacemaker_local_URI_counter");
            }
            // Receive _DDDpacemaker_local_URI_go
            if (json.has("_DDDpacemaker_local_URI_go")) {
                ${tickdata_name}._DDDpacemaker_local_URI_go = json.getBoolean("_DDDpacemaker_local_URI_go");
            }
            // Receive _DDDpacemaker_local_URI_state
            if (json.has("_DDDpacemaker_local_URI_state")) {
                ${tickdata_name}._DDDpacemaker_local_URI_state = json.getBoolean("_DDDpacemaker_local_URI_state");
            }
            // Receive _DDDpacemaker_local_VP_out
            if (json.has("_DDDpacemaker_local_VP_out")) {
                ${tickdata_name}._DDDpacemaker_local_VP_out = json.getBoolean("_DDDpacemaker_local_VP_out");
            }
            // Receive _DDDpacemaker_local__Atrig
            if (json.has("_DDDpacemaker_local__Atrig")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig = json.getBoolean("_DDDpacemaker_local__Atrig");
            }
            // Receive _DDDpacemaker_local__Atrig1
            if (json.has("_DDDpacemaker_local__Atrig1")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig1 = json.getBoolean("_DDDpacemaker_local__Atrig1");
            }
            // Receive _DDDpacemaker_local__Atrig2
            if (json.has("_DDDpacemaker_local__Atrig2")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig2 = json.getBoolean("_DDDpacemaker_local__Atrig2");
            }
            // Receive _DDDpacemaker_local__Atrig3
            if (json.has("_DDDpacemaker_local__Atrig3")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig3 = json.getBoolean("_DDDpacemaker_local__Atrig3");
            }
            // Receive _DDDpacemaker_local__Atrig4
            if (json.has("_DDDpacemaker_local__Atrig4")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig4 = json.getBoolean("_DDDpacemaker_local__Atrig4");
            }
            // Receive _DDDpacemaker_local__Atrig5
            if (json.has("_DDDpacemaker_local__Atrig5")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig5 = json.getBoolean("_DDDpacemaker_local__Atrig5");
            }
            // Receive _DDDpacemaker_local__Atrig6
            if (json.has("_DDDpacemaker_local__Atrig6")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig6 = json.getBoolean("_DDDpacemaker_local__Atrig6");
            }
            // Receive _DDDpacemaker_local__Atrig7
            if (json.has("_DDDpacemaker_local__Atrig7")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig7 = json.getBoolean("_DDDpacemaker_local__Atrig7");
            }
            // Receive _DDDpacemaker_local__Atrig8
            if (json.has("_DDDpacemaker_local__Atrig8")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig8 = json.getBoolean("_DDDpacemaker_local__Atrig8");
            }
            // Receive _DDDpacemaker_local_real_AS
            if (json.has("_DDDpacemaker_local_real_AS")) {
                ${tickdata_name}._DDDpacemaker_local_real_AS = json.getBoolean("_DDDpacemaker_local_real_AS");
            }
            // Receive _DDDpacemaker_local_real_VS
            if (json.has("_DDDpacemaker_local_real_VS")) {
                ${tickdata_name}._DDDpacemaker_local_real_VS = json.getBoolean("_DDDpacemaker_local_real_VS");
            }
            // Receive _GO
            if (json.has("_GO")) {
                ${tickdata_name}._GO = json.getBoolean("_GO");
            }
            // Receive _TERM
            if (json.has("_TERM")) {
                ${tickdata_name}._TERM = json.getBoolean("_TERM");
            }
            // Receive _cg10
            if (json.has("_cg10")) {
                ${tickdata_name}._cg10 = json.getBoolean("_cg10");
            }
            // Receive _cg101
            if (json.has("_cg101")) {
                ${tickdata_name}._cg101 = json.getBoolean("_cg101");
            }
            // Receive _cg13
            if (json.has("_cg13")) {
                ${tickdata_name}._cg13 = json.getBoolean("_cg13");
            }
            // Receive _cg15
            if (json.has("_cg15")) {
                ${tickdata_name}._cg15 = json.getBoolean("_cg15");
            }
            // Receive _cg17
            if (json.has("_cg17")) {
                ${tickdata_name}._cg17 = json.getBoolean("_cg17");
            }
            // Receive _cg18
            if (json.has("_cg18")) {
                ${tickdata_name}._cg18 = json.getBoolean("_cg18");
            }
            // Receive _cg21
            if (json.has("_cg21")) {
                ${tickdata_name}._cg21 = json.getBoolean("_cg21");
            }
            // Receive _cg22
            if (json.has("_cg22")) {
                ${tickdata_name}._cg22 = json.getBoolean("_cg22");
            }
            // Receive _cg24
            if (json.has("_cg24")) {
                ${tickdata_name}._cg24 = json.getBoolean("_cg24");
            }
            // Receive _cg27
            if (json.has("_cg27")) {
                ${tickdata_name}._cg27 = json.getBoolean("_cg27");
            }
            // Receive _cg28
            if (json.has("_cg28")) {
                ${tickdata_name}._cg28 = json.getBoolean("_cg28");
            }
            // Receive _cg29
            if (json.has("_cg29")) {
                ${tickdata_name}._cg29 = json.getBoolean("_cg29");
            }
            // Receive _cg32
            if (json.has("_cg32")) {
                ${tickdata_name}._cg32 = json.getBoolean("_cg32");
            }
            // Receive _cg33
            if (json.has("_cg33")) {
                ${tickdata_name}._cg33 = json.getBoolean("_cg33");
            }
            // Receive _cg35
            if (json.has("_cg35")) {
                ${tickdata_name}._cg35 = json.getBoolean("_cg35");
            }
            // Receive _cg38
            if (json.has("_cg38")) {
                ${tickdata_name}._cg38 = json.getBoolean("_cg38");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                ${tickdata_name}._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg41
            if (json.has("_cg41")) {
                ${tickdata_name}._cg41 = json.getBoolean("_cg41");
            }
            // Receive _cg44
            if (json.has("_cg44")) {
                ${tickdata_name}._cg44 = json.getBoolean("_cg44");
            }
            // Receive _cg46
            if (json.has("_cg46")) {
                ${tickdata_name}._cg46 = json.getBoolean("_cg46");
            }
            // Receive _cg48
            if (json.has("_cg48")) {
                ${tickdata_name}._cg48 = json.getBoolean("_cg48");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                ${tickdata_name}._cg50 = json.getBoolean("_cg50");
            }
            // Receive _cg52
            if (json.has("_cg52")) {
                ${tickdata_name}._cg52 = json.getBoolean("_cg52");
            }
            // Receive _cg54
            if (json.has("_cg54")) {
                ${tickdata_name}._cg54 = json.getBoolean("_cg54");
            }
            // Receive _cg58
            if (json.has("_cg58")) {
                ${tickdata_name}._cg58 = json.getBoolean("_cg58");
            }
            // Receive _cg6
            if (json.has("_cg6")) {
                ${tickdata_name}._cg6 = json.getBoolean("_cg6");
            }
            // Receive _cg61
            if (json.has("_cg61")) {
                ${tickdata_name}._cg61 = json.getBoolean("_cg61");
            }
            // Receive _cg63
            if (json.has("_cg63")) {
                ${tickdata_name}._cg63 = json.getBoolean("_cg63");
            }
            // Receive _cg70
            if (json.has("_cg70")) {
                ${tickdata_name}._cg70 = json.getBoolean("_cg70");
            }
            // Receive _cg72
            if (json.has("_cg72")) {
                ${tickdata_name}._cg72 = json.getBoolean("_cg72");
            }
            // Receive _cg76
            if (json.has("_cg76")) {
                ${tickdata_name}._cg76 = json.getBoolean("_cg76");
            }
            // Receive _cg79
            if (json.has("_cg79")) {
                ${tickdata_name}._cg79 = json.getBoolean("_cg79");
            }
            // Receive _cg81
            if (json.has("_cg81")) {
                ${tickdata_name}._cg81 = json.getBoolean("_cg81");
            }
            // Receive _cg84
            if (json.has("_cg84")) {
                ${tickdata_name}._cg84 = json.getBoolean("_cg84");
            }
            // Receive _cg86
            if (json.has("_cg86")) {
                ${tickdata_name}._cg86 = json.getBoolean("_cg86");
            }
            // Receive _cg88
            if (json.has("_cg88")) {
                ${tickdata_name}._cg88 = json.getBoolean("_cg88");
            }
            // Receive _cg89
            if (json.has("_cg89")) {
                ${tickdata_name}._cg89 = json.getBoolean("_cg89");
            }
            // Receive _cg92
            if (json.has("_cg92")) {
                ${tickdata_name}._cg92 = json.getBoolean("_cg92");
            }
            // Receive _cg93
            if (json.has("_cg93")) {
                ${tickdata_name}._cg93 = json.getBoolean("_cg93");
            }
            // Receive _cg95
            if (json.has("_cg95")) {
                ${tickdata_name}._cg95 = json.getBoolean("_cg95");
            }
            // Receive _cg98
            if (json.has("_cg98")) {
                ${tickdata_name}._cg98 = json.getBoolean("_cg98");
            }
            // Receive _g100
            if (json.has("_g100")) {
                ${tickdata_name}._g100 = json.getBoolean("_g100");
            }
            // Receive _g101
            if (json.has("_g101")) {
                ${tickdata_name}._g101 = json.getBoolean("_g101");
            }
            // Receive _g102
            if (json.has("_g102")) {
                ${tickdata_name}._g102 = json.getBoolean("_g102");
            }
            // Receive _g102_e3
            if (json.has("_g102_e3")) {
                ${tickdata_name}._g102_e3 = json.getBoolean("_g102_e3");
            }
            // Receive _g108
            if (json.has("_g108")) {
                ${tickdata_name}._g108 = json.getBoolean("_g108");
            }
            // Receive _g14
            if (json.has("_g14")) {
                ${tickdata_name}._g14 = json.getBoolean("_g14");
            }
            // Receive _g15
            if (json.has("_g15")) {
                ${tickdata_name}._g15 = json.getBoolean("_g15");
            }
            // Receive _g19
            if (json.has("_g19")) {
                ${tickdata_name}._g19 = json.getBoolean("_g19");
            }
            // Receive _g20
            if (json.has("_g20")) {
                ${tickdata_name}._g20 = json.getBoolean("_g20");
            }
            // Receive _g21
            if (json.has("_g21")) {
                ${tickdata_name}._g21 = json.getBoolean("_g21");
            }
            // Receive _g22
            if (json.has("_g22")) {
                ${tickdata_name}._g22 = json.getBoolean("_g22");
            }
            // Receive _g25
            if (json.has("_g25")) {
                ${tickdata_name}._g25 = json.getBoolean("_g25");
            }
            // Receive _g26
            if (json.has("_g26")) {
                ${tickdata_name}._g26 = json.getBoolean("_g26");
            }
            // Receive _g30
            if (json.has("_g30")) {
                ${tickdata_name}._g30 = json.getBoolean("_g30");
            }
            // Receive _g36
            if (json.has("_g36")) {
                ${tickdata_name}._g36 = json.getBoolean("_g36");
            }
            // Receive _g37
            if (json.has("_g37")) {
                ${tickdata_name}._g37 = json.getBoolean("_g37");
            }
            // Receive _g40
            if (json.has("_g40")) {
                ${tickdata_name}._g40 = json.getBoolean("_g40");
            }
            // Receive _g41
            if (json.has("_g41")) {
                ${tickdata_name}._g41 = json.getBoolean("_g41");
            }
            // Receive _g42
            if (json.has("_g42")) {
                ${tickdata_name}._g42 = json.getBoolean("_g42");
            }
            // Receive _g5
            if (json.has("_g5")) {
                ${tickdata_name}._g5 = json.getBoolean("_g5");
            }
            // Receive _g53
            if (json.has("_g53")) {
                ${tickdata_name}._g53 = json.getBoolean("_g53");
            }
            // Receive _g54
            if (json.has("_g54")) {
                ${tickdata_name}._g54 = json.getBoolean("_g54");
            }
            // Receive _g57
            if (json.has("_g57")) {
                ${tickdata_name}._g57 = json.getBoolean("_g57");
            }
            // Receive _g58
            if (json.has("_g58")) {
                ${tickdata_name}._g58 = json.getBoolean("_g58");
            }
            // Receive _g59
            if (json.has("_g59")) {
                ${tickdata_name}._g59 = json.getBoolean("_g59");
            }
            // Receive _g71
            if (json.has("_g71")) {
                ${tickdata_name}._g71 = json.getBoolean("_g71");
            }
            // Receive _g72
            if (json.has("_g72")) {
                ${tickdata_name}._g72 = json.getBoolean("_g72");
            }
            // Receive _g75
            if (json.has("_g75")) {
                ${tickdata_name}._g75 = json.getBoolean("_g75");
            }
            // Receive _g76
            if (json.has("_g76")) {
                ${tickdata_name}._g76 = json.getBoolean("_g76");
            }
            // Receive _g77
            if (json.has("_g77")) {
                ${tickdata_name}._g77 = json.getBoolean("_g77");
            }
            // Receive _g85
            if (json.has("_g85")) {
                ${tickdata_name}._g85 = json.getBoolean("_g85");
            }
            // Receive _g86
            if (json.has("_g86")) {
                ${tickdata_name}._g86 = json.getBoolean("_g86");
            }
            // Receive _g87
            if (json.has("_g87")) {
                ${tickdata_name}._g87 = json.getBoolean("_g87");
            }
            // Receive _g87_e1
            if (json.has("_g87_e1")) {
                ${tickdata_name}._g87_e1 = json.getBoolean("_g87_e1");
            }
            // Receive _g90
            if (json.has("_g90")) {
                ${tickdata_name}._g90 = json.getBoolean("_g90");
            }
            // Receive _g91
            if (json.has("_g91")) {
                ${tickdata_name}._g91 = json.getBoolean("_g91");
            }
            // Receive _g92
            if (json.has("_g92")) {
                ${tickdata_name}._g92 = json.getBoolean("_g92");
            }
            // Receive _g93
            if (json.has("_g93")) {
                ${tickdata_name}._g93 = json.getBoolean("_g93");
            }
            // Receive _g94
            if (json.has("_g94")) {
                ${tickdata_name}._g94 = json.getBoolean("_g94");
            }
            // Receive _g94_e2
            if (json.has("_g94_e2")) {
                ${tickdata_name}._g94_e2 = json.getBoolean("_g94_e2");
            }
            // Receive _g95
            if (json.has("_g95")) {
                ${tickdata_name}._g95 = json.getBoolean("_g95");
            }
            // Receive _g96
            if (json.has("_g96")) {
                ${tickdata_name}._g96 = json.getBoolean("_g96");
            }
            // Receive _g97
            if (json.has("_g97")) {
                ${tickdata_name}._g97 = json.getBoolean("_g97");
            }
            // Receive _pg100
            if (json.has("_pg100")) {
                ${tickdata_name}._pg100 = json.getBoolean("_pg100");
            }
            // Receive _pg14
            if (json.has("_pg14")) {
                ${tickdata_name}._pg14 = json.getBoolean("_pg14");
            }
            // Receive _pg19
            if (json.has("_pg19")) {
                ${tickdata_name}._pg19 = json.getBoolean("_pg19");
            }
            // Receive _pg25
            if (json.has("_pg25")) {
                ${tickdata_name}._pg25 = json.getBoolean("_pg25");
            }
            // Receive _pg30
            if (json.has("_pg30")) {
                ${tickdata_name}._pg30 = json.getBoolean("_pg30");
            }
            // Receive _pg36
            if (json.has("_pg36")) {
                ${tickdata_name}._pg36 = json.getBoolean("_pg36");
            }
            // Receive _pg40
            if (json.has("_pg40")) {
                ${tickdata_name}._pg40 = json.getBoolean("_pg40");
            }
            // Receive _pg5
            if (json.has("_pg5")) {
                ${tickdata_name}._pg5 = json.getBoolean("_pg5");
            }
            // Receive _pg53
            if (json.has("_pg53")) {
                ${tickdata_name}._pg53 = json.getBoolean("_pg53");
            }
            // Receive _pg57
            if (json.has("_pg57")) {
                ${tickdata_name}._pg57 = json.getBoolean("_pg57");
            }
            // Receive _pg71
            if (json.has("_pg71")) {
                ${tickdata_name}._pg71 = json.getBoolean("_pg71");
            }
            // Receive _pg75
            if (json.has("_pg75")) {
                ${tickdata_name}._pg75 = json.getBoolean("_pg75");
            }
            // Receive _pg76
            if (json.has("_pg76")) {
                ${tickdata_name}._pg76 = json.getBoolean("_pg76");
            }
            // Receive _pg85
            if (json.has("_pg85")) {
                ${tickdata_name}._pg85 = json.getBoolean("_pg85");
            }
            // Receive _pg90
            if (json.has("_pg90")) {
                ${tickdata_name}._pg90 = json.getBoolean("_pg90");
            }
            // Receive _pg96
            if (json.has("_pg96")) {
                ${tickdata_name}._pg96 = json.getBoolean("_pg96");
            }
            // Receive _taken_transitions
            if (json.has("_taken_transitions")) {
                JSONArray _array = json.getJSONArray("_taken_transitions");
                for (int i = 0; i < _array.length(); i++) {
                    ${tickdata_name}._taken_transitions[i] = _array.getInt(i);
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
        json.put("AS", JSONObject.wrap(${tickdata_name}.AS));
        // Send AVI_counter
        json.put("AVI_counter", JSONObject.wrap(${tickdata_name}.AVI_counter));
        // Send VS
        json.put("VS", JSONObject.wrap(${tickdata_name}.VS));
        // Send deltaT
        json.put("deltaT", JSONObject.wrap(${tickdata_name}.deltaT));
        // Send AP
        json.put("AP", JSONObject.wrap(${tickdata_name}.AP));
        // Send VP
        json.put("VP", JSONObject.wrap(${tickdata_name}.VP));
        // Send sleepT
        json.put("sleepT", JSONObject.wrap(${tickdata_name}.sleepT));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send _DDDpacemaker_local_AP_out
        json.put("_DDDpacemaker_local_AP_out", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AP_out));
        // Send _DDDpacemaker_local_AVI_counter
        json.put("_DDDpacemaker_local_AVI_counter", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_counter));
        // Send _DDDpacemaker_local_AVI_start
        json.put("_DDDpacemaker_local_AVI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_start));
        // Send _DDDpacemaker_local_AVI_state
        json.put("_DDDpacemaker_local_AVI_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_state));
        // Send _DDDpacemaker_local_AVI_stop
        json.put("_DDDpacemaker_local_AVI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_stop));
        // Send _DDDpacemaker_local_URI_counter
        json.put("_DDDpacemaker_local_URI_counter", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_counter));
        // Send _DDDpacemaker_local_URI_go
        json.put("_DDDpacemaker_local_URI_go", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_go));
        // Send _DDDpacemaker_local_URI_state
        json.put("_DDDpacemaker_local_URI_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_state));
        // Send _DDDpacemaker_local_VP_out
        json.put("_DDDpacemaker_local_VP_out", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VP_out));
        // Send _DDDpacemaker_local__Atrig
        json.put("_DDDpacemaker_local__Atrig", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig));
        // Send _DDDpacemaker_local__Atrig1
        json.put("_DDDpacemaker_local__Atrig1", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig1));
        // Send _DDDpacemaker_local__Atrig2
        json.put("_DDDpacemaker_local__Atrig2", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig2));
        // Send _DDDpacemaker_local__Atrig3
        json.put("_DDDpacemaker_local__Atrig3", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig3));
        // Send _DDDpacemaker_local__Atrig4
        json.put("_DDDpacemaker_local__Atrig4", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig4));
        // Send _DDDpacemaker_local__Atrig5
        json.put("_DDDpacemaker_local__Atrig5", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig5));
        // Send _DDDpacemaker_local__Atrig6
        json.put("_DDDpacemaker_local__Atrig6", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig6));
        // Send _DDDpacemaker_local__Atrig7
        json.put("_DDDpacemaker_local__Atrig7", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig7));
        // Send _DDDpacemaker_local__Atrig8
        json.put("_DDDpacemaker_local__Atrig8", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig8));
        // Send _DDDpacemaker_local_real_AS
        json.put("_DDDpacemaker_local_real_AS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_real_AS));
        // Send _DDDpacemaker_local_real_VS
        json.put("_DDDpacemaker_local_real_VS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_real_VS));
        // Send _GO
        json.put("_GO", JSONObject.wrap(${tickdata_name}._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(${tickdata_name}._TERM));
        // Send _cg10
        json.put("_cg10", JSONObject.wrap(${tickdata_name}._cg10));
        // Send _cg101
        json.put("_cg101", JSONObject.wrap(${tickdata_name}._cg101));
        // Send _cg13
        json.put("_cg13", JSONObject.wrap(${tickdata_name}._cg13));
        // Send _cg15
        json.put("_cg15", JSONObject.wrap(${tickdata_name}._cg15));
        // Send _cg17
        json.put("_cg17", JSONObject.wrap(${tickdata_name}._cg17));
        // Send _cg18
        json.put("_cg18", JSONObject.wrap(${tickdata_name}._cg18));
        // Send _cg21
        json.put("_cg21", JSONObject.wrap(${tickdata_name}._cg21));
        // Send _cg22
        json.put("_cg22", JSONObject.wrap(${tickdata_name}._cg22));
        // Send _cg24
        json.put("_cg24", JSONObject.wrap(${tickdata_name}._cg24));
        // Send _cg27
        json.put("_cg27", JSONObject.wrap(${tickdata_name}._cg27));
        // Send _cg28
        json.put("_cg28", JSONObject.wrap(${tickdata_name}._cg28));
        // Send _cg29
        json.put("_cg29", JSONObject.wrap(${tickdata_name}._cg29));
        // Send _cg32
        json.put("_cg32", JSONObject.wrap(${tickdata_name}._cg32));
        // Send _cg33
        json.put("_cg33", JSONObject.wrap(${tickdata_name}._cg33));
        // Send _cg35
        json.put("_cg35", JSONObject.wrap(${tickdata_name}._cg35));
        // Send _cg38
        json.put("_cg38", JSONObject.wrap(${tickdata_name}._cg38));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(${tickdata_name}._cg4));
        // Send _cg41
        json.put("_cg41", JSONObject.wrap(${tickdata_name}._cg41));
        // Send _cg44
        json.put("_cg44", JSONObject.wrap(${tickdata_name}._cg44));
        // Send _cg46
        json.put("_cg46", JSONObject.wrap(${tickdata_name}._cg46));
        // Send _cg48
        json.put("_cg48", JSONObject.wrap(${tickdata_name}._cg48));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(${tickdata_name}._cg50));
        // Send _cg52
        json.put("_cg52", JSONObject.wrap(${tickdata_name}._cg52));
        // Send _cg54
        json.put("_cg54", JSONObject.wrap(${tickdata_name}._cg54));
        // Send _cg58
        json.put("_cg58", JSONObject.wrap(${tickdata_name}._cg58));
        // Send _cg6
        json.put("_cg6", JSONObject.wrap(${tickdata_name}._cg6));
        // Send _cg61
        json.put("_cg61", JSONObject.wrap(${tickdata_name}._cg61));
        // Send _cg63
        json.put("_cg63", JSONObject.wrap(${tickdata_name}._cg63));
        // Send _cg70
        json.put("_cg70", JSONObject.wrap(${tickdata_name}._cg70));
        // Send _cg72
        json.put("_cg72", JSONObject.wrap(${tickdata_name}._cg72));
        // Send _cg76
        json.put("_cg76", JSONObject.wrap(${tickdata_name}._cg76));
        // Send _cg79
        json.put("_cg79", JSONObject.wrap(${tickdata_name}._cg79));
        // Send _cg81
        json.put("_cg81", JSONObject.wrap(${tickdata_name}._cg81));
        // Send _cg84
        json.put("_cg84", JSONObject.wrap(${tickdata_name}._cg84));
        // Send _cg86
        json.put("_cg86", JSONObject.wrap(${tickdata_name}._cg86));
        // Send _cg88
        json.put("_cg88", JSONObject.wrap(${tickdata_name}._cg88));
        // Send _cg89
        json.put("_cg89", JSONObject.wrap(${tickdata_name}._cg89));
        // Send _cg92
        json.put("_cg92", JSONObject.wrap(${tickdata_name}._cg92));
        // Send _cg93
        json.put("_cg93", JSONObject.wrap(${tickdata_name}._cg93));
        // Send _cg95
        json.put("_cg95", JSONObject.wrap(${tickdata_name}._cg95));
        // Send _cg98
        json.put("_cg98", JSONObject.wrap(${tickdata_name}._cg98));
        // Send _g100
        json.put("_g100", JSONObject.wrap(${tickdata_name}._g100));
        // Send _g101
        json.put("_g101", JSONObject.wrap(${tickdata_name}._g101));
        // Send _g102
        json.put("_g102", JSONObject.wrap(${tickdata_name}._g102));
        // Send _g102_e3
        json.put("_g102_e3", JSONObject.wrap(${tickdata_name}._g102_e3));
        // Send _g108
        json.put("_g108", JSONObject.wrap(${tickdata_name}._g108));
        // Send _g14
        json.put("_g14", JSONObject.wrap(${tickdata_name}._g14));
        // Send _g15
        json.put("_g15", JSONObject.wrap(${tickdata_name}._g15));
        // Send _g19
        json.put("_g19", JSONObject.wrap(${tickdata_name}._g19));
        // Send _g20
        json.put("_g20", JSONObject.wrap(${tickdata_name}._g20));
        // Send _g21
        json.put("_g21", JSONObject.wrap(${tickdata_name}._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(${tickdata_name}._g22));
        // Send _g25
        json.put("_g25", JSONObject.wrap(${tickdata_name}._g25));
        // Send _g26
        json.put("_g26", JSONObject.wrap(${tickdata_name}._g26));
        // Send _g30
        json.put("_g30", JSONObject.wrap(${tickdata_name}._g30));
        // Send _g36
        json.put("_g36", JSONObject.wrap(${tickdata_name}._g36));
        // Send _g37
        json.put("_g37", JSONObject.wrap(${tickdata_name}._g37));
        // Send _g40
        json.put("_g40", JSONObject.wrap(${tickdata_name}._g40));
        // Send _g41
        json.put("_g41", JSONObject.wrap(${tickdata_name}._g41));
        // Send _g42
        json.put("_g42", JSONObject.wrap(${tickdata_name}._g42));
        // Send _g5
        json.put("_g5", JSONObject.wrap(${tickdata_name}._g5));
        // Send _g53
        json.put("_g53", JSONObject.wrap(${tickdata_name}._g53));
        // Send _g54
        json.put("_g54", JSONObject.wrap(${tickdata_name}._g54));
        // Send _g57
        json.put("_g57", JSONObject.wrap(${tickdata_name}._g57));
        // Send _g58
        json.put("_g58", JSONObject.wrap(${tickdata_name}._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(${tickdata_name}._g59));
        // Send _g71
        json.put("_g71", JSONObject.wrap(${tickdata_name}._g71));
        // Send _g72
        json.put("_g72", JSONObject.wrap(${tickdata_name}._g72));
        // Send _g75
        json.put("_g75", JSONObject.wrap(${tickdata_name}._g75));
        // Send _g76
        json.put("_g76", JSONObject.wrap(${tickdata_name}._g76));
        // Send _g77
        json.put("_g77", JSONObject.wrap(${tickdata_name}._g77));
        // Send _g85
        json.put("_g85", JSONObject.wrap(${tickdata_name}._g85));
        // Send _g86
        json.put("_g86", JSONObject.wrap(${tickdata_name}._g86));
        // Send _g87
        json.put("_g87", JSONObject.wrap(${tickdata_name}._g87));
        // Send _g87_e1
        json.put("_g87_e1", JSONObject.wrap(${tickdata_name}._g87_e1));
        // Send _g90
        json.put("_g90", JSONObject.wrap(${tickdata_name}._g90));
        // Send _g91
        json.put("_g91", JSONObject.wrap(${tickdata_name}._g91));
        // Send _g92
        json.put("_g92", JSONObject.wrap(${tickdata_name}._g92));
        // Send _g93
        json.put("_g93", JSONObject.wrap(${tickdata_name}._g93));
        // Send _g94
        json.put("_g94", JSONObject.wrap(${tickdata_name}._g94));
        // Send _g94_e2
        json.put("_g94_e2", JSONObject.wrap(${tickdata_name}._g94_e2));
        // Send _g95
        json.put("_g95", JSONObject.wrap(${tickdata_name}._g95));
        // Send _g96
        json.put("_g96", JSONObject.wrap(${tickdata_name}._g96));
        // Send _g97
        json.put("_g97", JSONObject.wrap(${tickdata_name}._g97));
        // Send _pg100
        json.put("_pg100", JSONObject.wrap(${tickdata_name}._pg100));
        // Send _pg14
        json.put("_pg14", JSONObject.wrap(${tickdata_name}._pg14));
        // Send _pg19
        json.put("_pg19", JSONObject.wrap(${tickdata_name}._pg19));
        // Send _pg25
        json.put("_pg25", JSONObject.wrap(${tickdata_name}._pg25));
        // Send _pg30
        json.put("_pg30", JSONObject.wrap(${tickdata_name}._pg30));
        // Send _pg36
        json.put("_pg36", JSONObject.wrap(${tickdata_name}._pg36));
        // Send _pg40
        json.put("_pg40", JSONObject.wrap(${tickdata_name}._pg40));
        // Send _pg5
        json.put("_pg5", JSONObject.wrap(${tickdata_name}._pg5));
        // Send _pg53
        json.put("_pg53", JSONObject.wrap(${tickdata_name}._pg53));
        // Send _pg57
        json.put("_pg57", JSONObject.wrap(${tickdata_name}._pg57));
        // Send _pg71
        json.put("_pg71", JSONObject.wrap(${tickdata_name}._pg71));
        // Send _pg75
        json.put("_pg75", JSONObject.wrap(${tickdata_name}._pg75));
        // Send _pg76
        json.put("_pg76", JSONObject.wrap(${tickdata_name}._pg76));
        // Send _pg85
        json.put("_pg85", JSONObject.wrap(${tickdata_name}._pg85));
        // Send _pg90
        json.put("_pg90", JSONObject.wrap(${tickdata_name}._pg90));
        // Send _pg96
        json.put("_pg96", JSONObject.wrap(${tickdata_name}._pg96));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(${tickdata_name}._taken_transitions));
        
        System.out.println(json.toString());
    }
</#macro>
