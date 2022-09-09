

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
            
            // Receive AEI_counter
            if (json.has("AEI_counter")) {
                model.AEI_counter = json.getInt("AEI_counter");
            }
            // Receive AS
            if (json.has("AS")) {
                model.AS = json.getBoolean("AS");
            }
            // Receive AVI_counter
            if (json.has("AVI_counter")) {
                model.AVI_counter = json.getInt("AVI_counter");
            }
            // Receive LRI_counter
            if (json.has("LRI_counter")) {
                model.LRI_counter = json.getInt("LRI_counter");
            }
            // Receive PVARP_counter
            if (json.has("PVARP_counter")) {
                model.PVARP_counter = json.getInt("PVARP_counter");
            }
            // Receive URI_counter
            if (json.has("URI_counter")) {
                model.URI_counter = json.getInt("URI_counter");
            }
            // Receive VRP_counter
            if (json.has("VRP_counter")) {
                model.VRP_counter = json.getInt("VRP_counter");
            }
            // Receive VS
            if (json.has("VS")) {
                model.VS = json.getBoolean("VS");
            }
            // Receive AP
            if (json.has("AP")) {
                model.AP = json.getBoolean("AP");
            }
            // Receive VP
            if (json.has("VP")) {
                model.VP = json.getBoolean("VP");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive _DDDpacemaker_local_AEI_start
            if (json.has("_DDDpacemaker_local_AEI_start")) {
                model._DDDpacemaker_local_AEI_start = json.getBoolean("_DDDpacemaker_local_AEI_start");
            }
            // Receive _DDDpacemaker_local_AEI_stop
            if (json.has("_DDDpacemaker_local_AEI_stop")) {
                model._DDDpacemaker_local_AEI_stop = json.getBoolean("_DDDpacemaker_local_AEI_stop");
            }
            // Receive _DDDpacemaker_local_AR
            if (json.has("_DDDpacemaker_local_AR")) {
                model._DDDpacemaker_local_AR = json.getBoolean("_DDDpacemaker_local_AR");
            }
            // Receive _DDDpacemaker_local_AVI_start
            if (json.has("_DDDpacemaker_local_AVI_start")) {
                model._DDDpacemaker_local_AVI_start = json.getBoolean("_DDDpacemaker_local_AVI_start");
            }
            // Receive _DDDpacemaker_local_AVI_stop
            if (json.has("_DDDpacemaker_local_AVI_stop")) {
                model._DDDpacemaker_local_AVI_stop = json.getBoolean("_DDDpacemaker_local_AVI_stop");
            }
            // Receive _DDDpacemaker_local_LRI_reset
            if (json.has("_DDDpacemaker_local_LRI_reset")) {
                model._DDDpacemaker_local_LRI_reset = json.getBoolean("_DDDpacemaker_local_LRI_reset");
            }
            // Receive _DDDpacemaker_local_LRI_start
            if (json.has("_DDDpacemaker_local_LRI_start")) {
                model._DDDpacemaker_local_LRI_start = json.getBoolean("_DDDpacemaker_local_LRI_start");
            }
            // Receive _DDDpacemaker_local_LRI_stop
            if (json.has("_DDDpacemaker_local_LRI_stop")) {
                model._DDDpacemaker_local_LRI_stop = json.getBoolean("_DDDpacemaker_local_LRI_stop");
            }
            // Receive _DDDpacemaker_local_PVARP_start
            if (json.has("_DDDpacemaker_local_PVARP_start")) {
                model._DDDpacemaker_local_PVARP_start = json.getBoolean("_DDDpacemaker_local_PVARP_start");
            }
            // Receive _DDDpacemaker_local_PVARP_stop
            if (json.has("_DDDpacemaker_local_PVARP_stop")) {
                model._DDDpacemaker_local_PVARP_stop = json.getBoolean("_DDDpacemaker_local_PVARP_stop");
            }
            // Receive _DDDpacemaker_local_URI_start
            if (json.has("_DDDpacemaker_local_URI_start")) {
                model._DDDpacemaker_local_URI_start = json.getBoolean("_DDDpacemaker_local_URI_start");
            }
            // Receive _DDDpacemaker_local_URI_stop
            if (json.has("_DDDpacemaker_local_URI_stop")) {
                model._DDDpacemaker_local_URI_stop = json.getBoolean("_DDDpacemaker_local_URI_stop");
            }
            // Receive _DDDpacemaker_local_VR
            if (json.has("_DDDpacemaker_local_VR")) {
                model._DDDpacemaker_local_VR = json.getBoolean("_DDDpacemaker_local_VR");
            }
            // Receive _DDDpacemaker_local_VRP_start
            if (json.has("_DDDpacemaker_local_VRP_start")) {
                model._DDDpacemaker_local_VRP_start = json.getBoolean("_DDDpacemaker_local_VRP_start");
            }
            // Receive _DDDpacemaker_local_VRP_stop
            if (json.has("_DDDpacemaker_local_VRP_stop")) {
                model._DDDpacemaker_local_VRP_stop = json.getBoolean("_DDDpacemaker_local_VRP_stop");
            }
            // Receive _DDDpacemaker_local__pre_PVARP_start
            if (json.has("_DDDpacemaker_local__pre_PVARP_start")) {
                model._DDDpacemaker_local__pre_PVARP_start = json.getBoolean("_DDDpacemaker_local__pre_PVARP_start");
            }
            // Receive _DDDpacemaker_local__pre_URI_start
            if (json.has("_DDDpacemaker_local__pre_URI_start")) {
                model._DDDpacemaker_local__pre_URI_start = json.getBoolean("_DDDpacemaker_local__pre_URI_start");
            }
            // Receive _DDDpacemaker_local__pre_URI_stop
            if (json.has("_DDDpacemaker_local__pre_URI_stop")) {
                model._DDDpacemaker_local__pre_URI_stop = json.getBoolean("_DDDpacemaker_local__pre_URI_stop");
            }
            // Receive _DDDpacemaker_local__pre_real_AS
            if (json.has("_DDDpacemaker_local__pre_real_AS")) {
                model._DDDpacemaker_local__pre_real_AS = json.getBoolean("_DDDpacemaker_local__pre_real_AS");
            }
            // Receive _DDDpacemaker_local__pre_real_VS
            if (json.has("_DDDpacemaker_local__pre_real_VS")) {
                model._DDDpacemaker_local__pre_real_VS = json.getBoolean("_DDDpacemaker_local__pre_real_VS");
            }
            // Receive _DDDpacemaker_local__reg_PVARP_start
            if (json.has("_DDDpacemaker_local__reg_PVARP_start")) {
                model._DDDpacemaker_local__reg_PVARP_start = json.getBoolean("_DDDpacemaker_local__reg_PVARP_start");
            }
            // Receive _DDDpacemaker_local__reg_URI_start
            if (json.has("_DDDpacemaker_local__reg_URI_start")) {
                model._DDDpacemaker_local__reg_URI_start = json.getBoolean("_DDDpacemaker_local__reg_URI_start");
            }
            // Receive _DDDpacemaker_local__reg_URI_stop
            if (json.has("_DDDpacemaker_local__reg_URI_stop")) {
                model._DDDpacemaker_local__reg_URI_stop = json.getBoolean("_DDDpacemaker_local__reg_URI_stop");
            }
            // Receive _DDDpacemaker_local__reg_real_AS
            if (json.has("_DDDpacemaker_local__reg_real_AS")) {
                model._DDDpacemaker_local__reg_real_AS = json.getBoolean("_DDDpacemaker_local__reg_real_AS");
            }
            // Receive _DDDpacemaker_local__reg_real_VS
            if (json.has("_DDDpacemaker_local__reg_real_VS")) {
                model._DDDpacemaker_local__reg_real_VS = json.getBoolean("_DDDpacemaker_local__reg_real_VS");
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
            // Receive _cg12
            if (json.has("_cg12")) {
                model._cg12 = json.getBoolean("_cg12");
            }
            // Receive _cg14
            if (json.has("_cg14")) {
                model._cg14 = json.getBoolean("_cg14");
            }
            // Receive _cg16
            if (json.has("_cg16")) {
                model._cg16 = json.getBoolean("_cg16");
            }
            // Receive _cg21
            if (json.has("_cg21")) {
                model._cg21 = json.getBoolean("_cg21");
            }
            // Receive _cg24
            if (json.has("_cg24")) {
                model._cg24 = json.getBoolean("_cg24");
            }
            // Receive _cg26
            if (json.has("_cg26")) {
                model._cg26 = json.getBoolean("_cg26");
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
            // Receive _cg38
            if (json.has("_cg38")) {
                model._cg38 = json.getBoolean("_cg38");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                model._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg43
            if (json.has("_cg43")) {
                model._cg43 = json.getBoolean("_cg43");
            }
            // Receive _cg46
            if (json.has("_cg46")) {
                model._cg46 = json.getBoolean("_cg46");
            }
            // Receive _cg48
            if (json.has("_cg48")) {
                model._cg48 = json.getBoolean("_cg48");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                model._cg50 = json.getBoolean("_cg50");
            }
            // Receive _cg55
            if (json.has("_cg55")) {
                model._cg55 = json.getBoolean("_cg55");
            }
            // Receive _cg58
            if (json.has("_cg58")) {
                model._cg58 = json.getBoolean("_cg58");
            }
            // Receive _cg60
            if (json.has("_cg60")) {
                model._cg60 = json.getBoolean("_cg60");
            }
            // Receive _cg65
            if (json.has("_cg65")) {
                model._cg65 = json.getBoolean("_cg65");
            }
            // Receive _cg68
            if (json.has("_cg68")) {
                model._cg68 = json.getBoolean("_cg68");
            }
            // Receive _cg7
            if (json.has("_cg7")) {
                model._cg7 = json.getBoolean("_cg7");
            }
            // Receive _cg9
            if (json.has("_cg9")) {
                model._cg9 = json.getBoolean("_cg9");
            }
            // Receive _g10
            if (json.has("_g10")) {
                model._g10 = json.getBoolean("_g10");
            }
            // Receive _g101
            if (json.has("_g101")) {
                model._g101 = json.getBoolean("_g101");
            }
            // Receive _g12
            if (json.has("_g12")) {
                model._g12 = json.getBoolean("_g12");
            }
            // Receive _g13
            if (json.has("_g13")) {
                model._g13 = json.getBoolean("_g13");
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
            // Receive _g17
            if (json.has("_g17")) {
                model._g17 = json.getBoolean("_g17");
            }
            // Receive _g20
            if (json.has("_g20")) {
                model._g20 = json.getBoolean("_g20");
            }
            // Receive _g21
            if (json.has("_g21")) {
                model._g21 = json.getBoolean("_g21");
            }
            // Receive _g22
            if (json.has("_g22")) {
                model._g22 = json.getBoolean("_g22");
            }
            // Receive _g24
            if (json.has("_g24")) {
                model._g24 = json.getBoolean("_g24");
            }
            // Receive _g25
            if (json.has("_g25")) {
                model._g25 = json.getBoolean("_g25");
            }
            // Receive _g26
            if (json.has("_g26")) {
                model._g26 = json.getBoolean("_g26");
            }
            // Receive _g31
            if (json.has("_g31")) {
                model._g31 = json.getBoolean("_g31");
            }
            // Receive _g32
            if (json.has("_g32")) {
                model._g32 = json.getBoolean("_g32");
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
            // Receive _g38
            if (json.has("_g38")) {
                model._g38 = json.getBoolean("_g38");
            }
            // Receive _g39
            if (json.has("_g39")) {
                model._g39 = json.getBoolean("_g39");
            }
            // Receive _g4
            if (json.has("_g4")) {
                model._g4 = json.getBoolean("_g4");
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
            // Receive _g50
            if (json.has("_g50")) {
                model._g50 = json.getBoolean("_g50");
            }
            // Receive _g51
            if (json.has("_g51")) {
                model._g51 = json.getBoolean("_g51");
            }
            // Receive _g55
            if (json.has("_g55")) {
                model._g55 = json.getBoolean("_g55");
            }
            // Receive _g56
            if (json.has("_g56")) {
                model._g56 = json.getBoolean("_g56");
            }
            // Receive _g58
            if (json.has("_g58")) {
                model._g58 = json.getBoolean("_g58");
            }
            // Receive _g59
            if (json.has("_g59")) {
                model._g59 = json.getBoolean("_g59");
            }
            // Receive _g60
            if (json.has("_g60")) {
                model._g60 = json.getBoolean("_g60");
            }
            // Receive _g61
            if (json.has("_g61")) {
                model._g61 = json.getBoolean("_g61");
            }
            // Receive _g65
            if (json.has("_g65")) {
                model._g65 = json.getBoolean("_g65");
            }
            // Receive _g66
            if (json.has("_g66")) {
                model._g66 = json.getBoolean("_g66");
            }
            // Receive _g69
            if (json.has("_g69")) {
                model._g69 = json.getBoolean("_g69");
            }
            // Receive _g7
            if (json.has("_g7")) {
                model._g7 = json.getBoolean("_g7");
            }
            // Receive _g77
            if (json.has("_g77")) {
                model._g77 = json.getBoolean("_g77");
            }
            // Receive _g8
            if (json.has("_g8")) {
                model._g8 = json.getBoolean("_g8");
            }
            // Receive _g81
            if (json.has("_g81")) {
                model._g81 = json.getBoolean("_g81");
            }
            // Receive _g9
            if (json.has("_g9")) {
                model._g9 = json.getBoolean("_g9");
            }
            // Receive _pg101
            if (json.has("_pg101")) {
                model._pg101 = json.getBoolean("_pg101");
            }
            // Receive _pg15
            if (json.has("_pg15")) {
                model._pg15 = json.getBoolean("_pg15");
            }
            // Receive _pg17
            if (json.has("_pg17")) {
                model._pg17 = json.getBoolean("_pg17");
            }
            // Receive _pg20
            if (json.has("_pg20")) {
                model._pg20 = json.getBoolean("_pg20");
            }
            // Receive _pg24
            if (json.has("_pg24")) {
                model._pg24 = json.getBoolean("_pg24");
            }
            // Receive _pg26
            if (json.has("_pg26")) {
                model._pg26 = json.getBoolean("_pg26");
            }
            // Receive _pg31
            if (json.has("_pg31")) {
                model._pg31 = json.getBoolean("_pg31");
            }
            // Receive _pg35
            if (json.has("_pg35")) {
                model._pg35 = json.getBoolean("_pg35");
            }
            // Receive _pg37
            if (json.has("_pg37")) {
                model._pg37 = json.getBoolean("_pg37");
            }
            // Receive _pg4
            if (json.has("_pg4")) {
                model._pg4 = json.getBoolean("_pg4");
            }
            // Receive _pg42
            if (json.has("_pg42")) {
                model._pg42 = json.getBoolean("_pg42");
            }
            // Receive _pg43
            if (json.has("_pg43")) {
                model._pg43 = json.getBoolean("_pg43");
            }
            // Receive _pg55
            if (json.has("_pg55")) {
                model._pg55 = json.getBoolean("_pg55");
            }
            // Receive _pg59
            if (json.has("_pg59")) {
                model._pg59 = json.getBoolean("_pg59");
            }
            // Receive _pg66
            if (json.has("_pg66")) {
                model._pg66 = json.getBoolean("_pg66");
            }
            // Receive _pg69
            if (json.has("_pg69")) {
                model._pg69 = json.getBoolean("_pg69");
            }
            // Receive _pre_AP
            if (json.has("_pre_AP")) {
                model._pre_AP = json.getBoolean("_pre_AP");
            }
            // Receive _pre_VP
            if (json.has("_pre_VP")) {
                model._pre_VP = json.getBoolean("_pre_VP");
            }
            // Receive _reg_AP
            if (json.has("_reg_AP")) {
                model._reg_AP = json.getBoolean("_reg_AP");
            }
            // Receive _reg_VP
            if (json.has("_reg_VP")) {
                model._reg_VP = json.getBoolean("_reg_VP");
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
        
        // Send AEI_counter
        json.put("AEI_counter", JSONObject.wrap(model.AEI_counter));
        // Send AS
        json.put("AS", JSONObject.wrap(model.AS));
        // Send AVI_counter
        json.put("AVI_counter", JSONObject.wrap(model.AVI_counter));
        // Send LRI_counter
        json.put("LRI_counter", JSONObject.wrap(model.LRI_counter));
        // Send PVARP_counter
        json.put("PVARP_counter", JSONObject.wrap(model.PVARP_counter));
        // Send URI_counter
        json.put("URI_counter", JSONObject.wrap(model.URI_counter));
        // Send VRP_counter
        json.put("VRP_counter", JSONObject.wrap(model.VRP_counter));
        // Send VS
        json.put("VS", JSONObject.wrap(model.VS));
        // Send AP
        json.put("AP", JSONObject.wrap(model.AP));
        // Send VP
        json.put("VP", JSONObject.wrap(model.VP));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send _DDDpacemaker_local_AEI_start
        json.put("_DDDpacemaker_local_AEI_start", JSONObject.wrap(model._DDDpacemaker_local_AEI_start));
        // Send _DDDpacemaker_local_AEI_stop
        json.put("_DDDpacemaker_local_AEI_stop", JSONObject.wrap(model._DDDpacemaker_local_AEI_stop));
        // Send _DDDpacemaker_local_AR
        json.put("_DDDpacemaker_local_AR", JSONObject.wrap(model._DDDpacemaker_local_AR));
        // Send _DDDpacemaker_local_AVI_start
        json.put("_DDDpacemaker_local_AVI_start", JSONObject.wrap(model._DDDpacemaker_local_AVI_start));
        // Send _DDDpacemaker_local_AVI_stop
        json.put("_DDDpacemaker_local_AVI_stop", JSONObject.wrap(model._DDDpacemaker_local_AVI_stop));
        // Send _DDDpacemaker_local_LRI_reset
        json.put("_DDDpacemaker_local_LRI_reset", JSONObject.wrap(model._DDDpacemaker_local_LRI_reset));
        // Send _DDDpacemaker_local_LRI_start
        json.put("_DDDpacemaker_local_LRI_start", JSONObject.wrap(model._DDDpacemaker_local_LRI_start));
        // Send _DDDpacemaker_local_LRI_stop
        json.put("_DDDpacemaker_local_LRI_stop", JSONObject.wrap(model._DDDpacemaker_local_LRI_stop));
        // Send _DDDpacemaker_local_PVARP_start
        json.put("_DDDpacemaker_local_PVARP_start", JSONObject.wrap(model._DDDpacemaker_local_PVARP_start));
        // Send _DDDpacemaker_local_PVARP_stop
        json.put("_DDDpacemaker_local_PVARP_stop", JSONObject.wrap(model._DDDpacemaker_local_PVARP_stop));
        // Send _DDDpacemaker_local_URI_start
        json.put("_DDDpacemaker_local_URI_start", JSONObject.wrap(model._DDDpacemaker_local_URI_start));
        // Send _DDDpacemaker_local_URI_stop
        json.put("_DDDpacemaker_local_URI_stop", JSONObject.wrap(model._DDDpacemaker_local_URI_stop));
        // Send _DDDpacemaker_local_VR
        json.put("_DDDpacemaker_local_VR", JSONObject.wrap(model._DDDpacemaker_local_VR));
        // Send _DDDpacemaker_local_VRP_start
        json.put("_DDDpacemaker_local_VRP_start", JSONObject.wrap(model._DDDpacemaker_local_VRP_start));
        // Send _DDDpacemaker_local_VRP_stop
        json.put("_DDDpacemaker_local_VRP_stop", JSONObject.wrap(model._DDDpacemaker_local_VRP_stop));
        // Send _DDDpacemaker_local__pre_PVARP_start
        json.put("_DDDpacemaker_local__pre_PVARP_start", JSONObject.wrap(model._DDDpacemaker_local__pre_PVARP_start));
        // Send _DDDpacemaker_local__pre_URI_start
        json.put("_DDDpacemaker_local__pre_URI_start", JSONObject.wrap(model._DDDpacemaker_local__pre_URI_start));
        // Send _DDDpacemaker_local__pre_URI_stop
        json.put("_DDDpacemaker_local__pre_URI_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_URI_stop));
        // Send _DDDpacemaker_local__pre_real_AS
        json.put("_DDDpacemaker_local__pre_real_AS", JSONObject.wrap(model._DDDpacemaker_local__pre_real_AS));
        // Send _DDDpacemaker_local__pre_real_VS
        json.put("_DDDpacemaker_local__pre_real_VS", JSONObject.wrap(model._DDDpacemaker_local__pre_real_VS));
        // Send _DDDpacemaker_local__reg_PVARP_start
        json.put("_DDDpacemaker_local__reg_PVARP_start", JSONObject.wrap(model._DDDpacemaker_local__reg_PVARP_start));
        // Send _DDDpacemaker_local__reg_URI_start
        json.put("_DDDpacemaker_local__reg_URI_start", JSONObject.wrap(model._DDDpacemaker_local__reg_URI_start));
        // Send _DDDpacemaker_local__reg_URI_stop
        json.put("_DDDpacemaker_local__reg_URI_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_URI_stop));
        // Send _DDDpacemaker_local__reg_real_AS
        json.put("_DDDpacemaker_local__reg_real_AS", JSONObject.wrap(model._DDDpacemaker_local__reg_real_AS));
        // Send _DDDpacemaker_local__reg_real_VS
        json.put("_DDDpacemaker_local__reg_real_VS", JSONObject.wrap(model._DDDpacemaker_local__reg_real_VS));
        // Send _DDDpacemaker_local_real_AS
        json.put("_DDDpacemaker_local_real_AS", JSONObject.wrap(model._DDDpacemaker_local_real_AS));
        // Send _DDDpacemaker_local_real_VS
        json.put("_DDDpacemaker_local_real_VS", JSONObject.wrap(model._DDDpacemaker_local_real_VS));
        // Send _GO
        json.put("_GO", JSONObject.wrap(model._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(model._TERM));
        // Send _cg12
        json.put("_cg12", JSONObject.wrap(model._cg12));
        // Send _cg14
        json.put("_cg14", JSONObject.wrap(model._cg14));
        // Send _cg16
        json.put("_cg16", JSONObject.wrap(model._cg16));
        // Send _cg21
        json.put("_cg21", JSONObject.wrap(model._cg21));
        // Send _cg24
        json.put("_cg24", JSONObject.wrap(model._cg24));
        // Send _cg26
        json.put("_cg26", JSONObject.wrap(model._cg26));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(model._cg31));
        // Send _cg34
        json.put("_cg34", JSONObject.wrap(model._cg34));
        // Send _cg36
        json.put("_cg36", JSONObject.wrap(model._cg36));
        // Send _cg38
        json.put("_cg38", JSONObject.wrap(model._cg38));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(model._cg4));
        // Send _cg43
        json.put("_cg43", JSONObject.wrap(model._cg43));
        // Send _cg46
        json.put("_cg46", JSONObject.wrap(model._cg46));
        // Send _cg48
        json.put("_cg48", JSONObject.wrap(model._cg48));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(model._cg50));
        // Send _cg55
        json.put("_cg55", JSONObject.wrap(model._cg55));
        // Send _cg58
        json.put("_cg58", JSONObject.wrap(model._cg58));
        // Send _cg60
        json.put("_cg60", JSONObject.wrap(model._cg60));
        // Send _cg65
        json.put("_cg65", JSONObject.wrap(model._cg65));
        // Send _cg68
        json.put("_cg68", JSONObject.wrap(model._cg68));
        // Send _cg7
        json.put("_cg7", JSONObject.wrap(model._cg7));
        // Send _cg9
        json.put("_cg9", JSONObject.wrap(model._cg9));
        // Send _g10
        json.put("_g10", JSONObject.wrap(model._g10));
        // Send _g101
        json.put("_g101", JSONObject.wrap(model._g101));
        // Send _g12
        json.put("_g12", JSONObject.wrap(model._g12));
        // Send _g13
        json.put("_g13", JSONObject.wrap(model._g13));
        // Send _g14
        json.put("_g14", JSONObject.wrap(model._g14));
        // Send _g15
        json.put("_g15", JSONObject.wrap(model._g15));
        // Send _g16
        json.put("_g16", JSONObject.wrap(model._g16));
        // Send _g17
        json.put("_g17", JSONObject.wrap(model._g17));
        // Send _g20
        json.put("_g20", JSONObject.wrap(model._g20));
        // Send _g21
        json.put("_g21", JSONObject.wrap(model._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(model._g22));
        // Send _g24
        json.put("_g24", JSONObject.wrap(model._g24));
        // Send _g25
        json.put("_g25", JSONObject.wrap(model._g25));
        // Send _g26
        json.put("_g26", JSONObject.wrap(model._g26));
        // Send _g31
        json.put("_g31", JSONObject.wrap(model._g31));
        // Send _g32
        json.put("_g32", JSONObject.wrap(model._g32));
        // Send _g34
        json.put("_g34", JSONObject.wrap(model._g34));
        // Send _g35
        json.put("_g35", JSONObject.wrap(model._g35));
        // Send _g36
        json.put("_g36", JSONObject.wrap(model._g36));
        // Send _g37
        json.put("_g37", JSONObject.wrap(model._g37));
        // Send _g38
        json.put("_g38", JSONObject.wrap(model._g38));
        // Send _g39
        json.put("_g39", JSONObject.wrap(model._g39));
        // Send _g4
        json.put("_g4", JSONObject.wrap(model._g4));
        // Send _g42
        json.put("_g42", JSONObject.wrap(model._g42));
        // Send _g43
        json.put("_g43", JSONObject.wrap(model._g43));
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
        // Send _g5
        json.put("_g5", JSONObject.wrap(model._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(model._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(model._g51));
        // Send _g55
        json.put("_g55", JSONObject.wrap(model._g55));
        // Send _g56
        json.put("_g56", JSONObject.wrap(model._g56));
        // Send _g58
        json.put("_g58", JSONObject.wrap(model._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(model._g59));
        // Send _g60
        json.put("_g60", JSONObject.wrap(model._g60));
        // Send _g61
        json.put("_g61", JSONObject.wrap(model._g61));
        // Send _g65
        json.put("_g65", JSONObject.wrap(model._g65));
        // Send _g66
        json.put("_g66", JSONObject.wrap(model._g66));
        // Send _g69
        json.put("_g69", JSONObject.wrap(model._g69));
        // Send _g7
        json.put("_g7", JSONObject.wrap(model._g7));
        // Send _g77
        json.put("_g77", JSONObject.wrap(model._g77));
        // Send _g8
        json.put("_g8", JSONObject.wrap(model._g8));
        // Send _g81
        json.put("_g81", JSONObject.wrap(model._g81));
        // Send _g9
        json.put("_g9", JSONObject.wrap(model._g9));
        // Send _pg101
        json.put("_pg101", JSONObject.wrap(model._pg101));
        // Send _pg15
        json.put("_pg15", JSONObject.wrap(model._pg15));
        // Send _pg17
        json.put("_pg17", JSONObject.wrap(model._pg17));
        // Send _pg20
        json.put("_pg20", JSONObject.wrap(model._pg20));
        // Send _pg24
        json.put("_pg24", JSONObject.wrap(model._pg24));
        // Send _pg26
        json.put("_pg26", JSONObject.wrap(model._pg26));
        // Send _pg31
        json.put("_pg31", JSONObject.wrap(model._pg31));
        // Send _pg35
        json.put("_pg35", JSONObject.wrap(model._pg35));
        // Send _pg37
        json.put("_pg37", JSONObject.wrap(model._pg37));
        // Send _pg4
        json.put("_pg4", JSONObject.wrap(model._pg4));
        // Send _pg42
        json.put("_pg42", JSONObject.wrap(model._pg42));
        // Send _pg43
        json.put("_pg43", JSONObject.wrap(model._pg43));
        // Send _pg55
        json.put("_pg55", JSONObject.wrap(model._pg55));
        // Send _pg59
        json.put("_pg59", JSONObject.wrap(model._pg59));
        // Send _pg66
        json.put("_pg66", JSONObject.wrap(model._pg66));
        // Send _pg69
        json.put("_pg69", JSONObject.wrap(model._pg69));
        // Send _pre_AP
        json.put("_pre_AP", JSONObject.wrap(model._pre_AP));
        // Send _pre_VP
        json.put("_pre_VP", JSONObject.wrap(model._pre_VP));
        // Send _reg_AP
        json.put("_reg_AP", JSONObject.wrap(model._reg_AP));
        // Send _reg_VP
        json.put("_reg_VP", JSONObject.wrap(model._reg_VP));
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