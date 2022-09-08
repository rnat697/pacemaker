

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
            // Receive _DDDpacemaker_local__pre_AEI_start
            if (json.has("_DDDpacemaker_local__pre_AEI_start")) {
                model._DDDpacemaker_local__pre_AEI_start = json.getBoolean("_DDDpacemaker_local__pre_AEI_start");
            }
            // Receive _DDDpacemaker_local__pre_AEI_stop
            if (json.has("_DDDpacemaker_local__pre_AEI_stop")) {
                model._DDDpacemaker_local__pre_AEI_stop = json.getBoolean("_DDDpacemaker_local__pre_AEI_stop");
            }
            // Receive _DDDpacemaker_local__pre_AVI_start
            if (json.has("_DDDpacemaker_local__pre_AVI_start")) {
                model._DDDpacemaker_local__pre_AVI_start = json.getBoolean("_DDDpacemaker_local__pre_AVI_start");
            }
            // Receive _DDDpacemaker_local__pre_AVI_stop
            if (json.has("_DDDpacemaker_local__pre_AVI_stop")) {
                model._DDDpacemaker_local__pre_AVI_stop = json.getBoolean("_DDDpacemaker_local__pre_AVI_stop");
            }
            // Receive _DDDpacemaker_local__pre_LRI_start
            if (json.has("_DDDpacemaker_local__pre_LRI_start")) {
                model._DDDpacemaker_local__pre_LRI_start = json.getBoolean("_DDDpacemaker_local__pre_LRI_start");
            }
            // Receive _DDDpacemaker_local__pre_LRI_stop
            if (json.has("_DDDpacemaker_local__pre_LRI_stop")) {
                model._DDDpacemaker_local__pre_LRI_stop = json.getBoolean("_DDDpacemaker_local__pre_LRI_stop");
            }
            // Receive _DDDpacemaker_local__pre_PVARP_start
            if (json.has("_DDDpacemaker_local__pre_PVARP_start")) {
                model._DDDpacemaker_local__pre_PVARP_start = json.getBoolean("_DDDpacemaker_local__pre_PVARP_start");
            }
            // Receive _DDDpacemaker_local__pre_PVARP_stop
            if (json.has("_DDDpacemaker_local__pre_PVARP_stop")) {
                model._DDDpacemaker_local__pre_PVARP_stop = json.getBoolean("_DDDpacemaker_local__pre_PVARP_stop");
            }
            // Receive _DDDpacemaker_local__pre_URI_start
            if (json.has("_DDDpacemaker_local__pre_URI_start")) {
                model._DDDpacemaker_local__pre_URI_start = json.getBoolean("_DDDpacemaker_local__pre_URI_start");
            }
            // Receive _DDDpacemaker_local__pre_URI_stop
            if (json.has("_DDDpacemaker_local__pre_URI_stop")) {
                model._DDDpacemaker_local__pre_URI_stop = json.getBoolean("_DDDpacemaker_local__pre_URI_stop");
            }
            // Receive _DDDpacemaker_local__pre_VRP_start
            if (json.has("_DDDpacemaker_local__pre_VRP_start")) {
                model._DDDpacemaker_local__pre_VRP_start = json.getBoolean("_DDDpacemaker_local__pre_VRP_start");
            }
            // Receive _DDDpacemaker_local__pre_VRP_stop
            if (json.has("_DDDpacemaker_local__pre_VRP_stop")) {
                model._DDDpacemaker_local__pre_VRP_stop = json.getBoolean("_DDDpacemaker_local__pre_VRP_stop");
            }
            // Receive _DDDpacemaker_local__pre_real_AS
            if (json.has("_DDDpacemaker_local__pre_real_AS")) {
                model._DDDpacemaker_local__pre_real_AS = json.getBoolean("_DDDpacemaker_local__pre_real_AS");
            }
            // Receive _DDDpacemaker_local__pre_real_VS
            if (json.has("_DDDpacemaker_local__pre_real_VS")) {
                model._DDDpacemaker_local__pre_real_VS = json.getBoolean("_DDDpacemaker_local__pre_real_VS");
            }
            // Receive _DDDpacemaker_local__reg_AEI_start
            if (json.has("_DDDpacemaker_local__reg_AEI_start")) {
                model._DDDpacemaker_local__reg_AEI_start = json.getBoolean("_DDDpacemaker_local__reg_AEI_start");
            }
            // Receive _DDDpacemaker_local__reg_AEI_stop
            if (json.has("_DDDpacemaker_local__reg_AEI_stop")) {
                model._DDDpacemaker_local__reg_AEI_stop = json.getBoolean("_DDDpacemaker_local__reg_AEI_stop");
            }
            // Receive _DDDpacemaker_local__reg_AVI_start
            if (json.has("_DDDpacemaker_local__reg_AVI_start")) {
                model._DDDpacemaker_local__reg_AVI_start = json.getBoolean("_DDDpacemaker_local__reg_AVI_start");
            }
            // Receive _DDDpacemaker_local__reg_AVI_stop
            if (json.has("_DDDpacemaker_local__reg_AVI_stop")) {
                model._DDDpacemaker_local__reg_AVI_stop = json.getBoolean("_DDDpacemaker_local__reg_AVI_stop");
            }
            // Receive _DDDpacemaker_local__reg_LRI_start
            if (json.has("_DDDpacemaker_local__reg_LRI_start")) {
                model._DDDpacemaker_local__reg_LRI_start = json.getBoolean("_DDDpacemaker_local__reg_LRI_start");
            }
            // Receive _DDDpacemaker_local__reg_LRI_stop
            if (json.has("_DDDpacemaker_local__reg_LRI_stop")) {
                model._DDDpacemaker_local__reg_LRI_stop = json.getBoolean("_DDDpacemaker_local__reg_LRI_stop");
            }
            // Receive _DDDpacemaker_local__reg_PVARP_start
            if (json.has("_DDDpacemaker_local__reg_PVARP_start")) {
                model._DDDpacemaker_local__reg_PVARP_start = json.getBoolean("_DDDpacemaker_local__reg_PVARP_start");
            }
            // Receive _DDDpacemaker_local__reg_PVARP_stop
            if (json.has("_DDDpacemaker_local__reg_PVARP_stop")) {
                model._DDDpacemaker_local__reg_PVARP_stop = json.getBoolean("_DDDpacemaker_local__reg_PVARP_stop");
            }
            // Receive _DDDpacemaker_local__reg_URI_start
            if (json.has("_DDDpacemaker_local__reg_URI_start")) {
                model._DDDpacemaker_local__reg_URI_start = json.getBoolean("_DDDpacemaker_local__reg_URI_start");
            }
            // Receive _DDDpacemaker_local__reg_URI_stop
            if (json.has("_DDDpacemaker_local__reg_URI_stop")) {
                model._DDDpacemaker_local__reg_URI_stop = json.getBoolean("_DDDpacemaker_local__reg_URI_stop");
            }
            // Receive _DDDpacemaker_local__reg_VRP_start
            if (json.has("_DDDpacemaker_local__reg_VRP_start")) {
                model._DDDpacemaker_local__reg_VRP_start = json.getBoolean("_DDDpacemaker_local__reg_VRP_start");
            }
            // Receive _DDDpacemaker_local__reg_VRP_stop
            if (json.has("_DDDpacemaker_local__reg_VRP_stop")) {
                model._DDDpacemaker_local__reg_VRP_stop = json.getBoolean("_DDDpacemaker_local__reg_VRP_stop");
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
            // Receive _cg100
            if (json.has("_cg100")) {
                model._cg100 = json.getBoolean("_cg100");
            }
            // Receive _cg105
            if (json.has("_cg105")) {
                model._cg105 = json.getBoolean("_cg105");
            }
            // Receive _cg108
            if (json.has("_cg108")) {
                model._cg108 = json.getBoolean("_cg108");
            }
            // Receive _cg113
            if (json.has("_cg113")) {
                model._cg113 = json.getBoolean("_cg113");
            }
            // Receive _cg116
            if (json.has("_cg116")) {
                model._cg116 = json.getBoolean("_cg116");
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
            // Receive _cg29
            if (json.has("_cg29")) {
                model._cg29 = json.getBoolean("_cg29");
            }
            // Receive _cg32
            if (json.has("_cg32")) {
                model._cg32 = json.getBoolean("_cg32");
            }
            // Receive _cg34
            if (json.has("_cg34")) {
                model._cg34 = json.getBoolean("_cg34");
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
            // Receive _cg47
            if (json.has("_cg47")) {
                model._cg47 = json.getBoolean("_cg47");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                model._cg50 = json.getBoolean("_cg50");
            }
            // Receive _cg52
            if (json.has("_cg52")) {
                model._cg52 = json.getBoolean("_cg52");
            }
            // Receive _cg54
            if (json.has("_cg54")) {
                model._cg54 = json.getBoolean("_cg54");
            }
            // Receive _cg59
            if (json.has("_cg59")) {
                model._cg59 = json.getBoolean("_cg59");
            }
            // Receive _cg62
            if (json.has("_cg62")) {
                model._cg62 = json.getBoolean("_cg62");
            }
            // Receive _cg67
            if (json.has("_cg67")) {
                model._cg67 = json.getBoolean("_cg67");
            }
            // Receive _cg7
            if (json.has("_cg7")) {
                model._cg7 = json.getBoolean("_cg7");
            }
            // Receive _cg70
            if (json.has("_cg70")) {
                model._cg70 = json.getBoolean("_cg70");
            }
            // Receive _cg72
            if (json.has("_cg72")) {
                model._cg72 = json.getBoolean("_cg72");
            }
            // Receive _cg74
            if (json.has("_cg74")) {
                model._cg74 = json.getBoolean("_cg74");
            }
            // Receive _cg79
            if (json.has("_cg79")) {
                model._cg79 = json.getBoolean("_cg79");
            }
            // Receive _cg82
            if (json.has("_cg82")) {
                model._cg82 = json.getBoolean("_cg82");
            }
            // Receive _cg87
            if (json.has("_cg87")) {
                model._cg87 = json.getBoolean("_cg87");
            }
            // Receive _cg9
            if (json.has("_cg9")) {
                model._cg9 = json.getBoolean("_cg9");
            }
            // Receive _cg90
            if (json.has("_cg90")) {
                model._cg90 = json.getBoolean("_cg90");
            }
            // Receive _cg92
            if (json.has("_cg92")) {
                model._cg92 = json.getBoolean("_cg92");
            }
            // Receive _cg97
            if (json.has("_cg97")) {
                model._cg97 = json.getBoolean("_cg97");
            }
            // Receive _g10
            if (json.has("_g10")) {
                model._g10 = json.getBoolean("_g10");
            }
            // Receive _g100
            if (json.has("_g100")) {
                model._g100 = json.getBoolean("_g100");
            }
            // Receive _g101
            if (json.has("_g101")) {
                model._g101 = json.getBoolean("_g101");
            }
            // Receive _g105
            if (json.has("_g105")) {
                model._g105 = json.getBoolean("_g105");
            }
            // Receive _g106
            if (json.has("_g106")) {
                model._g106 = json.getBoolean("_g106");
            }
            // Receive _g108
            if (json.has("_g108")) {
                model._g108 = json.getBoolean("_g108");
            }
            // Receive _g109
            if (json.has("_g109")) {
                model._g109 = json.getBoolean("_g109");
            }
            // Receive _g113
            if (json.has("_g113")) {
                model._g113 = json.getBoolean("_g113");
            }
            // Receive _g116
            if (json.has("_g116")) {
                model._g116 = json.getBoolean("_g116");
            }
            // Receive _g117
            if (json.has("_g117")) {
                model._g117 = json.getBoolean("_g117");
            }
            // Receive _g12
            if (json.has("_g12")) {
                model._g12 = json.getBoolean("_g12");
            }
            // Receive _g13
            if (json.has("_g13")) {
                model._g13 = json.getBoolean("_g13");
            }
            // Receive _g133
            if (json.has("_g133")) {
                model._g133 = json.getBoolean("_g133");
            }
            // Receive _g14
            if (json.has("_g14")) {
                model._g14 = json.getBoolean("_g14");
            }
            // Receive _g141
            if (json.has("_g141")) {
                model._g141 = json.getBoolean("_g141");
            }
            // Receive _g15
            if (json.has("_g15")) {
                model._g15 = json.getBoolean("_g15");
            }
            // Receive _g153
            if (json.has("_g153")) {
                model._g153 = json.getBoolean("_g153");
            }
            // Receive _g157
            if (json.has("_g157")) {
                model._g157 = json.getBoolean("_g157");
            }
            // Receive _g16
            if (json.has("_g16")) {
                model._g16 = json.getBoolean("_g16");
            }
            // Receive _g165
            if (json.has("_g165")) {
                model._g165 = json.getBoolean("_g165");
            }
            // Receive _g169
            if (json.has("_g169")) {
                model._g169 = json.getBoolean("_g169");
            }
            // Receive _g17
            if (json.has("_g17")) {
                model._g17 = json.getBoolean("_g17");
            }
            // Receive _g173
            if (json.has("_g173")) {
                model._g173 = json.getBoolean("_g173");
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
            // Receive _g28
            if (json.has("_g28")) {
                model._g28 = json.getBoolean("_g28");
            }
            // Receive _g29
            if (json.has("_g29")) {
                model._g29 = json.getBoolean("_g29");
            }
            // Receive _g30
            if (json.has("_g30")) {
                model._g30 = json.getBoolean("_g30");
            }
            // Receive _g32
            if (json.has("_g32")) {
                model._g32 = json.getBoolean("_g32");
            }
            // Receive _g33
            if (json.has("_g33")) {
                model._g33 = json.getBoolean("_g33");
            }
            // Receive _g34
            if (json.has("_g34")) {
                model._g34 = json.getBoolean("_g34");
            }
            // Receive _g39
            if (json.has("_g39")) {
                model._g39 = json.getBoolean("_g39");
            }
            // Receive _g4
            if (json.has("_g4")) {
                model._g4 = json.getBoolean("_g4");
            }
            // Receive _g40
            if (json.has("_g40")) {
                model._g40 = json.getBoolean("_g40");
            }
            // Receive _g42
            if (json.has("_g42")) {
                model._g42 = json.getBoolean("_g42");
            }
            // Receive _g43
            if (json.has("_g43")) {
                model._g43 = json.getBoolean("_g43");
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
            // Receive _g52
            if (json.has("_g52")) {
                model._g52 = json.getBoolean("_g52");
            }
            // Receive _g53
            if (json.has("_g53")) {
                model._g53 = json.getBoolean("_g53");
            }
            // Receive _g59
            if (json.has("_g59")) {
                model._g59 = json.getBoolean("_g59");
            }
            // Receive _g60
            if (json.has("_g60")) {
                model._g60 = json.getBoolean("_g60");
            }
            // Receive _g62
            if (json.has("_g62")) {
                model._g62 = json.getBoolean("_g62");
            }
            // Receive _g63
            if (json.has("_g63")) {
                model._g63 = json.getBoolean("_g63");
            }
            // Receive _g66
            if (json.has("_g66")) {
                model._g66 = json.getBoolean("_g66");
            }
            // Receive _g67
            if (json.has("_g67")) {
                model._g67 = json.getBoolean("_g67");
            }
            // Receive _g68
            if (json.has("_g68")) {
                model._g68 = json.getBoolean("_g68");
            }
            // Receive _g7
            if (json.has("_g7")) {
                model._g7 = json.getBoolean("_g7");
            }
            // Receive _g70
            if (json.has("_g70")) {
                model._g70 = json.getBoolean("_g70");
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
            // Receive _g79
            if (json.has("_g79")) {
                model._g79 = json.getBoolean("_g79");
            }
            // Receive _g8
            if (json.has("_g8")) {
                model._g8 = json.getBoolean("_g8");
            }
            // Receive _g80
            if (json.has("_g80")) {
                model._g80 = json.getBoolean("_g80");
            }
            // Receive _g82
            if (json.has("_g82")) {
                model._g82 = json.getBoolean("_g82");
            }
            // Receive _g83
            if (json.has("_g83")) {
                model._g83 = json.getBoolean("_g83");
            }
            // Receive _g87
            if (json.has("_g87")) {
                model._g87 = json.getBoolean("_g87");
            }
            // Receive _g88
            if (json.has("_g88")) {
                model._g88 = json.getBoolean("_g88");
            }
            // Receive _g9
            if (json.has("_g9")) {
                model._g9 = json.getBoolean("_g9");
            }
            // Receive _g90
            if (json.has("_g90")) {
                model._g90 = json.getBoolean("_g90");
            }
            // Receive _g91
            if (json.has("_g91")) {
                model._g91 = json.getBoolean("_g91");
            }
            // Receive _g92
            if (json.has("_g92")) {
                model._g92 = json.getBoolean("_g92");
            }
            // Receive _g93
            if (json.has("_g93")) {
                model._g93 = json.getBoolean("_g93");
            }
            // Receive _g97
            if (json.has("_g97")) {
                model._g97 = json.getBoolean("_g97");
            }
            // Receive _g98
            if (json.has("_g98")) {
                model._g98 = json.getBoolean("_g98");
            }
            // Receive _pg101
            if (json.has("_pg101")) {
                model._pg101 = json.getBoolean("_pg101");
            }
            // Receive _pg106
            if (json.has("_pg106")) {
                model._pg106 = json.getBoolean("_pg106");
            }
            // Receive _pg109
            if (json.has("_pg109")) {
                model._pg109 = json.getBoolean("_pg109");
            }
            // Receive _pg116
            if (json.has("_pg116")) {
                model._pg116 = json.getBoolean("_pg116");
            }
            // Receive _pg117
            if (json.has("_pg117")) {
                model._pg117 = json.getBoolean("_pg117");
            }
            // Receive _pg15
            if (json.has("_pg15")) {
                model._pg15 = json.getBoolean("_pg15");
            }
            // Receive _pg157
            if (json.has("_pg157")) {
                model._pg157 = json.getBoolean("_pg157");
            }
            // Receive _pg16
            if (json.has("_pg16")) {
                model._pg16 = json.getBoolean("_pg16");
            }
            // Receive _pg165
            if (json.has("_pg165")) {
                model._pg165 = json.getBoolean("_pg165");
            }
            // Receive _pg169
            if (json.has("_pg169")) {
                model._pg169 = json.getBoolean("_pg169");
            }
            // Receive _pg17
            if (json.has("_pg17")) {
                model._pg17 = json.getBoolean("_pg17");
            }
            // Receive _pg22
            if (json.has("_pg22")) {
                model._pg22 = json.getBoolean("_pg22");
            }
            // Receive _pg25
            if (json.has("_pg25")) {
                model._pg25 = json.getBoolean("_pg25");
            }
            // Receive _pg28
            if (json.has("_pg28")) {
                model._pg28 = json.getBoolean("_pg28");
            }
            // Receive _pg34
            if (json.has("_pg34")) {
                model._pg34 = json.getBoolean("_pg34");
            }
            // Receive _pg4
            if (json.has("_pg4")) {
                model._pg4 = json.getBoolean("_pg4");
            }
            // Receive _pg40
            if (json.has("_pg40")) {
                model._pg40 = json.getBoolean("_pg40");
            }
            // Receive _pg43
            if (json.has("_pg43")) {
                model._pg43 = json.getBoolean("_pg43");
            }
            // Receive _pg46
            if (json.has("_pg46")) {
                model._pg46 = json.getBoolean("_pg46");
            }
            // Receive _pg48
            if (json.has("_pg48")) {
                model._pg48 = json.getBoolean("_pg48");
            }
            // Receive _pg52
            if (json.has("_pg52")) {
                model._pg52 = json.getBoolean("_pg52");
            }
            // Receive _pg62
            if (json.has("_pg62")) {
                model._pg62 = json.getBoolean("_pg62");
            }
            // Receive _pg63
            if (json.has("_pg63")) {
                model._pg63 = json.getBoolean("_pg63");
            }
            // Receive _pg66
            if (json.has("_pg66")) {
                model._pg66 = json.getBoolean("_pg66");
            }
            // Receive _pg68
            if (json.has("_pg68")) {
                model._pg68 = json.getBoolean("_pg68");
            }
            // Receive _pg72
            if (json.has("_pg72")) {
                model._pg72 = json.getBoolean("_pg72");
            }
            // Receive _pg80
            if (json.has("_pg80")) {
                model._pg80 = json.getBoolean("_pg80");
            }
            // Receive _pg83
            if (json.has("_pg83")) {
                model._pg83 = json.getBoolean("_pg83");
            }
            // Receive _pg87
            if (json.has("_pg87")) {
                model._pg87 = json.getBoolean("_pg87");
            }
            // Receive _pg91
            if (json.has("_pg91")) {
                model._pg91 = json.getBoolean("_pg91");
            }
            // Receive _pg92
            if (json.has("_pg92")) {
                model._pg92 = json.getBoolean("_pg92");
            }
            // Receive _pg98
            if (json.has("_pg98")) {
                model._pg98 = json.getBoolean("_pg98");
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
        // Send _DDDpacemaker_local__pre_AEI_start
        json.put("_DDDpacemaker_local__pre_AEI_start", JSONObject.wrap(model._DDDpacemaker_local__pre_AEI_start));
        // Send _DDDpacemaker_local__pre_AEI_stop
        json.put("_DDDpacemaker_local__pre_AEI_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_AEI_stop));
        // Send _DDDpacemaker_local__pre_AVI_start
        json.put("_DDDpacemaker_local__pre_AVI_start", JSONObject.wrap(model._DDDpacemaker_local__pre_AVI_start));
        // Send _DDDpacemaker_local__pre_AVI_stop
        json.put("_DDDpacemaker_local__pre_AVI_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_AVI_stop));
        // Send _DDDpacemaker_local__pre_LRI_start
        json.put("_DDDpacemaker_local__pre_LRI_start", JSONObject.wrap(model._DDDpacemaker_local__pre_LRI_start));
        // Send _DDDpacemaker_local__pre_LRI_stop
        json.put("_DDDpacemaker_local__pre_LRI_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_LRI_stop));
        // Send _DDDpacemaker_local__pre_PVARP_start
        json.put("_DDDpacemaker_local__pre_PVARP_start", JSONObject.wrap(model._DDDpacemaker_local__pre_PVARP_start));
        // Send _DDDpacemaker_local__pre_PVARP_stop
        json.put("_DDDpacemaker_local__pre_PVARP_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_PVARP_stop));
        // Send _DDDpacemaker_local__pre_URI_start
        json.put("_DDDpacemaker_local__pre_URI_start", JSONObject.wrap(model._DDDpacemaker_local__pre_URI_start));
        // Send _DDDpacemaker_local__pre_URI_stop
        json.put("_DDDpacemaker_local__pre_URI_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_URI_stop));
        // Send _DDDpacemaker_local__pre_VRP_start
        json.put("_DDDpacemaker_local__pre_VRP_start", JSONObject.wrap(model._DDDpacemaker_local__pre_VRP_start));
        // Send _DDDpacemaker_local__pre_VRP_stop
        json.put("_DDDpacemaker_local__pre_VRP_stop", JSONObject.wrap(model._DDDpacemaker_local__pre_VRP_stop));
        // Send _DDDpacemaker_local__pre_real_AS
        json.put("_DDDpacemaker_local__pre_real_AS", JSONObject.wrap(model._DDDpacemaker_local__pre_real_AS));
        // Send _DDDpacemaker_local__pre_real_VS
        json.put("_DDDpacemaker_local__pre_real_VS", JSONObject.wrap(model._DDDpacemaker_local__pre_real_VS));
        // Send _DDDpacemaker_local__reg_AEI_start
        json.put("_DDDpacemaker_local__reg_AEI_start", JSONObject.wrap(model._DDDpacemaker_local__reg_AEI_start));
        // Send _DDDpacemaker_local__reg_AEI_stop
        json.put("_DDDpacemaker_local__reg_AEI_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_AEI_stop));
        // Send _DDDpacemaker_local__reg_AVI_start
        json.put("_DDDpacemaker_local__reg_AVI_start", JSONObject.wrap(model._DDDpacemaker_local__reg_AVI_start));
        // Send _DDDpacemaker_local__reg_AVI_stop
        json.put("_DDDpacemaker_local__reg_AVI_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_AVI_stop));
        // Send _DDDpacemaker_local__reg_LRI_start
        json.put("_DDDpacemaker_local__reg_LRI_start", JSONObject.wrap(model._DDDpacemaker_local__reg_LRI_start));
        // Send _DDDpacemaker_local__reg_LRI_stop
        json.put("_DDDpacemaker_local__reg_LRI_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_LRI_stop));
        // Send _DDDpacemaker_local__reg_PVARP_start
        json.put("_DDDpacemaker_local__reg_PVARP_start", JSONObject.wrap(model._DDDpacemaker_local__reg_PVARP_start));
        // Send _DDDpacemaker_local__reg_PVARP_stop
        json.put("_DDDpacemaker_local__reg_PVARP_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_PVARP_stop));
        // Send _DDDpacemaker_local__reg_URI_start
        json.put("_DDDpacemaker_local__reg_URI_start", JSONObject.wrap(model._DDDpacemaker_local__reg_URI_start));
        // Send _DDDpacemaker_local__reg_URI_stop
        json.put("_DDDpacemaker_local__reg_URI_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_URI_stop));
        // Send _DDDpacemaker_local__reg_VRP_start
        json.put("_DDDpacemaker_local__reg_VRP_start", JSONObject.wrap(model._DDDpacemaker_local__reg_VRP_start));
        // Send _DDDpacemaker_local__reg_VRP_stop
        json.put("_DDDpacemaker_local__reg_VRP_stop", JSONObject.wrap(model._DDDpacemaker_local__reg_VRP_stop));
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
        // Send _cg100
        json.put("_cg100", JSONObject.wrap(model._cg100));
        // Send _cg105
        json.put("_cg105", JSONObject.wrap(model._cg105));
        // Send _cg108
        json.put("_cg108", JSONObject.wrap(model._cg108));
        // Send _cg113
        json.put("_cg113", JSONObject.wrap(model._cg113));
        // Send _cg116
        json.put("_cg116", JSONObject.wrap(model._cg116));
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
        // Send _cg29
        json.put("_cg29", JSONObject.wrap(model._cg29));
        // Send _cg32
        json.put("_cg32", JSONObject.wrap(model._cg32));
        // Send _cg34
        json.put("_cg34", JSONObject.wrap(model._cg34));
        // Send _cg39
        json.put("_cg39", JSONObject.wrap(model._cg39));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(model._cg4));
        // Send _cg42
        json.put("_cg42", JSONObject.wrap(model._cg42));
        // Send _cg47
        json.put("_cg47", JSONObject.wrap(model._cg47));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(model._cg50));
        // Send _cg52
        json.put("_cg52", JSONObject.wrap(model._cg52));
        // Send _cg54
        json.put("_cg54", JSONObject.wrap(model._cg54));
        // Send _cg59
        json.put("_cg59", JSONObject.wrap(model._cg59));
        // Send _cg62
        json.put("_cg62", JSONObject.wrap(model._cg62));
        // Send _cg67
        json.put("_cg67", JSONObject.wrap(model._cg67));
        // Send _cg7
        json.put("_cg7", JSONObject.wrap(model._cg7));
        // Send _cg70
        json.put("_cg70", JSONObject.wrap(model._cg70));
        // Send _cg72
        json.put("_cg72", JSONObject.wrap(model._cg72));
        // Send _cg74
        json.put("_cg74", JSONObject.wrap(model._cg74));
        // Send _cg79
        json.put("_cg79", JSONObject.wrap(model._cg79));
        // Send _cg82
        json.put("_cg82", JSONObject.wrap(model._cg82));
        // Send _cg87
        json.put("_cg87", JSONObject.wrap(model._cg87));
        // Send _cg9
        json.put("_cg9", JSONObject.wrap(model._cg9));
        // Send _cg90
        json.put("_cg90", JSONObject.wrap(model._cg90));
        // Send _cg92
        json.put("_cg92", JSONObject.wrap(model._cg92));
        // Send _cg97
        json.put("_cg97", JSONObject.wrap(model._cg97));
        // Send _g10
        json.put("_g10", JSONObject.wrap(model._g10));
        // Send _g100
        json.put("_g100", JSONObject.wrap(model._g100));
        // Send _g101
        json.put("_g101", JSONObject.wrap(model._g101));
        // Send _g105
        json.put("_g105", JSONObject.wrap(model._g105));
        // Send _g106
        json.put("_g106", JSONObject.wrap(model._g106));
        // Send _g108
        json.put("_g108", JSONObject.wrap(model._g108));
        // Send _g109
        json.put("_g109", JSONObject.wrap(model._g109));
        // Send _g113
        json.put("_g113", JSONObject.wrap(model._g113));
        // Send _g116
        json.put("_g116", JSONObject.wrap(model._g116));
        // Send _g117
        json.put("_g117", JSONObject.wrap(model._g117));
        // Send _g12
        json.put("_g12", JSONObject.wrap(model._g12));
        // Send _g13
        json.put("_g13", JSONObject.wrap(model._g13));
        // Send _g133
        json.put("_g133", JSONObject.wrap(model._g133));
        // Send _g14
        json.put("_g14", JSONObject.wrap(model._g14));
        // Send _g141
        json.put("_g141", JSONObject.wrap(model._g141));
        // Send _g15
        json.put("_g15", JSONObject.wrap(model._g15));
        // Send _g153
        json.put("_g153", JSONObject.wrap(model._g153));
        // Send _g157
        json.put("_g157", JSONObject.wrap(model._g157));
        // Send _g16
        json.put("_g16", JSONObject.wrap(model._g16));
        // Send _g165
        json.put("_g165", JSONObject.wrap(model._g165));
        // Send _g169
        json.put("_g169", JSONObject.wrap(model._g169));
        // Send _g17
        json.put("_g17", JSONObject.wrap(model._g17));
        // Send _g173
        json.put("_g173", JSONObject.wrap(model._g173));
        // Send _g21
        json.put("_g21", JSONObject.wrap(model._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(model._g22));
        // Send _g24
        json.put("_g24", JSONObject.wrap(model._g24));
        // Send _g25
        json.put("_g25", JSONObject.wrap(model._g25));
        // Send _g28
        json.put("_g28", JSONObject.wrap(model._g28));
        // Send _g29
        json.put("_g29", JSONObject.wrap(model._g29));
        // Send _g30
        json.put("_g30", JSONObject.wrap(model._g30));
        // Send _g32
        json.put("_g32", JSONObject.wrap(model._g32));
        // Send _g33
        json.put("_g33", JSONObject.wrap(model._g33));
        // Send _g34
        json.put("_g34", JSONObject.wrap(model._g34));
        // Send _g39
        json.put("_g39", JSONObject.wrap(model._g39));
        // Send _g4
        json.put("_g4", JSONObject.wrap(model._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(model._g40));
        // Send _g42
        json.put("_g42", JSONObject.wrap(model._g42));
        // Send _g43
        json.put("_g43", JSONObject.wrap(model._g43));
        // Send _g46
        json.put("_g46", JSONObject.wrap(model._g46));
        // Send _g47
        json.put("_g47", JSONObject.wrap(model._g47));
        // Send _g48
        json.put("_g48", JSONObject.wrap(model._g48));
        // Send _g5
        json.put("_g5", JSONObject.wrap(model._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(model._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(model._g51));
        // Send _g52
        json.put("_g52", JSONObject.wrap(model._g52));
        // Send _g53
        json.put("_g53", JSONObject.wrap(model._g53));
        // Send _g59
        json.put("_g59", JSONObject.wrap(model._g59));
        // Send _g60
        json.put("_g60", JSONObject.wrap(model._g60));
        // Send _g62
        json.put("_g62", JSONObject.wrap(model._g62));
        // Send _g63
        json.put("_g63", JSONObject.wrap(model._g63));
        // Send _g66
        json.put("_g66", JSONObject.wrap(model._g66));
        // Send _g67
        json.put("_g67", JSONObject.wrap(model._g67));
        // Send _g68
        json.put("_g68", JSONObject.wrap(model._g68));
        // Send _g7
        json.put("_g7", JSONObject.wrap(model._g7));
        // Send _g70
        json.put("_g70", JSONObject.wrap(model._g70));
        // Send _g71
        json.put("_g71", JSONObject.wrap(model._g71));
        // Send _g72
        json.put("_g72", JSONObject.wrap(model._g72));
        // Send _g73
        json.put("_g73", JSONObject.wrap(model._g73));
        // Send _g79
        json.put("_g79", JSONObject.wrap(model._g79));
        // Send _g8
        json.put("_g8", JSONObject.wrap(model._g8));
        // Send _g80
        json.put("_g80", JSONObject.wrap(model._g80));
        // Send _g82
        json.put("_g82", JSONObject.wrap(model._g82));
        // Send _g83
        json.put("_g83", JSONObject.wrap(model._g83));
        // Send _g87
        json.put("_g87", JSONObject.wrap(model._g87));
        // Send _g88
        json.put("_g88", JSONObject.wrap(model._g88));
        // Send _g9
        json.put("_g9", JSONObject.wrap(model._g9));
        // Send _g90
        json.put("_g90", JSONObject.wrap(model._g90));
        // Send _g91
        json.put("_g91", JSONObject.wrap(model._g91));
        // Send _g92
        json.put("_g92", JSONObject.wrap(model._g92));
        // Send _g93
        json.put("_g93", JSONObject.wrap(model._g93));
        // Send _g97
        json.put("_g97", JSONObject.wrap(model._g97));
        // Send _g98
        json.put("_g98", JSONObject.wrap(model._g98));
        // Send _pg101
        json.put("_pg101", JSONObject.wrap(model._pg101));
        // Send _pg106
        json.put("_pg106", JSONObject.wrap(model._pg106));
        // Send _pg109
        json.put("_pg109", JSONObject.wrap(model._pg109));
        // Send _pg116
        json.put("_pg116", JSONObject.wrap(model._pg116));
        // Send _pg117
        json.put("_pg117", JSONObject.wrap(model._pg117));
        // Send _pg15
        json.put("_pg15", JSONObject.wrap(model._pg15));
        // Send _pg157
        json.put("_pg157", JSONObject.wrap(model._pg157));
        // Send _pg16
        json.put("_pg16", JSONObject.wrap(model._pg16));
        // Send _pg165
        json.put("_pg165", JSONObject.wrap(model._pg165));
        // Send _pg169
        json.put("_pg169", JSONObject.wrap(model._pg169));
        // Send _pg17
        json.put("_pg17", JSONObject.wrap(model._pg17));
        // Send _pg22
        json.put("_pg22", JSONObject.wrap(model._pg22));
        // Send _pg25
        json.put("_pg25", JSONObject.wrap(model._pg25));
        // Send _pg28
        json.put("_pg28", JSONObject.wrap(model._pg28));
        // Send _pg34
        json.put("_pg34", JSONObject.wrap(model._pg34));
        // Send _pg4
        json.put("_pg4", JSONObject.wrap(model._pg4));
        // Send _pg40
        json.put("_pg40", JSONObject.wrap(model._pg40));
        // Send _pg43
        json.put("_pg43", JSONObject.wrap(model._pg43));
        // Send _pg46
        json.put("_pg46", JSONObject.wrap(model._pg46));
        // Send _pg48
        json.put("_pg48", JSONObject.wrap(model._pg48));
        // Send _pg52
        json.put("_pg52", JSONObject.wrap(model._pg52));
        // Send _pg62
        json.put("_pg62", JSONObject.wrap(model._pg62));
        // Send _pg63
        json.put("_pg63", JSONObject.wrap(model._pg63));
        // Send _pg66
        json.put("_pg66", JSONObject.wrap(model._pg66));
        // Send _pg68
        json.put("_pg68", JSONObject.wrap(model._pg68));
        // Send _pg72
        json.put("_pg72", JSONObject.wrap(model._pg72));
        // Send _pg80
        json.put("_pg80", JSONObject.wrap(model._pg80));
        // Send _pg83
        json.put("_pg83", JSONObject.wrap(model._pg83));
        // Send _pg87
        json.put("_pg87", JSONObject.wrap(model._pg87));
        // Send _pg91
        json.put("_pg91", JSONObject.wrap(model._pg91));
        // Send _pg92
        json.put("_pg92", JSONObject.wrap(model._pg92));
        // Send _pg98
        json.put("_pg98", JSONObject.wrap(model._pg98));
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