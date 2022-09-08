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
            // Receive _DDDpacemaker_local__Atrig
            if (json.has("_DDDpacemaker_local__Atrig")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig = json.getBoolean("_DDDpacemaker_local__Atrig");
            }
            // Receive _DDDpacemaker_local__Atrig1
            if (json.has("_DDDpacemaker_local__Atrig1")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig1 = json.getBoolean("_DDDpacemaker_local__Atrig1");
            }
            // Receive _DDDpacemaker_local__Atrig10
            if (json.has("_DDDpacemaker_local__Atrig10")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig10 = json.getBoolean("_DDDpacemaker_local__Atrig10");
            }
            // Receive _DDDpacemaker_local__Atrig11
            if (json.has("_DDDpacemaker_local__Atrig11")) {
                ${tickdata_name}._DDDpacemaker_local__Atrig11 = json.getBoolean("_DDDpacemaker_local__Atrig11");
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
            // Receive _cg102
            if (json.has("_cg102")) {
                ${tickdata_name}._cg102 = json.getBoolean("_cg102");
            }
            // Receive _cg105
            if (json.has("_cg105")) {
                ${tickdata_name}._cg105 = json.getBoolean("_cg105");
            }
            // Receive _cg107
            if (json.has("_cg107")) {
                ${tickdata_name}._cg107 = json.getBoolean("_cg107");
            }
            // Receive _cg110
            if (json.has("_cg110")) {
                ${tickdata_name}._cg110 = json.getBoolean("_cg110");
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
            // Receive _cg123
            if (json.has("_cg123")) {
                ${tickdata_name}._cg123 = json.getBoolean("_cg123");
            }
            // Receive _cg126
            if (json.has("_cg126")) {
                ${tickdata_name}._cg126 = json.getBoolean("_cg126");
            }
            // Receive _cg127
            if (json.has("_cg127")) {
                ${tickdata_name}._cg127 = json.getBoolean("_cg127");
            }
            // Receive _cg130
            if (json.has("_cg130")) {
                ${tickdata_name}._cg130 = json.getBoolean("_cg130");
            }
            // Receive _cg131
            if (json.has("_cg131")) {
                ${tickdata_name}._cg131 = json.getBoolean("_cg131");
            }
            // Receive _cg133
            if (json.has("_cg133")) {
                ${tickdata_name}._cg133 = json.getBoolean("_cg133");
            }
            // Receive _cg136
            if (json.has("_cg136")) {
                ${tickdata_name}._cg136 = json.getBoolean("_cg136");
            }
            // Receive _cg139
            if (json.has("_cg139")) {
                ${tickdata_name}._cg139 = json.getBoolean("_cg139");
            }
            // Receive _cg142
            if (json.has("_cg142")) {
                ${tickdata_name}._cg142 = json.getBoolean("_cg142");
            }
            // Receive _cg144
            if (json.has("_cg144")) {
                ${tickdata_name}._cg144 = json.getBoolean("_cg144");
            }
            // Receive _cg147
            if (json.has("_cg147")) {
                ${tickdata_name}._cg147 = json.getBoolean("_cg147");
            }
            // Receive _cg152
            if (json.has("_cg152")) {
                ${tickdata_name}._cg152 = json.getBoolean("_cg152");
            }
            // Receive _cg155
            if (json.has("_cg155")) {
                ${tickdata_name}._cg155 = json.getBoolean("_cg155");
            }
            // Receive _cg16
            if (json.has("_cg16")) {
                ${tickdata_name}._cg16 = json.getBoolean("_cg16");
            }
            // Receive _cg160
            if (json.has("_cg160")) {
                ${tickdata_name}._cg160 = json.getBoolean("_cg160");
            }
            // Receive _cg163
            if (json.has("_cg163")) {
                ${tickdata_name}._cg163 = json.getBoolean("_cg163");
            }
            // Receive _cg164
            if (json.has("_cg164")) {
                ${tickdata_name}._cg164 = json.getBoolean("_cg164");
            }
            // Receive _cg168
            if (json.has("_cg168")) {
                ${tickdata_name}._cg168 = json.getBoolean("_cg168");
            }
            // Receive _cg17
            if (json.has("_cg17")) {
                ${tickdata_name}._cg17 = json.getBoolean("_cg17");
            }
            // Receive _cg173
            if (json.has("_cg173")) {
                ${tickdata_name}._cg173 = json.getBoolean("_cg173");
            }
            // Receive _cg176
            if (json.has("_cg176")) {
                ${tickdata_name}._cg176 = json.getBoolean("_cg176");
            }
            // Receive _cg178
            if (json.has("_cg178")) {
                ${tickdata_name}._cg178 = json.getBoolean("_cg178");
            }
            // Receive _cg184
            if (json.has("_cg184")) {
                ${tickdata_name}._cg184 = json.getBoolean("_cg184");
            }
            // Receive _cg187
            if (json.has("_cg187")) {
                ${tickdata_name}._cg187 = json.getBoolean("_cg187");
            }
            // Receive _cg192
            if (json.has("_cg192")) {
                ${tickdata_name}._cg192 = json.getBoolean("_cg192");
            }
            // Receive _cg195
            if (json.has("_cg195")) {
                ${tickdata_name}._cg195 = json.getBoolean("_cg195");
            }
            // Receive _cg196
            if (json.has("_cg196")) {
                ${tickdata_name}._cg196 = json.getBoolean("_cg196");
            }
            // Receive _cg200
            if (json.has("_cg200")) {
                ${tickdata_name}._cg200 = json.getBoolean("_cg200");
            }
            // Receive _cg205
            if (json.has("_cg205")) {
                ${tickdata_name}._cg205 = json.getBoolean("_cg205");
            }
            // Receive _cg21
            if (json.has("_cg21")) {
                ${tickdata_name}._cg21 = json.getBoolean("_cg21");
            }
            // Receive _cg211
            if (json.has("_cg211")) {
                ${tickdata_name}._cg211 = json.getBoolean("_cg211");
            }
            // Receive _cg214
            if (json.has("_cg214")) {
                ${tickdata_name}._cg214 = json.getBoolean("_cg214");
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
            // Receive _cg54
            if (json.has("_cg54")) {
                ${tickdata_name}._cg54 = json.getBoolean("_cg54");
            }
            // Receive _cg57
            if (json.has("_cg57")) {
                ${tickdata_name}._cg57 = json.getBoolean("_cg57");
            }
            // Receive _cg58
            if (json.has("_cg58")) {
                ${tickdata_name}._cg58 = json.getBoolean("_cg58");
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
            // Receive _cg78
            if (json.has("_cg78")) {
                ${tickdata_name}._cg78 = json.getBoolean("_cg78");
            }
            // Receive _cg8
            if (json.has("_cg8")) {
                ${tickdata_name}._cg8 = json.getBoolean("_cg8");
            }
            // Receive _cg81
            if (json.has("_cg81")) {
                ${tickdata_name}._cg81 = json.getBoolean("_cg81");
            }
            // Receive _cg86
            if (json.has("_cg86")) {
                ${tickdata_name}._cg86 = json.getBoolean("_cg86");
            }
            // Receive _cg89
            if (json.has("_cg89")) {
                ${tickdata_name}._cg89 = json.getBoolean("_cg89");
            }
            // Receive _cg90
            if (json.has("_cg90")) {
                ${tickdata_name}._cg90 = json.getBoolean("_cg90");
            }
            // Receive _cg93
            if (json.has("_cg93")) {
                ${tickdata_name}._cg93 = json.getBoolean("_cg93");
            }
            // Receive _cg94
            if (json.has("_cg94")) {
                ${tickdata_name}._cg94 = json.getBoolean("_cg94");
            }
            // Receive _cg96
            if (json.has("_cg96")) {
                ${tickdata_name}._cg96 = json.getBoolean("_cg96");
            }
            // Receive _cg99
            if (json.has("_cg99")) {
                ${tickdata_name}._cg99 = json.getBoolean("_cg99");
            }
            // Receive _g10
            if (json.has("_g10")) {
                ${tickdata_name}._g10 = json.getBoolean("_g10");
            }
            // Receive _g102
            if (json.has("_g102")) {
                ${tickdata_name}._g102 = json.getBoolean("_g102");
            }
            // Receive _g103
            if (json.has("_g103")) {
                ${tickdata_name}._g103 = json.getBoolean("_g103");
            }
            // Receive _g104
            if (json.has("_g104")) {
                ${tickdata_name}._g104 = json.getBoolean("_g104");
            }
            // Receive _g104_e2
            if (json.has("_g104_e2")) {
                ${tickdata_name}._g104_e2 = json.getBoolean("_g104_e2");
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
            // Receive _g109
            if (json.has("_g109")) {
                ${tickdata_name}._g109 = json.getBoolean("_g109");
            }
            // Receive _g11
            if (json.has("_g11")) {
                ${tickdata_name}._g11 = json.getBoolean("_g11");
            }
            // Receive _g115
            if (json.has("_g115")) {
                ${tickdata_name}._g115 = json.getBoolean("_g115");
            }
            // Receive _g116
            if (json.has("_g116")) {
                ${tickdata_name}._g116 = json.getBoolean("_g116");
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
            // Receive _g125
            if (json.has("_g125")) {
                ${tickdata_name}._g125 = json.getBoolean("_g125");
            }
            // Receive _g127
            if (json.has("_g127")) {
                ${tickdata_name}._g127 = json.getBoolean("_g127");
            }
            // Receive _g129
            if (json.has("_g129")) {
                ${tickdata_name}._g129 = json.getBoolean("_g129");
            }
            // Receive _g13
            if (json.has("_g13")) {
                ${tickdata_name}._g13 = json.getBoolean("_g13");
            }
            // Receive _g130
            if (json.has("_g130")) {
                ${tickdata_name}._g130 = json.getBoolean("_g130");
            }
            // Receive _g131
            if (json.has("_g131")) {
                ${tickdata_name}._g131 = json.getBoolean("_g131");
            }
            // Receive _g132
            if (json.has("_g132")) {
                ${tickdata_name}._g132 = json.getBoolean("_g132");
            }
            // Receive _g132_e1
            if (json.has("_g132_e1")) {
                ${tickdata_name}._g132_e1 = json.getBoolean("_g132_e1");
            }
            // Receive _g133
            if (json.has("_g133")) {
                ${tickdata_name}._g133 = json.getBoolean("_g133");
            }
            // Receive _g135
            if (json.has("_g135")) {
                ${tickdata_name}._g135 = json.getBoolean("_g135");
            }
            // Receive _g136
            if (json.has("_g136")) {
                ${tickdata_name}._g136 = json.getBoolean("_g136");
            }
            // Receive _g139
            if (json.has("_g139")) {
                ${tickdata_name}._g139 = json.getBoolean("_g139");
            }
            // Receive _g14
            if (json.has("_g14")) {
                ${tickdata_name}._g14 = json.getBoolean("_g14");
            }
            // Receive _g140
            if (json.has("_g140")) {
                ${tickdata_name}._g140 = json.getBoolean("_g140");
            }
            // Receive _g141
            if (json.has("_g141")) {
                ${tickdata_name}._g141 = json.getBoolean("_g141");
            }
            // Receive _g141_e2
            if (json.has("_g141_e2")) {
                ${tickdata_name}._g141_e2 = json.getBoolean("_g141_e2");
            }
            // Receive _g142
            if (json.has("_g142")) {
                ${tickdata_name}._g142 = json.getBoolean("_g142");
            }
            // Receive _g143
            if (json.has("_g143")) {
                ${tickdata_name}._g143 = json.getBoolean("_g143");
            }
            // Receive _g144
            if (json.has("_g144")) {
                ${tickdata_name}._g144 = json.getBoolean("_g144");
            }
            // Receive _g145
            if (json.has("_g145")) {
                ${tickdata_name}._g145 = json.getBoolean("_g145");
            }
            // Receive _g146
            if (json.has("_g146")) {
                ${tickdata_name}._g146 = json.getBoolean("_g146");
            }
            // Receive _g152
            if (json.has("_g152")) {
                ${tickdata_name}._g152 = json.getBoolean("_g152");
            }
            // Receive _g153
            if (json.has("_g153")) {
                ${tickdata_name}._g153 = json.getBoolean("_g153");
            }
            // Receive _g155
            if (json.has("_g155")) {
                ${tickdata_name}._g155 = json.getBoolean("_g155");
            }
            // Receive _g156
            if (json.has("_g156")) {
                ${tickdata_name}._g156 = json.getBoolean("_g156");
            }
            // Receive _g16
            if (json.has("_g16")) {
                ${tickdata_name}._g16 = json.getBoolean("_g16");
            }
            // Receive _g160
            if (json.has("_g160")) {
                ${tickdata_name}._g160 = json.getBoolean("_g160");
            }
            // Receive _g161
            if (json.has("_g161")) {
                ${tickdata_name}._g161 = json.getBoolean("_g161");
            }
            // Receive _g163
            if (json.has("_g163")) {
                ${tickdata_name}._g163 = json.getBoolean("_g163");
            }
            // Receive _g164
            if (json.has("_g164")) {
                ${tickdata_name}._g164 = json.getBoolean("_g164");
            }
            // Receive _g165
            if (json.has("_g165")) {
                ${tickdata_name}._g165 = json.getBoolean("_g165");
            }
            // Receive _g165_e1
            if (json.has("_g165_e1")) {
                ${tickdata_name}._g165_e1 = json.getBoolean("_g165_e1");
            }
            // Receive _g166
            if (json.has("_g166")) {
                ${tickdata_name}._g166 = json.getBoolean("_g166");
            }
            // Receive _g167
            if (json.has("_g167")) {
                ${tickdata_name}._g167 = json.getBoolean("_g167");
            }
            // Receive _g168
            if (json.has("_g168")) {
                ${tickdata_name}._g168 = json.getBoolean("_g168");
            }
            // Receive _g169
            if (json.has("_g169")) {
                ${tickdata_name}._g169 = json.getBoolean("_g169");
            }
            // Receive _g17
            if (json.has("_g17")) {
                ${tickdata_name}._g17 = json.getBoolean("_g17");
            }
            // Receive _g170
            if (json.has("_g170")) {
                ${tickdata_name}._g170 = json.getBoolean("_g170");
            }
            // Receive _g173
            if (json.has("_g173")) {
                ${tickdata_name}._g173 = json.getBoolean("_g173");
            }
            // Receive _g174
            if (json.has("_g174")) {
                ${tickdata_name}._g174 = json.getBoolean("_g174");
            }
            // Receive _g175
            if (json.has("_g175")) {
                ${tickdata_name}._g175 = json.getBoolean("_g175");
            }
            // Receive _g175_e2
            if (json.has("_g175_e2")) {
                ${tickdata_name}._g175_e2 = json.getBoolean("_g175_e2");
            }
            // Receive _g176
            if (json.has("_g176")) {
                ${tickdata_name}._g176 = json.getBoolean("_g176");
            }
            // Receive _g177
            if (json.has("_g177")) {
                ${tickdata_name}._g177 = json.getBoolean("_g177");
            }
            // Receive _g178
            if (json.has("_g178")) {
                ${tickdata_name}._g178 = json.getBoolean("_g178");
            }
            // Receive _g179
            if (json.has("_g179")) {
                ${tickdata_name}._g179 = json.getBoolean("_g179");
            }
            // Receive _g18
            if (json.has("_g18")) {
                ${tickdata_name}._g18 = json.getBoolean("_g18");
            }
            // Receive _g180
            if (json.has("_g180")) {
                ${tickdata_name}._g180 = json.getBoolean("_g180");
            }
            // Receive _g184
            if (json.has("_g184")) {
                ${tickdata_name}._g184 = json.getBoolean("_g184");
            }
            // Receive _g185
            if (json.has("_g185")) {
                ${tickdata_name}._g185 = json.getBoolean("_g185");
            }
            // Receive _g187
            if (json.has("_g187")) {
                ${tickdata_name}._g187 = json.getBoolean("_g187");
            }
            // Receive _g188
            if (json.has("_g188")) {
                ${tickdata_name}._g188 = json.getBoolean("_g188");
            }
            // Receive _g18_e2
            if (json.has("_g18_e2")) {
                ${tickdata_name}._g18_e2 = json.getBoolean("_g18_e2");
            }
            // Receive _g19
            if (json.has("_g19")) {
                ${tickdata_name}._g19 = json.getBoolean("_g19");
            }
            // Receive _g192
            if (json.has("_g192")) {
                ${tickdata_name}._g192 = json.getBoolean("_g192");
            }
            // Receive _g193
            if (json.has("_g193")) {
                ${tickdata_name}._g193 = json.getBoolean("_g193");
            }
            // Receive _g195
            if (json.has("_g195")) {
                ${tickdata_name}._g195 = json.getBoolean("_g195");
            }
            // Receive _g196
            if (json.has("_g196")) {
                ${tickdata_name}._g196 = json.getBoolean("_g196");
            }
            // Receive _g197
            if (json.has("_g197")) {
                ${tickdata_name}._g197 = json.getBoolean("_g197");
            }
            // Receive _g197_e1
            if (json.has("_g197_e1")) {
                ${tickdata_name}._g197_e1 = json.getBoolean("_g197_e1");
            }
            // Receive _g198
            if (json.has("_g198")) {
                ${tickdata_name}._g198 = json.getBoolean("_g198");
            }
            // Receive _g199
            if (json.has("_g199")) {
                ${tickdata_name}._g199 = json.getBoolean("_g199");
            }
            // Receive _g20
            if (json.has("_g20")) {
                ${tickdata_name}._g20 = json.getBoolean("_g20");
            }
            // Receive _g200
            if (json.has("_g200")) {
                ${tickdata_name}._g200 = json.getBoolean("_g200");
            }
            // Receive _g201
            if (json.has("_g201")) {
                ${tickdata_name}._g201 = json.getBoolean("_g201");
            }
            // Receive _g202
            if (json.has("_g202")) {
                ${tickdata_name}._g202 = json.getBoolean("_g202");
            }
            // Receive _g205
            if (json.has("_g205")) {
                ${tickdata_name}._g205 = json.getBoolean("_g205");
            }
            // Receive _g206
            if (json.has("_g206")) {
                ${tickdata_name}._g206 = json.getBoolean("_g206");
            }
            // Receive _g206_e2
            if (json.has("_g206_e2")) {
                ${tickdata_name}._g206_e2 = json.getBoolean("_g206_e2");
            }
            // Receive _g207
            if (json.has("_g207")) {
                ${tickdata_name}._g207 = json.getBoolean("_g207");
            }
            // Receive _g21
            if (json.has("_g21")) {
                ${tickdata_name}._g21 = json.getBoolean("_g21");
            }
            // Receive _g211
            if (json.has("_g211")) {
                ${tickdata_name}._g211 = json.getBoolean("_g211");
            }
            // Receive _g212
            if (json.has("_g212")) {
                ${tickdata_name}._g212 = json.getBoolean("_g212");
            }
            // Receive _g214
            if (json.has("_g214")) {
                ${tickdata_name}._g214 = json.getBoolean("_g214");
            }
            // Receive _g215
            if (json.has("_g215")) {
                ${tickdata_name}._g215 = json.getBoolean("_g215");
            }
            // Receive _g22
            if (json.has("_g22")) {
                ${tickdata_name}._g22 = json.getBoolean("_g22");
            }
            // Receive _g23
            if (json.has("_g23")) {
                ${tickdata_name}._g23 = json.getBoolean("_g23");
            }
            // Receive _g231
            if (json.has("_g231")) {
                ${tickdata_name}._g231 = json.getBoolean("_g231");
            }
            // Receive _g235
            if (json.has("_g235")) {
                ${tickdata_name}._g235 = json.getBoolean("_g235");
            }
            // Receive _g239
            if (json.has("_g239")) {
                ${tickdata_name}._g239 = json.getBoolean("_g239");
            }
            // Receive _g247
            if (json.has("_g247")) {
                ${tickdata_name}._g247 = json.getBoolean("_g247");
            }
            // Receive _g251
            if (json.has("_g251")) {
                ${tickdata_name}._g251 = json.getBoolean("_g251");
            }
            // Receive _g259
            if (json.has("_g259")) {
                ${tickdata_name}._g259 = json.getBoolean("_g259");
            }
            // Receive _g26
            if (json.has("_g26")) {
                ${tickdata_name}._g26 = json.getBoolean("_g26");
            }
            // Receive _g263
            if (json.has("_g263")) {
                ${tickdata_name}._g263 = json.getBoolean("_g263");
            }
            // Receive _g27
            if (json.has("_g27")) {
                ${tickdata_name}._g27 = json.getBoolean("_g27");
            }
            // Receive _g279
            if (json.has("_g279")) {
                ${tickdata_name}._g279 = json.getBoolean("_g279");
            }
            // Receive _g28
            if (json.has("_g28")) {
                ${tickdata_name}._g28 = json.getBoolean("_g28");
            }
            // Receive _g283
            if (json.has("_g283")) {
                ${tickdata_name}._g283 = json.getBoolean("_g283");
            }
            // Receive _g287
            if (json.has("_g287")) {
                ${tickdata_name}._g287 = json.getBoolean("_g287");
            }
            // Receive _g28_e3
            if (json.has("_g28_e3")) {
                ${tickdata_name}._g28_e3 = json.getBoolean("_g28_e3");
            }
            // Receive _g29
            if (json.has("_g29")) {
                ${tickdata_name}._g29 = json.getBoolean("_g29");
            }
            // Receive _g295
            if (json.has("_g295")) {
                ${tickdata_name}._g295 = json.getBoolean("_g295");
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
            // Receive _g59_e1
            if (json.has("_g59_e1")) {
                ${tickdata_name}._g59_e1 = json.getBoolean("_g59_e1");
            }
            // Receive _g60
            if (json.has("_g60")) {
                ${tickdata_name}._g60 = json.getBoolean("_g60");
            }
            // Receive _g61
            if (json.has("_g61")) {
                ${tickdata_name}._g61 = json.getBoolean("_g61");
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
            // Receive _g67
            if (json.has("_g67")) {
                ${tickdata_name}._g67 = json.getBoolean("_g67");
            }
            // Receive _g68
            if (json.has("_g68")) {
                ${tickdata_name}._g68 = json.getBoolean("_g68");
            }
            // Receive _g69
            if (json.has("_g69")) {
                ${tickdata_name}._g69 = json.getBoolean("_g69");
            }
            // Receive _g69_e2
            if (json.has("_g69_e2")) {
                ${tickdata_name}._g69_e2 = json.getBoolean("_g69_e2");
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
            // Receive _g8
            if (json.has("_g8")) {
                ${tickdata_name}._g8 = json.getBoolean("_g8");
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
            // Receive _g95_e1
            if (json.has("_g95_e1")) {
                ${tickdata_name}._g95_e1 = json.getBoolean("_g95_e1");
            }
            // Receive _g96
            if (json.has("_g96")) {
                ${tickdata_name}._g96 = json.getBoolean("_g96");
            }
            // Receive _g98
            if (json.has("_g98")) {
                ${tickdata_name}._g98 = json.getBoolean("_g98");
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
            // Receive _pg107
            if (json.has("_pg107")) {
                ${tickdata_name}._pg107 = json.getBoolean("_pg107");
            }
            // Receive _pg116
            if (json.has("_pg116")) {
                ${tickdata_name}._pg116 = json.getBoolean("_pg116");
            }
            // Receive _pg119
            if (json.has("_pg119")) {
                ${tickdata_name}._pg119 = json.getBoolean("_pg119");
            }
            // Receive _pg122
            if (json.has("_pg122")) {
                ${tickdata_name}._pg122 = json.getBoolean("_pg122");
            }
            // Receive _pg125
            if (json.has("_pg125")) {
                ${tickdata_name}._pg125 = json.getBoolean("_pg125");
            }
            // Receive _pg127
            if (json.has("_pg127")) {
                ${tickdata_name}._pg127 = json.getBoolean("_pg127");
            }
            // Receive _pg13
            if (json.has("_pg13")) {
                ${tickdata_name}._pg13 = json.getBoolean("_pg13");
            }
            // Receive _pg133
            if (json.has("_pg133")) {
                ${tickdata_name}._pg133 = json.getBoolean("_pg133");
            }
            // Receive _pg136
            if (json.has("_pg136")) {
                ${tickdata_name}._pg136 = json.getBoolean("_pg136");
            }
            // Receive _pg153
            if (json.has("_pg153")) {
                ${tickdata_name}._pg153 = json.getBoolean("_pg153");
            }
            // Receive _pg156
            if (json.has("_pg156")) {
                ${tickdata_name}._pg156 = json.getBoolean("_pg156");
            }
            // Receive _pg164
            if (json.has("_pg164")) {
                ${tickdata_name}._pg164 = json.getBoolean("_pg164");
            }
            // Receive _pg165
            if (json.has("_pg165")) {
                ${tickdata_name}._pg165 = json.getBoolean("_pg165");
            }
            // Receive _pg166
            if (json.has("_pg166")) {
                ${tickdata_name}._pg166 = json.getBoolean("_pg166");
            }
            // Receive _pg169
            if (json.has("_pg169")) {
                ${tickdata_name}._pg169 = json.getBoolean("_pg169");
            }
            // Receive _pg175
            if (json.has("_pg175")) {
                ${tickdata_name}._pg175 = json.getBoolean("_pg175");
            }
            // Receive _pg180
            if (json.has("_pg180")) {
                ${tickdata_name}._pg180 = json.getBoolean("_pg180");
            }
            // Receive _pg184
            if (json.has("_pg184")) {
                ${tickdata_name}._pg184 = json.getBoolean("_pg184");
            }
            // Receive _pg18_e2
            if (json.has("_pg18_e2")) {
                ${tickdata_name}._pg18_e2 = json.getBoolean("_pg18_e2");
            }
            // Receive _pg19
            if (json.has("_pg19")) {
                ${tickdata_name}._pg19 = json.getBoolean("_pg19");
            }
            // Receive _pg192
            if (json.has("_pg192")) {
                ${tickdata_name}._pg192 = json.getBoolean("_pg192");
            }
            // Receive _pg197_e1
            if (json.has("_pg197_e1")) {
                ${tickdata_name}._pg197_e1 = json.getBoolean("_pg197_e1");
            }
            // Receive _pg198
            if (json.has("_pg198")) {
                ${tickdata_name}._pg198 = json.getBoolean("_pg198");
            }
            // Receive _pg200
            if (json.has("_pg200")) {
                ${tickdata_name}._pg200 = json.getBoolean("_pg200");
            }
            // Receive _pg201
            if (json.has("_pg201")) {
                ${tickdata_name}._pg201 = json.getBoolean("_pg201");
            }
            // Receive _pg21
            if (json.has("_pg21")) {
                ${tickdata_name}._pg21 = json.getBoolean("_pg21");
            }
            // Receive _pg211
            if (json.has("_pg211")) {
                ${tickdata_name}._pg211 = json.getBoolean("_pg211");
            }
            // Receive _pg212
            if (json.has("_pg212")) {
                ${tickdata_name}._pg212 = json.getBoolean("_pg212");
            }
            // Receive _pg214
            if (json.has("_pg214")) {
                ${tickdata_name}._pg214 = json.getBoolean("_pg214");
            }
            // Receive _pg215
            if (json.has("_pg215")) {
                ${tickdata_name}._pg215 = json.getBoolean("_pg215");
            }
            // Receive _pg22
            if (json.has("_pg22")) {
                ${tickdata_name}._pg22 = json.getBoolean("_pg22");
            }
            // Receive _pg235
            if (json.has("_pg235")) {
                ${tickdata_name}._pg235 = json.getBoolean("_pg235");
            }
            // Receive _pg251
            if (json.has("_pg251")) {
                ${tickdata_name}._pg251 = json.getBoolean("_pg251");
            }
            // Receive _pg263
            if (json.has("_pg263")) {
                ${tickdata_name}._pg263 = json.getBoolean("_pg263");
            }
            // Receive _pg279
            if (json.has("_pg279")) {
                ${tickdata_name}._pg279 = json.getBoolean("_pg279");
            }
            // Receive _pg283
            if (json.has("_pg283")) {
                ${tickdata_name}._pg283 = json.getBoolean("_pg283");
            }
            // Receive _pg287
            if (json.has("_pg287")) {
                ${tickdata_name}._pg287 = json.getBoolean("_pg287");
            }
            // Receive _pg33
            if (json.has("_pg33")) {
                ${tickdata_name}._pg33 = json.getBoolean("_pg33");
            }
            // Receive _pg35
            if (json.has("_pg35")) {
                ${tickdata_name}._pg35 = json.getBoolean("_pg35");
            }
            // Receive _pg36
            if (json.has("_pg36")) {
                ${tickdata_name}._pg36 = json.getBoolean("_pg36");
            }
            // Receive _pg42
            if (json.has("_pg42")) {
                ${tickdata_name}._pg42 = json.getBoolean("_pg42");
            }
            // Receive _pg53
            if (json.has("_pg53")) {
                ${tickdata_name}._pg53 = json.getBoolean("_pg53");
            }
            // Receive _pg58
            if (json.has("_pg58")) {
                ${tickdata_name}._pg58 = json.getBoolean("_pg58");
            }
            // Receive _pg60
            if (json.has("_pg60")) {
                ${tickdata_name}._pg60 = json.getBoolean("_pg60");
            }
            // Receive _pg63
            if (json.has("_pg63")) {
                ${tickdata_name}._pg63 = json.getBoolean("_pg63");
            }
            // Receive _pg85
            if (json.has("_pg85")) {
                ${tickdata_name}._pg85 = json.getBoolean("_pg85");
            }
            // Receive _pg87
            if (json.has("_pg87")) {
                ${tickdata_name}._pg87 = json.getBoolean("_pg87");
            }
            // Receive _pg90
            if (json.has("_pg90")) {
                ${tickdata_name}._pg90 = json.getBoolean("_pg90");
            }
            // Receive _pg99
            if (json.has("_pg99")) {
                ${tickdata_name}._pg99 = json.getBoolean("_pg99");
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
        // Send _DDDpacemaker_local__Atrig
        json.put("_DDDpacemaker_local__Atrig", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig));
        // Send _DDDpacemaker_local__Atrig1
        json.put("_DDDpacemaker_local__Atrig1", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig1));
        // Send _DDDpacemaker_local__Atrig10
        json.put("_DDDpacemaker_local__Atrig10", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig10));
        // Send _DDDpacemaker_local__Atrig11
        json.put("_DDDpacemaker_local__Atrig11", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local__Atrig11));
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
        // Send _cg102
        json.put("_cg102", JSONObject.wrap(${tickdata_name}._cg102));
        // Send _cg105
        json.put("_cg105", JSONObject.wrap(${tickdata_name}._cg105));
        // Send _cg107
        json.put("_cg107", JSONObject.wrap(${tickdata_name}._cg107));
        // Send _cg110
        json.put("_cg110", JSONObject.wrap(${tickdata_name}._cg110));
        // Send _cg115
        json.put("_cg115", JSONObject.wrap(${tickdata_name}._cg115));
        // Send _cg118
        json.put("_cg118", JSONObject.wrap(${tickdata_name}._cg118));
        // Send _cg12
        json.put("_cg12", JSONObject.wrap(${tickdata_name}._cg12));
        // Send _cg123
        json.put("_cg123", JSONObject.wrap(${tickdata_name}._cg123));
        // Send _cg126
        json.put("_cg126", JSONObject.wrap(${tickdata_name}._cg126));
        // Send _cg127
        json.put("_cg127", JSONObject.wrap(${tickdata_name}._cg127));
        // Send _cg130
        json.put("_cg130", JSONObject.wrap(${tickdata_name}._cg130));
        // Send _cg131
        json.put("_cg131", JSONObject.wrap(${tickdata_name}._cg131));
        // Send _cg133
        json.put("_cg133", JSONObject.wrap(${tickdata_name}._cg133));
        // Send _cg136
        json.put("_cg136", JSONObject.wrap(${tickdata_name}._cg136));
        // Send _cg139
        json.put("_cg139", JSONObject.wrap(${tickdata_name}._cg139));
        // Send _cg142
        json.put("_cg142", JSONObject.wrap(${tickdata_name}._cg142));
        // Send _cg144
        json.put("_cg144", JSONObject.wrap(${tickdata_name}._cg144));
        // Send _cg147
        json.put("_cg147", JSONObject.wrap(${tickdata_name}._cg147));
        // Send _cg152
        json.put("_cg152", JSONObject.wrap(${tickdata_name}._cg152));
        // Send _cg155
        json.put("_cg155", JSONObject.wrap(${tickdata_name}._cg155));
        // Send _cg16
        json.put("_cg16", JSONObject.wrap(${tickdata_name}._cg16));
        // Send _cg160
        json.put("_cg160", JSONObject.wrap(${tickdata_name}._cg160));
        // Send _cg163
        json.put("_cg163", JSONObject.wrap(${tickdata_name}._cg163));
        // Send _cg164
        json.put("_cg164", JSONObject.wrap(${tickdata_name}._cg164));
        // Send _cg168
        json.put("_cg168", JSONObject.wrap(${tickdata_name}._cg168));
        // Send _cg17
        json.put("_cg17", JSONObject.wrap(${tickdata_name}._cg17));
        // Send _cg173
        json.put("_cg173", JSONObject.wrap(${tickdata_name}._cg173));
        // Send _cg176
        json.put("_cg176", JSONObject.wrap(${tickdata_name}._cg176));
        // Send _cg178
        json.put("_cg178", JSONObject.wrap(${tickdata_name}._cg178));
        // Send _cg184
        json.put("_cg184", JSONObject.wrap(${tickdata_name}._cg184));
        // Send _cg187
        json.put("_cg187", JSONObject.wrap(${tickdata_name}._cg187));
        // Send _cg192
        json.put("_cg192", JSONObject.wrap(${tickdata_name}._cg192));
        // Send _cg195
        json.put("_cg195", JSONObject.wrap(${tickdata_name}._cg195));
        // Send _cg196
        json.put("_cg196", JSONObject.wrap(${tickdata_name}._cg196));
        // Send _cg200
        json.put("_cg200", JSONObject.wrap(${tickdata_name}._cg200));
        // Send _cg205
        json.put("_cg205", JSONObject.wrap(${tickdata_name}._cg205));
        // Send _cg21
        json.put("_cg21", JSONObject.wrap(${tickdata_name}._cg21));
        // Send _cg211
        json.put("_cg211", JSONObject.wrap(${tickdata_name}._cg211));
        // Send _cg214
        json.put("_cg214", JSONObject.wrap(${tickdata_name}._cg214));
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
        // Send _cg54
        json.put("_cg54", JSONObject.wrap(${tickdata_name}._cg54));
        // Send _cg57
        json.put("_cg57", JSONObject.wrap(${tickdata_name}._cg57));
        // Send _cg58
        json.put("_cg58", JSONObject.wrap(${tickdata_name}._cg58));
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
        // Send _cg78
        json.put("_cg78", JSONObject.wrap(${tickdata_name}._cg78));
        // Send _cg8
        json.put("_cg8", JSONObject.wrap(${tickdata_name}._cg8));
        // Send _cg81
        json.put("_cg81", JSONObject.wrap(${tickdata_name}._cg81));
        // Send _cg86
        json.put("_cg86", JSONObject.wrap(${tickdata_name}._cg86));
        // Send _cg89
        json.put("_cg89", JSONObject.wrap(${tickdata_name}._cg89));
        // Send _cg90
        json.put("_cg90", JSONObject.wrap(${tickdata_name}._cg90));
        // Send _cg93
        json.put("_cg93", JSONObject.wrap(${tickdata_name}._cg93));
        // Send _cg94
        json.put("_cg94", JSONObject.wrap(${tickdata_name}._cg94));
        // Send _cg96
        json.put("_cg96", JSONObject.wrap(${tickdata_name}._cg96));
        // Send _cg99
        json.put("_cg99", JSONObject.wrap(${tickdata_name}._cg99));
        // Send _g10
        json.put("_g10", JSONObject.wrap(${tickdata_name}._g10));
        // Send _g102
        json.put("_g102", JSONObject.wrap(${tickdata_name}._g102));
        // Send _g103
        json.put("_g103", JSONObject.wrap(${tickdata_name}._g103));
        // Send _g104
        json.put("_g104", JSONObject.wrap(${tickdata_name}._g104));
        // Send _g104_e2
        json.put("_g104_e2", JSONObject.wrap(${tickdata_name}._g104_e2));
        // Send _g105
        json.put("_g105", JSONObject.wrap(${tickdata_name}._g105));
        // Send _g106
        json.put("_g106", JSONObject.wrap(${tickdata_name}._g106));
        // Send _g107
        json.put("_g107", JSONObject.wrap(${tickdata_name}._g107));
        // Send _g108
        json.put("_g108", JSONObject.wrap(${tickdata_name}._g108));
        // Send _g109
        json.put("_g109", JSONObject.wrap(${tickdata_name}._g109));
        // Send _g11
        json.put("_g11", JSONObject.wrap(${tickdata_name}._g11));
        // Send _g115
        json.put("_g115", JSONObject.wrap(${tickdata_name}._g115));
        // Send _g116
        json.put("_g116", JSONObject.wrap(${tickdata_name}._g116));
        // Send _g118
        json.put("_g118", JSONObject.wrap(${tickdata_name}._g118));
        // Send _g119
        json.put("_g119", JSONObject.wrap(${tickdata_name}._g119));
        // Send _g12
        json.put("_g12", JSONObject.wrap(${tickdata_name}._g12));
        // Send _g122
        json.put("_g122", JSONObject.wrap(${tickdata_name}._g122));
        // Send _g123
        json.put("_g123", JSONObject.wrap(${tickdata_name}._g123));
        // Send _g124
        json.put("_g124", JSONObject.wrap(${tickdata_name}._g124));
        // Send _g125
        json.put("_g125", JSONObject.wrap(${tickdata_name}._g125));
        // Send _g127
        json.put("_g127", JSONObject.wrap(${tickdata_name}._g127));
        // Send _g129
        json.put("_g129", JSONObject.wrap(${tickdata_name}._g129));
        // Send _g13
        json.put("_g13", JSONObject.wrap(${tickdata_name}._g13));
        // Send _g130
        json.put("_g130", JSONObject.wrap(${tickdata_name}._g130));
        // Send _g131
        json.put("_g131", JSONObject.wrap(${tickdata_name}._g131));
        // Send _g132
        json.put("_g132", JSONObject.wrap(${tickdata_name}._g132));
        // Send _g132_e1
        json.put("_g132_e1", JSONObject.wrap(${tickdata_name}._g132_e1));
        // Send _g133
        json.put("_g133", JSONObject.wrap(${tickdata_name}._g133));
        // Send _g135
        json.put("_g135", JSONObject.wrap(${tickdata_name}._g135));
        // Send _g136
        json.put("_g136", JSONObject.wrap(${tickdata_name}._g136));
        // Send _g139
        json.put("_g139", JSONObject.wrap(${tickdata_name}._g139));
        // Send _g14
        json.put("_g14", JSONObject.wrap(${tickdata_name}._g14));
        // Send _g140
        json.put("_g140", JSONObject.wrap(${tickdata_name}._g140));
        // Send _g141
        json.put("_g141", JSONObject.wrap(${tickdata_name}._g141));
        // Send _g141_e2
        json.put("_g141_e2", JSONObject.wrap(${tickdata_name}._g141_e2));
        // Send _g142
        json.put("_g142", JSONObject.wrap(${tickdata_name}._g142));
        // Send _g143
        json.put("_g143", JSONObject.wrap(${tickdata_name}._g143));
        // Send _g144
        json.put("_g144", JSONObject.wrap(${tickdata_name}._g144));
        // Send _g145
        json.put("_g145", JSONObject.wrap(${tickdata_name}._g145));
        // Send _g146
        json.put("_g146", JSONObject.wrap(${tickdata_name}._g146));
        // Send _g152
        json.put("_g152", JSONObject.wrap(${tickdata_name}._g152));
        // Send _g153
        json.put("_g153", JSONObject.wrap(${tickdata_name}._g153));
        // Send _g155
        json.put("_g155", JSONObject.wrap(${tickdata_name}._g155));
        // Send _g156
        json.put("_g156", JSONObject.wrap(${tickdata_name}._g156));
        // Send _g16
        json.put("_g16", JSONObject.wrap(${tickdata_name}._g16));
        // Send _g160
        json.put("_g160", JSONObject.wrap(${tickdata_name}._g160));
        // Send _g161
        json.put("_g161", JSONObject.wrap(${tickdata_name}._g161));
        // Send _g163
        json.put("_g163", JSONObject.wrap(${tickdata_name}._g163));
        // Send _g164
        json.put("_g164", JSONObject.wrap(${tickdata_name}._g164));
        // Send _g165
        json.put("_g165", JSONObject.wrap(${tickdata_name}._g165));
        // Send _g165_e1
        json.put("_g165_e1", JSONObject.wrap(${tickdata_name}._g165_e1));
        // Send _g166
        json.put("_g166", JSONObject.wrap(${tickdata_name}._g166));
        // Send _g167
        json.put("_g167", JSONObject.wrap(${tickdata_name}._g167));
        // Send _g168
        json.put("_g168", JSONObject.wrap(${tickdata_name}._g168));
        // Send _g169
        json.put("_g169", JSONObject.wrap(${tickdata_name}._g169));
        // Send _g17
        json.put("_g17", JSONObject.wrap(${tickdata_name}._g17));
        // Send _g170
        json.put("_g170", JSONObject.wrap(${tickdata_name}._g170));
        // Send _g173
        json.put("_g173", JSONObject.wrap(${tickdata_name}._g173));
        // Send _g174
        json.put("_g174", JSONObject.wrap(${tickdata_name}._g174));
        // Send _g175
        json.put("_g175", JSONObject.wrap(${tickdata_name}._g175));
        // Send _g175_e2
        json.put("_g175_e2", JSONObject.wrap(${tickdata_name}._g175_e2));
        // Send _g176
        json.put("_g176", JSONObject.wrap(${tickdata_name}._g176));
        // Send _g177
        json.put("_g177", JSONObject.wrap(${tickdata_name}._g177));
        // Send _g178
        json.put("_g178", JSONObject.wrap(${tickdata_name}._g178));
        // Send _g179
        json.put("_g179", JSONObject.wrap(${tickdata_name}._g179));
        // Send _g18
        json.put("_g18", JSONObject.wrap(${tickdata_name}._g18));
        // Send _g180
        json.put("_g180", JSONObject.wrap(${tickdata_name}._g180));
        // Send _g184
        json.put("_g184", JSONObject.wrap(${tickdata_name}._g184));
        // Send _g185
        json.put("_g185", JSONObject.wrap(${tickdata_name}._g185));
        // Send _g187
        json.put("_g187", JSONObject.wrap(${tickdata_name}._g187));
        // Send _g188
        json.put("_g188", JSONObject.wrap(${tickdata_name}._g188));
        // Send _g18_e2
        json.put("_g18_e2", JSONObject.wrap(${tickdata_name}._g18_e2));
        // Send _g19
        json.put("_g19", JSONObject.wrap(${tickdata_name}._g19));
        // Send _g192
        json.put("_g192", JSONObject.wrap(${tickdata_name}._g192));
        // Send _g193
        json.put("_g193", JSONObject.wrap(${tickdata_name}._g193));
        // Send _g195
        json.put("_g195", JSONObject.wrap(${tickdata_name}._g195));
        // Send _g196
        json.put("_g196", JSONObject.wrap(${tickdata_name}._g196));
        // Send _g197
        json.put("_g197", JSONObject.wrap(${tickdata_name}._g197));
        // Send _g197_e1
        json.put("_g197_e1", JSONObject.wrap(${tickdata_name}._g197_e1));
        // Send _g198
        json.put("_g198", JSONObject.wrap(${tickdata_name}._g198));
        // Send _g199
        json.put("_g199", JSONObject.wrap(${tickdata_name}._g199));
        // Send _g20
        json.put("_g20", JSONObject.wrap(${tickdata_name}._g20));
        // Send _g200
        json.put("_g200", JSONObject.wrap(${tickdata_name}._g200));
        // Send _g201
        json.put("_g201", JSONObject.wrap(${tickdata_name}._g201));
        // Send _g202
        json.put("_g202", JSONObject.wrap(${tickdata_name}._g202));
        // Send _g205
        json.put("_g205", JSONObject.wrap(${tickdata_name}._g205));
        // Send _g206
        json.put("_g206", JSONObject.wrap(${tickdata_name}._g206));
        // Send _g206_e2
        json.put("_g206_e2", JSONObject.wrap(${tickdata_name}._g206_e2));
        // Send _g207
        json.put("_g207", JSONObject.wrap(${tickdata_name}._g207));
        // Send _g21
        json.put("_g21", JSONObject.wrap(${tickdata_name}._g21));
        // Send _g211
        json.put("_g211", JSONObject.wrap(${tickdata_name}._g211));
        // Send _g212
        json.put("_g212", JSONObject.wrap(${tickdata_name}._g212));
        // Send _g214
        json.put("_g214", JSONObject.wrap(${tickdata_name}._g214));
        // Send _g215
        json.put("_g215", JSONObject.wrap(${tickdata_name}._g215));
        // Send _g22
        json.put("_g22", JSONObject.wrap(${tickdata_name}._g22));
        // Send _g23
        json.put("_g23", JSONObject.wrap(${tickdata_name}._g23));
        // Send _g231
        json.put("_g231", JSONObject.wrap(${tickdata_name}._g231));
        // Send _g235
        json.put("_g235", JSONObject.wrap(${tickdata_name}._g235));
        // Send _g239
        json.put("_g239", JSONObject.wrap(${tickdata_name}._g239));
        // Send _g247
        json.put("_g247", JSONObject.wrap(${tickdata_name}._g247));
        // Send _g251
        json.put("_g251", JSONObject.wrap(${tickdata_name}._g251));
        // Send _g259
        json.put("_g259", JSONObject.wrap(${tickdata_name}._g259));
        // Send _g26
        json.put("_g26", JSONObject.wrap(${tickdata_name}._g26));
        // Send _g263
        json.put("_g263", JSONObject.wrap(${tickdata_name}._g263));
        // Send _g27
        json.put("_g27", JSONObject.wrap(${tickdata_name}._g27));
        // Send _g279
        json.put("_g279", JSONObject.wrap(${tickdata_name}._g279));
        // Send _g28
        json.put("_g28", JSONObject.wrap(${tickdata_name}._g28));
        // Send _g283
        json.put("_g283", JSONObject.wrap(${tickdata_name}._g283));
        // Send _g287
        json.put("_g287", JSONObject.wrap(${tickdata_name}._g287));
        // Send _g28_e3
        json.put("_g28_e3", JSONObject.wrap(${tickdata_name}._g28_e3));
        // Send _g29
        json.put("_g29", JSONObject.wrap(${tickdata_name}._g29));
        // Send _g295
        json.put("_g295", JSONObject.wrap(${tickdata_name}._g295));
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
        // Send _g53
        json.put("_g53", JSONObject.wrap(${tickdata_name}._g53));
        // Send _g54
        json.put("_g54", JSONObject.wrap(${tickdata_name}._g54));
        // Send _g55
        json.put("_g55", JSONObject.wrap(${tickdata_name}._g55));
        // Send _g57
        json.put("_g57", JSONObject.wrap(${tickdata_name}._g57));
        // Send _g58
        json.put("_g58", JSONObject.wrap(${tickdata_name}._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(${tickdata_name}._g59));
        // Send _g59_e1
        json.put("_g59_e1", JSONObject.wrap(${tickdata_name}._g59_e1));
        // Send _g60
        json.put("_g60", JSONObject.wrap(${tickdata_name}._g60));
        // Send _g61
        json.put("_g61", JSONObject.wrap(${tickdata_name}._g61));
        // Send _g62
        json.put("_g62", JSONObject.wrap(${tickdata_name}._g62));
        // Send _g63
        json.put("_g63", JSONObject.wrap(${tickdata_name}._g63));
        // Send _g64
        json.put("_g64", JSONObject.wrap(${tickdata_name}._g64));
        // Send _g67
        json.put("_g67", JSONObject.wrap(${tickdata_name}._g67));
        // Send _g68
        json.put("_g68", JSONObject.wrap(${tickdata_name}._g68));
        // Send _g69
        json.put("_g69", JSONObject.wrap(${tickdata_name}._g69));
        // Send _g69_e2
        json.put("_g69_e2", JSONObject.wrap(${tickdata_name}._g69_e2));
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
        // Send _g8
        json.put("_g8", JSONObject.wrap(${tickdata_name}._g8));
        // Send _g85
        json.put("_g85", JSONObject.wrap(${tickdata_name}._g85));
        // Send _g86
        json.put("_g86", JSONObject.wrap(${tickdata_name}._g86));
        // Send _g87
        json.put("_g87", JSONObject.wrap(${tickdata_name}._g87));
        // Send _g88
        json.put("_g88", JSONObject.wrap(${tickdata_name}._g88));
        // Send _g9
        json.put("_g9", JSONObject.wrap(${tickdata_name}._g9));
        // Send _g90
        json.put("_g90", JSONObject.wrap(${tickdata_name}._g90));
        // Send _g92
        json.put("_g92", JSONObject.wrap(${tickdata_name}._g92));
        // Send _g93
        json.put("_g93", JSONObject.wrap(${tickdata_name}._g93));
        // Send _g94
        json.put("_g94", JSONObject.wrap(${tickdata_name}._g94));
        // Send _g95
        json.put("_g95", JSONObject.wrap(${tickdata_name}._g95));
        // Send _g95_e1
        json.put("_g95_e1", JSONObject.wrap(${tickdata_name}._g95_e1));
        // Send _g96
        json.put("_g96", JSONObject.wrap(${tickdata_name}._g96));
        // Send _g98
        json.put("_g98", JSONObject.wrap(${tickdata_name}._g98));
        // Send _g99
        json.put("_g99", JSONObject.wrap(${tickdata_name}._g99));
        // Send _g9_e1
        json.put("_g9_e1", JSONObject.wrap(${tickdata_name}._g9_e1));
        // Send _pg10
        json.put("_pg10", JSONObject.wrap(${tickdata_name}._pg10));
        // Send _pg107
        json.put("_pg107", JSONObject.wrap(${tickdata_name}._pg107));
        // Send _pg116
        json.put("_pg116", JSONObject.wrap(${tickdata_name}._pg116));
        // Send _pg119
        json.put("_pg119", JSONObject.wrap(${tickdata_name}._pg119));
        // Send _pg122
        json.put("_pg122", JSONObject.wrap(${tickdata_name}._pg122));
        // Send _pg125
        json.put("_pg125", JSONObject.wrap(${tickdata_name}._pg125));
        // Send _pg127
        json.put("_pg127", JSONObject.wrap(${tickdata_name}._pg127));
        // Send _pg13
        json.put("_pg13", JSONObject.wrap(${tickdata_name}._pg13));
        // Send _pg133
        json.put("_pg133", JSONObject.wrap(${tickdata_name}._pg133));
        // Send _pg136
        json.put("_pg136", JSONObject.wrap(${tickdata_name}._pg136));
        // Send _pg153
        json.put("_pg153", JSONObject.wrap(${tickdata_name}._pg153));
        // Send _pg156
        json.put("_pg156", JSONObject.wrap(${tickdata_name}._pg156));
        // Send _pg164
        json.put("_pg164", JSONObject.wrap(${tickdata_name}._pg164));
        // Send _pg165
        json.put("_pg165", JSONObject.wrap(${tickdata_name}._pg165));
        // Send _pg166
        json.put("_pg166", JSONObject.wrap(${tickdata_name}._pg166));
        // Send _pg169
        json.put("_pg169", JSONObject.wrap(${tickdata_name}._pg169));
        // Send _pg175
        json.put("_pg175", JSONObject.wrap(${tickdata_name}._pg175));
        // Send _pg180
        json.put("_pg180", JSONObject.wrap(${tickdata_name}._pg180));
        // Send _pg184
        json.put("_pg184", JSONObject.wrap(${tickdata_name}._pg184));
        // Send _pg18_e2
        json.put("_pg18_e2", JSONObject.wrap(${tickdata_name}._pg18_e2));
        // Send _pg19
        json.put("_pg19", JSONObject.wrap(${tickdata_name}._pg19));
        // Send _pg192
        json.put("_pg192", JSONObject.wrap(${tickdata_name}._pg192));
        // Send _pg197_e1
        json.put("_pg197_e1", JSONObject.wrap(${tickdata_name}._pg197_e1));
        // Send _pg198
        json.put("_pg198", JSONObject.wrap(${tickdata_name}._pg198));
        // Send _pg200
        json.put("_pg200", JSONObject.wrap(${tickdata_name}._pg200));
        // Send _pg201
        json.put("_pg201", JSONObject.wrap(${tickdata_name}._pg201));
        // Send _pg21
        json.put("_pg21", JSONObject.wrap(${tickdata_name}._pg21));
        // Send _pg211
        json.put("_pg211", JSONObject.wrap(${tickdata_name}._pg211));
        // Send _pg212
        json.put("_pg212", JSONObject.wrap(${tickdata_name}._pg212));
        // Send _pg214
        json.put("_pg214", JSONObject.wrap(${tickdata_name}._pg214));
        // Send _pg215
        json.put("_pg215", JSONObject.wrap(${tickdata_name}._pg215));
        // Send _pg22
        json.put("_pg22", JSONObject.wrap(${tickdata_name}._pg22));
        // Send _pg235
        json.put("_pg235", JSONObject.wrap(${tickdata_name}._pg235));
        // Send _pg251
        json.put("_pg251", JSONObject.wrap(${tickdata_name}._pg251));
        // Send _pg263
        json.put("_pg263", JSONObject.wrap(${tickdata_name}._pg263));
        // Send _pg279
        json.put("_pg279", JSONObject.wrap(${tickdata_name}._pg279));
        // Send _pg283
        json.put("_pg283", JSONObject.wrap(${tickdata_name}._pg283));
        // Send _pg287
        json.put("_pg287", JSONObject.wrap(${tickdata_name}._pg287));
        // Send _pg33
        json.put("_pg33", JSONObject.wrap(${tickdata_name}._pg33));
        // Send _pg35
        json.put("_pg35", JSONObject.wrap(${tickdata_name}._pg35));
        // Send _pg36
        json.put("_pg36", JSONObject.wrap(${tickdata_name}._pg36));
        // Send _pg42
        json.put("_pg42", JSONObject.wrap(${tickdata_name}._pg42));
        // Send _pg53
        json.put("_pg53", JSONObject.wrap(${tickdata_name}._pg53));
        // Send _pg58
        json.put("_pg58", JSONObject.wrap(${tickdata_name}._pg58));
        // Send _pg60
        json.put("_pg60", JSONObject.wrap(${tickdata_name}._pg60));
        // Send _pg63
        json.put("_pg63", JSONObject.wrap(${tickdata_name}._pg63));
        // Send _pg85
        json.put("_pg85", JSONObject.wrap(${tickdata_name}._pg85));
        // Send _pg87
        json.put("_pg87", JSONObject.wrap(${tickdata_name}._pg87));
        // Send _pg90
        json.put("_pg90", JSONObject.wrap(${tickdata_name}._pg90));
        // Send _pg99
        json.put("_pg99", JSONObject.wrap(${tickdata_name}._pg99));
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
