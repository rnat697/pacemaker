<#macro simulation_imports position>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "lib/cJSON.h"
</#macro>

<#macro simulation_init position>
sendVariables(1);
</#macro>

<#macro simulation_in position>
receiveVariables();
</#macro>

<#macro simulation_out position>
sendVariables(0);
</#macro>

<#macro simulation_body position>
void receiveVariables() {
    size_t blocksize = 2048;
    char *buffer = realloc(NULL, sizeof(char) * blocksize);
    size_t i = 0;
    
    // read next line
    int c = getchar();
    while (c != EOF && c != '\n') {
        buffer[i++] = (char) c;
        if (i == blocksize) {
            buffer = realloc(buffer, sizeof(char) * (blocksize += 2048));
        }
        c = getchar();
    }
    buffer[i++] = '\0';
    
    if (c == EOF) {
        exit(EOF);
    }
    
    cJSON *root = cJSON_Parse(buffer);
    cJSON *item = NULL;
    if(root != NULL) {
        // Receive AS
        item = cJSON_GetObjectItemCaseSensitive(root, "AS");
        if(item != NULL) {
            ${tickdata_name}.AS = item->valueint;
        }
        // Receive VS
        item = cJSON_GetObjectItemCaseSensitive(root, "VS");
        if(item != NULL) {
            ${tickdata_name}.VS = item->valueint;
        }
        // Receive deltaT
        item = cJSON_GetObjectItemCaseSensitive(root, "deltaT");
        if(item != NULL) {
            ${tickdata_name}.deltaT = item->valuedouble;
        }
        // Receive AP
        item = cJSON_GetObjectItemCaseSensitive(root, "AP");
        if(item != NULL) {
            ${tickdata_name}.AP = item->valueint;
        }
        // Receive VP
        item = cJSON_GetObjectItemCaseSensitive(root, "VP");
        if(item != NULL) {
            ${tickdata_name}.VP = item->valueint;
        }
        // Receive sleepT
        item = cJSON_GetObjectItemCaseSensitive(root, "sleepT");
        if(item != NULL) {
            ${tickdata_name}.sleepT = item->valuedouble;
        }
        // Receive #ticktime
        item = cJSON_GetObjectItemCaseSensitive(root, "#ticktime");
        if(item != NULL) {
            _ticktime = item->valuedouble;
        }
        // Receive AEI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "AEI_counter");
        if(item != NULL) {
            ${tickdata_name}.AEI_counter = item->valuedouble;
        }
        // Receive AVI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_counter");
        if(item != NULL) {
            ${tickdata_name}.AVI_counter = item->valuedouble;
        }
        // Receive LRI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "LRI_counter");
        if(item != NULL) {
            ${tickdata_name}.LRI_counter = item->valuedouble;
        }
        // Receive PVARP_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "PVARP_counter");
        if(item != NULL) {
            ${tickdata_name}.PVARP_counter = item->valuedouble;
        }
        // Receive URI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "URI_counter");
        if(item != NULL) {
            ${tickdata_name}.URI_counter = item->valuedouble;
        }
        // Receive VRP_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "VRP_counter");
        if(item != NULL) {
            ${tickdata_name}.VRP_counter = item->valuedouble;
        }
        // Receive _DDDpacemaker_local_AEI_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AEI_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AEI_state = item->valueint;
        }
        // Receive _DDDpacemaker_local_AP_temp
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AP_temp");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AP_temp = item->valueint;
        }
        // Receive _DDDpacemaker_local_AR
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AR");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AR = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AVI_state = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_LRI_state = item->valueint;
        }
        // Receive _DDDpacemaker_local_PVARP_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_PVARP_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_PVARP_state = item->valueint;
        }
        // Receive _DDDpacemaker_local_URI_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_URI_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_URI_state = item->valueint;
        }
        // Receive _DDDpacemaker_local_VP_temp
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VP_temp");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_VP_temp = item->valueint;
        }
        // Receive _DDDpacemaker_local_VR
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VR");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_VR = item->valueint;
        }
        // Receive _DDDpacemaker_local_VRP_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VRP_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_VRP_state = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig1
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig1");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig1 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig10
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig10");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig10 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig11
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig11");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig11 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig2
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig2");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig2 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig3
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig3");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig3 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig4
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig4");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig4 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig5
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig5");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig5 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig6
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig6");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig6 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig7
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig7");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig7 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig8
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig8");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig8 = item->valueint;
        }
        // Receive _DDDpacemaker_local__Atrig9
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__Atrig9");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__Atrig9 = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_AP_temp
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_AP_temp");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_AP_temp = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_VP_temp
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_VP_temp");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_VP_temp = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_AP_temp
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_AP_temp");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_AP_temp = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_VP_temp
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_VP_temp");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_VP_temp = item->valueint;
        }
        // Receive _DDDpacemaker_local_real_AS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_real_AS");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_real_AS = item->valueint;
        }
        // Receive _DDDpacemaker_local_real_VS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_real_VS");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_real_VS = item->valueint;
        }
        // Receive _GO
        item = cJSON_GetObjectItemCaseSensitive(root, "_GO");
        if(item != NULL) {
            ${tickdata_name}._GO = item->valueint;
        }
        // Receive _TERM
        item = cJSON_GetObjectItemCaseSensitive(root, "_TERM");
        if(item != NULL) {
            ${tickdata_name}._TERM = item->valueint;
        }
        // Receive _cg10
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg10");
        if(item != NULL) {
            ${tickdata_name}._cg10 = item->valueint;
        }
        // Receive _cg103
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg103");
        if(item != NULL) {
            ${tickdata_name}._cg103 = item->valueint;
        }
        // Receive _cg106
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg106");
        if(item != NULL) {
            ${tickdata_name}._cg106 = item->valueint;
        }
        // Receive _cg107
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg107");
        if(item != NULL) {
            ${tickdata_name}._cg107 = item->valueint;
        }
        // Receive _cg110
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg110");
        if(item != NULL) {
            ${tickdata_name}._cg110 = item->valueint;
        }
        // Receive _cg111
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg111");
        if(item != NULL) {
            ${tickdata_name}._cg111 = item->valueint;
        }
        // Receive _cg113
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg113");
        if(item != NULL) {
            ${tickdata_name}._cg113 = item->valueint;
        }
        // Receive _cg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg116");
        if(item != NULL) {
            ${tickdata_name}._cg116 = item->valueint;
        }
        // Receive _cg119
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg119");
        if(item != NULL) {
            ${tickdata_name}._cg119 = item->valueint;
        }
        // Receive _cg122
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg122");
        if(item != NULL) {
            ${tickdata_name}._cg122 = item->valueint;
        }
        // Receive _cg124
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg124");
        if(item != NULL) {
            ${tickdata_name}._cg124 = item->valueint;
        }
        // Receive _cg127
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg127");
        if(item != NULL) {
            ${tickdata_name}._cg127 = item->valueint;
        }
        // Receive _cg132
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg132");
        if(item != NULL) {
            ${tickdata_name}._cg132 = item->valueint;
        }
        // Receive _cg135
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg135");
        if(item != NULL) {
            ${tickdata_name}._cg135 = item->valueint;
        }
        // Receive _cg136
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg136");
        if(item != NULL) {
            ${tickdata_name}._cg136 = item->valueint;
        }
        // Receive _cg14
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg14");
        if(item != NULL) {
            ${tickdata_name}._cg14 = item->valueint;
        }
        // Receive _cg140
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg140");
        if(item != NULL) {
            ${tickdata_name}._cg140 = item->valueint;
        }
        // Receive _cg145
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg145");
        if(item != NULL) {
            ${tickdata_name}._cg145 = item->valueint;
        }
        // Receive _cg148
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg148");
        if(item != NULL) {
            ${tickdata_name}._cg148 = item->valueint;
        }
        // Receive _cg150
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg150");
        if(item != NULL) {
            ${tickdata_name}._cg150 = item->valueint;
        }
        // Receive _cg156
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg156");
        if(item != NULL) {
            ${tickdata_name}._cg156 = item->valueint;
        }
        // Receive _cg159
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg159");
        if(item != NULL) {
            ${tickdata_name}._cg159 = item->valueint;
        }
        // Receive _cg160
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg160");
        if(item != NULL) {
            ${tickdata_name}._cg160 = item->valueint;
        }
        // Receive _cg164
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg164");
        if(item != NULL) {
            ${tickdata_name}._cg164 = item->valueint;
        }
        // Receive _cg169
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg169");
        if(item != NULL) {
            ${tickdata_name}._cg169 = item->valueint;
        }
        // Receive _cg18
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg18");
        if(item != NULL) {
            ${tickdata_name}._cg18 = item->valueint;
        }
        // Receive _cg19
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg19");
        if(item != NULL) {
            ${tickdata_name}._cg19 = item->valueint;
        }
        // Receive _cg23
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg23");
        if(item != NULL) {
            ${tickdata_name}._cg23 = item->valueint;
        }
        // Receive _cg28
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg28");
        if(item != NULL) {
            ${tickdata_name}._cg28 = item->valueint;
        }
        // Receive _cg31
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg31");
        if(item != NULL) {
            ${tickdata_name}._cg31 = item->valueint;
        }
        // Receive _cg33
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg33");
        if(item != NULL) {
            ${tickdata_name}._cg33 = item->valueint;
        }
        // Receive _cg35
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg35");
        if(item != NULL) {
            ${tickdata_name}._cg35 = item->valueint;
        }
        // Receive _cg37
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg37");
        if(item != NULL) {
            ${tickdata_name}._cg37 = item->valueint;
        }
        // Receive _cg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg4");
        if(item != NULL) {
            ${tickdata_name}._cg4 = item->valueint;
        }
        // Receive _cg40
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg40");
        if(item != NULL) {
            ${tickdata_name}._cg40 = item->valueint;
        }
        // Receive _cg42
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg42");
        if(item != NULL) {
            ${tickdata_name}._cg42 = item->valueint;
        }
        // Receive _cg48
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg48");
        if(item != NULL) {
            ${tickdata_name}._cg48 = item->valueint;
        }
        // Receive _cg50
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg50");
        if(item != NULL) {
            ${tickdata_name}._cg50 = item->valueint;
        }
        // Receive _cg53
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg53");
        if(item != NULL) {
            ${tickdata_name}._cg53 = item->valueint;
        }
        // Receive _cg54
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg54");
        if(item != NULL) {
            ${tickdata_name}._cg54 = item->valueint;
        }
        // Receive _cg58
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg58");
        if(item != NULL) {
            ${tickdata_name}._cg58 = item->valueint;
        }
        // Receive _cg6
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg6");
        if(item != NULL) {
            ${tickdata_name}._cg6 = item->valueint;
        }
        // Receive _cg63
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg63");
        if(item != NULL) {
            ${tickdata_name}._cg63 = item->valueint;
        }
        // Receive _cg66
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg66");
        if(item != NULL) {
            ${tickdata_name}._cg66 = item->valueint;
        }
        // Receive _cg68
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg68");
        if(item != NULL) {
            ${tickdata_name}._cg68 = item->valueint;
        }
        // Receive _cg74
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg74");
        if(item != NULL) {
            ${tickdata_name}._cg74 = item->valueint;
        }
        // Receive _cg77
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg77");
        if(item != NULL) {
            ${tickdata_name}._cg77 = item->valueint;
        }
        // Receive _cg78
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg78");
        if(item != NULL) {
            ${tickdata_name}._cg78 = item->valueint;
        }
        // Receive _cg81
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg81");
        if(item != NULL) {
            ${tickdata_name}._cg81 = item->valueint;
        }
        // Receive _cg82
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg82");
        if(item != NULL) {
            ${tickdata_name}._cg82 = item->valueint;
        }
        // Receive _cg84
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg84");
        if(item != NULL) {
            ${tickdata_name}._cg84 = item->valueint;
        }
        // Receive _cg87
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg87");
        if(item != NULL) {
            ${tickdata_name}._cg87 = item->valueint;
        }
        // Receive _cg9
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg9");
        if(item != NULL) {
            ${tickdata_name}._cg9 = item->valueint;
        }
        // Receive _cg90
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg90");
        if(item != NULL) {
            ${tickdata_name}._cg90 = item->valueint;
        }
        // Receive _cg93
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg93");
        if(item != NULL) {
            ${tickdata_name}._cg93 = item->valueint;
        }
        // Receive _cg95
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg95");
        if(item != NULL) {
            ${tickdata_name}._cg95 = item->valueint;
        }
        // Receive _cg98
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg98");
        if(item != NULL) {
            ${tickdata_name}._cg98 = item->valueint;
        }
        // Receive _g10
        item = cJSON_GetObjectItemCaseSensitive(root, "_g10");
        if(item != NULL) {
            ${tickdata_name}._g10 = item->valueint;
        }
        // Receive _g103
        item = cJSON_GetObjectItemCaseSensitive(root, "_g103");
        if(item != NULL) {
            ${tickdata_name}._g103 = item->valueint;
        }
        // Receive _g104
        item = cJSON_GetObjectItemCaseSensitive(root, "_g104");
        if(item != NULL) {
            ${tickdata_name}._g104 = item->valueint;
        }
        // Receive _g105
        item = cJSON_GetObjectItemCaseSensitive(root, "_g105");
        if(item != NULL) {
            ${tickdata_name}._g105 = item->valueint;
        }
        // Receive _g107
        item = cJSON_GetObjectItemCaseSensitive(root, "_g107");
        if(item != NULL) {
            ${tickdata_name}._g107 = item->valueint;
        }
        // Receive _g109
        item = cJSON_GetObjectItemCaseSensitive(root, "_g109");
        if(item != NULL) {
            ${tickdata_name}._g109 = item->valueint;
        }
        // Receive _g11
        item = cJSON_GetObjectItemCaseSensitive(root, "_g11");
        if(item != NULL) {
            ${tickdata_name}._g11 = item->valueint;
        }
        // Receive _g110
        item = cJSON_GetObjectItemCaseSensitive(root, "_g110");
        if(item != NULL) {
            ${tickdata_name}._g110 = item->valueint;
        }
        // Receive _g111
        item = cJSON_GetObjectItemCaseSensitive(root, "_g111");
        if(item != NULL) {
            ${tickdata_name}._g111 = item->valueint;
        }
        // Receive _g112
        item = cJSON_GetObjectItemCaseSensitive(root, "_g112");
        if(item != NULL) {
            ${tickdata_name}._g112 = item->valueint;
        }
        // Receive _g112_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g112_e1");
        if(item != NULL) {
            ${tickdata_name}._g112_e1 = item->valueint;
        }
        // Receive _g113
        item = cJSON_GetObjectItemCaseSensitive(root, "_g113");
        if(item != NULL) {
            ${tickdata_name}._g113 = item->valueint;
        }
        // Receive _g115
        item = cJSON_GetObjectItemCaseSensitive(root, "_g115");
        if(item != NULL) {
            ${tickdata_name}._g115 = item->valueint;
        }
        // Receive _g116
        item = cJSON_GetObjectItemCaseSensitive(root, "_g116");
        if(item != NULL) {
            ${tickdata_name}._g116 = item->valueint;
        }
        // Receive _g119
        item = cJSON_GetObjectItemCaseSensitive(root, "_g119");
        if(item != NULL) {
            ${tickdata_name}._g119 = item->valueint;
        }
        // Receive _g11_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g11_e1");
        if(item != NULL) {
            ${tickdata_name}._g11_e1 = item->valueint;
        }
        // Receive _g12
        item = cJSON_GetObjectItemCaseSensitive(root, "_g12");
        if(item != NULL) {
            ${tickdata_name}._g12 = item->valueint;
        }
        // Receive _g120
        item = cJSON_GetObjectItemCaseSensitive(root, "_g120");
        if(item != NULL) {
            ${tickdata_name}._g120 = item->valueint;
        }
        // Receive _g121
        item = cJSON_GetObjectItemCaseSensitive(root, "_g121");
        if(item != NULL) {
            ${tickdata_name}._g121 = item->valueint;
        }
        // Receive _g121_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g121_e2");
        if(item != NULL) {
            ${tickdata_name}._g121_e2 = item->valueint;
        }
        // Receive _g122
        item = cJSON_GetObjectItemCaseSensitive(root, "_g122");
        if(item != NULL) {
            ${tickdata_name}._g122 = item->valueint;
        }
        // Receive _g123
        item = cJSON_GetObjectItemCaseSensitive(root, "_g123");
        if(item != NULL) {
            ${tickdata_name}._g123 = item->valueint;
        }
        // Receive _g124
        item = cJSON_GetObjectItemCaseSensitive(root, "_g124");
        if(item != NULL) {
            ${tickdata_name}._g124 = item->valueint;
        }
        // Receive _g125
        item = cJSON_GetObjectItemCaseSensitive(root, "_g125");
        if(item != NULL) {
            ${tickdata_name}._g125 = item->valueint;
        }
        // Receive _g126
        item = cJSON_GetObjectItemCaseSensitive(root, "_g126");
        if(item != NULL) {
            ${tickdata_name}._g126 = item->valueint;
        }
        // Receive _g127
        item = cJSON_GetObjectItemCaseSensitive(root, "_g127");
        if(item != NULL) {
            ${tickdata_name}._g127 = item->valueint;
        }
        // Receive _g128
        item = cJSON_GetObjectItemCaseSensitive(root, "_g128");
        if(item != NULL) {
            ${tickdata_name}._g128 = item->valueint;
        }
        // Receive _g13
        item = cJSON_GetObjectItemCaseSensitive(root, "_g13");
        if(item != NULL) {
            ${tickdata_name}._g13 = item->valueint;
        }
        // Receive _g132
        item = cJSON_GetObjectItemCaseSensitive(root, "_g132");
        if(item != NULL) {
            ${tickdata_name}._g132 = item->valueint;
        }
        // Receive _g133
        item = cJSON_GetObjectItemCaseSensitive(root, "_g133");
        if(item != NULL) {
            ${tickdata_name}._g133 = item->valueint;
        }
        // Receive _g135
        item = cJSON_GetObjectItemCaseSensitive(root, "_g135");
        if(item != NULL) {
            ${tickdata_name}._g135 = item->valueint;
        }
        // Receive _g136
        item = cJSON_GetObjectItemCaseSensitive(root, "_g136");
        if(item != NULL) {
            ${tickdata_name}._g136 = item->valueint;
        }
        // Receive _g137
        item = cJSON_GetObjectItemCaseSensitive(root, "_g137");
        if(item != NULL) {
            ${tickdata_name}._g137 = item->valueint;
        }
        // Receive _g137_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g137_e1");
        if(item != NULL) {
            ${tickdata_name}._g137_e1 = item->valueint;
        }
        // Receive _g138
        item = cJSON_GetObjectItemCaseSensitive(root, "_g138");
        if(item != NULL) {
            ${tickdata_name}._g138 = item->valueint;
        }
        // Receive _g139
        item = cJSON_GetObjectItemCaseSensitive(root, "_g139");
        if(item != NULL) {
            ${tickdata_name}._g139 = item->valueint;
        }
        // Receive _g14
        item = cJSON_GetObjectItemCaseSensitive(root, "_g14");
        if(item != NULL) {
            ${tickdata_name}._g14 = item->valueint;
        }
        // Receive _g140
        item = cJSON_GetObjectItemCaseSensitive(root, "_g140");
        if(item != NULL) {
            ${tickdata_name}._g140 = item->valueint;
        }
        // Receive _g141
        item = cJSON_GetObjectItemCaseSensitive(root, "_g141");
        if(item != NULL) {
            ${tickdata_name}._g141 = item->valueint;
        }
        // Receive _g142
        item = cJSON_GetObjectItemCaseSensitive(root, "_g142");
        if(item != NULL) {
            ${tickdata_name}._g142 = item->valueint;
        }
        // Receive _g145
        item = cJSON_GetObjectItemCaseSensitive(root, "_g145");
        if(item != NULL) {
            ${tickdata_name}._g145 = item->valueint;
        }
        // Receive _g146
        item = cJSON_GetObjectItemCaseSensitive(root, "_g146");
        if(item != NULL) {
            ${tickdata_name}._g146 = item->valueint;
        }
        // Receive _g147
        item = cJSON_GetObjectItemCaseSensitive(root, "_g147");
        if(item != NULL) {
            ${tickdata_name}._g147 = item->valueint;
        }
        // Receive _g147_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g147_e2");
        if(item != NULL) {
            ${tickdata_name}._g147_e2 = item->valueint;
        }
        // Receive _g148
        item = cJSON_GetObjectItemCaseSensitive(root, "_g148");
        if(item != NULL) {
            ${tickdata_name}._g148 = item->valueint;
        }
        // Receive _g149
        item = cJSON_GetObjectItemCaseSensitive(root, "_g149");
        if(item != NULL) {
            ${tickdata_name}._g149 = item->valueint;
        }
        // Receive _g15
        item = cJSON_GetObjectItemCaseSensitive(root, "_g15");
        if(item != NULL) {
            ${tickdata_name}._g15 = item->valueint;
        }
        // Receive _g150
        item = cJSON_GetObjectItemCaseSensitive(root, "_g150");
        if(item != NULL) {
            ${tickdata_name}._g150 = item->valueint;
        }
        // Receive _g151
        item = cJSON_GetObjectItemCaseSensitive(root, "_g151");
        if(item != NULL) {
            ${tickdata_name}._g151 = item->valueint;
        }
        // Receive _g152
        item = cJSON_GetObjectItemCaseSensitive(root, "_g152");
        if(item != NULL) {
            ${tickdata_name}._g152 = item->valueint;
        }
        // Receive _g156
        item = cJSON_GetObjectItemCaseSensitive(root, "_g156");
        if(item != NULL) {
            ${tickdata_name}._g156 = item->valueint;
        }
        // Receive _g157
        item = cJSON_GetObjectItemCaseSensitive(root, "_g157");
        if(item != NULL) {
            ${tickdata_name}._g157 = item->valueint;
        }
        // Receive _g159
        item = cJSON_GetObjectItemCaseSensitive(root, "_g159");
        if(item != NULL) {
            ${tickdata_name}._g159 = item->valueint;
        }
        // Receive _g16
        item = cJSON_GetObjectItemCaseSensitive(root, "_g16");
        if(item != NULL) {
            ${tickdata_name}._g16 = item->valueint;
        }
        // Receive _g160
        item = cJSON_GetObjectItemCaseSensitive(root, "_g160");
        if(item != NULL) {
            ${tickdata_name}._g160 = item->valueint;
        }
        // Receive _g161
        item = cJSON_GetObjectItemCaseSensitive(root, "_g161");
        if(item != NULL) {
            ${tickdata_name}._g161 = item->valueint;
        }
        // Receive _g161_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g161_e1");
        if(item != NULL) {
            ${tickdata_name}._g161_e1 = item->valueint;
        }
        // Receive _g162
        item = cJSON_GetObjectItemCaseSensitive(root, "_g162");
        if(item != NULL) {
            ${tickdata_name}._g162 = item->valueint;
        }
        // Receive _g163
        item = cJSON_GetObjectItemCaseSensitive(root, "_g163");
        if(item != NULL) {
            ${tickdata_name}._g163 = item->valueint;
        }
        // Receive _g164
        item = cJSON_GetObjectItemCaseSensitive(root, "_g164");
        if(item != NULL) {
            ${tickdata_name}._g164 = item->valueint;
        }
        // Receive _g165
        item = cJSON_GetObjectItemCaseSensitive(root, "_g165");
        if(item != NULL) {
            ${tickdata_name}._g165 = item->valueint;
        }
        // Receive _g166
        item = cJSON_GetObjectItemCaseSensitive(root, "_g166");
        if(item != NULL) {
            ${tickdata_name}._g166 = item->valueint;
        }
        // Receive _g169
        item = cJSON_GetObjectItemCaseSensitive(root, "_g169");
        if(item != NULL) {
            ${tickdata_name}._g169 = item->valueint;
        }
        // Receive _g170
        item = cJSON_GetObjectItemCaseSensitive(root, "_g170");
        if(item != NULL) {
            ${tickdata_name}._g170 = item->valueint;
        }
        // Receive _g170_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g170_e2");
        if(item != NULL) {
            ${tickdata_name}._g170_e2 = item->valueint;
        }
        // Receive _g18
        item = cJSON_GetObjectItemCaseSensitive(root, "_g18");
        if(item != NULL) {
            ${tickdata_name}._g18 = item->valueint;
        }
        // Receive _g19
        item = cJSON_GetObjectItemCaseSensitive(root, "_g19");
        if(item != NULL) {
            ${tickdata_name}._g19 = item->valueint;
        }
        // Receive _g20
        item = cJSON_GetObjectItemCaseSensitive(root, "_g20");
        if(item != NULL) {
            ${tickdata_name}._g20 = item->valueint;
        }
        // Receive _g20_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g20_e2");
        if(item != NULL) {
            ${tickdata_name}._g20_e2 = item->valueint;
        }
        // Receive _g21
        item = cJSON_GetObjectItemCaseSensitive(root, "_g21");
        if(item != NULL) {
            ${tickdata_name}._g21 = item->valueint;
        }
        // Receive _g215
        item = cJSON_GetObjectItemCaseSensitive(root, "_g215");
        if(item != NULL) {
            ${tickdata_name}._g215 = item->valueint;
        }
        // Receive _g22
        item = cJSON_GetObjectItemCaseSensitive(root, "_g22");
        if(item != NULL) {
            ${tickdata_name}._g22 = item->valueint;
        }
        // Receive _g23
        item = cJSON_GetObjectItemCaseSensitive(root, "_g23");
        if(item != NULL) {
            ${tickdata_name}._g23 = item->valueint;
        }
        // Receive _g24
        item = cJSON_GetObjectItemCaseSensitive(root, "_g24");
        if(item != NULL) {
            ${tickdata_name}._g24 = item->valueint;
        }
        // Receive _g25
        item = cJSON_GetObjectItemCaseSensitive(root, "_g25");
        if(item != NULL) {
            ${tickdata_name}._g25 = item->valueint;
        }
        // Receive _g28
        item = cJSON_GetObjectItemCaseSensitive(root, "_g28");
        if(item != NULL) {
            ${tickdata_name}._g28 = item->valueint;
        }
        // Receive _g29
        item = cJSON_GetObjectItemCaseSensitive(root, "_g29");
        if(item != NULL) {
            ${tickdata_name}._g29 = item->valueint;
        }
        // Receive _g30
        item = cJSON_GetObjectItemCaseSensitive(root, "_g30");
        if(item != NULL) {
            ${tickdata_name}._g30 = item->valueint;
        }
        // Receive _g30_e3
        item = cJSON_GetObjectItemCaseSensitive(root, "_g30_e3");
        if(item != NULL) {
            ${tickdata_name}._g30_e3 = item->valueint;
        }
        // Receive _g31
        item = cJSON_GetObjectItemCaseSensitive(root, "_g31");
        if(item != NULL) {
            ${tickdata_name}._g31 = item->valueint;
        }
        // Receive _g32
        item = cJSON_GetObjectItemCaseSensitive(root, "_g32");
        if(item != NULL) {
            ${tickdata_name}._g32 = item->valueint;
        }
        // Receive _g33
        item = cJSON_GetObjectItemCaseSensitive(root, "_g33");
        if(item != NULL) {
            ${tickdata_name}._g33 = item->valueint;
        }
        // Receive _g34
        item = cJSON_GetObjectItemCaseSensitive(root, "_g34");
        if(item != NULL) {
            ${tickdata_name}._g34 = item->valueint;
        }
        // Receive _g35
        item = cJSON_GetObjectItemCaseSensitive(root, "_g35");
        if(item != NULL) {
            ${tickdata_name}._g35 = item->valueint;
        }
        // Receive _g36
        item = cJSON_GetObjectItemCaseSensitive(root, "_g36");
        if(item != NULL) {
            ${tickdata_name}._g36 = item->valueint;
        }
        // Receive _g37
        item = cJSON_GetObjectItemCaseSensitive(root, "_g37");
        if(item != NULL) {
            ${tickdata_name}._g37 = item->valueint;
        }
        // Receive _g38
        item = cJSON_GetObjectItemCaseSensitive(root, "_g38");
        if(item != NULL) {
            ${tickdata_name}._g38 = item->valueint;
        }
        // Receive _g4
        item = cJSON_GetObjectItemCaseSensitive(root, "_g4");
        if(item != NULL) {
            ${tickdata_name}._g4 = item->valueint;
        }
        // Receive _g40
        item = cJSON_GetObjectItemCaseSensitive(root, "_g40");
        if(item != NULL) {
            ${tickdata_name}._g40 = item->valueint;
        }
        // Receive _g41
        item = cJSON_GetObjectItemCaseSensitive(root, "_g41");
        if(item != NULL) {
            ${tickdata_name}._g41 = item->valueint;
        }
        // Receive _g42
        item = cJSON_GetObjectItemCaseSensitive(root, "_g42");
        if(item != NULL) {
            ${tickdata_name}._g42 = item->valueint;
        }
        // Receive _g43
        item = cJSON_GetObjectItemCaseSensitive(root, "_g43");
        if(item != NULL) {
            ${tickdata_name}._g43 = item->valueint;
        }
        // Receive _g44
        item = cJSON_GetObjectItemCaseSensitive(root, "_g44");
        if(item != NULL) {
            ${tickdata_name}._g44 = item->valueint;
        }
        // Receive _g48
        item = cJSON_GetObjectItemCaseSensitive(root, "_g48");
        if(item != NULL) {
            ${tickdata_name}._g48 = item->valueint;
        }
        // Receive _g49
        item = cJSON_GetObjectItemCaseSensitive(root, "_g49");
        if(item != NULL) {
            ${tickdata_name}._g49 = item->valueint;
        }
        // Receive _g5
        item = cJSON_GetObjectItemCaseSensitive(root, "_g5");
        if(item != NULL) {
            ${tickdata_name}._g5 = item->valueint;
        }
        // Receive _g50
        item = cJSON_GetObjectItemCaseSensitive(root, "_g50");
        if(item != NULL) {
            ${tickdata_name}._g50 = item->valueint;
        }
        // Receive _g51
        item = cJSON_GetObjectItemCaseSensitive(root, "_g51");
        if(item != NULL) {
            ${tickdata_name}._g51 = item->valueint;
        }
        // Receive _g53
        item = cJSON_GetObjectItemCaseSensitive(root, "_g53");
        if(item != NULL) {
            ${tickdata_name}._g53 = item->valueint;
        }
        // Receive _g54
        item = cJSON_GetObjectItemCaseSensitive(root, "_g54");
        if(item != NULL) {
            ${tickdata_name}._g54 = item->valueint;
        }
        // Receive _g55
        item = cJSON_GetObjectItemCaseSensitive(root, "_g55");
        if(item != NULL) {
            ${tickdata_name}._g55 = item->valueint;
        }
        // Receive _g55_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g55_e1");
        if(item != NULL) {
            ${tickdata_name}._g55_e1 = item->valueint;
        }
        // Receive _g56
        item = cJSON_GetObjectItemCaseSensitive(root, "_g56");
        if(item != NULL) {
            ${tickdata_name}._g56 = item->valueint;
        }
        // Receive _g57
        item = cJSON_GetObjectItemCaseSensitive(root, "_g57");
        if(item != NULL) {
            ${tickdata_name}._g57 = item->valueint;
        }
        // Receive _g58
        item = cJSON_GetObjectItemCaseSensitive(root, "_g58");
        if(item != NULL) {
            ${tickdata_name}._g58 = item->valueint;
        }
        // Receive _g59
        item = cJSON_GetObjectItemCaseSensitive(root, "_g59");
        if(item != NULL) {
            ${tickdata_name}._g59 = item->valueint;
        }
        // Receive _g6
        item = cJSON_GetObjectItemCaseSensitive(root, "_g6");
        if(item != NULL) {
            ${tickdata_name}._g6 = item->valueint;
        }
        // Receive _g60
        item = cJSON_GetObjectItemCaseSensitive(root, "_g60");
        if(item != NULL) {
            ${tickdata_name}._g60 = item->valueint;
        }
        // Receive _g63
        item = cJSON_GetObjectItemCaseSensitive(root, "_g63");
        if(item != NULL) {
            ${tickdata_name}._g63 = item->valueint;
        }
        // Receive _g64
        item = cJSON_GetObjectItemCaseSensitive(root, "_g64");
        if(item != NULL) {
            ${tickdata_name}._g64 = item->valueint;
        }
        // Receive _g65
        item = cJSON_GetObjectItemCaseSensitive(root, "_g65");
        if(item != NULL) {
            ${tickdata_name}._g65 = item->valueint;
        }
        // Receive _g65_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g65_e2");
        if(item != NULL) {
            ${tickdata_name}._g65_e2 = item->valueint;
        }
        // Receive _g66
        item = cJSON_GetObjectItemCaseSensitive(root, "_g66");
        if(item != NULL) {
            ${tickdata_name}._g66 = item->valueint;
        }
        // Receive _g67
        item = cJSON_GetObjectItemCaseSensitive(root, "_g67");
        if(item != NULL) {
            ${tickdata_name}._g67 = item->valueint;
        }
        // Receive _g68
        item = cJSON_GetObjectItemCaseSensitive(root, "_g68");
        if(item != NULL) {
            ${tickdata_name}._g68 = item->valueint;
        }
        // Receive _g69
        item = cJSON_GetObjectItemCaseSensitive(root, "_g69");
        if(item != NULL) {
            ${tickdata_name}._g69 = item->valueint;
        }
        // Receive _g7
        item = cJSON_GetObjectItemCaseSensitive(root, "_g7");
        if(item != NULL) {
            ${tickdata_name}._g7 = item->valueint;
        }
        // Receive _g70
        item = cJSON_GetObjectItemCaseSensitive(root, "_g70");
        if(item != NULL) {
            ${tickdata_name}._g70 = item->valueint;
        }
        // Receive _g74
        item = cJSON_GetObjectItemCaseSensitive(root, "_g74");
        if(item != NULL) {
            ${tickdata_name}._g74 = item->valueint;
        }
        // Receive _g75
        item = cJSON_GetObjectItemCaseSensitive(root, "_g75");
        if(item != NULL) {
            ${tickdata_name}._g75 = item->valueint;
        }
        // Receive _g76
        item = cJSON_GetObjectItemCaseSensitive(root, "_g76");
        if(item != NULL) {
            ${tickdata_name}._g76 = item->valueint;
        }
        // Receive _g78
        item = cJSON_GetObjectItemCaseSensitive(root, "_g78");
        if(item != NULL) {
            ${tickdata_name}._g78 = item->valueint;
        }
        // Receive _g80
        item = cJSON_GetObjectItemCaseSensitive(root, "_g80");
        if(item != NULL) {
            ${tickdata_name}._g80 = item->valueint;
        }
        // Receive _g81
        item = cJSON_GetObjectItemCaseSensitive(root, "_g81");
        if(item != NULL) {
            ${tickdata_name}._g81 = item->valueint;
        }
        // Receive _g82
        item = cJSON_GetObjectItemCaseSensitive(root, "_g82");
        if(item != NULL) {
            ${tickdata_name}._g82 = item->valueint;
        }
        // Receive _g83
        item = cJSON_GetObjectItemCaseSensitive(root, "_g83");
        if(item != NULL) {
            ${tickdata_name}._g83 = item->valueint;
        }
        // Receive _g83_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g83_e1");
        if(item != NULL) {
            ${tickdata_name}._g83_e1 = item->valueint;
        }
        // Receive _g84
        item = cJSON_GetObjectItemCaseSensitive(root, "_g84");
        if(item != NULL) {
            ${tickdata_name}._g84 = item->valueint;
        }
        // Receive _g86
        item = cJSON_GetObjectItemCaseSensitive(root, "_g86");
        if(item != NULL) {
            ${tickdata_name}._g86 = item->valueint;
        }
        // Receive _g87
        item = cJSON_GetObjectItemCaseSensitive(root, "_g87");
        if(item != NULL) {
            ${tickdata_name}._g87 = item->valueint;
        }
        // Receive _g9
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9");
        if(item != NULL) {
            ${tickdata_name}._g9 = item->valueint;
        }
        // Receive _g90
        item = cJSON_GetObjectItemCaseSensitive(root, "_g90");
        if(item != NULL) {
            ${tickdata_name}._g90 = item->valueint;
        }
        // Receive _g91
        item = cJSON_GetObjectItemCaseSensitive(root, "_g91");
        if(item != NULL) {
            ${tickdata_name}._g91 = item->valueint;
        }
        // Receive _g92
        item = cJSON_GetObjectItemCaseSensitive(root, "_g92");
        if(item != NULL) {
            ${tickdata_name}._g92 = item->valueint;
        }
        // Receive _g92_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g92_e2");
        if(item != NULL) {
            ${tickdata_name}._g92_e2 = item->valueint;
        }
        // Receive _g93
        item = cJSON_GetObjectItemCaseSensitive(root, "_g93");
        if(item != NULL) {
            ${tickdata_name}._g93 = item->valueint;
        }
        // Receive _g94
        item = cJSON_GetObjectItemCaseSensitive(root, "_g94");
        if(item != NULL) {
            ${tickdata_name}._g94 = item->valueint;
        }
        // Receive _g95
        item = cJSON_GetObjectItemCaseSensitive(root, "_g95");
        if(item != NULL) {
            ${tickdata_name}._g95 = item->valueint;
        }
        // Receive _g96
        item = cJSON_GetObjectItemCaseSensitive(root, "_g96");
        if(item != NULL) {
            ${tickdata_name}._g96 = item->valueint;
        }
        // Receive _g97
        item = cJSON_GetObjectItemCaseSensitive(root, "_g97");
        if(item != NULL) {
            ${tickdata_name}._g97 = item->valueint;
        }
        // Receive _g98
        item = cJSON_GetObjectItemCaseSensitive(root, "_g98");
        if(item != NULL) {
            ${tickdata_name}._g98 = item->valueint;
        }
        // Receive _g99
        item = cJSON_GetObjectItemCaseSensitive(root, "_g99");
        if(item != NULL) {
            ${tickdata_name}._g99 = item->valueint;
        }
        // Receive _pg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg112");
        if(item != NULL) {
            ${tickdata_name}._pg112 = item->valueint;
        }
        // Receive _pg11_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg11_e1");
        if(item != NULL) {
            ${tickdata_name}._pg11_e1 = item->valueint;
        }
        // Receive _pg12
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg12");
        if(item != NULL) {
            ${tickdata_name}._pg12 = item->valueint;
        }
        // Receive _pg124
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg124");
        if(item != NULL) {
            ${tickdata_name}._pg124 = item->valueint;
        }
        // Receive _pg125
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg125");
        if(item != NULL) {
            ${tickdata_name}._pg125 = item->valueint;
        }
        // Receive _pg126
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg126");
        if(item != NULL) {
            ${tickdata_name}._pg126 = item->valueint;
        }
        // Receive _pg132
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg132");
        if(item != NULL) {
            ${tickdata_name}._pg132 = item->valueint;
        }
        // Receive _pg137
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg137");
        if(item != NULL) {
            ${tickdata_name}._pg137 = item->valueint;
        }
        // Receive _pg138
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg138");
        if(item != NULL) {
            ${tickdata_name}._pg138 = item->valueint;
        }
        // Receive _pg140
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg140");
        if(item != NULL) {
            ${tickdata_name}._pg140 = item->valueint;
        }
        // Receive _pg141
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg141");
        if(item != NULL) {
            ${tickdata_name}._pg141 = item->valueint;
        }
        // Receive _pg147
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg147");
        if(item != NULL) {
            ${tickdata_name}._pg147 = item->valueint;
        }
        // Receive _pg147_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg147_e2");
        if(item != NULL) {
            ${tickdata_name}._pg147_e2 = item->valueint;
        }
        // Receive _pg15
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg15");
        if(item != NULL) {
            ${tickdata_name}._pg15 = item->valueint;
        }
        // Receive _pg150
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg150");
        if(item != NULL) {
            ${tickdata_name}._pg150 = item->valueint;
        }
        // Receive _pg151
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg151");
        if(item != NULL) {
            ${tickdata_name}._pg151 = item->valueint;
        }
        // Receive _pg152
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg152");
        if(item != NULL) {
            ${tickdata_name}._pg152 = item->valueint;
        }
        // Receive _pg156
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg156");
        if(item != NULL) {
            ${tickdata_name}._pg156 = item->valueint;
        }
        // Receive _pg162
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg162");
        if(item != NULL) {
            ${tickdata_name}._pg162 = item->valueint;
        }
        // Receive _pg164
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg164");
        if(item != NULL) {
            ${tickdata_name}._pg164 = item->valueint;
        }
        // Receive _pg165
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg165");
        if(item != NULL) {
            ${tickdata_name}._pg165 = item->valueint;
        }
        // Receive _pg21
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg21");
        if(item != NULL) {
            ${tickdata_name}._pg21 = item->valueint;
        }
        // Receive _pg23
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg23");
        if(item != NULL) {
            ${tickdata_name}._pg23 = item->valueint;
        }
        // Receive _pg24
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg24");
        if(item != NULL) {
            ${tickdata_name}._pg24 = item->valueint;
        }
        // Receive _pg35
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg35");
        if(item != NULL) {
            ${tickdata_name}._pg35 = item->valueint;
        }
        // Receive _pg54
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg54");
        if(item != NULL) {
            ${tickdata_name}._pg54 = item->valueint;
        }
        // Receive _pg56
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg56");
        if(item != NULL) {
            ${tickdata_name}._pg56 = item->valueint;
        }
        // Receive _pg59
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg59");
        if(item != NULL) {
            ${tickdata_name}._pg59 = item->valueint;
        }
        // Receive _pg65
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg65");
        if(item != NULL) {
            ${tickdata_name}._pg65 = item->valueint;
        }
        // Receive _pg92_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg92_e2");
        if(item != NULL) {
            ${tickdata_name}._pg92_e2 = item->valueint;
        }
        // Receive _pg95
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg95");
        if(item != NULL) {
            ${tickdata_name}._pg95 = item->valueint;
        }
        // Receive _pg96
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg96");
        if(item != NULL) {
            ${tickdata_name}._pg96 = item->valueint;
        }
        // Receive _pg98
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg98");
        if(item != NULL) {
            ${tickdata_name}._pg98 = item->valueint;
        }
        // Receive _taken_transitions
        item = cJSON_GetObjectItemCaseSensitive(root, "_taken_transitions");
        if(item != NULL) {
            for (int i0 = 0; i0 < cJSON_GetArraySize(item); i0++) {
                cJSON *item0 = cJSON_GetArrayItem(item, i0);
                ${tickdata_name}._taken_transitions[i0] = item0->valueint;
            }
        }
    }
  
    cJSON_Delete(root);
    free(buffer);
}

