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
            // Receive AEI_counter
            if (json.has("AEI_counter")) {
                ${tickdata_name}.AEI_counter = json.getDouble("AEI_counter");
            }
            // Receive AVI_counter
            if (json.has("AVI_counter")) {
                ${tickdata_name}.AVI_counter = json.getDouble("AVI_counter");
            }
            // Receive LRI_counter
            if (json.has("LRI_counter")) {
                ${tickdata_name}.LRI_counter = json.getDouble("LRI_counter");
            }
            // Receive PVARP_counter
            if (json.has("PVARP_counter")) {
                ${tickdata_name}.PVARP_counter = json.getDouble("PVARP_counter");
            }
            // Receive URI_counter
            if (json.has("URI_counter")) {
                ${tickdata_name}.URI_counter = json.getDouble("URI_counter");
            }
            // Receive VRP_counter
            if (json.has("VRP_counter")) {
                ${tickdata_name}.VRP_counter = json.getDouble("VRP_counter");
            }
            // Receive _DDDpacemaker_local_AEI_state
            if (json.has("_DDDpacemaker_local_AEI_state")) {
                ${tickdata_name}._DDDpacemaker_local_AEI_state = json.getBoolean("_DDDpacemaker_local_AEI_state");
            }
            // Receive _DDDpacemaker_local_AP_temp
            if (json.has("_DDDpacemaker_local_AP_temp")) {
                ${tickdata_name}._DDDpacemaker_local_AP_temp = json.getBoolean("_DDDpacemaker_local_AP_temp");
            }
            // Receive _DDDpacemaker_local_AR
            if (json.has("_DDDpacemaker_local_AR")) {
                ${tickdata_name}._DDDpacemaker_local_AR = json.getBoolean("_DDDpacemaker_local_AR");
            }
            // Receive _DDDpacemaker_local_AVI_state
            if (json.has("_DDDpacemaker_local_AVI_state")) {
                ${tickdata_name}._DDDpacemaker_local_AVI_state = json.getBoolean("_DDDpacemaker_local_AVI_state");
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
            // Receive _DDDpacemaker_local_PVARP_state
            if (json.has("_DDDpacemaker_local_PVARP_state")) {
                ${tickdata_name}._DDDpacemaker_local_PVARP_state = json.getBoolean("_DDDpacemaker_local_PVARP_state");
            }
            // Receive _DDDpacemaker_local_URI_start
            if (json.has("_DDDpacemaker_local_URI_start")) {
                ${tickdata_name}._DDDpacemaker_local_URI_start = json.getBoolean("_DDDpacemaker_local_URI_start");
            }
            // Receive _DDDpacemaker_local_URI_stop
            if (json.has("_DDDpacemaker_local_URI_stop")) {
                ${tickdata_name}._DDDpacemaker_local_URI_stop = json.getBoolean("_DDDpacemaker_local_URI_stop");
            }
            // Receive _DDDpacemaker_local_VP_temp
            if (json.has("_DDDpacemaker_local_VP_temp")) {
                ${tickdata_name}._DDDpacemaker_local_VP_temp = json.getBoolean("_DDDpacemaker_local_VP_temp");
            }
            // Receive _DDDpacemaker_local_VR
            if (json.has("_DDDpacemaker_local_VR")) {
                ${tickdata_name}._DDDpacemaker_local_VR = json.getBoolean("_DDDpacemaker_local_VR");
            }
            // Receive _DDDpacemaker_local_VRP_state
            if (json.has("_DDDpacemaker_local_VRP_state")) {
                ${tickdata_name}._DDDpacemaker_local_VRP_state = json.getBoolean("_DDDpacemaker_local_VRP_state");
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
            // Receive _DDDpacemaker_local__Atrig9
            if (json.has("_DDDpacemaker_local__Atrig9")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig9 = json.getBoolean("_DDDpacemaker_local__Atrig9");
            }
            // Receive _DDDpacemaker_local__pre_AP_temp
            if (json.has("_DDDpacemaker_local__pre_AP_temp")) {
                ${tickdata_name}._DDDpacemaker_local__pre_AP_temp = json.getBoolean("_DDDpacemaker_local__pre_AP_temp");
            }
            // Receive _DDDpacemaker_local__pre_VP_temp
            if (json.has("_DDDpacemaker_local__pre_VP_temp")) {
                ${tickdata_name}._DDDpacemaker_local__pre_VP_temp = json.getBoolean("_DDDpacemaker_local__pre_VP_temp");
            }
            // Receive _DDDpacemaker_local__reg_AP_temp
            if (json.has("_DDDpacemaker_local__reg_AP_temp")) {
                ${tickdata_name}._DDDpacemaker_local__reg_AP_temp = json.getBoolean("_DDDpacemaker_local__reg_AP_temp");
            }
            // Receive _DDDpacemaker_local__reg_VP_temp
            if (json.has("_DDDpacemaker_local__reg_VP_temp")) {
                ${tickdata_name}._DDDpacemaker_local__reg_VP_temp = json.getBoolean("_DDDpacemaker_local__reg_VP_temp");
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
            // Receive _cg102
            if (json.has("_cg102")) {
                ${tickdata_name}._cg102 = json.getBoolean("_cg102");
            }
            // Receive _cg103
            if (json.has("_cg103")) {
                ${tickdata_name}._cg103 = json.getBoolean("_cg103");
            }
            // Receive _cg106
            if (json.has("_cg106")) {
                ${tickdata_name}._cg106 = json.getBoolean("_cg106");
            }
            // Receive _cg107
            if (json.has("_cg107")) {
                ${tickdata_name}._cg107 = json.getBoolean("_cg107");
            }
            // Receive _cg109
            if (json.has("_cg109")) {
                ${tickdata_name}._cg109 = json.getBoolean("_cg109");
            }
            // Receive _cg112
            if (json.has("_cg112")) {
                ${tickdata_name}._cg112 = json.getBoolean("_cg112");
            }
            // Receive _cg115
            if (json.has("_cg115")) {
                ${tickdata_name}._cg115 = json.getBoolean("_cg115");
            }
            // Receive _cg118
            if (json.has("_cg118")) {
                ${tickdata_name}._cg118 = json.getBoolean("_cg118");
            }
            // Receive _cg12
            if (json.has("_cg12")) {
                ${tickdata_name}._cg12 = json.getBoolean("_cg12");
            }
            // Receive _cg120
            if (json.has("_cg120")) {
                ${tickdata_name}._cg120 = json.getBoolean("_cg120");
            }
            // Receive _cg123
            if (json.has("_cg123")) {
                ${tickdata_name}._cg123 = json.getBoolean("_cg123");
            }
            // Receive _cg128
            if (json.has("_cg128")) {
                ${tickdata_name}._cg128 = json.getBoolean("_cg128");
            }
            // Receive _cg131
            if (json.has("_cg131")) {
                ${tickdata_name}._cg131 = json.getBoolean("_cg131");
            }
            // Receive _cg132
            if (json.has("_cg132")) {
                ${tickdata_name}._cg132 = json.getBoolean("_cg132");
            }
            // Receive _cg136
            if (json.has("_cg136")) {
                ${tickdata_name}._cg136 = json.getBoolean("_cg136");
            }
            // Receive _cg141
            if (json.has("_cg141")) {
                ${tickdata_name}._cg141 = json.getBoolean("_cg141");
            }
            // Receive _cg16
            if (json.has("_cg16")) {
                ${tickdata_name}._cg16 = json.getBoolean("_cg16");
            }
            // Receive _cg17
            if (json.has("_cg17")) {
                ${tickdata_name}._cg17 = json.getBoolean("_cg17");
            }
            // Receive _cg21
            if (json.has("_cg21")) {
                ${tickdata_name}._cg21 = json.getBoolean("_cg21");
            }
            // Receive _cg26
            if (json.has("_cg26")) {
                ${tickdata_name}._cg26 = json.getBoolean("_cg26");
            }
            // Receive _cg29
            if (json.has("_cg29")) {
                ${tickdata_name}._cg29 = json.getBoolean("_cg29");
            }
            // Receive _cg31
            if (json.has("_cg31")) {
                ${tickdata_name}._cg31 = json.getBoolean("_cg31");
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
            // Receive _cg40
            if (json.has("_cg40")) {
                ${tickdata_name}._cg40 = json.getBoolean("_cg40");
            }
            // Receive _cg46
            if (json.has("_cg46")) {
                ${tickdata_name}._cg46 = json.getBoolean("_cg46");
            }
            // Receive _cg49
            if (json.has("_cg49")) {
                ${tickdata_name}._cg49 = json.getBoolean("_cg49");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                ${tickdata_name}._cg50 = json.getBoolean("_cg50");
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
            // Receive _cg64
            if (json.has("_cg64")) {
                ${tickdata_name}._cg64 = json.getBoolean("_cg64");
            }
            // Receive _cg7
            if (json.has("_cg7")) {
                ${tickdata_name}._cg7 = json.getBoolean("_cg7");
            }
            // Receive _cg70
            if (json.has("_cg70")) {
                ${tickdata_name}._cg70 = json.getBoolean("_cg70");
            }
            // Receive _cg73
            if (json.has("_cg73")) {
                ${tickdata_name}._cg73 = json.getBoolean("_cg73");
            }
            // Receive _cg74
            if (json.has("_cg74")) {
                ${tickdata_name}._cg74 = json.getBoolean("_cg74");
            }
            // Receive _cg77
            if (json.has("_cg77")) {
                ${tickdata_name}._cg77 = json.getBoolean("_cg77");
            }
            // Receive _cg78
            if (json.has("_cg78")) {
                ${tickdata_name}._cg78 = json.getBoolean("_cg78");
            }
            // Receive _cg8
            if (json.has("_cg8")) {
                ${tickdata_name}._cg8 = json.getBoolean("_cg8");
            }
            // Receive _cg80
            if (json.has("_cg80")) {
                ${tickdata_name}._cg80 = json.getBoolean("_cg80");
            }
            // Receive _cg83
            if (json.has("_cg83")) {
                ${tickdata_name}._cg83 = json.getBoolean("_cg83");
            }
            // Receive _cg86
            if (json.has("_cg86")) {
                ${tickdata_name}._cg86 = json.getBoolean("_cg86");
            }
            // Receive _cg89
            if (json.has("_cg89")) {
                ${tickdata_name}._cg89 = json.getBoolean("_cg89");
            }
            // Receive _cg91
            if (json.has("_cg91")) {
                ${tickdata_name}._cg91 = json.getBoolean("_cg91");
            }
            // Receive _cg94
            if (json.has("_cg94")) {
                ${tickdata_name}._cg94 = json.getBoolean("_cg94");
            }
            // Receive _cg99
            if (json.has("_cg99")) {
                ${tickdata_name}._cg99 = json.getBoolean("_cg99");
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
            // Receive _g103
            if (json.has("_g103")) {
                ${tickdata_name}._g103 = json.getBoolean("_g103");
            }
            // Receive _g105
            if (json.has("_g105")) {
                ${tickdata_name}._g105 = json.getBoolean("_g105");
            }
            // Receive _g106
            if (json.has("_g106")) {
                ${tickdata_name}._g106 = json.getBoolean("_g106");
            }
            // Receive _g107
            if (json.has("_g107")) {
                ${tickdata_name}._g107 = json.getBoolean("_g107");
            }
            // Receive _g108
            if (json.has("_g108")) {
                ${tickdata_name}._g108 = json.getBoolean("_g108");
            }
            // Receive _g108_e1
            if (json.has("_g108_e1")) {
                ${tickdata_name}._g108_e1 = json.getBoolean("_g108_e1");
            }
            // Receive _g109
            if (json.has("_g109")) {
                ${tickdata_name}._g109 = json.getBoolean("_g109");
            }
            // Receive _g11
            if (json.has("_g11")) {
                ${tickdata_name}._g11 = json.getBoolean("_g11");
            }
            // Receive _g111
            if (json.has("_g111")) {
                ${tickdata_name}._g111 = json.getBoolean("_g111");
            }
            // Receive _g112
            if (json.has("_g112")) {
                ${tickdata_name}._g112 = json.getBoolean("_g112");
            }
            // Receive _g115
            if (json.has("_g115")) {
                ${tickdata_name}._g115 = json.getBoolean("_g115");
            }
            // Receive _g116
            if (json.has("_g116")) {
                ${tickdata_name}._g116 = json.getBoolean("_g116");
            }
            // Receive _g117
            if (json.has("_g117")) {
                ${tickdata_name}._g117 = json.getBoolean("_g117");
            }
            // Receive _g117_e2
            if (json.has("_g117_e2")) {
                ${tickdata_name}._g117_e2 = json.getBoolean("_g117_e2");
            }
            // Receive _g118
            if (json.has("_g118")) {
                ${tickdata_name}._g118 = json.getBoolean("_g118");
            }
            // Receive _g119
            if (json.has("_g119")) {
                ${tickdata_name}._g119 = json.getBoolean("_g119");
            }
            // Receive _g12
            if (json.has("_g12")) {
                ${tickdata_name}._g12 = json.getBoolean("_g12");
            }
            // Receive _g120
            if (json.has("_g120")) {
                ${tickdata_name}._g120 = json.getBoolean("_g120");
            }
            // Receive _g121
            if (json.has("_g121")) {
                ${tickdata_name}._g121 = json.getBoolean("_g121");
            }
            // Receive _g122
            if (json.has("_g122")) {
                ${tickdata_name}._g122 = json.getBoolean("_g122");
            }
            // Receive _g123
            if (json.has("_g123")) {
                ${tickdata_name}._g123 = json.getBoolean("_g123");
            }
            // Receive _g124
            if (json.has("_g124")) {
                ${tickdata_name}._g124 = json.getBoolean("_g124");
            }
            // Receive _g128
            if (json.has("_g128")) {
                ${tickdata_name}._g128 = json.getBoolean("_g128");
            }
            // Receive _g129
            if (json.has("_g129")) {
                ${tickdata_name}._g129 = json.getBoolean("_g129");
            }
            // Receive _g13
            if (json.has("_g13")) {
                ${tickdata_name}._g13 = json.getBoolean("_g13");
            }
            // Receive _g131
            if (json.has("_g131")) {
                ${tickdata_name}._g131 = json.getBoolean("_g131");
            }
            // Receive _g132
            if (json.has("_g132")) {
                ${tickdata_name}._g132 = json.getBoolean("_g132");
            }
            // Receive _g133
            if (json.has("_g133")) {
                ${tickdata_name}._g133 = json.getBoolean("_g133");
            }
            // Receive _g133_e1
            if (json.has("_g133_e1")) {
                ${tickdata_name}._g133_e1 = json.getBoolean("_g133_e1");
            }
            // Receive _g134
            if (json.has("_g134")) {
                ${tickdata_name}._g134 = json.getBoolean("_g134");
            }
            // Receive _g135
            if (json.has("_g135")) {
                ${tickdata_name}._g135 = json.getBoolean("_g135");
            }
            // Receive _g136
            if (json.has("_g136")) {
                ${tickdata_name}._g136 = json.getBoolean("_g136");
            }
            // Receive _g137
            if (json.has("_g137")) {
                ${tickdata_name}._g137 = json.getBoolean("_g137");
            }
            // Receive _g138
            if (json.has("_g138")) {
                ${tickdata_name}._g138 = json.getBoolean("_g138");
            }
            // Receive _g14
            if (json.has("_g14")) {
                ${tickdata_name}._g14 = json.getBoolean("_g14");
            }
            // Receive _g141
            if (json.has("_g141")) {
                ${tickdata_name}._g141 = json.getBoolean("_g141");
            }
            // Receive _g142
            if (json.has("_g142")) {
                ${tickdata_name}._g142 = json.getBoolean("_g142");
            }
            // Receive _g142_e2
            if (json.has("_g142_e2")) {
                ${tickdata_name}._g142_e2 = json.getBoolean("_g142_e2");
            }
            // Receive _g16
            if (json.has("_g16")) {
                ${tickdata_name}._g16 = json.getBoolean("_g16");
            }
            // Receive _g17
            if (json.has("_g17")) {
                ${tickdata_name}._g17 = json.getBoolean("_g17");
            }
            // Receive _g18
            if (json.has("_g18")) {
                ${tickdata_name}._g18 = json.getBoolean("_g18");
            }
            // Receive _g187
            if (json.has("_g187")) {
                ${tickdata_name}._g187 = json.getBoolean("_g187");
            }
            // Receive _g18_e2
            if (json.has("_g18_e2")) {
                ${tickdata_name}._g18_e2 = json.getBoolean("_g18_e2");
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
            // Receive _g23
            if (json.has("_g23")) {
                ${tickdata_name}._g23 = json.getBoolean("_g23");
            }
            // Receive _g26
            if (json.has("_g26")) {
                ${tickdata_name}._g26 = json.getBoolean("_g26");
            }
            // Receive _g27
            if (json.has("_g27")) {
                ${tickdata_name}._g27 = json.getBoolean("_g27");
            }
            // Receive _g28
            if (json.has("_g28")) {
                ${tickdata_name}._g28 = json.getBoolean("_g28");
            }
            // Receive _g28_e3
            if (json.has("_g28_e3")) {
                ${tickdata_name}._g28_e3 = json.getBoolean("_g28_e3");
            }
            // Receive _g29
            if (json.has("_g29")) {
                ${tickdata_name}._g29 = json.getBoolean("_g29");
            }
            // Receive _g30
            if (json.has("_g30")) {
                ${tickdata_name}._g30 = json.getBoolean("_g30");
            }
            // Receive _g31
            if (json.has("_g31")) {
                ${tickdata_name}._g31 = json.getBoolean("_g31");
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
            // Receive _g35
            if (json.has("_g35")) {
                ${tickdata_name}._g35 = json.getBoolean("_g35");
            }
            // Receive _g36
            if (json.has("_g36")) {
                ${tickdata_name}._g36 = json.getBoolean("_g36");
            }
            // Receive _g38
            if (json.has("_g38")) {
                ${tickdata_name}._g38 = json.getBoolean("_g38");
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
            // Receive _g41
            if (json.has("_g41")) {
                ${tickdata_name}._g41 = json.getBoolean("_g41");
            }
            // Receive _g42
            if (json.has("_g42")) {
                ${tickdata_name}._g42 = json.getBoolean("_g42");
            }
            // Receive _g46
            if (json.has("_g46")) {
                ${tickdata_name}._g46 = json.getBoolean("_g46");
            }
            // Receive _g47
            if (json.has("_g47")) {
                ${tickdata_name}._g47 = json.getBoolean("_g47");
            }
            // Receive _g49
            if (json.has("_g49")) {
                ${tickdata_name}._g49 = json.getBoolean("_g49");
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
            // Receive _g51_e1
            if (json.has("_g51_e1")) {
                ${tickdata_name}._g51_e1 = json.getBoolean("_g51_e1");
            }
            // Receive _g52
            if (json.has("_g52")) {
                ${tickdata_name}._g52 = json.getBoolean("_g52");
            }
            // Receive _g53
            if (json.has("_g53")) {
                ${tickdata_name}._g53 = json.getBoolean("_g53");
            }
            // Receive _g54
            if (json.has("_g54")) {
                ${tickdata_name}._g54 = json.getBoolean("_g54");
            }
            // Receive _g55
            if (json.has("_g55")) {
                ${tickdata_name}._g55 = json.getBoolean("_g55");
            }
            // Receive _g56
            if (json.has("_g56")) {
                ${tickdata_name}._g56 = json.getBoolean("_g56");
            }
            // Receive _g59
            if (json.has("_g59")) {
                ${tickdata_name}._g59 = json.getBoolean("_g59");
            }
            // Receive _g60
            if (json.has("_g60")) {
                ${tickdata_name}._g60 = json.getBoolean("_g60");
            }
            // Receive _g61
            if (json.has("_g61")) {
                ${tickdata_name}._g61 = json.getBoolean("_g61");
            }
            // Receive _g61_e2
            if (json.has("_g61_e2")) {
                ${tickdata_name}._g61_e2 = json.getBoolean("_g61_e2");
            }
            // Receive _g62
            if (json.has("_g62")) {
                ${tickdata_name}._g62 = json.getBoolean("_g62");
            }
            // Receive _g63
            if (json.has("_g63")) {
                ${tickdata_name}._g63 = json.getBoolean("_g63");
            }
            // Receive _g64
            if (json.has("_g64")) {
                ${tickdata_name}._g64 = json.getBoolean("_g64");
            }
            // Receive _g65
            if (json.has("_g65")) {
                ${tickdata_name}._g65 = json.getBoolean("_g65");
            }
            // Receive _g66
            if (json.has("_g66")) {
                ${tickdata_name}._g66 = json.getBoolean("_g66");
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
            // Receive _g74
            if (json.has("_g74")) {
                ${tickdata_name}._g74 = json.getBoolean("_g74");
            }
            // Receive _g76
            if (json.has("_g76")) {
                ${tickdata_name}._g76 = json.getBoolean("_g76");
            }
            // Receive _g77
            if (json.has("_g77")) {
                ${tickdata_name}._g77 = json.getBoolean("_g77");
            }
            // Receive _g78
            if (json.has("_g78")) {
                ${tickdata_name}._g78 = json.getBoolean("_g78");
            }
            // Receive _g79
            if (json.has("_g79")) {
                ${tickdata_name}._g79 = json.getBoolean("_g79");
            }
            // Receive _g79_e1
            if (json.has("_g79_e1")) {
                ${tickdata_name}._g79_e1 = json.getBoolean("_g79_e1");
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
            // Receive _g86
            if (json.has("_g86")) {
                ${tickdata_name}._g86 = json.getBoolean("_g86");
            }
            // Receive _g87
            if (json.has("_g87")) {
                ${tickdata_name}._g87 = json.getBoolean("_g87");
            }
            // Receive _g88
            if (json.has("_g88")) {
                ${tickdata_name}._g88 = json.getBoolean("_g88");
            }
            // Receive _g88_e2
            if (json.has("_g88_e2")) {
                ${tickdata_name}._g88_e2 = json.getBoolean("_g88_e2");
            }
            // Receive _g89
            if (json.has("_g89")) {
                ${tickdata_name}._g89 = json.getBoolean("_g89");
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
            // Receive _g94
            if (json.has("_g94")) {
                ${tickdata_name}._g94 = json.getBoolean("_g94");
            }
            // Receive _g95
            if (json.has("_g95")) {
                ${tickdata_name}._g95 = json.getBoolean("_g95");
            }
            // Receive _g99
            if (json.has("_g99")) {
                ${tickdata_name}._g99 = json.getBoolean("_g99");
            }
            // Receive _g9_e1
            if (json.has("_g9_e1")) {
                ${tickdata_name}._g9_e1 = json.getBoolean("_g9_e1");
            }
            // Receive _pg10
            if (json.has("_pg10")) {
                ${tickdata_name}._pg10 = json.getBoolean("_pg10");
            }
            // Receive _pg100
            if (json.has("_pg100")) {
                ${tickdata_name}._pg100 = json.getBoolean("_pg100");
            }
            // Receive _pg103
            if (json.has("_pg103")) {
                ${tickdata_name}._pg103 = json.getBoolean("_pg103");
            }
            // Receive _pg107
            if (json.has("_pg107")) {
                ${tickdata_name}._pg107 = json.getBoolean("_pg107");
            }
            // Receive _pg108_e1
            if (json.has("_pg108_e1")) {
                ${tickdata_name}._pg108_e1 = json.getBoolean("_pg108_e1");
            }
            // Receive _pg109
            if (json.has("_pg109")) {
                ${tickdata_name}._pg109 = json.getBoolean("_pg109");
            }
            // Receive _pg112
            if (json.has("_pg112")) {
                ${tickdata_name}._pg112 = json.getBoolean("_pg112");
            }
            // Receive _pg118
            if (json.has("_pg118")) {
                ${tickdata_name}._pg118 = json.getBoolean("_pg118");
            }
            // Receive _pg120
            if (json.has("_pg120")) {
                ${tickdata_name}._pg120 = json.getBoolean("_pg120");
            }
            // Receive _pg121
            if (json.has("_pg121")) {
                ${tickdata_name}._pg121 = json.getBoolean("_pg121");
            }
            // Receive _pg122
            if (json.has("_pg122")) {
                ${tickdata_name}._pg122 = json.getBoolean("_pg122");
            }
            // Receive _pg128
            if (json.has("_pg128")) {
                ${tickdata_name}._pg128 = json.getBoolean("_pg128");
            }
            // Receive _pg13
            if (json.has("_pg13")) {
                ${tickdata_name}._pg13 = json.getBoolean("_pg13");
            }
            // Receive _pg134
            if (json.has("_pg134")) {
                ${tickdata_name}._pg134 = json.getBoolean("_pg134");
            }
            // Receive _pg136
            if (json.has("_pg136")) {
                ${tickdata_name}._pg136 = json.getBoolean("_pg136");
            }
            // Receive _pg137
            if (json.has("_pg137")) {
                ${tickdata_name}._pg137 = json.getBoolean("_pg137");
            }
            // Receive _pg18_e2
            if (json.has("_pg18_e2")) {
                ${tickdata_name}._pg18_e2 = json.getBoolean("_pg18_e2");
            }
            // Receive _pg19
            if (json.has("_pg19")) {
                ${tickdata_name}._pg19 = json.getBoolean("_pg19");
            }
            // Receive _pg21
            if (json.has("_pg21")) {
                ${tickdata_name}._pg21 = json.getBoolean("_pg21");
            }
            // Receive _pg22
            if (json.has("_pg22")) {
                ${tickdata_name}._pg22 = json.getBoolean("_pg22");
            }
            // Receive _pg33
            if (json.has("_pg33")) {
                ${tickdata_name}._pg33 = json.getBoolean("_pg33");
            }
            // Receive _pg50
            if (json.has("_pg50")) {
                ${tickdata_name}._pg50 = json.getBoolean("_pg50");
            }
            // Receive _pg51_e1
            if (json.has("_pg51_e1")) {
                ${tickdata_name}._pg51_e1 = json.getBoolean("_pg51_e1");
            }
            // Receive _pg52
            if (json.has("_pg52")) {
                ${tickdata_name}._pg52 = json.getBoolean("_pg52");
            }
            // Receive _pg55
            if (json.has("_pg55")) {
                ${tickdata_name}._pg55 = json.getBoolean("_pg55");
            }
            // Receive _pg88
            if (json.has("_pg88")) {
                ${tickdata_name}._pg88 = json.getBoolean("_pg88");
            }
            // Receive _pg91
            if (json.has("_pg91")) {
                ${tickdata_name}._pg91 = json.getBoolean("_pg91");
            }
            // Receive _pg92
            if (json.has("_pg92")) {
                ${tickdata_name}._pg92 = json.getBoolean("_pg92");
            }
            // Receive _pg94
            if (json.has("_pg94")) {
                ${tickdata_name}._pg94 = json.getBoolean("_pg94");
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
        // Send AEI_counter
        json.put("AEI_counter", JSONObject.wrap(${tickdata_name}.AEI_counter));
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
        // Send _DDDpacemaker_local_AEI_state
        json.put("_DDDpacemaker_local_AEI_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AEI_state));
        // Send _DDDpacemaker_local_AP_temp
        json.put("_DDDpacemaker_local_AP_temp", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AP_temp));
        // Send _DDDpacemaker_local_AR
        json.put("_DDDpacemaker_local_AR", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AR));
        // Send _DDDpacemaker_local_AVI_state
        json.put("_DDDpacemaker_local_AVI_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_AVI_state));
        // Send _DDDpacemaker_local_LRI_reset
        json.put("_DDDpacemaker_local_LRI_reset", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_reset));
        // Send _DDDpacemaker_local_LRI_start
        json.put("_DDDpacemaker_local_LRI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_start));
        // Send _DDDpacemaker_local_LRI_stop
        json.put("_DDDpacemaker_local_LRI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_stop));
        // Send _DDDpacemaker_local_PVARP_state
        json.put("_DDDpacemaker_local_PVARP_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_PVARP_state));
        // Send _DDDpacemaker_local_URI_start
        json.put("_DDDpacemaker_local_URI_start", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_start));
        // Send _DDDpacemaker_local_URI_stop
        json.put("_DDDpacemaker_local_URI_stop", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_stop));
        // Send _DDDpacemaker_local_VP_temp
        json.put("_DDDpacemaker_local_VP_temp", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VP_temp));
        // Send _DDDpacemaker_local_VR
        json.put("_DDDpacemaker_local_VR", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VR));
        // Send _DDDpacemaker_local_VRP_state
        json.put("_DDDpacemaker_local_VRP_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_VRP_state));
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
        // Send _DDDpacemaker_local__Atrig9
        json.put("_DDDpacemaker_local__Atrig9", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig9));
        // Send _DDDpacemaker_local__pre_AP_temp
        json.put("_DDDpacemaker_local__pre_AP_temp", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_AP_temp));
        // Send _DDDpacemaker_local__pre_VP_temp
        json.put("_DDDpacemaker_local__pre_VP_temp", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__pre_VP_temp));
        // Send _DDDpacemaker_local__reg_AP_temp
        json.put("_DDDpacemaker_local__reg_AP_temp", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_AP_temp));
        // Send _DDDpacemaker_local__reg_VP_temp
        json.put("_DDDpacemaker_local__reg_VP_temp", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__reg_VP_temp));
        // Send _DDDpacemaker_local_real_AS
        json.put("_DDDpacemaker_local_real_AS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_real_AS));
        // Send _DDDpacemaker_local_real_VS
        json.put("_DDDpacemaker_local_real_VS", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_real_VS));
        // Send _GO
        json.put("_GO", JSONObject.wrap(${tickdata_name}._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(${tickdata_name}._TERM));
        // Send _cg102
        json.put("_cg102", JSONObject.wrap(${tickdata_name}._cg102));
        // Send _cg103
        json.put("_cg103", JSONObject.wrap(${tickdata_name}._cg103));
        // Send _cg106
        json.put("_cg106", JSONObject.wrap(${tickdata_name}._cg106));
        // Send _cg107
        json.put("_cg107", JSONObject.wrap(${tickdata_name}._cg107));
        // Send _cg109
        json.put("_cg109", JSONObject.wrap(${tickdata_name}._cg109));
        // Send _cg112
        json.put("_cg112", JSONObject.wrap(${tickdata_name}._cg112));
        // Send _cg115
        json.put("_cg115", JSONObject.wrap(${tickdata_name}._cg115));
        // Send _cg118
        json.put("_cg118", JSONObject.wrap(${tickdata_name}._cg118));
        // Send _cg12
        json.put("_cg12", JSONObject.wrap(${tickdata_name}._cg12));
        // Send _cg120
        json.put("_cg120", JSONObject.wrap(${tickdata_name}._cg120));
        // Send _cg123
        json.put("_cg123", JSONObject.wrap(${tickdata_name}._cg123));
        // Send _cg128
        json.put("_cg128", JSONObject.wrap(${tickdata_name}._cg128));
        // Send _cg131
        json.put("_cg131", JSONObject.wrap(${tickdata_name}._cg131));
        // Send _cg132
        json.put("_cg132", JSONObject.wrap(${tickdata_name}._cg132));
        // Send _cg136
        json.put("_cg136", JSONObject.wrap(${tickdata_name}._cg136));
        // Send _cg141
        json.put("_cg141", JSONObject.wrap(${tickdata_name}._cg141));
        // Send _cg16
        json.put("_cg16", JSONObject.wrap(${tickdata_name}._cg16));
        // Send _cg17
        json.put("_cg17", JSONObject.wrap(${tickdata_name}._cg17));
        // Send _cg21
        json.put("_cg21", JSONObject.wrap(${tickdata_name}._cg21));
        // Send _cg26
        json.put("_cg26", JSONObject.wrap(${tickdata_name}._cg26));
        // Send _cg29
        json.put("_cg29", JSONObject.wrap(${tickdata_name}._cg29));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(${tickdata_name}._cg31));
        // Send _cg33
        json.put("_cg33", JSONObject.wrap(${tickdata_name}._cg33));
        // Send _cg35
        json.put("_cg35", JSONObject.wrap(${tickdata_name}._cg35));
        // Send _cg38
        json.put("_cg38", JSONObject.wrap(${tickdata_name}._cg38));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(${tickdata_name}._cg4));
        // Send _cg40
        json.put("_cg40", JSONObject.wrap(${tickdata_name}._cg40));
        // Send _cg46
        json.put("_cg46", JSONObject.wrap(${tickdata_name}._cg46));
        // Send _cg49
        json.put("_cg49", JSONObject.wrap(${tickdata_name}._cg49));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(${tickdata_name}._cg50));
        // Send _cg54
        json.put("_cg54", JSONObject.wrap(${tickdata_name}._cg54));
        // Send _cg59
        json.put("_cg59", JSONObject.wrap(${tickdata_name}._cg59));
        // Send _cg62
        json.put("_cg62", JSONObject.wrap(${tickdata_name}._cg62));
        // Send _cg64
        json.put("_cg64", JSONObject.wrap(${tickdata_name}._cg64));
        // Send _cg7
        json.put("_cg7", JSONObject.wrap(${tickdata_name}._cg7));
        // Send _cg70
        json.put("_cg70", JSONObject.wrap(${tickdata_name}._cg70));
        // Send _cg73
        json.put("_cg73", JSONObject.wrap(${tickdata_name}._cg73));
        // Send _cg74
        json.put("_cg74", JSONObject.wrap(${tickdata_name}._cg74));
        // Send _cg77
        json.put("_cg77", JSONObject.wrap(${tickdata_name}._cg77));
        // Send _cg78
        json.put("_cg78", JSONObject.wrap(${tickdata_name}._cg78));
        // Send _cg8
        json.put("_cg8", JSONObject.wrap(${tickdata_name}._cg8));
        // Send _cg80
        json.put("_cg80", JSONObject.wrap(${tickdata_name}._cg80));
        // Send _cg83
        json.put("_cg83", JSONObject.wrap(${tickdata_name}._cg83));
        // Send _cg86
        json.put("_cg86", JSONObject.wrap(${tickdata_name}._cg86));
        // Send _cg89
        json.put("_cg89", JSONObject.wrap(${tickdata_name}._cg89));
        // Send _cg91
        json.put("_cg91", JSONObject.wrap(${tickdata_name}._cg91));
        // Send _cg94
        json.put("_cg94", JSONObject.wrap(${tickdata_name}._cg94));
        // Send _cg99
        json.put("_cg99", JSONObject.wrap(${tickdata_name}._cg99));
        // Send _g10
        json.put("_g10", JSONObject.wrap(${tickdata_name}._g10));
        // Send _g100
        json.put("_g100", JSONObject.wrap(${tickdata_name}._g100));
        // Send _g101
        json.put("_g101", JSONObject.wrap(${tickdata_name}._g101));
        // Send _g103
        json.put("_g103", JSONObject.wrap(${tickdata_name}._g103));
        // Send _g105
        json.put("_g105", JSONObject.wrap(${tickdata_name}._g105));
        // Send _g106
        json.put("_g106", JSONObject.wrap(${tickdata_name}._g106));
        // Send _g107
        json.put("_g107", JSONObject.wrap(${tickdata_name}._g107));
        // Send _g108
        json.put("_g108", JSONObject.wrap(${tickdata_name}._g108));
        // Send _g108_e1
        json.put("_g108_e1", JSONObject.wrap(${tickdata_name}._g108_e1));
        // Send _g109
        json.put("_g109", JSONObject.wrap(${tickdata_name}._g109));
        // Send _g11
        json.put("_g11", JSONObject.wrap(${tickdata_name}._g11));
        // Send _g111
        json.put("_g111", JSONObject.wrap(${tickdata_name}._g111));
        // Send _g112
        json.put("_g112", JSONObject.wrap(${tickdata_name}._g112));
        // Send _g115
        json.put("_g115", JSONObject.wrap(${tickdata_name}._g115));
        // Send _g116
        json.put("_g116", JSONObject.wrap(${tickdata_name}._g116));
        // Send _g117
        json.put("_g117", JSONObject.wrap(${tickdata_name}._g117));
        // Send _g117_e2
        json.put("_g117_e2", JSONObject.wrap(${tickdata_name}._g117_e2));
        // Send _g118
        json.put("_g118", JSONObject.wrap(${tickdata_name}._g118));
        // Send _g119
        json.put("_g119", JSONObject.wrap(${tickdata_name}._g119));
        // Send _g12
        json.put("_g12", JSONObject.wrap(${tickdata_name}._g12));
        // Send _g120
        json.put("_g120", JSONObject.wrap(${tickdata_name}._g120));
        // Send _g121
        json.put("_g121", JSONObject.wrap(${tickdata_name}._g121));
        // Send _g122
        json.put("_g122", JSONObject.wrap(${tickdata_name}._g122));
        // Send _g123
        json.put("_g123", JSONObject.wrap(${tickdata_name}._g123));
        // Send _g124
        json.put("_g124", JSONObject.wrap(${tickdata_name}._g124));
        // Send _g128
        json.put("_g128", JSONObject.wrap(${tickdata_name}._g128));
        // Send _g129
        json.put("_g129", JSONObject.wrap(${tickdata_name}._g129));
        // Send _g13
        json.put("_g13", JSONObject.wrap(${tickdata_name}._g13));
        // Send _g131
        json.put("_g131", JSONObject.wrap(${tickdata_name}._g131));
        // Send _g132
        json.put("_g132", JSONObject.wrap(${tickdata_name}._g132));
        // Send _g133
        json.put("_g133", JSONObject.wrap(${tickdata_name}._g133));
        // Send _g133_e1
        json.put("_g133_e1", JSONObject.wrap(${tickdata_name}._g133_e1));
        // Send _g134
        json.put("_g134", JSONObject.wrap(${tickdata_name}._g134));
        // Send _g135
        json.put("_g135", JSONObject.wrap(${tickdata_name}._g135));
        // Send _g136
        json.put("_g136", JSONObject.wrap(${tickdata_name}._g136));
        // Send _g137
        json.put("_g137", JSONObject.wrap(${tickdata_name}._g137));
        // Send _g138
        json.put("_g138", JSONObject.wrap(${tickdata_name}._g138));
        // Send _g14
        json.put("_g14", JSONObject.wrap(${tickdata_name}._g14));
        // Send _g141
        json.put("_g141", JSONObject.wrap(${tickdata_name}._g141));
        // Send _g142
        json.put("_g142", JSONObject.wrap(${tickdata_name}._g142));
        // Send _g142_e2
        json.put("_g142_e2", JSONObject.wrap(${tickdata_name}._g142_e2));
        // Send _g16
        json.put("_g16", JSONObject.wrap(${tickdata_name}._g16));
        // Send _g17
        json.put("_g17", JSONObject.wrap(${tickdata_name}._g17));
        // Send _g18
        json.put("_g18", JSONObject.wrap(${tickdata_name}._g18));
        // Send _g187
        json.put("_g187", JSONObject.wrap(${tickdata_name}._g187));
        // Send _g18_e2
        json.put("_g18_e2", JSONObject.wrap(${tickdata_name}._g18_e2));
        // Send _g19
        json.put("_g19", JSONObject.wrap(${tickdata_name}._g19));
        // Send _g20
        json.put("_g20", JSONObject.wrap(${tickdata_name}._g20));
        // Send _g21
        json.put("_g21", JSONObject.wrap(${tickdata_name}._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(${tickdata_name}._g22));
        // Send _g23
        json.put("_g23", JSONObject.wrap(${tickdata_name}._g23));
        // Send _g26
        json.put("_g26", JSONObject.wrap(${tickdata_name}._g26));
        // Send _g27
        json.put("_g27", JSONObject.wrap(${tickdata_name}._g27));
        // Send _g28
        json.put("_g28", JSONObject.wrap(${tickdata_name}._g28));
        // Send _g28_e3
        json.put("_g28_e3", JSONObject.wrap(${tickdata_name}._g28_e3));
        // Send _g29
        json.put("_g29", JSONObject.wrap(${tickdata_name}._g29));
        // Send _g30
        json.put("_g30", JSONObject.wrap(${tickdata_name}._g30));
        // Send _g31
        json.put("_g31", JSONObject.wrap(${tickdata_name}._g31));
        // Send _g32
        json.put("_g32", JSONObject.wrap(${tickdata_name}._g32));
        // Send _g33
        json.put("_g33", JSONObject.wrap(${tickdata_name}._g33));
        // Send _g34
        json.put("_g34", JSONObject.wrap(${tickdata_name}._g34));
        // Send _g35
        json.put("_g35", JSONObject.wrap(${tickdata_name}._g35));
        // Send _g36
        json.put("_g36", JSONObject.wrap(${tickdata_name}._g36));
        // Send _g38
        json.put("_g38", JSONObject.wrap(${tickdata_name}._g38));
        // Send _g39
        json.put("_g39", JSONObject.wrap(${tickdata_name}._g39));
        // Send _g4
        json.put("_g4", JSONObject.wrap(${tickdata_name}._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(${tickdata_name}._g40));
        // Send _g41
        json.put("_g41", JSONObject.wrap(${tickdata_name}._g41));
        // Send _g42
        json.put("_g42", JSONObject.wrap(${tickdata_name}._g42));
        // Send _g46
        json.put("_g46", JSONObject.wrap(${tickdata_name}._g46));
        // Send _g47
        json.put("_g47", JSONObject.wrap(${tickdata_name}._g47));
        // Send _g49
        json.put("_g49", JSONObject.wrap(${tickdata_name}._g49));
        // Send _g5
        json.put("_g5", JSONObject.wrap(${tickdata_name}._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(${tickdata_name}._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(${tickdata_name}._g51));
        // Send _g51_e1
        json.put("_g51_e1", JSONObject.wrap(${tickdata_name}._g51_e1));
        // Send _g52
        json.put("_g52", JSONObject.wrap(${tickdata_name}._g52));
        // Send _g53
        json.put("_g53", JSONObject.wrap(${tickdata_name}._g53));
        // Send _g54
        json.put("_g54", JSONObject.wrap(${tickdata_name}._g54));
        // Send _g55
        json.put("_g55", JSONObject.wrap(${tickdata_name}._g55));
        // Send _g56
        json.put("_g56", JSONObject.wrap(${tickdata_name}._g56));
        // Send _g59
        json.put("_g59", JSONObject.wrap(${tickdata_name}._g59));
        // Send _g60
        json.put("_g60", JSONObject.wrap(${tickdata_name}._g60));
        // Send _g61
        json.put("_g61", JSONObject.wrap(${tickdata_name}._g61));
        // Send _g61_e2
        json.put("_g61_e2", JSONObject.wrap(${tickdata_name}._g61_e2));
        // Send _g62
        json.put("_g62", JSONObject.wrap(${tickdata_name}._g62));
        // Send _g63
        json.put("_g63", JSONObject.wrap(${tickdata_name}._g63));
        // Send _g64
        json.put("_g64", JSONObject.wrap(${tickdata_name}._g64));
        // Send _g65
        json.put("_g65", JSONObject.wrap(${tickdata_name}._g65));
        // Send _g66
        json.put("_g66", JSONObject.wrap(${tickdata_name}._g66));
        // Send _g7
        json.put("_g7", JSONObject.wrap(${tickdata_name}._g7));
        // Send _g70
        json.put("_g70", JSONObject.wrap(${tickdata_name}._g70));
        // Send _g71
        json.put("_g71", JSONObject.wrap(${tickdata_name}._g71));
        // Send _g72
        json.put("_g72", JSONObject.wrap(${tickdata_name}._g72));
        // Send _g74
        json.put("_g74", JSONObject.wrap(${tickdata_name}._g74));
        // Send _g76
        json.put("_g76", JSONObject.wrap(${tickdata_name}._g76));
        // Send _g77
        json.put("_g77", JSONObject.wrap(${tickdata_name}._g77));
        // Send _g78
        json.put("_g78", JSONObject.wrap(${tickdata_name}._g78));
        // Send _g79
        json.put("_g79", JSONObject.wrap(${tickdata_name}._g79));
        // Send _g79_e1
        json.put("_g79_e1", JSONObject.wrap(${tickdata_name}._g79_e1));
        // Send _g8
        json.put("_g8", JSONObject.wrap(${tickdata_name}._g8));
        // Send _g80
        json.put("_g80", JSONObject.wrap(${tickdata_name}._g80));
        // Send _g82
        json.put("_g82", JSONObject.wrap(${tickdata_name}._g82));
        // Send _g83
        json.put("_g83", JSONObject.wrap(${tickdata_name}._g83));
        // Send _g86
        json.put("_g86", JSONObject.wrap(${tickdata_name}._g86));
        // Send _g87
        json.put("_g87", JSONObject.wrap(${tickdata_name}._g87));
        // Send _g88
        json.put("_g88", JSONObject.wrap(${tickdata_name}._g88));
        // Send _g88_e2
        json.put("_g88_e2", JSONObject.wrap(${tickdata_name}._g88_e2));
        // Send _g89
        json.put("_g89", JSONObject.wrap(${tickdata_name}._g89));
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
        // Send _g94
        json.put("_g94", JSONObject.wrap(${tickdata_name}._g94));
        // Send _g95
        json.put("_g95", JSONObject.wrap(${tickdata_name}._g95));
        // Send _g99
        json.put("_g99", JSONObject.wrap(${tickdata_name}._g99));
        // Send _g9_e1
        json.put("_g9_e1", JSONObject.wrap(${tickdata_name}._g9_e1));
        // Send _pg10
        json.put("_pg10", JSONObject.wrap(${tickdata_name}._pg10));
        // Send _pg100
        json.put("_pg100", JSONObject.wrap(${tickdata_name}._pg100));
        // Send _pg103
        json.put("_pg103", JSONObject.wrap(${tickdata_name}._pg103));
        // Send _pg107
        json.put("_pg107", JSONObject.wrap(${tickdata_name}._pg107));
        // Send _pg108_e1
        json.put("_pg108_e1", JSONObject.wrap(${tickdata_name}._pg108_e1));
        // Send _pg109
        json.put("_pg109", JSONObject.wrap(${tickdata_name}._pg109));
        // Send _pg112
        json.put("_pg112", JSONObject.wrap(${tickdata_name}._pg112));
        // Send _pg118
        json.put("_pg118", JSONObject.wrap(${tickdata_name}._pg118));
        // Send _pg120
        json.put("_pg120", JSONObject.wrap(${tickdata_name}._pg120));
        // Send _pg121
        json.put("_pg121", JSONObject.wrap(${tickdata_name}._pg121));
        // Send _pg122
        json.put("_pg122", JSONObject.wrap(${tickdata_name}._pg122));
        // Send _pg128
        json.put("_pg128", JSONObject.wrap(${tickdata_name}._pg128));
        // Send _pg13
        json.put("_pg13", JSONObject.wrap(${tickdata_name}._pg13));
        // Send _pg134
        json.put("_pg134", JSONObject.wrap(${tickdata_name}._pg134));
        // Send _pg136
        json.put("_pg136", JSONObject.wrap(${tickdata_name}._pg136));
        // Send _pg137
        json.put("_pg137", JSONObject.wrap(${tickdata_name}._pg137));
        // Send _pg18_e2
        json.put("_pg18_e2", JSONObject.wrap(${tickdata_name}._pg18_e2));
        // Send _pg19
        json.put("_pg19", JSONObject.wrap(${tickdata_name}._pg19));
        // Send _pg21
        json.put("_pg21", JSONObject.wrap(${tickdata_name}._pg21));
        // Send _pg22
        json.put("_pg22", JSONObject.wrap(${tickdata_name}._pg22));
        // Send _pg33
        json.put("_pg33", JSONObject.wrap(${tickdata_name}._pg33));
        // Send _pg50
        json.put("_pg50", JSONObject.wrap(${tickdata_name}._pg50));
        // Send _pg51_e1
        json.put("_pg51_e1", JSONObject.wrap(${tickdata_name}._pg51_e1));
        // Send _pg52
        json.put("_pg52", JSONObject.wrap(${tickdata_name}._pg52));
        // Send _pg55
        json.put("_pg55", JSONObject.wrap(${tickdata_name}._pg55));
        // Send _pg88
        json.put("_pg88", JSONObject.wrap(${tickdata_name}._pg88));
        // Send _pg91
        json.put("_pg91", JSONObject.wrap(${tickdata_name}._pg91));
        // Send _pg92
        json.put("_pg92", JSONObject.wrap(${tickdata_name}._pg92));
        // Send _pg94
        json.put("_pg94", JSONObject.wrap(${tickdata_name}._pg94));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(${tickdata_name}._taken_transitions));
        
        System.out.println(json.toString());
    }
</#macro>
