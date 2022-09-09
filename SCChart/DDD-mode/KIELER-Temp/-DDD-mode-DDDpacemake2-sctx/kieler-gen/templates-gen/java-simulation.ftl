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
            // Receive _DDDpacemaker_local_LRI_state
            if (json.has("_DDDpacemaker_local_LRI_state")) {
                ${tickdata_name}._DDDpacemaker_local_LRI_state = json.getBoolean("_DDDpacemaker_local_LRI_state");
            }
            // Receive _DDDpacemaker_local_PVARP_state
            if (json.has("_DDDpacemaker_local_PVARP_state")) {
                ${tickdata_name}._DDDpacemaker_local_PVARP_state = json.getBoolean("_DDDpacemaker_local_PVARP_state");
            }
            // Receive _DDDpacemaker_local_URI_state
            if (json.has("_DDDpacemaker_local_URI_state")) {
                ${tickdata_name}._DDDpacemaker_local_URI_state = json.getBoolean("_DDDpacemaker_local_URI_state");
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
            // Receive _cg10
            if (json.has("_cg10")) {
                ${tickdata_name}._cg10 = json.getBoolean("_cg10");
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
            // Receive _cg110
            if (json.has("_cg110")) {
                ${tickdata_name}._cg110 = json.getBoolean("_cg110");
            }
            // Receive _cg111
            if (json.has("_cg111")) {
                ${tickdata_name}._cg111 = json.getBoolean("_cg111");
            }
            // Receive _cg113
            if (json.has("_cg113")) {
                ${tickdata_name}._cg113 = json.getBoolean("_cg113");
            }
            // Receive _cg116
            if (json.has("_cg116")) {
                ${tickdata_name}._cg116 = json.getBoolean("_cg116");
            }
            // Receive _cg119
            if (json.has("_cg119")) {
                ${tickdata_name}._cg119 = json.getBoolean("_cg119");
            }
            // Receive _cg122
            if (json.has("_cg122")) {
                ${tickdata_name}._cg122 = json.getBoolean("_cg122");
            }
            // Receive _cg124
            if (json.has("_cg124")) {
                ${tickdata_name}._cg124 = json.getBoolean("_cg124");
            }
            // Receive _cg127
            if (json.has("_cg127")) {
                ${tickdata_name}._cg127 = json.getBoolean("_cg127");
            }
            // Receive _cg132
            if (json.has("_cg132")) {
                ${tickdata_name}._cg132 = json.getBoolean("_cg132");
            }
            // Receive _cg135
            if (json.has("_cg135")) {
                ${tickdata_name}._cg135 = json.getBoolean("_cg135");
            }
            // Receive _cg136
            if (json.has("_cg136")) {
                ${tickdata_name}._cg136 = json.getBoolean("_cg136");
            }
            // Receive _cg14
            if (json.has("_cg14")) {
                ${tickdata_name}._cg14 = json.getBoolean("_cg14");
            }
            // Receive _cg140
            if (json.has("_cg140")) {
                ${tickdata_name}._cg140 = json.getBoolean("_cg140");
            }
            // Receive _cg145
            if (json.has("_cg145")) {
                ${tickdata_name}._cg145 = json.getBoolean("_cg145");
            }
            // Receive _cg148
            if (json.has("_cg148")) {
                ${tickdata_name}._cg148 = json.getBoolean("_cg148");
            }
            // Receive _cg150
            if (json.has("_cg150")) {
                ${tickdata_name}._cg150 = json.getBoolean("_cg150");
            }
            // Receive _cg156
            if (json.has("_cg156")) {
                ${tickdata_name}._cg156 = json.getBoolean("_cg156");
            }
            // Receive _cg159
            if (json.has("_cg159")) {
                ${tickdata_name}._cg159 = json.getBoolean("_cg159");
            }
            // Receive _cg160
            if (json.has("_cg160")) {
                ${tickdata_name}._cg160 = json.getBoolean("_cg160");
            }
            // Receive _cg164
            if (json.has("_cg164")) {
                ${tickdata_name}._cg164 = json.getBoolean("_cg164");
            }
            // Receive _cg169
            if (json.has("_cg169")) {
                ${tickdata_name}._cg169 = json.getBoolean("_cg169");
            }
            // Receive _cg18
            if (json.has("_cg18")) {
                ${tickdata_name}._cg18 = json.getBoolean("_cg18");
            }
            // Receive _cg19
            if (json.has("_cg19")) {
                ${tickdata_name}._cg19 = json.getBoolean("_cg19");
            }
            // Receive _cg23
            if (json.has("_cg23")) {
                ${tickdata_name}._cg23 = json.getBoolean("_cg23");
            }
            // Receive _cg28
            if (json.has("_cg28")) {
                ${tickdata_name}._cg28 = json.getBoolean("_cg28");
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
            // Receive _cg37
            if (json.has("_cg37")) {
                ${tickdata_name}._cg37 = json.getBoolean("_cg37");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                ${tickdata_name}._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg40
            if (json.has("_cg40")) {
                ${tickdata_name}._cg40 = json.getBoolean("_cg40");
            }
            // Receive _cg42
            if (json.has("_cg42")) {
                ${tickdata_name}._cg42 = json.getBoolean("_cg42");
            }
            // Receive _cg48
            if (json.has("_cg48")) {
                ${tickdata_name}._cg48 = json.getBoolean("_cg48");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                ${tickdata_name}._cg50 = json.getBoolean("_cg50");
            }
            // Receive _cg53
            if (json.has("_cg53")) {
                ${tickdata_name}._cg53 = json.getBoolean("_cg53");
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
            // Receive _cg63
            if (json.has("_cg63")) {
                ${tickdata_name}._cg63 = json.getBoolean("_cg63");
            }
            // Receive _cg66
            if (json.has("_cg66")) {
                ${tickdata_name}._cg66 = json.getBoolean("_cg66");
            }
            // Receive _cg68
            if (json.has("_cg68")) {
                ${tickdata_name}._cg68 = json.getBoolean("_cg68");
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
            // Receive _cg81
            if (json.has("_cg81")) {
                ${tickdata_name}._cg81 = json.getBoolean("_cg81");
            }
            // Receive _cg82
            if (json.has("_cg82")) {
                ${tickdata_name}._cg82 = json.getBoolean("_cg82");
            }
            // Receive _cg84
            if (json.has("_cg84")) {
                ${tickdata_name}._cg84 = json.getBoolean("_cg84");
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
            // Receive _g10
            if (json.has("_g10")) {
                ${tickdata_name}._g10 = json.getBoolean("_g10");
            }
            // Receive _g103
            if (json.has("_g103")) {
                ${tickdata_name}._g103 = json.getBoolean("_g103");
            }
            // Receive _g104
            if (json.has("_g104")) {
                ${tickdata_name}._g104 = json.getBoolean("_g104");
            }
            // Receive _g105
            if (json.has("_g105")) {
                ${tickdata_name}._g105 = json.getBoolean("_g105");
            }
            // Receive _g107
            if (json.has("_g107")) {
                ${tickdata_name}._g107 = json.getBoolean("_g107");
            }
            // Receive _g109
            if (json.has("_g109")) {
                ${tickdata_name}._g109 = json.getBoolean("_g109");
            }
            // Receive _g11
            if (json.has("_g11")) {
                ${tickdata_name}._g11 = json.getBoolean("_g11");
            }
            // Receive _g110
            if (json.has("_g110")) {
                ${tickdata_name}._g110 = json.getBoolean("_g110");
            }
            // Receive _g111
            if (json.has("_g111")) {
                ${tickdata_name}._g111 = json.getBoolean("_g111");
            }
            // Receive _g112
            if (json.has("_g112")) {
                ${tickdata_name}._g112 = json.getBoolean("_g112");
            }
            // Receive _g112_e1
            if (json.has("_g112_e1")) {
                ${tickdata_name}._g112_e1 = json.getBoolean("_g112_e1");
            }
            // Receive _g113
            if (json.has("_g113")) {
                ${tickdata_name}._g113 = json.getBoolean("_g113");
            }
            // Receive _g115
            if (json.has("_g115")) {
                ${tickdata_name}._g115 = json.getBoolean("_g115");
            }
            // Receive _g116
            if (json.has("_g116")) {
                ${tickdata_name}._g116 = json.getBoolean("_g116");
            }
            // Receive _g119
            if (json.has("_g119")) {
                ${tickdata_name}._g119 = json.getBoolean("_g119");
            }
            // Receive _g11_e1
            if (json.has("_g11_e1")) {
                ${tickdata_name}._g11_e1 = json.getBoolean("_g11_e1");
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
            // Receive _g121_e2
            if (json.has("_g121_e2")) {
                ${tickdata_name}._g121_e2 = json.getBoolean("_g121_e2");
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
            // Receive _g126
            if (json.has("_g126")) {
                ${tickdata_name}._g126 = json.getBoolean("_g126");
            }
            // Receive _g127
            if (json.has("_g127")) {
                ${tickdata_name}._g127 = json.getBoolean("_g127");
            }
            // Receive _g128
            if (json.has("_g128")) {
                ${tickdata_name}._g128 = json.getBoolean("_g128");
            }
            // Receive _g13
            if (json.has("_g13")) {
                ${tickdata_name}._g13 = json.getBoolean("_g13");
            }
            // Receive _g132
            if (json.has("_g132")) {
                ${tickdata_name}._g132 = json.getBoolean("_g132");
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
            // Receive _g137
            if (json.has("_g137")) {
                ${tickdata_name}._g137 = json.getBoolean("_g137");
            }
            // Receive _g137_e1
            if (json.has("_g137_e1")) {
                ${tickdata_name}._g137_e1 = json.getBoolean("_g137_e1");
            }
            // Receive _g138
            if (json.has("_g138")) {
                ${tickdata_name}._g138 = json.getBoolean("_g138");
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
            // Receive _g142
            if (json.has("_g142")) {
                ${tickdata_name}._g142 = json.getBoolean("_g142");
            }
            // Receive _g145
            if (json.has("_g145")) {
                ${tickdata_name}._g145 = json.getBoolean("_g145");
            }
            // Receive _g146
            if (json.has("_g146")) {
                ${tickdata_name}._g146 = json.getBoolean("_g146");
            }
            // Receive _g147
            if (json.has("_g147")) {
                ${tickdata_name}._g147 = json.getBoolean("_g147");
            }
            // Receive _g147_e2
            if (json.has("_g147_e2")) {
                ${tickdata_name}._g147_e2 = json.getBoolean("_g147_e2");
            }
            // Receive _g148
            if (json.has("_g148")) {
                ${tickdata_name}._g148 = json.getBoolean("_g148");
            }
            // Receive _g149
            if (json.has("_g149")) {
                ${tickdata_name}._g149 = json.getBoolean("_g149");
            }
            // Receive _g15
            if (json.has("_g15")) {
                ${tickdata_name}._g15 = json.getBoolean("_g15");
            }
            // Receive _g150
            if (json.has("_g150")) {
                ${tickdata_name}._g150 = json.getBoolean("_g150");
            }
            // Receive _g151
            if (json.has("_g151")) {
                ${tickdata_name}._g151 = json.getBoolean("_g151");
            }
            // Receive _g152
            if (json.has("_g152")) {
                ${tickdata_name}._g152 = json.getBoolean("_g152");
            }
            // Receive _g156
            if (json.has("_g156")) {
                ${tickdata_name}._g156 = json.getBoolean("_g156");
            }
            // Receive _g157
            if (json.has("_g157")) {
                ${tickdata_name}._g157 = json.getBoolean("_g157");
            }
            // Receive _g159
            if (json.has("_g159")) {
                ${tickdata_name}._g159 = json.getBoolean("_g159");
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
            // Receive _g161_e1
            if (json.has("_g161_e1")) {
                ${tickdata_name}._g161_e1 = json.getBoolean("_g161_e1");
            }
            // Receive _g162
            if (json.has("_g162")) {
                ${tickdata_name}._g162 = json.getBoolean("_g162");
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
            // Receive _g166
            if (json.has("_g166")) {
                ${tickdata_name}._g166 = json.getBoolean("_g166");
            }
            // Receive _g169
            if (json.has("_g169")) {
                ${tickdata_name}._g169 = json.getBoolean("_g169");
            }
            // Receive _g170
            if (json.has("_g170")) {
                ${tickdata_name}._g170 = json.getBoolean("_g170");
            }
            // Receive _g170_e2
            if (json.has("_g170_e2")) {
                ${tickdata_name}._g170_e2 = json.getBoolean("_g170_e2");
            }
            // Receive _g18
            if (json.has("_g18")) {
                ${tickdata_name}._g18 = json.getBoolean("_g18");
            }
            // Receive _g19
            if (json.has("_g19")) {
                ${tickdata_name}._g19 = json.getBoolean("_g19");
            }
            // Receive _g20
            if (json.has("_g20")) {
                ${tickdata_name}._g20 = json.getBoolean("_g20");
            }
            // Receive _g20_e2
            if (json.has("_g20_e2")) {
                ${tickdata_name}._g20_e2 = json.getBoolean("_g20_e2");
            }
            // Receive _g21
            if (json.has("_g21")) {
                ${tickdata_name}._g21 = json.getBoolean("_g21");
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
            // Receive _g30_e3
            if (json.has("_g30_e3")) {
                ${tickdata_name}._g30_e3 = json.getBoolean("_g30_e3");
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
            // Receive _g37
            if (json.has("_g37")) {
                ${tickdata_name}._g37 = json.getBoolean("_g37");
            }
            // Receive _g38
            if (json.has("_g38")) {
                ${tickdata_name}._g38 = json.getBoolean("_g38");
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
            // Receive _g43
            if (json.has("_g43")) {
                ${tickdata_name}._g43 = json.getBoolean("_g43");
            }
            // Receive _g44
            if (json.has("_g44")) {
                ${tickdata_name}._g44 = json.getBoolean("_g44");
            }
            // Receive _g48
            if (json.has("_g48")) {
                ${tickdata_name}._g48 = json.getBoolean("_g48");
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
            // Receive _g55_e1
            if (json.has("_g55_e1")) {
                ${tickdata_name}._g55_e1 = json.getBoolean("_g55_e1");
            }
            // Receive _g56
            if (json.has("_g56")) {
                ${tickdata_name}._g56 = json.getBoolean("_g56");
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
            // Receive _g6
            if (json.has("_g6")) {
                ${tickdata_name}._g6 = json.getBoolean("_g6");
            }
            // Receive _g60
            if (json.has("_g60")) {
                ${tickdata_name}._g60 = json.getBoolean("_g60");
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
            // Receive _g65_e2
            if (json.has("_g65_e2")) {
                ${tickdata_name}._g65_e2 = json.getBoolean("_g65_e2");
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
            // Receive _g69
            if (json.has("_g69")) {
                ${tickdata_name}._g69 = json.getBoolean("_g69");
            }
            // Receive _g7
            if (json.has("_g7")) {
                ${tickdata_name}._g7 = json.getBoolean("_g7");
            }
            // Receive _g70
            if (json.has("_g70")) {
                ${tickdata_name}._g70 = json.getBoolean("_g70");
            }
            // Receive _g74
            if (json.has("_g74")) {
                ${tickdata_name}._g74 = json.getBoolean("_g74");
            }
            // Receive _g75
            if (json.has("_g75")) {
                ${tickdata_name}._g75 = json.getBoolean("_g75");
            }
            // Receive _g76
            if (json.has("_g76")) {
                ${tickdata_name}._g76 = json.getBoolean("_g76");
            }
            // Receive _g78
            if (json.has("_g78")) {
                ${tickdata_name}._g78 = json.getBoolean("_g78");
            }
            // Receive _g80
            if (json.has("_g80")) {
                ${tickdata_name}._g80 = json.getBoolean("_g80");
            }
            // Receive _g81
            if (json.has("_g81")) {
                ${tickdata_name}._g81 = json.getBoolean("_g81");
            }
            // Receive _g82
            if (json.has("_g82")) {
                ${tickdata_name}._g82 = json.getBoolean("_g82");
            }
            // Receive _g83
            if (json.has("_g83")) {
                ${tickdata_name}._g83 = json.getBoolean("_g83");
            }
            // Receive _g83_e1
            if (json.has("_g83_e1")) {
                ${tickdata_name}._g83_e1 = json.getBoolean("_g83_e1");
            }
            // Receive _g84
            if (json.has("_g84")) {
                ${tickdata_name}._g84 = json.getBoolean("_g84");
            }
            // Receive _g86
            if (json.has("_g86")) {
                ${tickdata_name}._g86 = json.getBoolean("_g86");
            }
            // Receive _g87
            if (json.has("_g87")) {
                ${tickdata_name}._g87 = json.getBoolean("_g87");
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
            // Receive _g92_e2
            if (json.has("_g92_e2")) {
                ${tickdata_name}._g92_e2 = json.getBoolean("_g92_e2");
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
            // Receive _g96
            if (json.has("_g96")) {
                ${tickdata_name}._g96 = json.getBoolean("_g96");
            }
            // Receive _g97
            if (json.has("_g97")) {
                ${tickdata_name}._g97 = json.getBoolean("_g97");
            }
            // Receive _g98
            if (json.has("_g98")) {
                ${tickdata_name}._g98 = json.getBoolean("_g98");
            }
            // Receive _g99
            if (json.has("_g99")) {
                ${tickdata_name}._g99 = json.getBoolean("_g99");
            }
            // Receive _pg112
            if (json.has("_pg112")) {
                ${tickdata_name}._pg112 = json.getBoolean("_pg112");
            }
            // Receive _pg11_e1
            if (json.has("_pg11_e1")) {
                ${tickdata_name}._pg11_e1 = json.getBoolean("_pg11_e1");
            }
            // Receive _pg12
            if (json.has("_pg12")) {
                ${tickdata_name}._pg12 = json.getBoolean("_pg12");
            }
            // Receive _pg124
            if (json.has("_pg124")) {
                ${tickdata_name}._pg124 = json.getBoolean("_pg124");
            }
            // Receive _pg125
            if (json.has("_pg125")) {
                ${tickdata_name}._pg125 = json.getBoolean("_pg125");
            }
            // Receive _pg126
            if (json.has("_pg126")) {
                ${tickdata_name}._pg126 = json.getBoolean("_pg126");
            }
            // Receive _pg132
            if (json.has("_pg132")) {
                ${tickdata_name}._pg132 = json.getBoolean("_pg132");
            }
            // Receive _pg137
            if (json.has("_pg137")) {
                ${tickdata_name}._pg137 = json.getBoolean("_pg137");
            }
            // Receive _pg138
            if (json.has("_pg138")) {
                ${tickdata_name}._pg138 = json.getBoolean("_pg138");
            }
            // Receive _pg140
            if (json.has("_pg140")) {
                ${tickdata_name}._pg140 = json.getBoolean("_pg140");
            }
            // Receive _pg141
            if (json.has("_pg141")) {
                ${tickdata_name}._pg141 = json.getBoolean("_pg141");
            }
            // Receive _pg147
            if (json.has("_pg147")) {
                ${tickdata_name}._pg147 = json.getBoolean("_pg147");
            }
            // Receive _pg147_e2
            if (json.has("_pg147_e2")) {
                ${tickdata_name}._pg147_e2 = json.getBoolean("_pg147_e2");
            }
            // Receive _pg15
            if (json.has("_pg15")) {
                ${tickdata_name}._pg15 = json.getBoolean("_pg15");
            }
            // Receive _pg150
            if (json.has("_pg150")) {
                ${tickdata_name}._pg150 = json.getBoolean("_pg150");
            }
            // Receive _pg151
            if (json.has("_pg151")) {
                ${tickdata_name}._pg151 = json.getBoolean("_pg151");
            }
            // Receive _pg152
            if (json.has("_pg152")) {
                ${tickdata_name}._pg152 = json.getBoolean("_pg152");
            }
            // Receive _pg156
            if (json.has("_pg156")) {
                ${tickdata_name}._pg156 = json.getBoolean("_pg156");
            }
            // Receive _pg162
            if (json.has("_pg162")) {
                ${tickdata_name}._pg162 = json.getBoolean("_pg162");
            }
            // Receive _pg164
            if (json.has("_pg164")) {
                ${tickdata_name}._pg164 = json.getBoolean("_pg164");
            }
            // Receive _pg165
            if (json.has("_pg165")) {
                ${tickdata_name}._pg165 = json.getBoolean("_pg165");
            }
            // Receive _pg21
            if (json.has("_pg21")) {
                ${tickdata_name}._pg21 = json.getBoolean("_pg21");
            }
            // Receive _pg23
            if (json.has("_pg23")) {
                ${tickdata_name}._pg23 = json.getBoolean("_pg23");
            }
            // Receive _pg24
            if (json.has("_pg24")) {
                ${tickdata_name}._pg24 = json.getBoolean("_pg24");
            }
            // Receive _pg35
            if (json.has("_pg35")) {
                ${tickdata_name}._pg35 = json.getBoolean("_pg35");
            }
            // Receive _pg54
            if (json.has("_pg54")) {
                ${tickdata_name}._pg54 = json.getBoolean("_pg54");
            }
            // Receive _pg56
            if (json.has("_pg56")) {
                ${tickdata_name}._pg56 = json.getBoolean("_pg56");
            }
            // Receive _pg59
            if (json.has("_pg59")) {
                ${tickdata_name}._pg59 = json.getBoolean("_pg59");
            }
            // Receive _pg65
            if (json.has("_pg65")) {
                ${tickdata_name}._pg65 = json.getBoolean("_pg65");
            }
            // Receive _pg92_e2
            if (json.has("_pg92_e2")) {
                ${tickdata_name}._pg92_e2 = json.getBoolean("_pg92_e2");
            }
            // Receive _pg95
            if (json.has("_pg95")) {
                ${tickdata_name}._pg95 = json.getBoolean("_pg95");
            }
            // Receive _pg96
            if (json.has("_pg96")) {
                ${tickdata_name}._pg96 = json.getBoolean("_pg96");
            }
            // Receive _pg98
            if (json.has("_pg98")) {
                ${tickdata_name}._pg98 = json.getBoolean("_pg98");
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
        // Send _DDDpacemaker_local_LRI_state
        json.put("_DDDpacemaker_local_LRI_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_LRI_state));
        // Send _DDDpacemaker_local_PVARP_state
        json.put("_DDDpacemaker_local_PVARP_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_PVARP_state));
        // Send _DDDpacemaker_local_URI_state
        json.put("_DDDpacemaker_local_URI_state", JSONObject.wrap(${tickdata_name}._DDDpacemaker_local_URI_state));
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
        // Send _cg10
        json.put("_cg10", JSONObject.wrap(${tickdata_name}._cg10));
        // Send _cg103
        json.put("_cg103", JSONObject.wrap(${tickdata_name}._cg103));
        // Send _cg106
        json.put("_cg106", JSONObject.wrap(${tickdata_name}._cg106));
        // Send _cg107
        json.put("_cg107", JSONObject.wrap(${tickdata_name}._cg107));
        // Send _cg110
        json.put("_cg110", JSONObject.wrap(${tickdata_name}._cg110));
        // Send _cg111
        json.put("_cg111", JSONObject.wrap(${tickdata_name}._cg111));
        // Send _cg113
        json.put("_cg113", JSONObject.wrap(${tickdata_name}._cg113));
        // Send _cg116
        json.put("_cg116", JSONObject.wrap(${tickdata_name}._cg116));
        // Send _cg119
        json.put("_cg119", JSONObject.wrap(${tickdata_name}._cg119));
        // Send _cg122
        json.put("_cg122", JSONObject.wrap(${tickdata_name}._cg122));
        // Send _cg124
        json.put("_cg124", JSONObject.wrap(${tickdata_name}._cg124));
        // Send _cg127
        json.put("_cg127", JSONObject.wrap(${tickdata_name}._cg127));
        // Send _cg132
        json.put("_cg132", JSONObject.wrap(${tickdata_name}._cg132));
        // Send _cg135
        json.put("_cg135", JSONObject.wrap(${tickdata_name}._cg135));
        // Send _cg136
        json.put("_cg136", JSONObject.wrap(${tickdata_name}._cg136));
        // Send _cg14
        json.put("_cg14", JSONObject.wrap(${tickdata_name}._cg14));
        // Send _cg140
        json.put("_cg140", JSONObject.wrap(${tickdata_name}._cg140));
        // Send _cg145
        json.put("_cg145", JSONObject.wrap(${tickdata_name}._cg145));
        // Send _cg148
        json.put("_cg148", JSONObject.wrap(${tickdata_name}._cg148));
        // Send _cg150
        json.put("_cg150", JSONObject.wrap(${tickdata_name}._cg150));
        // Send _cg156
        json.put("_cg156", JSONObject.wrap(${tickdata_name}._cg156));
        // Send _cg159
        json.put("_cg159", JSONObject.wrap(${tickdata_name}._cg159));
        // Send _cg160
        json.put("_cg160", JSONObject.wrap(${tickdata_name}._cg160));
        // Send _cg164
        json.put("_cg164", JSONObject.wrap(${tickdata_name}._cg164));
        // Send _cg169
        json.put("_cg169", JSONObject.wrap(${tickdata_name}._cg169));
        // Send _cg18
        json.put("_cg18", JSONObject.wrap(${tickdata_name}._cg18));
        // Send _cg19
        json.put("_cg19", JSONObject.wrap(${tickdata_name}._cg19));
        // Send _cg23
        json.put("_cg23", JSONObject.wrap(${tickdata_name}._cg23));
        // Send _cg28
        json.put("_cg28", JSONObject.wrap(${tickdata_name}._cg28));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(${tickdata_name}._cg31));
        // Send _cg33
        json.put("_cg33", JSONObject.wrap(${tickdata_name}._cg33));
        // Send _cg35
        json.put("_cg35", JSONObject.wrap(${tickdata_name}._cg35));
        // Send _cg37
        json.put("_cg37", JSONObject.wrap(${tickdata_name}._cg37));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(${tickdata_name}._cg4));
        // Send _cg40
        json.put("_cg40", JSONObject.wrap(${tickdata_name}._cg40));
        // Send _cg42
        json.put("_cg42", JSONObject.wrap(${tickdata_name}._cg42));
        // Send _cg48
        json.put("_cg48", JSONObject.wrap(${tickdata_name}._cg48));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(${tickdata_name}._cg50));
        // Send _cg53
        json.put("_cg53", JSONObject.wrap(${tickdata_name}._cg53));
        // Send _cg54
        json.put("_cg54", JSONObject.wrap(${tickdata_name}._cg54));
        // Send _cg58
        json.put("_cg58", JSONObject.wrap(${tickdata_name}._cg58));
        // Send _cg6
        json.put("_cg6", JSONObject.wrap(${tickdata_name}._cg6));
        // Send _cg63
        json.put("_cg63", JSONObject.wrap(${tickdata_name}._cg63));
        // Send _cg66
        json.put("_cg66", JSONObject.wrap(${tickdata_name}._cg66));
        // Send _cg68
        json.put("_cg68", JSONObject.wrap(${tickdata_name}._cg68));
        // Send _cg74
        json.put("_cg74", JSONObject.wrap(${tickdata_name}._cg74));
        // Send _cg77
        json.put("_cg77", JSONObject.wrap(${tickdata_name}._cg77));
        // Send _cg78
        json.put("_cg78", JSONObject.wrap(${tickdata_name}._cg78));
        // Send _cg81
        json.put("_cg81", JSONObject.wrap(${tickdata_name}._cg81));
        // Send _cg82
        json.put("_cg82", JSONObject.wrap(${tickdata_name}._cg82));
        // Send _cg84
        json.put("_cg84", JSONObject.wrap(${tickdata_name}._cg84));
        // Send _cg87
        json.put("_cg87", JSONObject.wrap(${tickdata_name}._cg87));
        // Send _cg9
        json.put("_cg9", JSONObject.wrap(${tickdata_name}._cg9));
        // Send _cg90
        json.put("_cg90", JSONObject.wrap(${tickdata_name}._cg90));
        // Send _cg93
        json.put("_cg93", JSONObject.wrap(${tickdata_name}._cg93));
        // Send _cg95
        json.put("_cg95", JSONObject.wrap(${tickdata_name}._cg95));
        // Send _cg98
        json.put("_cg98", JSONObject.wrap(${tickdata_name}._cg98));
        // Send _g10
        json.put("_g10", JSONObject.wrap(${tickdata_name}._g10));
        // Send _g103
        json.put("_g103", JSONObject.wrap(${tickdata_name}._g103));
        // Send _g104
        json.put("_g104", JSONObject.wrap(${tickdata_name}._g104));
        // Send _g105
        json.put("_g105", JSONObject.wrap(${tickdata_name}._g105));
        // Send _g107
        json.put("_g107", JSONObject.wrap(${tickdata_name}._g107));
        // Send _g109
        json.put("_g109", JSONObject.wrap(${tickdata_name}._g109));
        // Send _g11
        json.put("_g11", JSONObject.wrap(${tickdata_name}._g11));
        // Send _g110
        json.put("_g110", JSONObject.wrap(${tickdata_name}._g110));
        // Send _g111
        json.put("_g111", JSONObject.wrap(${tickdata_name}._g111));
        // Send _g112
        json.put("_g112", JSONObject.wrap(${tickdata_name}._g112));
        // Send _g112_e1
        json.put("_g112_e1", JSONObject.wrap(${tickdata_name}._g112_e1));
        // Send _g113
        json.put("_g113", JSONObject.wrap(${tickdata_name}._g113));
        // Send _g115
        json.put("_g115", JSONObject.wrap(${tickdata_name}._g115));
        // Send _g116
        json.put("_g116", JSONObject.wrap(${tickdata_name}._g116));
        // Send _g119
        json.put("_g119", JSONObject.wrap(${tickdata_name}._g119));
        // Send _g11_e1
        json.put("_g11_e1", JSONObject.wrap(${tickdata_name}._g11_e1));
        // Send _g12
        json.put("_g12", JSONObject.wrap(${tickdata_name}._g12));
        // Send _g120
        json.put("_g120", JSONObject.wrap(${tickdata_name}._g120));
        // Send _g121
        json.put("_g121", JSONObject.wrap(${tickdata_name}._g121));
        // Send _g121_e2
        json.put("_g121_e2", JSONObject.wrap(${tickdata_name}._g121_e2));
        // Send _g122
        json.put("_g122", JSONObject.wrap(${tickdata_name}._g122));
        // Send _g123
        json.put("_g123", JSONObject.wrap(${tickdata_name}._g123));
        // Send _g124
        json.put("_g124", JSONObject.wrap(${tickdata_name}._g124));
        // Send _g125
        json.put("_g125", JSONObject.wrap(${tickdata_name}._g125));
        // Send _g126
        json.put("_g126", JSONObject.wrap(${tickdata_name}._g126));
        // Send _g127
        json.put("_g127", JSONObject.wrap(${tickdata_name}._g127));
        // Send _g128
        json.put("_g128", JSONObject.wrap(${tickdata_name}._g128));
        // Send _g13
        json.put("_g13", JSONObject.wrap(${tickdata_name}._g13));
        // Send _g132
        json.put("_g132", JSONObject.wrap(${tickdata_name}._g132));
        // Send _g133
        json.put("_g133", JSONObject.wrap(${tickdata_name}._g133));
        // Send _g135
        json.put("_g135", JSONObject.wrap(${tickdata_name}._g135));
        // Send _g136
        json.put("_g136", JSONObject.wrap(${tickdata_name}._g136));
        // Send _g137
        json.put("_g137", JSONObject.wrap(${tickdata_name}._g137));
        // Send _g137_e1
        json.put("_g137_e1", JSONObject.wrap(${tickdata_name}._g137_e1));
        // Send _g138
        json.put("_g138", JSONObject.wrap(${tickdata_name}._g138));
        // Send _g139
        json.put("_g139", JSONObject.wrap(${tickdata_name}._g139));
        // Send _g14
        json.put("_g14", JSONObject.wrap(${tickdata_name}._g14));
        // Send _g140
        json.put("_g140", JSONObject.wrap(${tickdata_name}._g140));
        // Send _g141
        json.put("_g141", JSONObject.wrap(${tickdata_name}._g141));
        // Send _g142
        json.put("_g142", JSONObject.wrap(${tickdata_name}._g142));
        // Send _g145
        json.put("_g145", JSONObject.wrap(${tickdata_name}._g145));
        // Send _g146
        json.put("_g146", JSONObject.wrap(${tickdata_name}._g146));
        // Send _g147
        json.put("_g147", JSONObject.wrap(${tickdata_name}._g147));
        // Send _g147_e2
        json.put("_g147_e2", JSONObject.wrap(${tickdata_name}._g147_e2));
        // Send _g148
        json.put("_g148", JSONObject.wrap(${tickdata_name}._g148));
        // Send _g149
        json.put("_g149", JSONObject.wrap(${tickdata_name}._g149));
        // Send _g15
        json.put("_g15", JSONObject.wrap(${tickdata_name}._g15));
        // Send _g150
        json.put("_g150", JSONObject.wrap(${tickdata_name}._g150));
        // Send _g151
        json.put("_g151", JSONObject.wrap(${tickdata_name}._g151));
        // Send _g152
        json.put("_g152", JSONObject.wrap(${tickdata_name}._g152));
        // Send _g156
        json.put("_g156", JSONObject.wrap(${tickdata_name}._g156));
        // Send _g157
        json.put("_g157", JSONObject.wrap(${tickdata_name}._g157));
        // Send _g159
        json.put("_g159", JSONObject.wrap(${tickdata_name}._g159));
        // Send _g16
        json.put("_g16", JSONObject.wrap(${tickdata_name}._g16));
        // Send _g160
        json.put("_g160", JSONObject.wrap(${tickdata_name}._g160));
        // Send _g161
        json.put("_g161", JSONObject.wrap(${tickdata_name}._g161));
        // Send _g161_e1
        json.put("_g161_e1", JSONObject.wrap(${tickdata_name}._g161_e1));
        // Send _g162
        json.put("_g162", JSONObject.wrap(${tickdata_name}._g162));
        // Send _g163
        json.put("_g163", JSONObject.wrap(${tickdata_name}._g163));
        // Send _g164
        json.put("_g164", JSONObject.wrap(${tickdata_name}._g164));
        // Send _g165
        json.put("_g165", JSONObject.wrap(${tickdata_name}._g165));
        // Send _g166
        json.put("_g166", JSONObject.wrap(${tickdata_name}._g166));
        // Send _g169
        json.put("_g169", JSONObject.wrap(${tickdata_name}._g169));
        // Send _g170
        json.put("_g170", JSONObject.wrap(${tickdata_name}._g170));
        // Send _g170_e2
        json.put("_g170_e2", JSONObject.wrap(${tickdata_name}._g170_e2));
        // Send _g18
        json.put("_g18", JSONObject.wrap(${tickdata_name}._g18));
        // Send _g19
        json.put("_g19", JSONObject.wrap(${tickdata_name}._g19));
        // Send _g20
        json.put("_g20", JSONObject.wrap(${tickdata_name}._g20));
        // Send _g20_e2
        json.put("_g20_e2", JSONObject.wrap(${tickdata_name}._g20_e2));
        // Send _g21
        json.put("_g21", JSONObject.wrap(${tickdata_name}._g21));
        // Send _g215
        json.put("_g215", JSONObject.wrap(${tickdata_name}._g215));
        // Send _g22
        json.put("_g22", JSONObject.wrap(${tickdata_name}._g22));
        // Send _g23
        json.put("_g23", JSONObject.wrap(${tickdata_name}._g23));
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
        // Send _g30_e3
        json.put("_g30_e3", JSONObject.wrap(${tickdata_name}._g30_e3));
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
        // Send _g37
        json.put("_g37", JSONObject.wrap(${tickdata_name}._g37));
        // Send _g38
        json.put("_g38", JSONObject.wrap(${tickdata_name}._g38));
        // Send _g4
        json.put("_g4", JSONObject.wrap(${tickdata_name}._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(${tickdata_name}._g40));
        // Send _g41
        json.put("_g41", JSONObject.wrap(${tickdata_name}._g41));
        // Send _g42
        json.put("_g42", JSONObject.wrap(${tickdata_name}._g42));
        // Send _g43
        json.put("_g43", JSONObject.wrap(${tickdata_name}._g43));
        // Send _g44
        json.put("_g44", JSONObject.wrap(${tickdata_name}._g44));
        // Send _g48
        json.put("_g48", JSONObject.wrap(${tickdata_name}._g48));
        // Send _g49
        json.put("_g49", JSONObject.wrap(${tickdata_name}._g49));
        // Send _g5
        json.put("_g5", JSONObject.wrap(${tickdata_name}._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(${tickdata_name}._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(${tickdata_name}._g51));
        // Send _g53
        json.put("_g53", JSONObject.wrap(${tickdata_name}._g53));
        // Send _g54
        json.put("_g54", JSONObject.wrap(${tickdata_name}._g54));
        // Send _g55
        json.put("_g55", JSONObject.wrap(${tickdata_name}._g55));
        // Send _g55_e1
        json.put("_g55_e1", JSONObject.wrap(${tickdata_name}._g55_e1));
        // Send _g56
        json.put("_g56", JSONObject.wrap(${tickdata_name}._g56));
        // Send _g57
        json.put("_g57", JSONObject.wrap(${tickdata_name}._g57));
        // Send _g58
        json.put("_g58", JSONObject.wrap(${tickdata_name}._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(${tickdata_name}._g59));
        // Send _g6
        json.put("_g6", JSONObject.wrap(${tickdata_name}._g6));
        // Send _g60
        json.put("_g60", JSONObject.wrap(${tickdata_name}._g60));
        // Send _g63
        json.put("_g63", JSONObject.wrap(${tickdata_name}._g63));
        // Send _g64
        json.put("_g64", JSONObject.wrap(${tickdata_name}._g64));
        // Send _g65
        json.put("_g65", JSONObject.wrap(${tickdata_name}._g65));
        // Send _g65_e2
        json.put("_g65_e2", JSONObject.wrap(${tickdata_name}._g65_e2));
        // Send _g66
        json.put("_g66", JSONObject.wrap(${tickdata_name}._g66));
        // Send _g67
        json.put("_g67", JSONObject.wrap(${tickdata_name}._g67));
        // Send _g68
        json.put("_g68", JSONObject.wrap(${tickdata_name}._g68));
        // Send _g69
        json.put("_g69", JSONObject.wrap(${tickdata_name}._g69));
        // Send _g7
        json.put("_g7", JSONObject.wrap(${tickdata_name}._g7));
        // Send _g70
        json.put("_g70", JSONObject.wrap(${tickdata_name}._g70));
        // Send _g74
        json.put("_g74", JSONObject.wrap(${tickdata_name}._g74));
        // Send _g75
        json.put("_g75", JSONObject.wrap(${tickdata_name}._g75));
        // Send _g76
        json.put("_g76", JSONObject.wrap(${tickdata_name}._g76));
        // Send _g78
        json.put("_g78", JSONObject.wrap(${tickdata_name}._g78));
        // Send _g80
        json.put("_g80", JSONObject.wrap(${tickdata_name}._g80));
        // Send _g81
        json.put("_g81", JSONObject.wrap(${tickdata_name}._g81));
        // Send _g82
        json.put("_g82", JSONObject.wrap(${tickdata_name}._g82));
        // Send _g83
        json.put("_g83", JSONObject.wrap(${tickdata_name}._g83));
        // Send _g83_e1
        json.put("_g83_e1", JSONObject.wrap(${tickdata_name}._g83_e1));
        // Send _g84
        json.put("_g84", JSONObject.wrap(${tickdata_name}._g84));
        // Send _g86
        json.put("_g86", JSONObject.wrap(${tickdata_name}._g86));
        // Send _g87
        json.put("_g87", JSONObject.wrap(${tickdata_name}._g87));
        // Send _g9
        json.put("_g9", JSONObject.wrap(${tickdata_name}._g9));
        // Send _g90
        json.put("_g90", JSONObject.wrap(${tickdata_name}._g90));
        // Send _g91
        json.put("_g91", JSONObject.wrap(${tickdata_name}._g91));
        // Send _g92
        json.put("_g92", JSONObject.wrap(${tickdata_name}._g92));
        // Send _g92_e2
        json.put("_g92_e2", JSONObject.wrap(${tickdata_name}._g92_e2));
        // Send _g93
        json.put("_g93", JSONObject.wrap(${tickdata_name}._g93));
        // Send _g94
        json.put("_g94", JSONObject.wrap(${tickdata_name}._g94));
        // Send _g95
        json.put("_g95", JSONObject.wrap(${tickdata_name}._g95));
        // Send _g96
        json.put("_g96", JSONObject.wrap(${tickdata_name}._g96));
        // Send _g97
        json.put("_g97", JSONObject.wrap(${tickdata_name}._g97));
        // Send _g98
        json.put("_g98", JSONObject.wrap(${tickdata_name}._g98));
        // Send _g99
        json.put("_g99", JSONObject.wrap(${tickdata_name}._g99));
        // Send _pg112
        json.put("_pg112", JSONObject.wrap(${tickdata_name}._pg112));
        // Send _pg11_e1
        json.put("_pg11_e1", JSONObject.wrap(${tickdata_name}._pg11_e1));
        // Send _pg12
        json.put("_pg12", JSONObject.wrap(${tickdata_name}._pg12));
        // Send _pg124
        json.put("_pg124", JSONObject.wrap(${tickdata_name}._pg124));
        // Send _pg125
        json.put("_pg125", JSONObject.wrap(${tickdata_name}._pg125));
        // Send _pg126
        json.put("_pg126", JSONObject.wrap(${tickdata_name}._pg126));
        // Send _pg132
        json.put("_pg132", JSONObject.wrap(${tickdata_name}._pg132));
        // Send _pg137
        json.put("_pg137", JSONObject.wrap(${tickdata_name}._pg137));
        // Send _pg138
        json.put("_pg138", JSONObject.wrap(${tickdata_name}._pg138));
        // Send _pg140
        json.put("_pg140", JSONObject.wrap(${tickdata_name}._pg140));
        // Send _pg141
        json.put("_pg141", JSONObject.wrap(${tickdata_name}._pg141));
        // Send _pg147
        json.put("_pg147", JSONObject.wrap(${tickdata_name}._pg147));
        // Send _pg147_e2
        json.put("_pg147_e2", JSONObject.wrap(${tickdata_name}._pg147_e2));
        // Send _pg15
        json.put("_pg15", JSONObject.wrap(${tickdata_name}._pg15));
        // Send _pg150
        json.put("_pg150", JSONObject.wrap(${tickdata_name}._pg150));
        // Send _pg151
        json.put("_pg151", JSONObject.wrap(${tickdata_name}._pg151));
        // Send _pg152
        json.put("_pg152", JSONObject.wrap(${tickdata_name}._pg152));
        // Send _pg156
        json.put("_pg156", JSONObject.wrap(${tickdata_name}._pg156));
        // Send _pg162
        json.put("_pg162", JSONObject.wrap(${tickdata_name}._pg162));
        // Send _pg164
        json.put("_pg164", JSONObject.wrap(${tickdata_name}._pg164));
        // Send _pg165
        json.put("_pg165", JSONObject.wrap(${tickdata_name}._pg165));
        // Send _pg21
        json.put("_pg21", JSONObject.wrap(${tickdata_name}._pg21));
        // Send _pg23
        json.put("_pg23", JSONObject.wrap(${tickdata_name}._pg23));
        // Send _pg24
        json.put("_pg24", JSONObject.wrap(${tickdata_name}._pg24));
        // Send _pg35
        json.put("_pg35", JSONObject.wrap(${tickdata_name}._pg35));
        // Send _pg54
        json.put("_pg54", JSONObject.wrap(${tickdata_name}._pg54));
        // Send _pg56
        json.put("_pg56", JSONObject.wrap(${tickdata_name}._pg56));
        // Send _pg59
        json.put("_pg59", JSONObject.wrap(${tickdata_name}._pg59));
        // Send _pg65
        json.put("_pg65", JSONObject.wrap(${tickdata_name}._pg65));
        // Send _pg92_e2
        json.put("_pg92_e2", JSONObject.wrap(${tickdata_name}._pg92_e2));
        // Send _pg95
        json.put("_pg95", JSONObject.wrap(${tickdata_name}._pg95));
        // Send _pg96
        json.put("_pg96", JSONObject.wrap(${tickdata_name}._pg96));
        // Send _pg98
        json.put("_pg98", JSONObject.wrap(${tickdata_name}._pg98));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(${tickdata_name}._taken_transitions));
        
        System.out.println(json.toString());
    }
</#macro>
