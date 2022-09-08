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
            
            // Receive AEI_counter
            if (json.has("AEI_counter")) {
                ${tickdata_name}.AEI_counter = json.getInt("AEI_counter");
            }
            // Receive AS
            if (json.has("AS")) {
                ${tickdata_name}.AS = json.getBoolean("AS");
            }
            // Receive AVI_counter
            if (json.has("AVI_counter")) {
                ${tickdata_name}.AVI_counter = json.getInt("AVI_counter");
            }
            // Receive LRI_counter
            if (json.has("LRI_counter")) {
                ${tickdata_name}.LRI_counter = json.getInt("LRI_counter");
            }
            // Receive PVARP_counter
            if (json.has("PVARP_counter")) {
                ${tickdata_name}.PVARP_counter = json.getInt("PVARP_counter");
            }
            // Receive URI_counter
            if (json.has("URI_counter")) {
                ${tickdata_name}.URI_counter = json.getInt("URI_counter");
            }
            // Receive VRP_counter
            if (json.has("VRP_counter")) {
                ${tickdata_name}.VRP_counter = json.getInt("VRP_counter");
            }
            // Receive VS
            if (json.has("VS")) {
                ${tickdata_name}.VS = json.getBoolean("VS");
            }
            // Receive AP
            if (json.has("AP")) {
                ${tickdata_name}.AP = json.getBoolean("AP");
            }
            // Receive VP
            if (json.has("VP")) {
                ${tickdata_name}.VP = json.getBoolean("VP");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive _DDDpacemaker_local_AEI_start
            if (json.has("_DDDpacemaker_local_AEI_start")) {
                ${tickdata_name}._DDDpacemaker_local_AEI_start = json.getBoolean("_DDDpacemaker_local_AEI_start");
            }
            // Receive _DDDpacemaker_local_AEI_stop
            if (json.has("_DDDpacemaker_local_AEI_stop")) {
                ${tickdata_name}._DDDpacemaker_local_AEI_stop = json.getBoolean("_DDDpacemaker_local_AEI_stop");
            }
            // Receive _DDDpacemaker_local_AR
            if (json.has("_DDDpacemaker_local_AR")) {
                ${tickdata_name}._DDDpacemaker_local_AR = json.getBoolean("_DDDpacemaker_local_AR");
            }
            // Receive _DDDpacemaker_local_AVI_start
            if (json.has("_DDDpacemaker_local_AVI_start")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_start = json.getBoolean("_DDDpacemaker_local_AVI_start");
            }
            // Receive _DDDpacemaker_local_AVI_stop
            if (json.has("_DDDpacemaker_local_AVI_stop")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_stop = json.getBoolean("_DDDpacemaker_local_AVI_stop");
            }
            // Receive _DDDpacemaker_local_LRI_reset
            if (json.has("_DDDpacemaker_local_LRI_reset")) {
                ${tickdata_name}._DDDpacemaker_local_LRI_reset = json.getBoolean("_DDDpacemaker_local_LRI_reset");
            }
            // Receive _DDDpacemaker_local_LRI_start
            if (json.has("_DDDpacemaker_local_LRI_start")) {
                ${tickdata_name}._DDDpacemaker_local_LRI_start = json.getBoolean("_DDDpacemaker_local_LRI_start");
            }
            // Receive _DDDpacemaker_local_LRI_stop
            if (json.has("_DDDpacemaker_local_LRI_stop")) {
                ${tickdata_name}._DDDpacemaker_local_LRI_stop = json.getBoolean("_DDDpacemaker_local_LRI_stop");
            }
            // Receive _DDDpacemaker_local_PVARP_start
            if (json.has("_DDDpacemaker_local_PVARP_start")) {
                ${tickdata_name}._DDDpacemaker_local_PVARP_start = json.getBoolean("_DDDpacemaker_local_PVARP_start");
            }
            // Receive _DDDpacemaker_local_PVARP_stop
            if (json.has("_DDDpacemaker_local_PVARP_stop")) {
                ${tickdata_name}._DDDpacemaker_local_PVARP_stop = json.getBoolean("_DDDpacemaker_local_PVARP_stop");
            }
            // Receive _DDDpacemaker_local_URI_start
            if (json.has("_DDDpacemaker_local_URI_start")) {
                ${tickdata_name}._DDDpacemaker_local_URI_start = json.getBoolean("_DDDpacemaker_local_URI_start");
            }
            // Receive _DDDpacemaker_local_URI_stop
            if (json.has("_DDDpacemaker_local_URI_stop")) {
                ${tickdata_name}._DDDpacemaker_local_URI_stop = json.getBoolean("_DDDpacemaker_local_URI_stop");
            }
            // Receive _DDDpacemaker_local_VR
            if (json.has("_DDDpacemaker_local_VR")) {
                ${tickdata_name}._DDDpacemaker_local_VR = json.getBoolean("_DDDpacemaker_local_VR");
            }
            // Receive _DDDpacemaker_local_VRP_start
            if (json.has("_DDDpacemaker_local_VRP_start")) {
                ${tickdata_name}._DDDpacemaker_local_VRP_start = json.getBoolean("_DDDpacemaker_local_VRP_start");
            }
            // Receive _DDDpacemaker_local_VRP_stop
            if (json.has("_DDDpacemaker_local_VRP_stop")) {
                ${tickdata_name}._DDDpacemaker_local_VRP_stop = json.getBoolean("_DDDpacemaker_local_VRP_stop");
            }
            // Receive _DDDpacemaker_local__pre_AEI_start
            if (json.has("_DDDpacemaker_local__pre_AEI_start")) {
                ${tickdata_name}._DDDpacemaker_local__pre_AEI_start = json.getBoolean("_DDDpacemaker_local__pre_AEI_start");
            }
            // Receive _DDDpacemaker_local__pre_AEI_stop
            if (json.has("_DDDpacemaker_local__pre_AEI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__pre_AEI_stop = json.getBoolean("_DDDpacemaker_local__pre_AEI_stop");
            }
            // Receive _DDDpacemaker_local__pre_AVI_start
            if (json.has("_DDDpacemaker_local__pre_AVI_start")) {
                ${tickdata_name}._DDDpacemaker_local__pre_AVI_start = json.getBoolean("_DDDpacemaker_local__pre_AVI_start");
            }
            // Receive _DDDpacemaker_local__pre_AVI_stop
            if (json.has("_DDDpacemaker_local__pre_AVI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__pre_AVI_stop = json.getBoolean("_DDDpacemaker_local__pre_AVI_stop");
            }
            // Receive _DDDpacemaker_local__pre_LRI_start
            if (json.has("_DDDpacemaker_local__pre_LRI_start")) {
                ${tickdata_name}._DDDpacemaker_local__pre_LRI_start = json.getBoolean("_DDDpacemaker_local__pre_LRI_start");
            }
            // Receive _DDDpacemaker_local__pre_LRI_stop
            if (json.has("_DDDpacemaker_local__pre_LRI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__pre_LRI_stop = json.getBoolean("_DDDpacemaker_local__pre_LRI_stop");
            }
            // Receive _DDDpacemaker_local__pre_PVARP_start
            if (json.has("_DDDpacemaker_local__pre_PVARP_start")) {
                ${tickdata_name}._DDDpacemaker_local__pre_PVARP_start = json.getBoolean("_DDDpacemaker_local__pre_PVARP_start");
            }
            // Receive _DDDpacemaker_local__pre_PVARP_stop
            if (json.has("_DDDpacemaker_local__pre_PVARP_stop")) {
                ${tickdata_name}._DDDpacemaker_local__pre_PVARP_stop = json.getBoolean("_DDDpacemaker_local__pre_PVARP_stop");
            }
            // Receive _DDDpacemaker_local__pre_URI_start
            if (json.has("_DDDpacemaker_local__pre_URI_start")) {
                ${tickdata_name}._DDDpacemaker_local__pre_URI_start = json.getBoolean("_DDDpacemaker_local__pre_URI_start");
            }
            // Receive _DDDpacemaker_local__pre_URI_stop
            if (json.has("_DDDpacemaker_local__pre_URI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__pre_URI_stop = json.getBoolean("_DDDpacemaker_local__pre_URI_stop");
            }
            // Receive _DDDpacemaker_local__pre_VRP_start
            if (json.has("_DDDpacemaker_local__pre_VRP_start")) {
                ${tickdata_name}._DDDpacemaker_local__pre_VRP_start = json.getBoolean("_DDDpacemaker_local__pre_VRP_start");
            }
            // Receive _DDDpacemaker_local__pre_VRP_stop
            if (json.has("_DDDpacemaker_local__pre_VRP_stop")) {
                ${tickdata_name}._DDDpacemaker_local__pre_VRP_stop = json.getBoolean("_DDDpacemaker_local__pre_VRP_stop");
            }
            // Receive _DDDpacemaker_local__pre_real_AS
            if (json.has("_DDDpacemaker_local__pre_real_AS")) {
                ${tickdata_name}._DDDpacemaker_local__pre_real_AS = json.getBoolean("_DDDpacemaker_local__pre_real_AS");
            }
            // Receive _DDDpacemaker_local__pre_real_VS
            if (json.has("_DDDpacemaker_local__pre_real_VS")) {
                ${tickdata_name}._DDDpacemaker_local__pre_real_VS = json.getBoolean("_DDDpacemaker_local__pre_real_VS");
            }
            // Receive _DDDpacemaker_local__reg_AEI_start
            if (json.has("_DDDpacemaker_local__reg_AEI_start")) {
                ${tickdata_name}._DDDpacemaker_local__reg_AEI_start = json.getBoolean("_DDDpacemaker_local__reg_AEI_start");
            }
            // Receive _DDDpacemaker_local__reg_AEI_stop
            if (json.has("_DDDpacemaker_local__reg_AEI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__reg_AEI_stop = json.getBoolean("_DDDpacemaker_local__reg_AEI_stop");
            }
            // Receive _DDDpacemaker_local__reg_AVI_start
            if (json.has("_DDDpacemaker_local__reg_AVI_start")) {
                ${tickdata_name}._DDDpacemaker_local__reg_AVI_start = json.getBoolean("_DDDpacemaker_local__reg_AVI_start");
            }
            // Receive _DDDpacemaker_local__reg_AVI_stop
            if (json.has("_DDDpacemaker_local__reg_AVI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__reg_AVI_stop = json.getBoolean("_DDDpacemaker_local__reg_AVI_stop");
            }
            // Receive _DDDpacemaker_local__reg_LRI_start
            if (json.has("_DDDpacemaker_local__reg_LRI_start")) {
                ${tickdata_name}._DDDpacemaker_local__reg_LRI_start = json.getBoolean("_DDDpacemaker_local__reg_LRI_start");
            }
            // Receive _DDDpacemaker_local__reg_LRI_stop
            if (json.has("_DDDpacemaker_local__reg_LRI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__reg_LRI_stop = json.getBoolean("_DDDpacemaker_local__reg_LRI_stop");
            }
            // Receive _DDDpacemaker_local__reg_PVARP_start
            if (json.has("_DDDpacemaker_local__reg_PVARP_start")) {
                ${tickdata_name}._DDDpacemaker_local__reg_PVARP_start = json.getBoolean("_DDDpacemaker_local__reg_PVARP_start");
            }
            // Receive _DDDpacemaker_local__reg_PVARP_stop
            if (json.has("_DDDpacemaker_local__reg_PVARP_stop")) {
                ${tickdata_name}._DDDpacemaker_local__reg_PVARP_stop = json.getBoolean("_DDDpacemaker_local__reg_PVARP_stop");
            }
            // Receive _DDDpacemaker_local__reg_URI_start
            if (json.has("_DDDpacemaker_local__reg_URI_start")) {
                ${tickdata_name}._DDDpacemaker_local__reg_URI_start = json.getBoolean("_DDDpacemaker_local__reg_URI_start");
            }
            // Receive _DDDpacemaker_local__reg_URI_stop
            if (json.has("_DDDpacemaker_local__reg_URI_stop")) {
                ${tickdata_name}._DDDpacemaker_local__reg_URI_stop = json.getBoolean("_DDDpacemaker_local__reg_URI_stop");
            }
            // Receive _DDDpacemaker_local__reg_VRP_start
            if (json.has("_DDDpacemaker_local__reg_VRP_start")) {
                ${tickdata_name}._DDDpacemaker_local__reg_VRP_start = json.getBoolean("_DDDpacemaker_local__reg_VRP_start");
            }
            // Receive _DDDpacemaker_local__reg_VRP_stop
            if (json.has("_DDDpacemaker_local__reg_VRP_stop")) {
                ${tickdata_name}._DDDpacemaker_local__reg_VRP_stop = json.getBoolean("_DDDpacemaker_local__reg_VRP_stop");
            }
            // Receive _DDDpacemaker_local__reg_real_AS
            if (json.has("_DDDpacemaker_local__reg_real_AS")) {
                ${tickdata_name}._DDDpacemaker_local__reg_real_AS = json.getBoolean("_DDDpacemaker_local__reg_real_AS");
            }
            // Receive _DDDpacemaker_local__reg_real_VS
            if (json.has("_DDDpacemaker_local__reg_real_VS")) {
                ${tickdata_name}._DDDpacemaker_local__reg_real_VS = json.getBoolean("_DDDpacemaker_local__reg_real_VS");
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
            // Receive _cg100
            if (json.has("_cg100")) {
                ${tickdata_name}._cg100 = json.getBoolean("_cg100");
            }
            // Receive _cg105
            if (json.has("_cg105")) {
                ${tickdata_name}._cg105 = json.getBoolean("_cg105");
            }
            // Receive _cg108
            if (json.has("_cg108")) {
                ${tickdata_name}._cg108 = json.getBoolean("_cg108");
            }
            // Receive _cg113
            if (json.has("_cg113")) {
                ${tickdata_name}._cg113 = json.getBoolean("_cg113");
            }
            // Receive _cg116
            if (json.has("_cg116")) {
                ${tickdata_name}._cg116 = json.getBoolean("_cg116");
            }
            // Receive _cg12
            if (json.has("_cg12")) {
                ${tickdata_name}._cg12 = json.getBoolean("_cg12");
            }
            // Receive _cg14
            if (json.has("_cg14")) {
                ${tickdata_name}._cg14 = json.getBoolean("_cg14");
            }
            // Receive _cg16
            if (json.has("_cg16")) {
                ${tickdata_name}._cg16 = json.getBoolean("_cg16");
            }
            // Receive _cg21
            if (json.has("_cg21")) {
                ${tickdata_name}._cg21 = json.getBoolean("_cg21");
            }
            // Receive _cg24
            if (json.has("_cg24")) {
                ${tickdata_name}._cg24 = json.getBoolean("_cg24");
            }
            // Receive _cg29
            if (json.has("_cg29")) {
                ${tickdata_name}._cg29 = json.getBoolean("_cg29");
            }
            // Receive _cg32
            if (json.has("_cg32")) {
                ${tickdata_name}._cg32 = json.getBoolean("_cg32");
            }
            // Receive _cg34
            if (json.has("_cg34")) {
                ${tickdata_name}._cg34 = json.getBoolean("_cg34");
            }
            // Receive _cg39
            if (json.has("_cg39")) {
                ${tickdata_name}._cg39 = json.getBoolean("_cg39");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                ${tickdata_name}._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg42
            if (json.has("_cg42")) {
                ${tickdata_name}._cg42 = json.getBoolean("_cg42");
            }
            // Receive _cg47
            if (json.has("_cg47")) {
                ${tickdata_name}._cg47 = json.getBoolean("_cg47");
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
            // Receive _cg59
            if (json.has("_cg59")) {
                ${tickdata_name}._cg59 = json.getBoolean("_cg59");
            }
            // Receive _cg62
            if (json.has("_cg62")) {
                ${tickdata_name}._cg62 = json.getBoolean("_cg62");
            }
            // Receive _cg67
            if (json.has("_cg67")) {
                ${tickdata_name}._cg67 = json.getBoolean("_cg67");
            }
            // Receive _cg7
            if (json.has("_cg7")) {
                ${tickdata_name}._cg7 = json.getBoolean("_cg7");
            }
            // Receive _cg70
            if (json.has("_cg70")) {
                ${tickdata_name}._cg70 = json.getBoolean("_cg70");
            }
            // Receive _cg72
            if (json.has("_cg72")) {
                ${tickdata_name}._cg72 = json.getBoolean("_cg72");
            }
            // Receive _cg74
            if (json.has("_cg74")) {
                ${tickdata_name}._cg74 = json.getBoolean("_cg74");
            }
            // Receive _cg79
            if (json.has("_cg79")) {
                ${tickdata_name}._cg79 = json.getBoolean("_cg79");
            }
            // Receive _cg82
            if (json.has("_cg82")) {
                ${tickdata_name}._cg82 = json.getBoolean("_cg82");
            }
            // Receive _cg87
            if (json.has("_cg87")) {
                ${tickdata_name}._cg87 = json.getBoolean("_cg87");
            }
            // Receive _cg9
            if (json.has("_cg9")) {
                ${tickdata_name}._cg9 = json.getBoolean("_cg9");
            }
            // Receive _cg90
            if (json.has("_cg90")) {
                ${tickdata_name}._cg90 = json.getBoolean("_cg90");
            }
            // Receive _cg92
            if (json.has("_cg92")) {
                ${tickdata_name}._cg92 = json.getBoolean("_cg92");
            }
            // Receive _cg97
            if (json.has("_cg97")) {
                ${tickdata_name}._cg97 = json.getBoolean("_cg97");
            }
            // Receive _g10
            if (json.has("_g10")) {
                ${tickdata_name}._g10 = json.getBoolean("_g10");
            }
            // Receive _g100
            if (json.has("_g100")) {
                ${tickdata_name}._g100 = json.getBoolean("_g100");
            }
            // Receive _g101
            if (json.has("_g101")) {
                ${tickdata_name}._g101 = json.getBoolean("_g101");
            }
            // Receive _g105
            if (json.has("_g105")) {
                ${tickdata_name}._g105 = json.getBoolean("_g105");
            }
            // Receive _g106
            if (json.has("_g106")) {
                ${tickdata_name}._g106 = json.getBoolean("_g106");
            }
            // Receive _g108
            if (json.has("_g108")) {
                ${tickdata_name}._g108 = json.getBoolean("_g108");
            }
            // Receive _g109
            if (json.has("_g109")) {
                ${tickdata_name}._g109 = json.getBoolean("_g109");
            }
            // Receive _g113
            if (json.has("_g113")) {
                ${tickdata_name}._g113 = json.getBoolean("_g113");
            }
            // Receive _g116
            if (json.has("_g116")) {
                ${tickdata_name}._g116 = json.getBoolean("_g116");
            }
            // Receive _g117
            if (json.has("_g117")) {
                ${tickdata_name}._g117 = json.getBoolean("_g117");
            }
            // Receive _g12
            if (json.has("_g12")) {
                ${tickdata_name}._g12 = json.getBoolean("_g12");
            }
            // Receive _g13
            if (json.has("_g13")) {
                ${tickdata_name}._g13 = json.getBoolean("_g13");
            }
            // Receive _g133
            if (json.has("_g133")) {
                ${tickdata_name}._g133 = json.getBoolean("_g133");
            }
            // Receive _g14
            if (json.has("_g14")) {
                ${tickdata_name}._g14 = json.getBoolean("_g14");
            }
            // Receive _g141
            if (json.has("_g141")) {
                ${tickdata_name}._g141 = json.getBoolean("_g141");
            }
            // Receive _g15
            if (json.has("_g15")) {
                ${tickdata_name}._g15 = json.getBoolean("_g15");
            }
            // Receive _g153
            if (json.has("_g153")) {
                ${tickdata_name}._g153 = json.getBoolean("_g153");
            }
            // Receive _g157
            if (json.has("_g157")) {
                ${tickdata_name}._g157 = json.getBoolean("_g157");
            }
            // Receive _g16
            if (json.has("_g16")) {
                ${tickdata_name}._g16 = json.getBoolean("_g16");
            }
            // Receive _g165
            if (json.has("_g165")) {
                ${tickdata_name}._g165 = json.getBoolean("_g165");
            }
            // Receive _g169
            if (json.has("_g169")) {
                ${tickdata_name}._g169 = json.getBoolean("_g169");
            }
            // Receive _g17
            if (json.has("_g17")) {
                ${tickdata_name}._g17 = json.getBoolean("_g17");
            }
            // Receive _g173
            if (json.has("_g173")) {
                ${tickdata_name}._g173 = json.getBoolean("_g173");
            }
            // Receive _g21
            if (json.has("_g21")) {
                ${tickdata_name}._g21 = json.getBoolean("_g21");
            }
            // Receive _g22
            if (json.has("_g22")) {
                ${tickdata_name}._g22 = json.getBoolean("_g22");
            }
            // Receive _g24
            if (json.has("_g24")) {
                ${tickdata_name}._g24 = json.getBoolean("_g24");
            }
            // Receive _g25
            if (json.has("_g25")) {
                ${tickdata_name}._g25 = json.getBoolean("_g25");
            }
            // Receive _g28
            if (json.has("_g28")) {
                ${tickdata_name}._g28 = json.getBoolean("_g28");
            }
            // Receive _g29
            if (json.has("_g29")) {
                ${tickdata_name}._g29 = json.getBoolean("_g29");
            }
            // Receive _g30
            if (json.has("_g30")) {
                ${tickdata_name}._g30 = json.getBoolean("_g30");
            }
            // Receive _g32
            if (json.has("_g32")) {
                ${tickdata_name}._g32 = json.getBoolean("_g32");
            }
            // Receive _g33
            if (json.has("_g33")) {
                ${tickdata_name}._g33 = json.getBoolean("_g33");
            }
            // Receive _g34
            if (json.has("_g34")) {
                ${tickdata_name}._g34 = json.getBoolean("_g34");
            }
            // Receive _g39
            if (json.has("_g39")) {
                ${tickdata_name}._g39 = json.getBoolean("_g39");
            }
            // Receive _g4
            if (json.has("_g4")) {
                ${tickdata_name}._g4 = json.getBoolean("_g4");
            }
            // Receive _g40
            if (json.has("_g40")) {
                ${tickdata_name}._g40 = json.getBoolean("_g40");
            }
            // Receive _g42
            if (json.has("_g42")) {
                ${tickdata_name}._g42 = json.getBoolean("_g42");
            }
            // Receive _g43
            if (json.has("_g43")) {
                ${tickdata_name}._g43 = json.getBoolean("_g43");
            }
            // Receive _g46
            if (json.has("_g46")) {
                ${tickdata_name}._g46 = json.getBoolean("_g46");
            }
            // Receive _g47
            if (json.has("_g47")) {
                ${tickdata_name}._g47 = json.getBoolean("_g47");
            }
            // Receive _g48
            if (json.has("_g48")) {
                ${tickdata_name}._g48 = json.getBoolean("_g48");
            }
            // Receive _g5
            if (json.has("_g5")) {
                ${tickdata_name}._g5 = json.getBoolean("_g5");
            }
            // Receive _g50
            if (json.has("_g50")) {
                ${tickdata_name}._g50 = json.getBoolean("_g50");
            }
            // Receive _g51
            if (json.has("_g51")) {
                ${tickdata_name}._g51 = json.getBoolean("_g51");
            }
            // Receive _g52
            if (json.has("_g52")) {
                ${tickdata_name}._g52 = json.getBoolean("_g52");
            }
            // Receive _g53
            if (json.has("_g53")) {
                ${tickdata_name}._g53 = json.getBoolean("_g53");
            }
            // Receive _g59
            if (json.has("_g59")) {
                ${tickdata_name}._g59 = json.getBoolean("_g59");
            }
            // Receive _g60
            if (json.has("_g60")) {
                ${tickdata_name}._g60 = json.getBoolean("_g60");
            }
            // Receive _g62
            if (json.has("_g62")) {
                ${tickdata_name}._g62 = json.getBoolean("_g62");
            }
            // Receive _g63
            if (json.has("_g63")) {
                ${tickdata_name}._g63 = json.getBoolean("_g63");
            }
            // Receive _g66
            if (json.has("_g66")) {
                ${tickdata_name}._g66 = json.getBoolean("_g66");
            }
            // Receive _g67
            if (json.has("_g67")) {
                ${tickdata_name}._g67 = json.getBoolean("_g67");
            }
            // Receive _g68
            if (json.has("_g68")) {
                ${tickdata_name}._g68 = json.getBoolean("_g68");
            }
            // Receive _g7
            if (json.has("_g7")) {
                ${tickdata_name}._g7 = json.getBoolean("_g7");
            }
            // Receive _g70
            if (json.has("_g70")) {
                ${tickdata_name}._g70 = json.getBoolean("_g70");
            }
            // Receive _g71
            if (json.has("_g71")) {
                ${tickdata_name}._g71 = json.getBoolean("_g71");
            }
            // Receive _g72
            if (json.has("_g72")) {
                ${tickdata_name}._g72 = json.getBoolean("_g72");
            }
            // Receive _g73
            if (json.has("_g73")) {
                ${tickdata_name}._g73 = json.getBoolean("_g73");
            }
            // Receive _g79
            if (json.has("_g79")) {
                ${tickdata_name}._g79 = json.getBoolean("_g79");
            }
            // Receive _g8
            if (json.has("_g8")) {
                ${tickdata_name}._g8 = json.getBoolean("_g8");
            }
            // Receive _g80
            if (json.has("_g80")) {
                ${tickdata_name}._g80 = json.getBoolean("_g80");
            }
            // Receive _g82
            if (json.has("_g82")) {
                ${tickdata_name}._g82 = json.getBoolean("_g82");
            }
            // Receive _g83
            if (json.has("_g83")) {
                ${tickdata_name}._g83 = json.getBoolean("_g83");
            }
            // Receive _g87
            if (json.has("_g87")) {
                ${tickdata_name}._g87 = json.getBoolean("_g87");
            }
            // Receive _g88
            if (json.has("_g88")) {
                ${tickdata_name}._g88 = json.getBoolean("_g88");
            }
            // Receive _g9
            if (json.has("_g9")) {
                ${tickdata_name}._g9 = json.getBoolean("_g9");
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
            // Receive _g97
            if (json.has("_g97")) {
                ${tickdata_name}._g97 = json.getBoolean("_g97");
            }
            // Receive _g98
            if (json.has("_g98")) {
                ${tickdata_name}._g98 = json.getBoolean("_g98");
            }
            // Receive _pg101
            if (json.has("_pg101")) {
                ${tickdata_name}._pg101 = json.getBoolean("_pg101");
            }
            // Receive _pg106
            if (json.has("_pg106")) {
                ${tickdata_name}._pg106 = json.getBoolean("_pg106");
            }
            // Receive _pg109
            if (json.has("_pg109")) {
                ${tickdata_name}._pg109 = json.getBoolean("_pg109");
            }
            // Receive _pg116
            if (json.has("_pg116")) {
                ${tickdata_name}._pg116 = json.getBoolean("_pg116");
            }
            // Receive _pg117
            if (json.has("_pg117")) {
                ${tickdata_name}._pg117 = json.getBoolean("_pg117");
            }
            // Receive _pg15
            if (json.has("_pg15")) {
                ${tickdata_name}._pg15 = json.getBoolean("_pg15");
            }
            // Receive _pg157
            if (json.has("_pg157")) {
                ${tickdata_name}._pg157 = json.getBoolean("_pg157");
            }
            // Receive _pg16
            if (json.has("_pg16")) {
                ${tickdata_name}._pg16 = json.getBoolean("_pg16");
            }
            // Receive _pg165
            if (json.has("_pg165")) {
                ${tickdata_name}._pg165 = json.getBoolean("_pg165");
            }
            // Receive _pg169
            if (json.has("_pg169")) {
                ${tickdata_name}._pg169 = json.getBoolean("_pg169");
            }
            // Receive _pg17
            if (json.has("_pg17")) {
                ${tickdata_name}._pg17 = json.getBoolean("_pg17");
            }
            // Receive _pg22
            if (json.has("_pg22")) {
                ${tickdata_name}._pg22 = json.getBoolean("_pg22");
            }
            // Receive _pg25
            if (json.has("_pg25")) {
                ${tickdata_name}._pg25 = json.getBoolean("_pg25");
            }
            // Receive _pg28
            if (json.has("_pg28")) {
                ${tickdata_name}._pg28 = json.getBoolean("_pg28");
            }
            // Receive _pg34
            if (json.has("_pg34")) {
                ${tickdata_name}._pg34 = json.getBoolean("_pg34");
            }
            // Receive _pg4
            if (json.has("_pg4")) {
                ${tickdata_name}._pg4 = json.getBoolean("_pg4");
            }
            // Receive _pg40
            if (json.has("_pg40")) {
                ${tickdata_name}._pg40 = json.getBoolean("_pg40");
            }
            // Receive _pg43
            if (json.has("_pg43")) {
                ${tickdata_name}._pg43 = json.getBoolean("_pg43");
            }
            // Receive _pg46
            if (json.has("_pg46")) {
                ${tickdata_name}._pg46 = json.getBoolean("_pg46");
            }
            // Receive _pg48
            if (json.has("_pg48")) {
                ${tickdata_name}._pg48 = json.getBoolean("_pg48");
            }
            // Receive _pg52
            if (json.has("_pg52")) {
                ${tickdata_name}._pg52 = json.getBoolean("_pg52");
            }
            // Receive _pg62
            if (json.has("_pg62")) {
                ${tickdata_name}._pg62 = json.getBoolean("_pg62");
            }
            // Receive _pg63
            if (json.has("_pg63")) {
                ${tickdata_name}._pg63 = json.getBoolean("_pg63");
            }
            // Receive _pg66
            if (json.has("_pg66")) {
                ${tickdata_name}._pg66 = json.getBoolean("_pg66");
            }
            // Receive _pg68
            if (json.has("_pg68")) {
                ${tickdata_name}._pg68 = json.getBoolean("_pg68");
            }
            // Receive _pg72
            if (json.has("_pg72")) {
                ${tickdata_name}._pg72 = json.getBoolean("_pg72");
            }
            // Receive _pg80
            if (json.has("_pg80")) {
                ${tickdata_name}._pg80 = json.getBoolean("_pg80");
            }
            // Receive _pg83
            if (json.has("_pg83")) {
                ${tickdata_name}._pg83 = json.getBoolean("_pg83");
            }
            // Receive _pg87
            if (json.has("_pg87")) {
                ${tickdata_name}._pg87 = json.getBoolean("_pg87");
            }
            // Receive _pg91
            if (json.has("_pg91")) {
                ${tickdata_name}._pg91 = json.getBoolean("_pg91");
            }
            // Receive _pg92
            if (json.has("_pg92")) {
                ${tickdata_name}._pg92 = json.getBoolean("_pg92");
            }
            // Receive _pg98
            if (json.has("_pg98")) {
                ${tickdata_name}._pg98 = json.getBoolean("_pg98");
            }
            // Receive _pre_AP
            if (json.has("_pre_AP")) {
                ${tickdata_name}._pre_AP = json.getBoolean("_pre_AP");
            }
            // Receive _pre_VP
            if (json.has("_pre_VP")) {
                ${tickdata_name}._pre_VP = json.getBoolean("_pre_VP");
            }
            // Receive _reg_AP
            if (json.has("_reg_AP")) {
                ${tickdata_name}._reg_AP = json.getBoolean("_reg_AP");
            }
            // Receive _reg_VP
            if (json.has("_reg_VP")) {
                ${tickdata_name}._reg_VP = json.getBoolean("_reg_VP");
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
        
        // Send AEI_counter
        json.put("AEI_counter", JSONObject.wrap(${tickdata_name}.AEI_counter));
        // Send AS
        json.put("AS", JSONObject.wrap(${tickdata_name}.AS));
        // Send AVI_counter
        json.put("AVI_counter", JSONObject.wrap(${tickdata_name}.AVI_counter));
        // Send LRI_counter
        json.put("LRI_counter", JSONObject.wrap(${tickdata_name}.LRI_counter));
        // Send PVARP_counter
        json.put("PVARP_counter", JSONObject.wrap(${tickdata_name}.PVARP_counter));
        // Send URI_counter
        json.put("URI_counter", JSONObject.wrap(${tickdata_name}.URI_counter));
        // Send VRP_counter
        json.put("VRP_counter", JSONObject.wrap(${tickdata_name}.VRP_counter));
        // Send VS
        json.put("VS", JSONObject.wrap(${tickdata_name}.VS));
        // Send AP
        json.put("AP", JSONObject.wrap(${tickdata_name}.AP));
        // Send VP
        json.put("VP", JSONObject.wrap(${tickdata_name}.VP));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send _DDDpacemaker_local_AEI_start
        json.put("_DDDpacemaker_local_AEI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AEI_start));
        // Send _DDDpacemaker_local_AEI_stop
        json.put("_DDDpacemaker_local_AEI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AEI_stop));
        // Send _DDDpacemaker_local_AR
        json.put("_DDDpacemaker_local_AR", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AR));
        // Send _DDDpacemaker_local_AVI_start
        json.put("_DDDpacemaker_local_AVI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_start));
        // Send _DDDpacemaker_local_AVI_stop
        json.put("_DDDpacemaker_local_AVI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_stop));
        // Send _DDDpacemaker_local_LRI_reset
        json.put("_DDDpacemaker_local_LRI_reset", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_reset));
        // Send _DDDpacemaker_local_LRI_start
        json.put("_DDDpacemaker_local_LRI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_start));
        // Send _DDDpacemaker_local_LRI_stop
        json.put("_DDDpacemaker_local_LRI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_stop));
        // Send _DDDpacemaker_local_PVARP_start
        json.put("_DDDpacemaker_local_PVARP_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_PVARP_start));
        // Send _DDDpacemaker_local_PVARP_stop
        json.put("_DDDpacemaker_local_PVARP_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_PVARP_stop));
        // Send _DDDpacemaker_local_URI_start
        json.put("_DDDpacemaker_local_URI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_start));
        // Send _DDDpacemaker_local_URI_stop
        json.put("_DDDpacemaker_local_URI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_stop));
        // Send _DDDpacemaker_local_VR
        json.put("_DDDpacemaker_local_VR", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VR));
        // Send _DDDpacemaker_local_VRP_start
        json.put("_DDDpacemaker_local_VRP_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VRP_start));
        // Send _DDDpacemaker_local_VRP_stop
        json.put("_DDDpacemaker_local_VRP_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VRP_stop));
        // Send _DDDpacemaker_local__pre_AEI_start
        json.put("_DDDpacemaker_local__pre_AEI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_AEI_start));
        // Send _DDDpacemaker_local__pre_AEI_stop
        json.put("_DDDpacemaker_local__pre_AEI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_AEI_stop));
        // Send _DDDpacemaker_local__pre_AVI_start
        json.put("_DDDpacemaker_local__pre_AVI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_AVI_start));
        // Send _DDDpacemaker_local__pre_AVI_stop
        json.put("_DDDpacemaker_local__pre_AVI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_AVI_stop));
        // Send _DDDpacemaker_local__pre_LRI_start
        json.put("_DDDpacemaker_local__pre_LRI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_LRI_start));
        // Send _DDDpacemaker_local__pre_LRI_stop
        json.put("_DDDpacemaker_local__pre_LRI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_LRI_stop));
        // Send _DDDpacemaker_local__pre_PVARP_start
        json.put("_DDDpacemaker_local__pre_PVARP_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_PVARP_start));
        // Send _DDDpacemaker_local__pre_PVARP_stop
        json.put("_DDDpacemaker_local__pre_PVARP_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_PVARP_stop));
        // Send _DDDpacemaker_local__pre_URI_start
        json.put("_DDDpacemaker_local__pre_URI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_URI_start));
        // Send _DDDpacemaker_local__pre_URI_stop
        json.put("_DDDpacemaker_local__pre_URI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_URI_stop));
        // Send _DDDpacemaker_local__pre_VRP_start
        json.put("_DDDpacemaker_local__pre_VRP_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_VRP_start));
        // Send _DDDpacemaker_local__pre_VRP_stop
        json.put("_DDDpacemaker_local__pre_VRP_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_VRP_stop));
        // Send _DDDpacemaker_local__pre_real_AS
        json.put("_DDDpacemaker_local__pre_real_AS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_real_AS));
        // Send _DDDpacemaker_local__pre_real_VS
        json.put("_DDDpacemaker_local__pre_real_VS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_real_VS));
        // Send _DDDpacemaker_local__reg_AEI_start
        json.put("_DDDpacemaker_local__reg_AEI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_AEI_start));
        // Send _DDDpacemaker_local__reg_AEI_stop
        json.put("_DDDpacemaker_local__reg_AEI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_AEI_stop));
        // Send _DDDpacemaker_local__reg_AVI_start
        json.put("_DDDpacemaker_local__reg_AVI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_AVI_start));
        // Send _DDDpacemaker_local__reg_AVI_stop
        json.put("_DDDpacemaker_local__reg_AVI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_AVI_stop));
        // Send _DDDpacemaker_local__reg_LRI_start
        json.put("_DDDpacemaker_local__reg_LRI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_LRI_start));
        // Send _DDDpacemaker_local__reg_LRI_stop
        json.put("_DDDpacemaker_local__reg_LRI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_LRI_stop));
        // Send _DDDpacemaker_local__reg_PVARP_start
        json.put("_DDDpacemaker_local__reg_PVARP_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_PVARP_start));
        // Send _DDDpacemaker_local__reg_PVARP_stop
        json.put("_DDDpacemaker_local__reg_PVARP_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_PVARP_stop));
        // Send _DDDpacemaker_local__reg_URI_start
        json.put("_DDDpacemaker_local__reg_URI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_URI_start));
        // Send _DDDpacemaker_local__reg_URI_stop
        json.put("_DDDpacemaker_local__reg_URI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_URI_stop));
        // Send _DDDpacemaker_local__reg_VRP_start
        json.put("_DDDpacemaker_local__reg_VRP_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_VRP_start));
        // Send _DDDpacemaker_local__reg_VRP_stop
        json.put("_DDDpacemaker_local__reg_VRP_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_VRP_stop));
        // Send _DDDpacemaker_local__reg_real_AS
        json.put("_DDDpacemaker_local__reg_real_AS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_real_AS));
        // Send _DDDpacemaker_local__reg_real_VS
        json.put("_DDDpacemaker_local__reg_real_VS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_real_VS));
        // Send _DDDpacemaker_local_real_AS
        json.put("_DDDpacemaker_local_real_AS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_real_AS));
        // Send _DDDpacemaker_local_real_VS
        json.put("_DDDpacemaker_local_real_VS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_real_VS));
        // Send _GO
        json.put("_GO", JSONObject.wrap(${tickdata_name}._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(${tickdata_name}._TERM));
        // Send _cg100
        json.put("_cg100", JSONObject.wrap(${tickdata_name}._cg100));
        // Send _cg105
        json.put("_cg105", JSONObject.wrap(${tickdata_name}._cg105));
        // Send _cg108
        json.put("_cg108", JSONObject.wrap(${tickdata_name}._cg108));
        // Send _cg113
        json.put("_cg113", JSONObject.wrap(${tickdata_name}._cg113));
        // Send _cg116
        json.put("_cg116", JSONObject.wrap(${tickdata_name}._cg116));
        // Send _cg12
        json.put("_cg12", JSONObject.wrap(${tickdata_name}._cg12));
        // Send _cg14
        json.put("_cg14", JSONObject.wrap(${tickdata_name}._cg14));
        // Send _cg16
        json.put("_cg16", JSONObject.wrap(${tickdata_name}._cg16));
        // Send _cg21
        json.put("_cg21", JSONObject.wrap(${tickdata_name}._cg21));
        // Send _cg24
        json.put("_cg24", JSONObject.wrap(${tickdata_name}._cg24));
        // Send _cg29
        json.put("_cg29", JSONObject.wrap(${tickdata_name}._cg29));
        // Send _cg32
        json.put("_cg32", JSONObject.wrap(${tickdata_name}._cg32));
        // Send _cg34
        json.put("_cg34", JSONObject.wrap(${tickdata_name}._cg34));
        // Send _cg39
        json.put("_cg39", JSONObject.wrap(${tickdata_name}._cg39));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(${tickdata_name}._cg4));
        // Send _cg42
        json.put("_cg42", JSONObject.wrap(${tickdata_name}._cg42));
        // Send _cg47
        json.put("_cg47", JSONObject.wrap(${tickdata_name}._cg47));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(${tickdata_name}._cg50));
        // Send _cg52
        json.put("_cg52", JSONObject.wrap(${tickdata_name}._cg52));
        // Send _cg54
        json.put("_cg54", JSONObject.wrap(${tickdata_name}._cg54));
        // Send _cg59
        json.put("_cg59", JSONObject.wrap(${tickdata_name}._cg59));
        // Send _cg62
        json.put("_cg62", JSONObject.wrap(${tickdata_name}._cg62));
        // Send _cg67
        json.put("_cg67", JSONObject.wrap(${tickdata_name}._cg67));
        // Send _cg7
        json.put("_cg7", JSONObject.wrap(${tickdata_name}._cg7));
        // Send _cg70
        json.put("_cg70", JSONObject.wrap(${tickdata_name}._cg70));
        // Send _cg72
        json.put("_cg72", JSONObject.wrap(${tickdata_name}._cg72));
        // Send _cg74
        json.put("_cg74", JSONObject.wrap(${tickdata_name}._cg74));
        // Send _cg79
        json.put("_cg79", JSONObject.wrap(${tickdata_name}._cg79));
        // Send _cg82
        json.put("_cg82", JSONObject.wrap(${tickdata_name}._cg82));
        // Send _cg87
        json.put("_cg87", JSONObject.wrap(${tickdata_name}._cg87));
        // Send _cg9
        json.put("_cg9", JSONObject.wrap(${tickdata_name}._cg9));
        // Send _cg90
        json.put("_cg90", JSONObject.wrap(${tickdata_name}._cg90));
        // Send _cg92
        json.put("_cg92", JSONObject.wrap(${tickdata_name}._cg92));
        // Send _cg97
        json.put("_cg97", JSONObject.wrap(${tickdata_name}._cg97));
        // Send _g10
        json.put("_g10", JSONObject.wrap(${tickdata_name}._g10));
        // Send _g100
        json.put("_g100", JSONObject.wrap(${tickdata_name}._g100));
        // Send _g101
        json.put("_g101", JSONObject.wrap(${tickdata_name}._g101));
        // Send _g105
        json.put("_g105", JSONObject.wrap(${tickdata_name}._g105));
        // Send _g106
        json.put("_g106", JSONObject.wrap(${tickdata_name}._g106));
        // Send _g108
        json.put("_g108", JSONObject.wrap(${tickdata_name}._g108));
        // Send _g109
        json.put("_g109", JSONObject.wrap(${tickdata_name}._g109));
        // Send _g113
        json.put("_g113", JSONObject.wrap(${tickdata_name}._g113));
        // Send _g116
        json.put("_g116", JSONObject.wrap(${tickdata_name}._g116));
        // Send _g117
        json.put("_g117", JSONObject.wrap(${tickdata_name}._g117));
        // Send _g12
        json.put("_g12", JSONObject.wrap(${tickdata_name}._g12));
        // Send _g13
        json.put("_g13", JSONObject.wrap(${tickdata_name}._g13));
        // Send _g133
        json.put("_g133", JSONObject.wrap(${tickdata_name}._g133));
        // Send _g14
        json.put("_g14", JSONObject.wrap(${tickdata_name}._g14));
        // Send _g141
        json.put("_g141", JSONObject.wrap(${tickdata_name}._g141));
        // Send _g15
        json.put("_g15", JSONObject.wrap(${tickdata_name}._g15));
        // Send _g153
        json.put("_g153", JSONObject.wrap(${tickdata_name}._g153));
        // Send _g157
        json.put("_g157", JSONObject.wrap(${tickdata_name}._g157));
        // Send _g16
        json.put("_g16", JSONObject.wrap(${tickdata_name}._g16));
        // Send _g165
        json.put("_g165", JSONObject.wrap(${tickdata_name}._g165));
        // Send _g169
        json.put("_g169", JSONObject.wrap(${tickdata_name}._g169));
        // Send _g17
        json.put("_g17", JSONObject.wrap(${tickdata_name}._g17));
        // Send _g173
        json.put("_g173", JSONObject.wrap(${tickdata_name}._g173));
        // Send _g21
        json.put("_g21", JSONObject.wrap(${tickdata_name}._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(${tickdata_name}._g22));
        // Send _g24
        json.put("_g24", JSONObject.wrap(${tickdata_name}._g24));
        // Send _g25
        json.put("_g25", JSONObject.wrap(${tickdata_name}._g25));
        // Send _g28
        json.put("_g28", JSONObject.wrap(${tickdata_name}._g28));
        // Send _g29
        json.put("_g29", JSONObject.wrap(${tickdata_name}._g29));
        // Send _g30
        json.put("_g30", JSONObject.wrap(${tickdata_name}._g30));
        // Send _g32
        json.put("_g32", JSONObject.wrap(${tickdata_name}._g32));
        // Send _g33
        json.put("_g33", JSONObject.wrap(${tickdata_name}._g33));
        // Send _g34
        json.put("_g34", JSONObject.wrap(${tickdata_name}._g34));
        // Send _g39
        json.put("_g39", JSONObject.wrap(${tickdata_name}._g39));
        // Send _g4
        json.put("_g4", JSONObject.wrap(${tickdata_name}._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(${tickdata_name}._g40));
        // Send _g42
        json.put("_g42", JSONObject.wrap(${tickdata_name}._g42));
        // Send _g43
        json.put("_g43", JSONObject.wrap(${tickdata_name}._g43));
        // Send _g46
        json.put("_g46", JSONObject.wrap(${tickdata_name}._g46));
        // Send _g47
        json.put("_g47", JSONObject.wrap(${tickdata_name}._g47));
        // Send _g48
        json.put("_g48", JSONObject.wrap(${tickdata_name}._g48));
        // Send _g5
        json.put("_g5", JSONObject.wrap(${tickdata_name}._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(${tickdata_name}._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(${tickdata_name}._g51));
        // Send _g52
        json.put("_g52", JSONObject.wrap(${tickdata_name}._g52));
        // Send _g53
        json.put("_g53", JSONObject.wrap(${tickdata_name}._g53));
        // Send _g59
        json.put("_g59", JSONObject.wrap(${tickdata_name}._g59));
        // Send _g60
        json.put("_g60", JSONObject.wrap(${tickdata_name}._g60));
        // Send _g62
        json.put("_g62", JSONObject.wrap(${tickdata_name}._g62));
        // Send _g63
        json.put("_g63", JSONObject.wrap(${tickdata_name}._g63));
        // Send _g66
        json.put("_g66", JSONObject.wrap(${tickdata_name}._g66));
        // Send _g67
        json.put("_g67", JSONObject.wrap(${tickdata_name}._g67));
        // Send _g68
        json.put("_g68", JSONObject.wrap(${tickdata_name}._g68));
        // Send _g7
        json.put("_g7", JSONObject.wrap(${tickdata_name}._g7));
        // Send _g70
        json.put("_g70", JSONObject.wrap(${tickdata_name}._g70));
        // Send _g71
        json.put("_g71", JSONObject.wrap(${tickdata_name}._g71));
        // Send _g72
        json.put("_g72", JSONObject.wrap(${tickdata_name}._g72));
        // Send _g73
        json.put("_g73", JSONObject.wrap(${tickdata_name}._g73));
        // Send _g79
        json.put("_g79", JSONObject.wrap(${tickdata_name}._g79));
        // Send _g8
        json.put("_g8", JSONObject.wrap(${tickdata_name}._g8));
        // Send _g80
        json.put("_g80", JSONObject.wrap(${tickdata_name}._g80));
        // Send _g82
        json.put("_g82", JSONObject.wrap(${tickdata_name}._g82));
        // Send _g83
        json.put("_g83", JSONObject.wrap(${tickdata_name}._g83));
        // Send _g87
        json.put("_g87", JSONObject.wrap(${tickdata_name}._g87));
        // Send _g88
        json.put("_g88", JSONObject.wrap(${tickdata_name}._g88));
        // Send _g9
        json.put("_g9", JSONObject.wrap(${tickdata_name}._g9));
        // Send _g90
        json.put("_g90", JSONObject.wrap(${tickdata_name}._g90));
        // Send _g91
        json.put("_g91", JSONObject.wrap(${tickdata_name}._g91));
        // Send _g92
        json.put("_g92", JSONObject.wrap(${tickdata_name}._g92));
        // Send _g93
        json.put("_g93", JSONObject.wrap(${tickdata_name}._g93));
        // Send _g97
        json.put("_g97", JSONObject.wrap(${tickdata_name}._g97));
        // Send _g98
        json.put("_g98", JSONObject.wrap(${tickdata_name}._g98));
        // Send _pg101
        json.put("_pg101", JSONObject.wrap(${tickdata_name}._pg101));
        // Send _pg106
        json.put("_pg106", JSONObject.wrap(${tickdata_name}._pg106));
        // Send _pg109
        json.put("_pg109", JSONObject.wrap(${tickdata_name}._pg109));
        // Send _pg116
        json.put("_pg116", JSONObject.wrap(${tickdata_name}._pg116));
        // Send _pg117
        json.put("_pg117", JSONObject.wrap(${tickdata_name}._pg117));
        // Send _pg15
        json.put("_pg15", JSONObject.wrap(${tickdata_name}._pg15));
        // Send _pg157
        json.put("_pg157", JSONObject.wrap(${tickdata_name}._pg157));
        // Send _pg16
        json.put("_pg16", JSONObject.wrap(${tickdata_name}._pg16));
        // Send _pg165
        json.put("_pg165", JSONObject.wrap(${tickdata_name}._pg165));
        // Send _pg169
        json.put("_pg169", JSONObject.wrap(${tickdata_name}._pg169));
        // Send _pg17
        json.put("_pg17", JSONObject.wrap(${tickdata_name}._pg17));
        // Send _pg22
        json.put("_pg22", JSONObject.wrap(${tickdata_name}._pg22));
        // Send _pg25
        json.put("_pg25", JSONObject.wrap(${tickdata_name}._pg25));
        // Send _pg28
        json.put("_pg28", JSONObject.wrap(${tickdata_name}._pg28));
        // Send _pg34
        json.put("_pg34", JSONObject.wrap(${tickdata_name}._pg34));
        // Send _pg4
        json.put("_pg4", JSONObject.wrap(${tickdata_name}._pg4));
        // Send _pg40
        json.put("_pg40", JSONObject.wrap(${tickdata_name}._pg40));
        // Send _pg43
        json.put("_pg43", JSONObject.wrap(${tickdata_name}._pg43));
        // Send _pg46
        json.put("_pg46", JSONObject.wrap(${tickdata_name}._pg46));
        // Send _pg48
        json.put("_pg48", JSONObject.wrap(${tickdata_name}._pg48));
        // Send _pg52
        json.put("_pg52", JSONObject.wrap(${tickdata_name}._pg52));
        // Send _pg62
        json.put("_pg62", JSONObject.wrap(${tickdata_name}._pg62));
        // Send _pg63
        json.put("_pg63", JSONObject.wrap(${tickdata_name}._pg63));
        // Send _pg66
        json.put("_pg66", JSONObject.wrap(${tickdata_name}._pg66));
        // Send _pg68
        json.put("_pg68", JSONObject.wrap(${tickdata_name}._pg68));
        // Send _pg72
        json.put("_pg72", JSONObject.wrap(${tickdata_name}._pg72));
        // Send _pg80
        json.put("_pg80", JSONObject.wrap(${tickdata_name}._pg80));
        // Send _pg83
        json.put("_pg83", JSONObject.wrap(${tickdata_name}._pg83));
        // Send _pg87
        json.put("_pg87", JSONObject.wrap(${tickdata_name}._pg87));
        // Send _pg91
        json.put("_pg91", JSONObject.wrap(${tickdata_name}._pg91));
        // Send _pg92
        json.put("_pg92", JSONObject.wrap(${tickdata_name}._pg92));
        // Send _pg98
        json.put("_pg98", JSONObject.wrap(${tickdata_name}._pg98));
        // Send _pre_AP
        json.put("_pre_AP", JSONObject.wrap(${tickdata_name}._pre_AP));
        // Send _pre_VP
        json.put("_pre_VP", JSONObject.wrap(${tickdata_name}._pre_VP));
        // Send _reg_AP
        json.put("_reg_AP", JSONObject.wrap(${tickdata_name}._reg_AP));
        // Send _reg_VP
        json.put("_reg_VP", JSONObject.wrap(${tickdata_name}._reg_VP));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(${tickdata_name}._taken_transitions));
        
        System.out.println(json.toString());
    }
</#macro>