void sendVariables(int send_interface) {
    cJSON* root = cJSON_CreateObject();
    cJSON *array;
    
    // Send AS
    cJSON_AddItemToObject(root, "AS", cJSON_CreateBool(${tickdata_name}.AS));
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(${tickdata_name}.VS));
    // Send deltaT
    cJSON_AddItemToObject(root, "deltaT", cJSON_CreateNumber(${tickdata_name}.deltaT));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(${tickdata_name}.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(${tickdata_name}.VP));
    // Send sleepT
    cJSON_AddItemToObject(root, "sleepT", cJSON_CreateNumber(${tickdata_name}.sleepT));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send AEI_counter
    cJSON_AddItemToObject(root, "AEI_counter", cJSON_CreateNumber(${tickdata_name}.AEI_counter));
    // Send AVI_counter
    cJSON_AddItemToObject(root, "AVI_counter", cJSON_CreateNumber(${tickdata_name}.AVI_counter));
    // Send LRI_counter
    cJSON_AddItemToObject(root, "LRI_counter", cJSON_CreateNumber(${tickdata_name}.LRI_counter));
    // Send PVARP_counter
    cJSON_AddItemToObject(root, "PVARP_counter", cJSON_CreateNumber(${tickdata_name}.PVARP_counter));
    // Send URI_counter
    cJSON_AddItemToObject(root, "URI_counter", cJSON_CreateNumber(${tickdata_name}.URI_counter));
    // Send VRP_counter
    cJSON_AddItemToObject(root, "VRP_counter", cJSON_CreateNumber(${tickdata_name}.VRP_counter));
    // Send _DDDpacemaker_local_AEI_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AEI_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AEI_state));
    // Send _DDDpacemaker_local_AP_temp
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AP_temp", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AP_temp));
    // Send _DDDpacemaker_local_AR
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AR", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AR));
    // Send _DDDpacemaker_local_AVI_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AVI_state));
    // Send _DDDpacemaker_local_LRI_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_LRI_state));
    // Send _DDDpacemaker_local_PVARP_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_PVARP_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_PVARP_state));
    // Send _DDDpacemaker_local_URI_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_URI_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_URI_state));
    // Send _DDDpacemaker_local_VP_temp
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VP_temp", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_VP_temp));
    // Send _DDDpacemaker_local_VR
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VR", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_VR));
    // Send _DDDpacemaker_local_VRP_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VRP_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_VRP_state));
    // Send _DDDpacemaker_local__Atrig
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig));
    // Send _DDDpacemaker_local__Atrig1
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig1", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig1));
    // Send _DDDpacemaker_local__Atrig10
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig10", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig10));
    // Send _DDDpacemaker_local__Atrig11
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig11", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig11));
    // Send _DDDpacemaker_local__Atrig2
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig2", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig2));
    // Send _DDDpacemaker_local__Atrig3
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig3", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig3));
    // Send _DDDpacemaker_local__Atrig4
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig4", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig4));
    // Send _DDDpacemaker_local__Atrig5
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig5", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig5));
    // Send _DDDpacemaker_local__Atrig6
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig6", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig6));
    // Send _DDDpacemaker_local__Atrig7
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig7", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig7));
    // Send _DDDpacemaker_local__Atrig8
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig8", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig8));
    // Send _DDDpacemaker_local__Atrig9
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__Atrig9", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__Atrig9));
    // Send _DDDpacemaker_local__pre_AP_temp
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AP_temp", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AP_temp));
    // Send _DDDpacemaker_local__pre_VP_temp
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_VP_temp", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_VP_temp));
    // Send _DDDpacemaker_local__reg_AP_temp
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AP_temp", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AP_temp));
    // Send _DDDpacemaker_local__reg_VP_temp
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_VP_temp", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_VP_temp));
    // Send _DDDpacemaker_local_real_AS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_AS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_real_AS));
    // Send _DDDpacemaker_local_real_VS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_VS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_real_VS));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg10
    cJSON_AddItemToObject(root, "_cg10", cJSON_CreateBool(${tickdata_name}._cg10));
    // Send _cg103
    cJSON_AddItemToObject(root, "_cg103", cJSON_CreateBool(${tickdata_name}._cg103));
    // Send _cg106
    cJSON_AddItemToObject(root, "_cg106", cJSON_CreateBool(${tickdata_name}._cg106));
    // Send _cg107
    cJSON_AddItemToObject(root, "_cg107", cJSON_CreateBool(${tickdata_name}._cg107));
    // Send _cg110
    cJSON_AddItemToObject(root, "_cg110", cJSON_CreateBool(${tickdata_name}._cg110));
    // Send _cg111
    cJSON_AddItemToObject(root, "_cg111", cJSON_CreateBool(${tickdata_name}._cg111));
    // Send _cg113
    cJSON_AddItemToObject(root, "_cg113", cJSON_CreateBool(${tickdata_name}._cg113));
    // Send _cg116
    cJSON_AddItemToObject(root, "_cg116", cJSON_CreateBool(${tickdata_name}._cg116));
    // Send _cg119
    cJSON_AddItemToObject(root, "_cg119", cJSON_CreateBool(${tickdata_name}._cg119));
    // Send _cg122
    cJSON_AddItemToObject(root, "_cg122", cJSON_CreateBool(${tickdata_name}._cg122));
    // Send _cg124
    cJSON_AddItemToObject(root, "_cg124", cJSON_CreateBool(${tickdata_name}._cg124));
    // Send _cg127
    cJSON_AddItemToObject(root, "_cg127", cJSON_CreateBool(${tickdata_name}._cg127));
    // Send _cg132
    cJSON_AddItemToObject(root, "_cg132", cJSON_CreateBool(${tickdata_name}._cg132));
    // Send _cg135
    cJSON_AddItemToObject(root, "_cg135", cJSON_CreateBool(${tickdata_name}._cg135));
    // Send _cg136
    cJSON_AddItemToObject(root, "_cg136", cJSON_CreateBool(${tickdata_name}._cg136));
    // Send _cg14
    cJSON_AddItemToObject(root, "_cg14", cJSON_CreateBool(${tickdata_name}._cg14));
    // Send _cg140
    cJSON_AddItemToObject(root, "_cg140", cJSON_CreateBool(${tickdata_name}._cg140));
    // Send _cg145
    cJSON_AddItemToObject(root, "_cg145", cJSON_CreateBool(${tickdata_name}._cg145));
    // Send _cg148
    cJSON_AddItemToObject(root, "_cg148", cJSON_CreateBool(${tickdata_name}._cg148));
    // Send _cg150
    cJSON_AddItemToObject(root, "_cg150", cJSON_CreateBool(${tickdata_name}._cg150));
    // Send _cg156
    cJSON_AddItemToObject(root, "_cg156", cJSON_CreateBool(${tickdata_name}._cg156));
    // Send _cg159
    cJSON_AddItemToObject(root, "_cg159", cJSON_CreateBool(${tickdata_name}._cg159));
    // Send _cg160
    cJSON_AddItemToObject(root, "_cg160", cJSON_CreateBool(${tickdata_name}._cg160));
    // Send _cg164
    cJSON_AddItemToObject(root, "_cg164", cJSON_CreateBool(${tickdata_name}._cg164));
    // Send _cg169
    cJSON_AddItemToObject(root, "_cg169", cJSON_CreateBool(${tickdata_name}._cg169));
    // Send _cg18
    cJSON_AddItemToObject(root, "_cg18", cJSON_CreateBool(${tickdata_name}._cg18));
    // Send _cg19
    cJSON_AddItemToObject(root, "_cg19", cJSON_CreateBool(${tickdata_name}._cg19));
    // Send _cg23
    cJSON_AddItemToObject(root, "_cg23", cJSON_CreateBool(${tickdata_name}._cg23));
    // Send _cg28
    cJSON_AddItemToObject(root, "_cg28", cJSON_CreateBool(${tickdata_name}._cg28));
    // Send _cg31
    cJSON_AddItemToObject(root, "_cg31", cJSON_CreateBool(${tickdata_name}._cg31));
    // Send _cg33
    cJSON_AddItemToObject(root, "_cg33", cJSON_CreateBool(${tickdata_name}._cg33));
    // Send _cg35
    cJSON_AddItemToObject(root, "_cg35", cJSON_CreateBool(${tickdata_name}._cg35));
    // Send _cg37
    cJSON_AddItemToObject(root, "_cg37", cJSON_CreateBool(${tickdata_name}._cg37));
    // Send _cg4
    cJSON_AddItemToObject(root, "_cg4", cJSON_CreateBool(${tickdata_name}._cg4));
    // Send _cg40
    cJSON_AddItemToObject(root, "_cg40", cJSON_CreateBool(${tickdata_name}._cg40));
    // Send _cg42
    cJSON_AddItemToObject(root, "_cg42", cJSON_CreateBool(${tickdata_name}._cg42));
    // Send _cg48
    cJSON_AddItemToObject(root, "_cg48", cJSON_CreateBool(${tickdata_name}._cg48));
    // Send _cg50
    cJSON_AddItemToObject(root, "_cg50", cJSON_CreateBool(${tickdata_name}._cg50));
    // Send _cg53
    cJSON_AddItemToObject(root, "_cg53", cJSON_CreateBool(${tickdata_name}._cg53));
    // Send _cg54
    cJSON_AddItemToObject(root, "_cg54", cJSON_CreateBool(${tickdata_name}._cg54));
    // Send _cg58
    cJSON_AddItemToObject(root, "_cg58", cJSON_CreateBool(${tickdata_name}._cg58));
    // Send _cg6
    cJSON_AddItemToObject(root, "_cg6", cJSON_CreateBool(${tickdata_name}._cg6));
    // Send _cg63
    cJSON_AddItemToObject(root, "_cg63", cJSON_CreateBool(${tickdata_name}._cg63));
    // Send _cg66
    cJSON_AddItemToObject(root, "_cg66", cJSON_CreateBool(${tickdata_name}._cg66));
    // Send _cg68
    cJSON_AddItemToObject(root, "_cg68", cJSON_CreateBool(${tickdata_name}._cg68));
    // Send _cg74
    cJSON_AddItemToObject(root, "_cg74", cJSON_CreateBool(${tickdata_name}._cg74));
    // Send _cg77
    cJSON_AddItemToObject(root, "_cg77", cJSON_CreateBool(${tickdata_name}._cg77));
    // Send _cg78
    cJSON_AddItemToObject(root, "_cg78", cJSON_CreateBool(${tickdata_name}._cg78));
    // Send _cg81
    cJSON_AddItemToObject(root, "_cg81", cJSON_CreateBool(${tickdata_name}._cg81));
    // Send _cg82
    cJSON_AddItemToObject(root, "_cg82", cJSON_CreateBool(${tickdata_name}._cg82));
    // Send _cg84
    cJSON_AddItemToObject(root, "_cg84", cJSON_CreateBool(${tickdata_name}._cg84));
    // Send _cg87
    cJSON_AddItemToObject(root, "_cg87", cJSON_CreateBool(${tickdata_name}._cg87));
    // Send _cg9
    cJSON_AddItemToObject(root, "_cg9", cJSON_CreateBool(${tickdata_name}._cg9));
    // Send _cg90
    cJSON_AddItemToObject(root, "_cg90", cJSON_CreateBool(${tickdata_name}._cg90));
    // Send _cg93
    cJSON_AddItemToObject(root, "_cg93", cJSON_CreateBool(${tickdata_name}._cg93));
    // Send _cg95
    cJSON_AddItemToObject(root, "_cg95", cJSON_CreateBool(${tickdata_name}._cg95));
    // Send _cg98
    cJSON_AddItemToObject(root, "_cg98", cJSON_CreateBool(${tickdata_name}._cg98));
    // Send _g10
    cJSON_AddItemToObject(root, "_g10", cJSON_CreateBool(${tickdata_name}._g10));
    // Send _g103
    cJSON_AddItemToObject(root, "_g103", cJSON_CreateBool(${tickdata_name}._g103));
    // Send _g104
    cJSON_AddItemToObject(root, "_g104", cJSON_CreateBool(${tickdata_name}._g104));
    // Send _g105
    cJSON_AddItemToObject(root, "_g105", cJSON_CreateBool(${tickdata_name}._g105));
    // Send _g107
    cJSON_AddItemToObject(root, "_g107", cJSON_CreateBool(${tickdata_name}._g107));
    // Send _g109
    cJSON_AddItemToObject(root, "_g109", cJSON_CreateBool(${tickdata_name}._g109));
    // Send _g11
    cJSON_AddItemToObject(root, "_g11", cJSON_CreateBool(${tickdata_name}._g11));
    // Send _g110
    cJSON_AddItemToObject(root, "_g110", cJSON_CreateBool(${tickdata_name}._g110));
    // Send _g111
    cJSON_AddItemToObject(root, "_g111", cJSON_CreateBool(${tickdata_name}._g111));
    // Send _g112
    cJSON_AddItemToObject(root, "_g112", cJSON_CreateBool(${tickdata_name}._g112));
    // Send _g112_e1
    cJSON_AddItemToObject(root, "_g112_e1", cJSON_CreateBool(${tickdata_name}._g112_e1));
    // Send _g113
    cJSON_AddItemToObject(root, "_g113", cJSON_CreateBool(${tickdata_name}._g113));
    // Send _g115
    cJSON_AddItemToObject(root, "_g115", cJSON_CreateBool(${tickdata_name}._g115));
    // Send _g116
    cJSON_AddItemToObject(root, "_g116", cJSON_CreateBool(${tickdata_name}._g116));
    // Send _g119
    cJSON_AddItemToObject(root, "_g119", cJSON_CreateBool(${tickdata_name}._g119));
    // Send _g11_e1
    cJSON_AddItemToObject(root, "_g11_e1", cJSON_CreateBool(${tickdata_name}._g11_e1));
    // Send _g12
    cJSON_AddItemToObject(root, "_g12", cJSON_CreateBool(${tickdata_name}._g12));
    // Send _g120
    cJSON_AddItemToObject(root, "_g120", cJSON_CreateBool(${tickdata_name}._g120));
    // Send _g121
    cJSON_AddItemToObject(root, "_g121", cJSON_CreateBool(${tickdata_name}._g121));
    // Send _g121_e2
    cJSON_AddItemToObject(root, "_g121_e2", cJSON_CreateBool(${tickdata_name}._g121_e2));
    // Send _g122
    cJSON_AddItemToObject(root, "_g122", cJSON_CreateBool(${tickdata_name}._g122));
    // Send _g123
    cJSON_AddItemToObject(root, "_g123", cJSON_CreateBool(${tickdata_name}._g123));
    // Send _g124
    cJSON_AddItemToObject(root, "_g124", cJSON_CreateBool(${tickdata_name}._g124));
    // Send _g125
    cJSON_AddItemToObject(root, "_g125", cJSON_CreateBool(${tickdata_name}._g125));
    // Send _g126
    cJSON_AddItemToObject(root, "_g126", cJSON_CreateBool(${tickdata_name}._g126));
    // Send _g127
    cJSON_AddItemToObject(root, "_g127", cJSON_CreateBool(${tickdata_name}._g127));
    // Send _g128
    cJSON_AddItemToObject(root, "_g128", cJSON_CreateBool(${tickdata_name}._g128));
    // Send _g13
    cJSON_AddItemToObject(root, "_g13", cJSON_CreateBool(${tickdata_name}._g13));
    // Send _g132
    cJSON_AddItemToObject(root, "_g132", cJSON_CreateBool(${tickdata_name}._g132));
    // Send _g133
    cJSON_AddItemToObject(root, "_g133", cJSON_CreateBool(${tickdata_name}._g133));
    // Send _g135
    cJSON_AddItemToObject(root, "_g135", cJSON_CreateBool(${tickdata_name}._g135));
    // Send _g136
    cJSON_AddItemToObject(root, "_g136", cJSON_CreateBool(${tickdata_name}._g136));
    // Send _g137
    cJSON_AddItemToObject(root, "_g137", cJSON_CreateBool(${tickdata_name}._g137));
    // Send _g137_e1
    cJSON_AddItemToObject(root, "_g137_e1", cJSON_CreateBool(${tickdata_name}._g137_e1));
    // Send _g138
    cJSON_AddItemToObject(root, "_g138", cJSON_CreateBool(${tickdata_name}._g138));
    // Send _g139
    cJSON_AddItemToObject(root, "_g139", cJSON_CreateBool(${tickdata_name}._g139));
    // Send _g14
    cJSON_AddItemToObject(root, "_g14", cJSON_CreateBool(${tickdata_name}._g14));
    // Send _g140
    cJSON_AddItemToObject(root, "_g140", cJSON_CreateBool(${tickdata_name}._g140));
    // Send _g141
    cJSON_AddItemToObject(root, "_g141", cJSON_CreateBool(${tickdata_name}._g141));
    // Send _g142
    cJSON_AddItemToObject(root, "_g142", cJSON_CreateBool(${tickdata_name}._g142));
    // Send _g145
    cJSON_AddItemToObject(root, "_g145", cJSON_CreateBool(${tickdata_name}._g145));
    // Send _g146
    cJSON_AddItemToObject(root, "_g146", cJSON_CreateBool(${tickdata_name}._g146));
    // Send _g147
    cJSON_AddItemToObject(root, "_g147", cJSON_CreateBool(${tickdata_name}._g147));
    // Send _g147_e2
    cJSON_AddItemToObject(root, "_g147_e2", cJSON_CreateBool(${tickdata_name}._g147_e2));
    // Send _g148
    cJSON_AddItemToObject(root, "_g148", cJSON_CreateBool(${tickdata_name}._g148));
    // Send _g149
    cJSON_AddItemToObject(root, "_g149", cJSON_CreateBool(${tickdata_name}._g149));
    // Send _g15
    cJSON_AddItemToObject(root, "_g15", cJSON_CreateBool(${tickdata_name}._g15));
    // Send _g150
    cJSON_AddItemToObject(root, "_g150", cJSON_CreateBool(${tickdata_name}._g150));
    // Send _g151
    cJSON_AddItemToObject(root, "_g151", cJSON_CreateBool(${tickdata_name}._g151));
    // Send _g152
    cJSON_AddItemToObject(root, "_g152", cJSON_CreateBool(${tickdata_name}._g152));
    // Send _g156
    cJSON_AddItemToObject(root, "_g156", cJSON_CreateBool(${tickdata_name}._g156));
    // Send _g157
    cJSON_AddItemToObject(root, "_g157", cJSON_CreateBool(${tickdata_name}._g157));
    // Send _g159
    cJSON_AddItemToObject(root, "_g159", cJSON_CreateBool(${tickdata_name}._g159));
    // Send _g16
    cJSON_AddItemToObject(root, "_g16", cJSON_CreateBool(${tickdata_name}._g16));
    // Send _g160
    cJSON_AddItemToObject(root, "_g160", cJSON_CreateBool(${tickdata_name}._g160));
    // Send _g161
    cJSON_AddItemToObject(root, "_g161", cJSON_CreateBool(${tickdata_name}._g161));
    // Send _g161_e1
    cJSON_AddItemToObject(root, "_g161_e1", cJSON_CreateBool(${tickdata_name}._g161_e1));
    // Send _g162
    cJSON_AddItemToObject(root, "_g162", cJSON_CreateBool(${tickdata_name}._g162));
    // Send _g163
    cJSON_AddItemToObject(root, "_g163", cJSON_CreateBool(${tickdata_name}._g163));
    // Send _g164
    cJSON_AddItemToObject(root, "_g164", cJSON_CreateBool(${tickdata_name}._g164));
    // Send _g165
    cJSON_AddItemToObject(root, "_g165", cJSON_CreateBool(${tickdata_name}._g165));
    // Send _g166
    cJSON_AddItemToObject(root, "_g166", cJSON_CreateBool(${tickdata_name}._g166));
    // Send _g169
    cJSON_AddItemToObject(root, "_g169", cJSON_CreateBool(${tickdata_name}._g169));
    // Send _g170
    cJSON_AddItemToObject(root, "_g170", cJSON_CreateBool(${tickdata_name}._g170));
    // Send _g170_e2
    cJSON_AddItemToObject(root, "_g170_e2", cJSON_CreateBool(${tickdata_name}._g170_e2));
    // Send _g18
    cJSON_AddItemToObject(root, "_g18", cJSON_CreateBool(${tickdata_name}._g18));
    // Send _g19
    cJSON_AddItemToObject(root, "_g19", cJSON_CreateBool(${tickdata_name}._g19));
    // Send _g20
    cJSON_AddItemToObject(root, "_g20", cJSON_CreateBool(${tickdata_name}._g20));
    // Send _g20_e2
    cJSON_AddItemToObject(root, "_g20_e2", cJSON_CreateBool(${tickdata_name}._g20_e2));
    // Send _g21
    cJSON_AddItemToObject(root, "_g21", cJSON_CreateBool(${tickdata_name}._g21));
    // Send _g215
    cJSON_AddItemToObject(root, "_g215", cJSON_CreateBool(${tickdata_name}._g215));
    // Send _g22
    cJSON_AddItemToObject(root, "_g22", cJSON_CreateBool(${tickdata_name}._g22));
    // Send _g23
    cJSON_AddItemToObject(root, "_g23", cJSON_CreateBool(${tickdata_name}._g23));
    // Send _g24
    cJSON_AddItemToObject(root, "_g24", cJSON_CreateBool(${tickdata_name}._g24));
    // Send _g25
    cJSON_AddItemToObject(root, "_g25", cJSON_CreateBool(${tickdata_name}._g25));
    // Send _g28
    cJSON_AddItemToObject(root, "_g28", cJSON_CreateBool(${tickdata_name}._g28));
    // Send _g29
    cJSON_AddItemToObject(root, "_g29", cJSON_CreateBool(${tickdata_name}._g29));
    // Send _g30
    cJSON_AddItemToObject(root, "_g30", cJSON_CreateBool(${tickdata_name}._g30));
    // Send _g30_e3
    cJSON_AddItemToObject(root, "_g30_e3", cJSON_CreateBool(${tickdata_name}._g30_e3));
    // Send _g31
    cJSON_AddItemToObject(root, "_g31", cJSON_CreateBool(${tickdata_name}._g31));
    // Send _g32
    cJSON_AddItemToObject(root, "_g32", cJSON_CreateBool(${tickdata_name}._g32));
    // Send _g33
    cJSON_AddItemToObject(root, "_g33", cJSON_CreateBool(${tickdata_name}._g33));
    // Send _g34
    cJSON_AddItemToObject(root, "_g34", cJSON_CreateBool(${tickdata_name}._g34));
    // Send _g35
    cJSON_AddItemToObject(root, "_g35", cJSON_CreateBool(${tickdata_name}._g35));
    // Send _g36
    cJSON_AddItemToObject(root, "_g36", cJSON_CreateBool(${tickdata_name}._g36));
    // Send _g37
    cJSON_AddItemToObject(root, "_g37", cJSON_CreateBool(${tickdata_name}._g37));
    // Send _g38
    cJSON_AddItemToObject(root, "_g38", cJSON_CreateBool(${tickdata_name}._g38));
    // Send _g4
    cJSON_AddItemToObject(root, "_g4", cJSON_CreateBool(${tickdata_name}._g4));
    // Send _g40
    cJSON_AddItemToObject(root, "_g40", cJSON_CreateBool(${tickdata_name}._g40));
    // Send _g41
    cJSON_AddItemToObject(root, "_g41", cJSON_CreateBool(${tickdata_name}._g41));
    // Send _g42
    cJSON_AddItemToObject(root, "_g42", cJSON_CreateBool(${tickdata_name}._g42));
    // Send _g43
    cJSON_AddItemToObject(root, "_g43", cJSON_CreateBool(${tickdata_name}._g43));
    // Send _g44
    cJSON_AddItemToObject(root, "_g44", cJSON_CreateBool(${tickdata_name}._g44));
    // Send _g48
    cJSON_AddItemToObject(root, "_g48", cJSON_CreateBool(${tickdata_name}._g48));
    // Send _g49
    cJSON_AddItemToObject(root, "_g49", cJSON_CreateBool(${tickdata_name}._g49));
    // Send _g5
    cJSON_AddItemToObject(root, "_g5", cJSON_CreateBool(${tickdata_name}._g5));
    // Send _g50
    cJSON_AddItemToObject(root, "_g50", cJSON_CreateBool(${tickdata_name}._g50));
    // Send _g51
    cJSON_AddItemToObject(root, "_g51", cJSON_CreateBool(${tickdata_name}._g51));
    // Send _g53
    cJSON_AddItemToObject(root, "_g53", cJSON_CreateBool(${tickdata_name}._g53));
    // Send _g54
    cJSON_AddItemToObject(root, "_g54", cJSON_CreateBool(${tickdata_name}._g54));
    // Send _g55
    cJSON_AddItemToObject(root, "_g55", cJSON_CreateBool(${tickdata_name}._g55));
    // Send _g55_e1
    cJSON_AddItemToObject(root, "_g55_e1", cJSON_CreateBool(${tickdata_name}._g55_e1));
    // Send _g56
    cJSON_AddItemToObject(root, "_g56", cJSON_CreateBool(${tickdata_name}._g56));
    // Send _g57
    cJSON_AddItemToObject(root, "_g57", cJSON_CreateBool(${tickdata_name}._g57));
    // Send _g58
    cJSON_AddItemToObject(root, "_g58", cJSON_CreateBool(${tickdata_name}._g58));
    // Send _g59
    cJSON_AddItemToObject(root, "_g59", cJSON_CreateBool(${tickdata_name}._g59));
    // Send _g6
    cJSON_AddItemToObject(root, "_g6", cJSON_CreateBool(${tickdata_name}._g6));
    // Send _g60
    cJSON_AddItemToObject(root, "_g60", cJSON_CreateBool(${tickdata_name}._g60));
    // Send _g63
    cJSON_AddItemToObject(root, "_g63", cJSON_CreateBool(${tickdata_name}._g63));
    // Send _g64
    cJSON_AddItemToObject(root, "_g64", cJSON_CreateBool(${tickdata_name}._g64));
    // Send _g65
    cJSON_AddItemToObject(root, "_g65", cJSON_CreateBool(${tickdata_name}._g65));
    // Send _g65_e2
    cJSON_AddItemToObject(root, "_g65_e2", cJSON_CreateBool(${tickdata_name}._g65_e2));
    // Send _g66
    cJSON_AddItemToObject(root, "_g66", cJSON_CreateBool(${tickdata_name}._g66));
    // Send _g67
    cJSON_AddItemToObject(root, "_g67", cJSON_CreateBool(${tickdata_name}._g67));
    // Send _g68
    cJSON_AddItemToObject(root, "_g68", cJSON_CreateBool(${tickdata_name}._g68));
    // Send _g69
    cJSON_AddItemToObject(root, "_g69", cJSON_CreateBool(${tickdata_name}._g69));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g70
    cJSON_AddItemToObject(root, "_g70", cJSON_CreateBool(${tickdata_name}._g70));
    // Send _g74
    cJSON_AddItemToObject(root, "_g74", cJSON_CreateBool(${tickdata_name}._g74));
    // Send _g75
    cJSON_AddItemToObject(root, "_g75", cJSON_CreateBool(${tickdata_name}._g75));
    // Send _g76
    cJSON_AddItemToObject(root, "_g76", cJSON_CreateBool(${tickdata_name}._g76));
    // Send _g78
    cJSON_AddItemToObject(root, "_g78", cJSON_CreateBool(${tickdata_name}._g78));
    // Send _g80
    cJSON_AddItemToObject(root, "_g80", cJSON_CreateBool(${tickdata_name}._g80));
    // Send _g81
    cJSON_AddItemToObject(root, "_g81", cJSON_CreateBool(${tickdata_name}._g81));
    // Send _g82
    cJSON_AddItemToObject(root, "_g82", cJSON_CreateBool(${tickdata_name}._g82));
    // Send _g83
    cJSON_AddItemToObject(root, "_g83", cJSON_CreateBool(${tickdata_name}._g83));
    // Send _g83_e1
    cJSON_AddItemToObject(root, "_g83_e1", cJSON_CreateBool(${tickdata_name}._g83_e1));
    // Send _g84
    cJSON_AddItemToObject(root, "_g84", cJSON_CreateBool(${tickdata_name}._g84));
    // Send _g86
    cJSON_AddItemToObject(root, "_g86", cJSON_CreateBool(${tickdata_name}._g86));
    // Send _g87
    cJSON_AddItemToObject(root, "_g87", cJSON_CreateBool(${tickdata_name}._g87));
    // Send _g9
    cJSON_AddItemToObject(root, "_g9", cJSON_CreateBool(${tickdata_name}._g9));
    // Send _g90
    cJSON_AddItemToObject(root, "_g90", cJSON_CreateBool(${tickdata_name}._g90));
    // Send _g91
    cJSON_AddItemToObject(root, "_g91", cJSON_CreateBool(${tickdata_name}._g91));
    // Send _g92
    cJSON_AddItemToObject(root, "_g92", cJSON_CreateBool(${tickdata_name}._g92));
    // Send _g92_e2
    cJSON_AddItemToObject(root, "_g92_e2", cJSON_CreateBool(${tickdata_name}._g92_e2));
    // Send _g93
    cJSON_AddItemToObject(root, "_g93", cJSON_CreateBool(${tickdata_name}._g93));
    // Send _g94
    cJSON_AddItemToObject(root, "_g94", cJSON_CreateBool(${tickdata_name}._g94));
    // Send _g95
    cJSON_AddItemToObject(root, "_g95", cJSON_CreateBool(${tickdata_name}._g95));
    // Send _g96
    cJSON_AddItemToObject(root, "_g96", cJSON_CreateBool(${tickdata_name}._g96));
    // Send _g97
    cJSON_AddItemToObject(root, "_g97", cJSON_CreateBool(${tickdata_name}._g97));
    // Send _g98
    cJSON_AddItemToObject(root, "_g98", cJSON_CreateBool(${tickdata_name}._g98));
    // Send _g99
    cJSON_AddItemToObject(root, "_g99", cJSON_CreateBool(${tickdata_name}._g99));
    // Send _pg112
    cJSON_AddItemToObject(root, "_pg112", cJSON_CreateBool(${tickdata_name}._pg112));
    // Send _pg11_e1
    cJSON_AddItemToObject(root, "_pg11_e1", cJSON_CreateBool(${tickdata_name}._pg11_e1));
    // Send _pg12
    cJSON_AddItemToObject(root, "_pg12", cJSON_CreateBool(${tickdata_name}._pg12));
    // Send _pg124
    cJSON_AddItemToObject(root, "_pg124", cJSON_CreateBool(${tickdata_name}._pg124));
    // Send _pg125
    cJSON_AddItemToObject(root, "_pg125", cJSON_CreateBool(${tickdata_name}._pg125));
    // Send _pg126
    cJSON_AddItemToObject(root, "_pg126", cJSON_CreateBool(${tickdata_name}._pg126));
    // Send _pg132
    cJSON_AddItemToObject(root, "_pg132", cJSON_CreateBool(${tickdata_name}._pg132));
    // Send _pg137
    cJSON_AddItemToObject(root, "_pg137", cJSON_CreateBool(${tickdata_name}._pg137));
    // Send _pg138
    cJSON_AddItemToObject(root, "_pg138", cJSON_CreateBool(${tickdata_name}._pg138));
    // Send _pg140
    cJSON_AddItemToObject(root, "_pg140", cJSON_CreateBool(${tickdata_name}._pg140));
    // Send _pg141
    cJSON_AddItemToObject(root, "_pg141", cJSON_CreateBool(${tickdata_name}._pg141));
    // Send _pg147
    cJSON_AddItemToObject(root, "_pg147", cJSON_CreateBool(${tickdata_name}._pg147));
    // Send _pg147_e2
    cJSON_AddItemToObject(root, "_pg147_e2", cJSON_CreateBool(${tickdata_name}._pg147_e2));
    // Send _pg15
    cJSON_AddItemToObject(root, "_pg15", cJSON_CreateBool(${tickdata_name}._pg15));
    // Send _pg150
    cJSON_AddItemToObject(root, "_pg150", cJSON_CreateBool(${tickdata_name}._pg150));
    // Send _pg151
    cJSON_AddItemToObject(root, "_pg151", cJSON_CreateBool(${tickdata_name}._pg151));
    // Send _pg152
    cJSON_AddItemToObject(root, "_pg152", cJSON_CreateBool(${tickdata_name}._pg152));
    // Send _pg156
    cJSON_AddItemToObject(root, "_pg156", cJSON_CreateBool(${tickdata_name}._pg156));
    // Send _pg162
    cJSON_AddItemToObject(root, "_pg162", cJSON_CreateBool(${tickdata_name}._pg162));
    // Send _pg164
    cJSON_AddItemToObject(root, "_pg164", cJSON_CreateBool(${tickdata_name}._pg164));
    // Send _pg165
    cJSON_AddItemToObject(root, "_pg165", cJSON_CreateBool(${tickdata_name}._pg165));
    // Send _pg21
    cJSON_AddItemToObject(root, "_pg21", cJSON_CreateBool(${tickdata_name}._pg21));
    // Send _pg23
    cJSON_AddItemToObject(root, "_pg23", cJSON_CreateBool(${tickdata_name}._pg23));
    // Send _pg24
    cJSON_AddItemToObject(root, "_pg24", cJSON_CreateBool(${tickdata_name}._pg24));
    // Send _pg35
    cJSON_AddItemToObject(root, "_pg35", cJSON_CreateBool(${tickdata_name}._pg35));
    // Send _pg54
    cJSON_AddItemToObject(root, "_pg54", cJSON_CreateBool(${tickdata_name}._pg54));
    // Send _pg56
    cJSON_AddItemToObject(root, "_pg56", cJSON_CreateBool(${tickdata_name}._pg56));
    // Send _pg59
    cJSON_AddItemToObject(root, "_pg59", cJSON_CreateBool(${tickdata_name}._pg59));
    // Send _pg65
    cJSON_AddItemToObject(root, "_pg65", cJSON_CreateBool(${tickdata_name}._pg65));
    // Send _pg92_e2
    cJSON_AddItemToObject(root, "_pg92_e2", cJSON_CreateBool(${tickdata_name}._pg92_e2));
    // Send _pg95
    cJSON_AddItemToObject(root, "_pg95", cJSON_CreateBool(${tickdata_name}._pg95));
    // Send _pg96
    cJSON_AddItemToObject(root, "_pg96", cJSON_CreateBool(${tickdata_name}._pg96));
    // Send _pg98
    cJSON_AddItemToObject(root, "_pg98", cJSON_CreateBool(${tickdata_name}._pg98));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 24; i0++) {
        cJSON *item0 = cJSON_CreateNumber(${tickdata_name}._taken_transitions[i0]);
        cJSON_AddItemToArray(array, item0);
    }
    cJSON_AddItemToObject(root, "_taken_transitions", array);
    
    if (send_interface) {
        cJSON *interface = cJSON_CreateObject();
        cJSON *info, *properties;
        
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "deltaT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "sleepT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("ticktime"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "#ticktime", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AEI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "LRI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "PVARP_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "URI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VRP_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AEI_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AP_temp", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AR", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_LRI_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_PVARP_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_URI_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_VP_temp", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_VR", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_VRP_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__Atrig9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_AP_temp", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_VP_temp", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_AP_temp", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_VP_temp", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_real_AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_real_VS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("goGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_GO", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("term"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_TERM", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg107", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg110", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg111", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg113", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg119", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg122", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg124", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg127", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg132", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg136", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg14", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg140", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg148", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg150", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg160", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg19", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg31", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg33", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg37", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg48", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg50", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg53", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg54", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg63", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg68", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg81", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg82", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg95", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g104", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g105", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g107", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g110", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g111", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g112_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g113", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g119", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g11_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g120", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g121_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g122", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g123", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g124", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g125", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g126", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g127", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g128", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g132", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g133", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g136", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g137", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g137_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g138", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g139", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g14", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g140", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g141", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g142", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g146", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g147", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g147_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g148", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g149", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g150", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g151", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g152", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g157", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g16", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g160", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g161", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g161_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g162", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g163", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g165", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g166", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g170", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g170_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g19", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g20", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g20_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g21", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g215", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g25", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g30", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g30_e3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g31", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g33", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g34", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g37", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g38", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g41", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g43", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g44", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g48", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g50", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g51", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g53", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g54", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g55", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g55_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g56", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g57", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g59", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g60", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g63", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g65", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g65_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g67", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g68", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g69", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g75", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g76", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g81", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g82", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g83", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g83_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g86", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g91", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g92", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g92_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g94", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g95", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g96", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g97", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g99", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg11_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg124", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg125", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg126", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg132", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg137", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg138", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg140", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg141", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg147", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg147_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg150", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg151", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg152", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg162", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg165", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg21", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg54", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg56", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg59", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg65", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg92_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg95", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg96", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("simulation"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_taken_transitions", info);
        
        cJSON_AddItemToObject(root, "#interface", interface);
    }

    // Get JSON object as string
    char* outString = cJSON_Print(root);
    cJSON_Minify(outString);
    // Flush to stdout
    printf("%s\n", outString);
    fflush(stdout);

    cJSON_Delete(root);
    free(outString);
}
</#macro>
