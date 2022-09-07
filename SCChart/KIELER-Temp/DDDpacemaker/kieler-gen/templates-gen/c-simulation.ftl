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
        // Receive AEI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "AEI_counter");
        if(item != NULL) {
            ${tickdata_name}.AEI_counter = item->valueint;
        }
        // Receive AS
        item = cJSON_GetObjectItemCaseSensitive(root, "AS");
        if(item != NULL) {
            ${tickdata_name}.AS = item->valueint;
        }
        // Receive AVI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_counter");
        if(item != NULL) {
            ${tickdata_name}.AVI_counter = item->valueint;
        }
        // Receive LRI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "LRI_counter");
        if(item != NULL) {
            ${tickdata_name}.LRI_counter = item->valueint;
        }
        // Receive PVARP_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "PVARP_counter");
        if(item != NULL) {
            ${tickdata_name}.PVARP_counter = item->valueint;
        }
        // Receive URI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "URI_counter");
        if(item != NULL) {
            ${tickdata_name}.URI_counter = item->valueint;
        }
        // Receive VRP_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "VRP_counter");
        if(item != NULL) {
            ${tickdata_name}.VRP_counter = item->valueint;
        }
        // Receive VS
        item = cJSON_GetObjectItemCaseSensitive(root, "VS");
        if(item != NULL) {
            ${tickdata_name}.VS = item->valueint;
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
        // Receive #ticktime
        item = cJSON_GetObjectItemCaseSensitive(root, "#ticktime");
        if(item != NULL) {
            _ticktime = item->valuedouble;
        }
        // Receive _DDDpacemaker_local_AEI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AEI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AEI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_AEI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AEI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AEI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_AR
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AR");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AR = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AVI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AVI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_reset
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_reset");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_LRI_reset = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_LRI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_LRI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_PVARP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_PVARP_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_PVARP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_PVARP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_PVARP_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_PVARP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_URI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_URI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_URI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_URI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_URI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_URI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_VR
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VR");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_VR = item->valueint;
        }
        // Receive _DDDpacemaker_local_VRP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VRP_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_VRP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_VRP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VRP_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_VRP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_AEI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_AEI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_AEI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_AEI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_AEI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_AEI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_AVI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_AVI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_AVI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_AVI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_AVI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_AVI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_LRI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_LRI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_LRI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_LRI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_LRI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_LRI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_PVARP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_PVARP_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_PVARP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_PVARP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_PVARP_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_PVARP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_URI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_URI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_URI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_URI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_URI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_URI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_VRP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_VRP_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_VRP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_VRP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_VRP_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_VRP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_real_AS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_real_AS");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_real_AS = item->valueint;
        }
        // Receive _DDDpacemaker_local__pre_real_VS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__pre_real_VS");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__pre_real_VS = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_AEI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_AEI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_AEI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_AEI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_AEI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_AEI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_AVI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_AVI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_AVI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_AVI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_AVI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_AVI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_LRI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_LRI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_LRI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_LRI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_LRI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_LRI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_PVARP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_PVARP_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_PVARP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_PVARP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_PVARP_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_PVARP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_URI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_URI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_URI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_URI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_URI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_URI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_VRP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_VRP_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_VRP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_VRP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_VRP_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_VRP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_real_AS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_real_AS");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_real_AS = item->valueint;
        }
        // Receive _DDDpacemaker_local__reg_real_VS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local__reg_real_VS");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local__reg_real_VS = item->valueint;
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
        // Receive _cg100
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg100");
        if(item != NULL) {
            ${tickdata_name}._cg100 = item->valueint;
        }
        // Receive _cg105
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg105");
        if(item != NULL) {
            ${tickdata_name}._cg105 = item->valueint;
        }
        // Receive _cg108
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg108");
        if(item != NULL) {
            ${tickdata_name}._cg108 = item->valueint;
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
        // Receive _cg12
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg12");
        if(item != NULL) {
            ${tickdata_name}._cg12 = item->valueint;
        }
        // Receive _cg14
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg14");
        if(item != NULL) {
            ${tickdata_name}._cg14 = item->valueint;
        }
        // Receive _cg16
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg16");
        if(item != NULL) {
            ${tickdata_name}._cg16 = item->valueint;
        }
        // Receive _cg21
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg21");
        if(item != NULL) {
            ${tickdata_name}._cg21 = item->valueint;
        }
        // Receive _cg24
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg24");
        if(item != NULL) {
            ${tickdata_name}._cg24 = item->valueint;
        }
        // Receive _cg29
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg29");
        if(item != NULL) {
            ${tickdata_name}._cg29 = item->valueint;
        }
        // Receive _cg32
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg32");
        if(item != NULL) {
            ${tickdata_name}._cg32 = item->valueint;
        }
        // Receive _cg34
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg34");
        if(item != NULL) {
            ${tickdata_name}._cg34 = item->valueint;
        }
        // Receive _cg39
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg39");
        if(item != NULL) {
            ${tickdata_name}._cg39 = item->valueint;
        }
        // Receive _cg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg4");
        if(item != NULL) {
            ${tickdata_name}._cg4 = item->valueint;
        }
        // Receive _cg42
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg42");
        if(item != NULL) {
            ${tickdata_name}._cg42 = item->valueint;
        }
        // Receive _cg47
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg47");
        if(item != NULL) {
            ${tickdata_name}._cg47 = item->valueint;
        }
        // Receive _cg50
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg50");
        if(item != NULL) {
            ${tickdata_name}._cg50 = item->valueint;
        }
        // Receive _cg52
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg52");
        if(item != NULL) {
            ${tickdata_name}._cg52 = item->valueint;
        }
        // Receive _cg54
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg54");
        if(item != NULL) {
            ${tickdata_name}._cg54 = item->valueint;
        }
        // Receive _cg59
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg59");
        if(item != NULL) {
            ${tickdata_name}._cg59 = item->valueint;
        }
        // Receive _cg62
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg62");
        if(item != NULL) {
            ${tickdata_name}._cg62 = item->valueint;
        }
        // Receive _cg67
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg67");
        if(item != NULL) {
            ${tickdata_name}._cg67 = item->valueint;
        }
        // Receive _cg7
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg7");
        if(item != NULL) {
            ${tickdata_name}._cg7 = item->valueint;
        }
        // Receive _cg70
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg70");
        if(item != NULL) {
            ${tickdata_name}._cg70 = item->valueint;
        }
        // Receive _cg72
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg72");
        if(item != NULL) {
            ${tickdata_name}._cg72 = item->valueint;
        }
        // Receive _cg74
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg74");
        if(item != NULL) {
            ${tickdata_name}._cg74 = item->valueint;
        }
        // Receive _cg79
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg79");
        if(item != NULL) {
            ${tickdata_name}._cg79 = item->valueint;
        }
        // Receive _cg82
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg82");
        if(item != NULL) {
            ${tickdata_name}._cg82 = item->valueint;
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
        // Receive _cg92
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg92");
        if(item != NULL) {
            ${tickdata_name}._cg92 = item->valueint;
        }
        // Receive _cg97
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg97");
        if(item != NULL) {
            ${tickdata_name}._cg97 = item->valueint;
        }
        // Receive _g10
        item = cJSON_GetObjectItemCaseSensitive(root, "_g10");
        if(item != NULL) {
            ${tickdata_name}._g10 = item->valueint;
        }
        // Receive _g100
        item = cJSON_GetObjectItemCaseSensitive(root, "_g100");
        if(item != NULL) {
            ${tickdata_name}._g100 = item->valueint;
        }
        // Receive _g101
        item = cJSON_GetObjectItemCaseSensitive(root, "_g101");
        if(item != NULL) {
            ${tickdata_name}._g101 = item->valueint;
        }
        // Receive _g105
        item = cJSON_GetObjectItemCaseSensitive(root, "_g105");
        if(item != NULL) {
            ${tickdata_name}._g105 = item->valueint;
        }
        // Receive _g106
        item = cJSON_GetObjectItemCaseSensitive(root, "_g106");
        if(item != NULL) {
            ${tickdata_name}._g106 = item->valueint;
        }
        // Receive _g108
        item = cJSON_GetObjectItemCaseSensitive(root, "_g108");
        if(item != NULL) {
            ${tickdata_name}._g108 = item->valueint;
        }
        // Receive _g109
        item = cJSON_GetObjectItemCaseSensitive(root, "_g109");
        if(item != NULL) {
            ${tickdata_name}._g109 = item->valueint;
        }
        // Receive _g113
        item = cJSON_GetObjectItemCaseSensitive(root, "_g113");
        if(item != NULL) {
            ${tickdata_name}._g113 = item->valueint;
        }
        // Receive _g116
        item = cJSON_GetObjectItemCaseSensitive(root, "_g116");
        if(item != NULL) {
            ${tickdata_name}._g116 = item->valueint;
        }
        // Receive _g117
        item = cJSON_GetObjectItemCaseSensitive(root, "_g117");
        if(item != NULL) {
            ${tickdata_name}._g117 = item->valueint;
        }
        // Receive _g12
        item = cJSON_GetObjectItemCaseSensitive(root, "_g12");
        if(item != NULL) {
            ${tickdata_name}._g12 = item->valueint;
        }
        // Receive _g13
        item = cJSON_GetObjectItemCaseSensitive(root, "_g13");
        if(item != NULL) {
            ${tickdata_name}._g13 = item->valueint;
        }
        // Receive _g133
        item = cJSON_GetObjectItemCaseSensitive(root, "_g133");
        if(item != NULL) {
            ${tickdata_name}._g133 = item->valueint;
        }
        // Receive _g14
        item = cJSON_GetObjectItemCaseSensitive(root, "_g14");
        if(item != NULL) {
            ${tickdata_name}._g14 = item->valueint;
        }
        // Receive _g141
        item = cJSON_GetObjectItemCaseSensitive(root, "_g141");
        if(item != NULL) {
            ${tickdata_name}._g141 = item->valueint;
        }
        // Receive _g15
        item = cJSON_GetObjectItemCaseSensitive(root, "_g15");
        if(item != NULL) {
            ${tickdata_name}._g15 = item->valueint;
        }
        // Receive _g153
        item = cJSON_GetObjectItemCaseSensitive(root, "_g153");
        if(item != NULL) {
            ${tickdata_name}._g153 = item->valueint;
        }
        // Receive _g157
        item = cJSON_GetObjectItemCaseSensitive(root, "_g157");
        if(item != NULL) {
            ${tickdata_name}._g157 = item->valueint;
        }
        // Receive _g16
        item = cJSON_GetObjectItemCaseSensitive(root, "_g16");
        if(item != NULL) {
            ${tickdata_name}._g16 = item->valueint;
        }
        // Receive _g165
        item = cJSON_GetObjectItemCaseSensitive(root, "_g165");
        if(item != NULL) {
            ${tickdata_name}._g165 = item->valueint;
        }
        // Receive _g169
        item = cJSON_GetObjectItemCaseSensitive(root, "_g169");
        if(item != NULL) {
            ${tickdata_name}._g169 = item->valueint;
        }
        // Receive _g17
        item = cJSON_GetObjectItemCaseSensitive(root, "_g17");
        if(item != NULL) {
            ${tickdata_name}._g17 = item->valueint;
        }
        // Receive _g173
        item = cJSON_GetObjectItemCaseSensitive(root, "_g173");
        if(item != NULL) {
            ${tickdata_name}._g173 = item->valueint;
        }
        // Receive _g21
        item = cJSON_GetObjectItemCaseSensitive(root, "_g21");
        if(item != NULL) {
            ${tickdata_name}._g21 = item->valueint;
        }
        // Receive _g22
        item = cJSON_GetObjectItemCaseSensitive(root, "_g22");
        if(item != NULL) {
            ${tickdata_name}._g22 = item->valueint;
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
        // Receive _g39
        item = cJSON_GetObjectItemCaseSensitive(root, "_g39");
        if(item != NULL) {
            ${tickdata_name}._g39 = item->valueint;
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
        // Receive _g46
        item = cJSON_GetObjectItemCaseSensitive(root, "_g46");
        if(item != NULL) {
            ${tickdata_name}._g46 = item->valueint;
        }
        // Receive _g47
        item = cJSON_GetObjectItemCaseSensitive(root, "_g47");
        if(item != NULL) {
            ${tickdata_name}._g47 = item->valueint;
        }
        // Receive _g48
        item = cJSON_GetObjectItemCaseSensitive(root, "_g48");
        if(item != NULL) {
            ${tickdata_name}._g48 = item->valueint;
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
        // Receive _g52
        item = cJSON_GetObjectItemCaseSensitive(root, "_g52");
        if(item != NULL) {
            ${tickdata_name}._g52 = item->valueint;
        }
        // Receive _g53
        item = cJSON_GetObjectItemCaseSensitive(root, "_g53");
        if(item != NULL) {
            ${tickdata_name}._g53 = item->valueint;
        }
        // Receive _g59
        item = cJSON_GetObjectItemCaseSensitive(root, "_g59");
        if(item != NULL) {
            ${tickdata_name}._g59 = item->valueint;
        }
        // Receive _g60
        item = cJSON_GetObjectItemCaseSensitive(root, "_g60");
        if(item != NULL) {
            ${tickdata_name}._g60 = item->valueint;
        }
        // Receive _g62
        item = cJSON_GetObjectItemCaseSensitive(root, "_g62");
        if(item != NULL) {
            ${tickdata_name}._g62 = item->valueint;
        }
        // Receive _g63
        item = cJSON_GetObjectItemCaseSensitive(root, "_g63");
        if(item != NULL) {
            ${tickdata_name}._g63 = item->valueint;
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
        // Receive _g71
        item = cJSON_GetObjectItemCaseSensitive(root, "_g71");
        if(item != NULL) {
            ${tickdata_name}._g71 = item->valueint;
        }
        // Receive _g72
        item = cJSON_GetObjectItemCaseSensitive(root, "_g72");
        if(item != NULL) {
            ${tickdata_name}._g72 = item->valueint;
        }
        // Receive _g73
        item = cJSON_GetObjectItemCaseSensitive(root, "_g73");
        if(item != NULL) {
            ${tickdata_name}._g73 = item->valueint;
        }
        // Receive _g79
        item = cJSON_GetObjectItemCaseSensitive(root, "_g79");
        if(item != NULL) {
            ${tickdata_name}._g79 = item->valueint;
        }
        // Receive _g8
        item = cJSON_GetObjectItemCaseSensitive(root, "_g8");
        if(item != NULL) {
            ${tickdata_name}._g8 = item->valueint;
        }
        // Receive _g80
        item = cJSON_GetObjectItemCaseSensitive(root, "_g80");
        if(item != NULL) {
            ${tickdata_name}._g80 = item->valueint;
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
        // Receive _g87
        item = cJSON_GetObjectItemCaseSensitive(root, "_g87");
        if(item != NULL) {
            ${tickdata_name}._g87 = item->valueint;
        }
        // Receive _g88
        item = cJSON_GetObjectItemCaseSensitive(root, "_g88");
        if(item != NULL) {
            ${tickdata_name}._g88 = item->valueint;
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
        // Receive _g93
        item = cJSON_GetObjectItemCaseSensitive(root, "_g93");
        if(item != NULL) {
            ${tickdata_name}._g93 = item->valueint;
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
        // Receive _pg101
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg101");
        if(item != NULL) {
            ${tickdata_name}._pg101 = item->valueint;
        }
        // Receive _pg106
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg106");
        if(item != NULL) {
            ${tickdata_name}._pg106 = item->valueint;
        }
        // Receive _pg109
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg109");
        if(item != NULL) {
            ${tickdata_name}._pg109 = item->valueint;
        }
        // Receive _pg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg116");
        if(item != NULL) {
            ${tickdata_name}._pg116 = item->valueint;
        }
        // Receive _pg117
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg117");
        if(item != NULL) {
            ${tickdata_name}._pg117 = item->valueint;
        }
        // Receive _pg15
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg15");
        if(item != NULL) {
            ${tickdata_name}._pg15 = item->valueint;
        }
        // Receive _pg157
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg157");
        if(item != NULL) {
            ${tickdata_name}._pg157 = item->valueint;
        }
        // Receive _pg16
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg16");
        if(item != NULL) {
            ${tickdata_name}._pg16 = item->valueint;
        }
        // Receive _pg165
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg165");
        if(item != NULL) {
            ${tickdata_name}._pg165 = item->valueint;
        }
        // Receive _pg169
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg169");
        if(item != NULL) {
            ${tickdata_name}._pg169 = item->valueint;
        }
        // Receive _pg17
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg17");
        if(item != NULL) {
            ${tickdata_name}._pg17 = item->valueint;
        }
        // Receive _pg22
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg22");
        if(item != NULL) {
            ${tickdata_name}._pg22 = item->valueint;
        }
        // Receive _pg25
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg25");
        if(item != NULL) {
            ${tickdata_name}._pg25 = item->valueint;
        }
        // Receive _pg28
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg28");
        if(item != NULL) {
            ${tickdata_name}._pg28 = item->valueint;
        }
        // Receive _pg34
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg34");
        if(item != NULL) {
            ${tickdata_name}._pg34 = item->valueint;
        }
        // Receive _pg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg4");
        if(item != NULL) {
            ${tickdata_name}._pg4 = item->valueint;
        }
        // Receive _pg40
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg40");
        if(item != NULL) {
            ${tickdata_name}._pg40 = item->valueint;
        }
        // Receive _pg43
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg43");
        if(item != NULL) {
            ${tickdata_name}._pg43 = item->valueint;
        }
        // Receive _pg46
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg46");
        if(item != NULL) {
            ${tickdata_name}._pg46 = item->valueint;
        }
        // Receive _pg48
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg48");
        if(item != NULL) {
            ${tickdata_name}._pg48 = item->valueint;
        }
        // Receive _pg52
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg52");
        if(item != NULL) {
            ${tickdata_name}._pg52 = item->valueint;
        }
        // Receive _pg62
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg62");
        if(item != NULL) {
            ${tickdata_name}._pg62 = item->valueint;
        }
        // Receive _pg63
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg63");
        if(item != NULL) {
            ${tickdata_name}._pg63 = item->valueint;
        }
        // Receive _pg66
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg66");
        if(item != NULL) {
            ${tickdata_name}._pg66 = item->valueint;
        }
        // Receive _pg68
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg68");
        if(item != NULL) {
            ${tickdata_name}._pg68 = item->valueint;
        }
        // Receive _pg72
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg72");
        if(item != NULL) {
            ${tickdata_name}._pg72 = item->valueint;
        }
        // Receive _pg80
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg80");
        if(item != NULL) {
            ${tickdata_name}._pg80 = item->valueint;
        }
        // Receive _pg83
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg83");
        if(item != NULL) {
            ${tickdata_name}._pg83 = item->valueint;
        }
        // Receive _pg87
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg87");
        if(item != NULL) {
            ${tickdata_name}._pg87 = item->valueint;
        }
        // Receive _pg91
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg91");
        if(item != NULL) {
            ${tickdata_name}._pg91 = item->valueint;
        }
        // Receive _pg92
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg92");
        if(item != NULL) {
            ${tickdata_name}._pg92 = item->valueint;
        }
        // Receive _pg98
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg98");
        if(item != NULL) {
            ${tickdata_name}._pg98 = item->valueint;
        }
        // Receive _pre_AP
        item = cJSON_GetObjectItemCaseSensitive(root, "_pre_AP");
        if(item != NULL) {
            ${tickdata_name}._pre_AP = item->valueint;
        }
        // Receive _pre_VP
        item = cJSON_GetObjectItemCaseSensitive(root, "_pre_VP");
        if(item != NULL) {
            ${tickdata_name}._pre_VP = item->valueint;
        }
        // Receive _reg_AP
        item = cJSON_GetObjectItemCaseSensitive(root, "_reg_AP");
        if(item != NULL) {
            ${tickdata_name}._reg_AP = item->valueint;
        }
        // Receive _reg_VP
        item = cJSON_GetObjectItemCaseSensitive(root, "_reg_VP");
        if(item != NULL) {
            ${tickdata_name}._reg_VP = item->valueint;
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
    
    // Send AEI_counter
    cJSON_AddItemToObject(root, "AEI_counter", cJSON_CreateNumber(${tickdata_name}.AEI_counter));
    // Send AS
    cJSON_AddItemToObject(root, "AS", cJSON_CreateBool(${tickdata_name}.AS));
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
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(${tickdata_name}.VS));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(${tickdata_name}.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(${tickdata_name}.VP));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send _DDDpacemaker_local_AEI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AEI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AEI_start));
    // Send _DDDpacemaker_local_AEI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AEI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AEI_stop));
    // Send _DDDpacemaker_local_AR
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AR", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AR));
    // Send _DDDpacemaker_local_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AVI_start));
    // Send _DDDpacemaker_local_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AVI_stop));
    // Send _DDDpacemaker_local_LRI_reset
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_reset", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_LRI_reset));
    // Send _DDDpacemaker_local_LRI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_LRI_start));
    // Send _DDDpacemaker_local_LRI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_LRI_stop));
    // Send _DDDpacemaker_local_PVARP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_PVARP_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_PVARP_start));
    // Send _DDDpacemaker_local_PVARP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_PVARP_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_PVARP_stop));
    // Send _DDDpacemaker_local_URI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_URI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_URI_start));
    // Send _DDDpacemaker_local_URI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_URI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_URI_stop));
    // Send _DDDpacemaker_local_VR
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VR", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_VR));
    // Send _DDDpacemaker_local_VRP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VRP_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_VRP_start));
    // Send _DDDpacemaker_local_VRP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VRP_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_VRP_stop));
    // Send _DDDpacemaker_local__pre_AEI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AEI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AEI_start));
    // Send _DDDpacemaker_local__pre_AEI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AEI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AEI_stop));
    // Send _DDDpacemaker_local__pre_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AVI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AVI_start));
    // Send _DDDpacemaker_local__pre_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AVI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AVI_stop));
    // Send _DDDpacemaker_local__pre_LRI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_LRI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_LRI_start));
    // Send _DDDpacemaker_local__pre_LRI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_LRI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_LRI_stop));
    // Send _DDDpacemaker_local__pre_PVARP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_PVARP_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_PVARP_start));
    // Send _DDDpacemaker_local__pre_PVARP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_PVARP_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_PVARP_stop));
    // Send _DDDpacemaker_local__pre_URI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_URI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_URI_start));
    // Send _DDDpacemaker_local__pre_URI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_URI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_URI_stop));
    // Send _DDDpacemaker_local__pre_VRP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_VRP_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_VRP_start));
    // Send _DDDpacemaker_local__pre_VRP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_VRP_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_VRP_stop));
    // Send _DDDpacemaker_local__pre_real_AS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_real_AS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_real_AS));
    // Send _DDDpacemaker_local__pre_real_VS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_real_VS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_real_VS));
    // Send _DDDpacemaker_local__reg_AEI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AEI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AEI_start));
    // Send _DDDpacemaker_local__reg_AEI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AEI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AEI_stop));
    // Send _DDDpacemaker_local__reg_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AVI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AVI_start));
    // Send _DDDpacemaker_local__reg_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AVI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AVI_stop));
    // Send _DDDpacemaker_local__reg_LRI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_LRI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_LRI_start));
    // Send _DDDpacemaker_local__reg_LRI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_LRI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_LRI_stop));
    // Send _DDDpacemaker_local__reg_PVARP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_PVARP_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_PVARP_start));
    // Send _DDDpacemaker_local__reg_PVARP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_PVARP_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_PVARP_stop));
    // Send _DDDpacemaker_local__reg_URI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_URI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_URI_start));
    // Send _DDDpacemaker_local__reg_URI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_URI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_URI_stop));
    // Send _DDDpacemaker_local__reg_VRP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_VRP_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_VRP_start));
    // Send _DDDpacemaker_local__reg_VRP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_VRP_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_VRP_stop));
    // Send _DDDpacemaker_local__reg_real_AS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_real_AS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_real_AS));
    // Send _DDDpacemaker_local__reg_real_VS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_real_VS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_real_VS));
    // Send _DDDpacemaker_local_real_AS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_AS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_real_AS));
    // Send _DDDpacemaker_local_real_VS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_VS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_real_VS));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg100
    cJSON_AddItemToObject(root, "_cg100", cJSON_CreateBool(${tickdata_name}._cg100));
    // Send _cg105
    cJSON_AddItemToObject(root, "_cg105", cJSON_CreateBool(${tickdata_name}._cg105));
    // Send _cg108
    cJSON_AddItemToObject(root, "_cg108", cJSON_CreateBool(${tickdata_name}._cg108));
    // Send _cg113
    cJSON_AddItemToObject(root, "_cg113", cJSON_CreateBool(${tickdata_name}._cg113));
    // Send _cg116
    cJSON_AddItemToObject(root, "_cg116", cJSON_CreateBool(${tickdata_name}._cg116));
    // Send _cg12
    cJSON_AddItemToObject(root, "_cg12", cJSON_CreateBool(${tickdata_name}._cg12));
    // Send _cg14
    cJSON_AddItemToObject(root, "_cg14", cJSON_CreateBool(${tickdata_name}._cg14));
    // Send _cg16
    cJSON_AddItemToObject(root, "_cg16", cJSON_CreateBool(${tickdata_name}._cg16));
    // Send _cg21
    cJSON_AddItemToObject(root, "_cg21", cJSON_CreateBool(${tickdata_name}._cg21));
    // Send _cg24
    cJSON_AddItemToObject(root, "_cg24", cJSON_CreateBool(${tickdata_name}._cg24));
    // Send _cg29
    cJSON_AddItemToObject(root, "_cg29", cJSON_CreateBool(${tickdata_name}._cg29));
    // Send _cg32
    cJSON_AddItemToObject(root, "_cg32", cJSON_CreateBool(${tickdata_name}._cg32));
    // Send _cg34
    cJSON_AddItemToObject(root, "_cg34", cJSON_CreateBool(${tickdata_name}._cg34));
    // Send _cg39
    cJSON_AddItemToObject(root, "_cg39", cJSON_CreateBool(${tickdata_name}._cg39));
    // Send _cg4
    cJSON_AddItemToObject(root, "_cg4", cJSON_CreateBool(${tickdata_name}._cg4));
    // Send _cg42
    cJSON_AddItemToObject(root, "_cg42", cJSON_CreateBool(${tickdata_name}._cg42));
    // Send _cg47
    cJSON_AddItemToObject(root, "_cg47", cJSON_CreateBool(${tickdata_name}._cg47));
    // Send _cg50
    cJSON_AddItemToObject(root, "_cg50", cJSON_CreateBool(${tickdata_name}._cg50));
    // Send _cg52
    cJSON_AddItemToObject(root, "_cg52", cJSON_CreateBool(${tickdata_name}._cg52));
    // Send _cg54
    cJSON_AddItemToObject(root, "_cg54", cJSON_CreateBool(${tickdata_name}._cg54));
    // Send _cg59
    cJSON_AddItemToObject(root, "_cg59", cJSON_CreateBool(${tickdata_name}._cg59));
    // Send _cg62
    cJSON_AddItemToObject(root, "_cg62", cJSON_CreateBool(${tickdata_name}._cg62));
    // Send _cg67
    cJSON_AddItemToObject(root, "_cg67", cJSON_CreateBool(${tickdata_name}._cg67));
    // Send _cg7
    cJSON_AddItemToObject(root, "_cg7", cJSON_CreateBool(${tickdata_name}._cg7));
    // Send _cg70
    cJSON_AddItemToObject(root, "_cg70", cJSON_CreateBool(${tickdata_name}._cg70));
    // Send _cg72
    cJSON_AddItemToObject(root, "_cg72", cJSON_CreateBool(${tickdata_name}._cg72));
    // Send _cg74
    cJSON_AddItemToObject(root, "_cg74", cJSON_CreateBool(${tickdata_name}._cg74));
    // Send _cg79
    cJSON_AddItemToObject(root, "_cg79", cJSON_CreateBool(${tickdata_name}._cg79));
    // Send _cg82
    cJSON_AddItemToObject(root, "_cg82", cJSON_CreateBool(${tickdata_name}._cg82));
    // Send _cg87
    cJSON_AddItemToObject(root, "_cg87", cJSON_CreateBool(${tickdata_name}._cg87));
    // Send _cg9
    cJSON_AddItemToObject(root, "_cg9", cJSON_CreateBool(${tickdata_name}._cg9));
    // Send _cg90
    cJSON_AddItemToObject(root, "_cg90", cJSON_CreateBool(${tickdata_name}._cg90));
    // Send _cg92
    cJSON_AddItemToObject(root, "_cg92", cJSON_CreateBool(${tickdata_name}._cg92));
    // Send _cg97
    cJSON_AddItemToObject(root, "_cg97", cJSON_CreateBool(${tickdata_name}._cg97));
    // Send _g10
    cJSON_AddItemToObject(root, "_g10", cJSON_CreateBool(${tickdata_name}._g10));
    // Send _g100
    cJSON_AddItemToObject(root, "_g100", cJSON_CreateBool(${tickdata_name}._g100));
    // Send _g101
    cJSON_AddItemToObject(root, "_g101", cJSON_CreateBool(${tickdata_name}._g101));
    // Send _g105
    cJSON_AddItemToObject(root, "_g105", cJSON_CreateBool(${tickdata_name}._g105));
    // Send _g106
    cJSON_AddItemToObject(root, "_g106", cJSON_CreateBool(${tickdata_name}._g106));
    // Send _g108
    cJSON_AddItemToObject(root, "_g108", cJSON_CreateBool(${tickdata_name}._g108));
    // Send _g109
    cJSON_AddItemToObject(root, "_g109", cJSON_CreateBool(${tickdata_name}._g109));
    // Send _g113
    cJSON_AddItemToObject(root, "_g113", cJSON_CreateBool(${tickdata_name}._g113));
    // Send _g116
    cJSON_AddItemToObject(root, "_g116", cJSON_CreateBool(${tickdata_name}._g116));
    // Send _g117
    cJSON_AddItemToObject(root, "_g117", cJSON_CreateBool(${tickdata_name}._g117));
    // Send _g12
    cJSON_AddItemToObject(root, "_g12", cJSON_CreateBool(${tickdata_name}._g12));
    // Send _g13
    cJSON_AddItemToObject(root, "_g13", cJSON_CreateBool(${tickdata_name}._g13));
    // Send _g133
    cJSON_AddItemToObject(root, "_g133", cJSON_CreateBool(${tickdata_name}._g133));
    // Send _g14
    cJSON_AddItemToObject(root, "_g14", cJSON_CreateBool(${tickdata_name}._g14));
    // Send _g141
    cJSON_AddItemToObject(root, "_g141", cJSON_CreateBool(${tickdata_name}._g141));
    // Send _g15
    cJSON_AddItemToObject(root, "_g15", cJSON_CreateBool(${tickdata_name}._g15));
    // Send _g153
    cJSON_AddItemToObject(root, "_g153", cJSON_CreateBool(${tickdata_name}._g153));
    // Send _g157
    cJSON_AddItemToObject(root, "_g157", cJSON_CreateBool(${tickdata_name}._g157));
    // Send _g16
    cJSON_AddItemToObject(root, "_g16", cJSON_CreateBool(${tickdata_name}._g16));
    // Send _g165
    cJSON_AddItemToObject(root, "_g165", cJSON_CreateBool(${tickdata_name}._g165));
    // Send _g169
    cJSON_AddItemToObject(root, "_g169", cJSON_CreateBool(${tickdata_name}._g169));
    // Send _g17
    cJSON_AddItemToObject(root, "_g17", cJSON_CreateBool(${tickdata_name}._g17));
    // Send _g173
    cJSON_AddItemToObject(root, "_g173", cJSON_CreateBool(${tickdata_name}._g173));
    // Send _g21
    cJSON_AddItemToObject(root, "_g21", cJSON_CreateBool(${tickdata_name}._g21));
    // Send _g22
    cJSON_AddItemToObject(root, "_g22", cJSON_CreateBool(${tickdata_name}._g22));
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
    // Send _g32
    cJSON_AddItemToObject(root, "_g32", cJSON_CreateBool(${tickdata_name}._g32));
    // Send _g33
    cJSON_AddItemToObject(root, "_g33", cJSON_CreateBool(${tickdata_name}._g33));
    // Send _g34
    cJSON_AddItemToObject(root, "_g34", cJSON_CreateBool(${tickdata_name}._g34));
    // Send _g39
    cJSON_AddItemToObject(root, "_g39", cJSON_CreateBool(${tickdata_name}._g39));
    // Send _g4
    cJSON_AddItemToObject(root, "_g4", cJSON_CreateBool(${tickdata_name}._g4));
    // Send _g40
    cJSON_AddItemToObject(root, "_g40", cJSON_CreateBool(${tickdata_name}._g40));
    // Send _g42
    cJSON_AddItemToObject(root, "_g42", cJSON_CreateBool(${tickdata_name}._g42));
    // Send _g43
    cJSON_AddItemToObject(root, "_g43", cJSON_CreateBool(${tickdata_name}._g43));
    // Send _g46
    cJSON_AddItemToObject(root, "_g46", cJSON_CreateBool(${tickdata_name}._g46));
    // Send _g47
    cJSON_AddItemToObject(root, "_g47", cJSON_CreateBool(${tickdata_name}._g47));
    // Send _g48
    cJSON_AddItemToObject(root, "_g48", cJSON_CreateBool(${tickdata_name}._g48));
    // Send _g5
    cJSON_AddItemToObject(root, "_g5", cJSON_CreateBool(${tickdata_name}._g5));
    // Send _g50
    cJSON_AddItemToObject(root, "_g50", cJSON_CreateBool(${tickdata_name}._g50));
    // Send _g51
    cJSON_AddItemToObject(root, "_g51", cJSON_CreateBool(${tickdata_name}._g51));
    // Send _g52
    cJSON_AddItemToObject(root, "_g52", cJSON_CreateBool(${tickdata_name}._g52));
    // Send _g53
    cJSON_AddItemToObject(root, "_g53", cJSON_CreateBool(${tickdata_name}._g53));
    // Send _g59
    cJSON_AddItemToObject(root, "_g59", cJSON_CreateBool(${tickdata_name}._g59));
    // Send _g60
    cJSON_AddItemToObject(root, "_g60", cJSON_CreateBool(${tickdata_name}._g60));
    // Send _g62
    cJSON_AddItemToObject(root, "_g62", cJSON_CreateBool(${tickdata_name}._g62));
    // Send _g63
    cJSON_AddItemToObject(root, "_g63", cJSON_CreateBool(${tickdata_name}._g63));
    // Send _g66
    cJSON_AddItemToObject(root, "_g66", cJSON_CreateBool(${tickdata_name}._g66));
    // Send _g67
    cJSON_AddItemToObject(root, "_g67", cJSON_CreateBool(${tickdata_name}._g67));
    // Send _g68
    cJSON_AddItemToObject(root, "_g68", cJSON_CreateBool(${tickdata_name}._g68));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g70
    cJSON_AddItemToObject(root, "_g70", cJSON_CreateBool(${tickdata_name}._g70));
    // Send _g71
    cJSON_AddItemToObject(root, "_g71", cJSON_CreateBool(${tickdata_name}._g71));
    // Send _g72
    cJSON_AddItemToObject(root, "_g72", cJSON_CreateBool(${tickdata_name}._g72));
    // Send _g73
    cJSON_AddItemToObject(root, "_g73", cJSON_CreateBool(${tickdata_name}._g73));
    // Send _g79
    cJSON_AddItemToObject(root, "_g79", cJSON_CreateBool(${tickdata_name}._g79));
    // Send _g8
    cJSON_AddItemToObject(root, "_g8", cJSON_CreateBool(${tickdata_name}._g8));
    // Send _g80
    cJSON_AddItemToObject(root, "_g80", cJSON_CreateBool(${tickdata_name}._g80));
    // Send _g82
    cJSON_AddItemToObject(root, "_g82", cJSON_CreateBool(${tickdata_name}._g82));
    // Send _g83
    cJSON_AddItemToObject(root, "_g83", cJSON_CreateBool(${tickdata_name}._g83));
    // Send _g87
    cJSON_AddItemToObject(root, "_g87", cJSON_CreateBool(${tickdata_name}._g87));
    // Send _g88
    cJSON_AddItemToObject(root, "_g88", cJSON_CreateBool(${tickdata_name}._g88));
    // Send _g9
    cJSON_AddItemToObject(root, "_g9", cJSON_CreateBool(${tickdata_name}._g9));
    // Send _g90
    cJSON_AddItemToObject(root, "_g90", cJSON_CreateBool(${tickdata_name}._g90));
    // Send _g91
    cJSON_AddItemToObject(root, "_g91", cJSON_CreateBool(${tickdata_name}._g91));
    // Send _g92
    cJSON_AddItemToObject(root, "_g92", cJSON_CreateBool(${tickdata_name}._g92));
    // Send _g93
    cJSON_AddItemToObject(root, "_g93", cJSON_CreateBool(${tickdata_name}._g93));
    // Send _g97
    cJSON_AddItemToObject(root, "_g97", cJSON_CreateBool(${tickdata_name}._g97));
    // Send _g98
    cJSON_AddItemToObject(root, "_g98", cJSON_CreateBool(${tickdata_name}._g98));
    // Send _pg101
    cJSON_AddItemToObject(root, "_pg101", cJSON_CreateBool(${tickdata_name}._pg101));
    // Send _pg106
    cJSON_AddItemToObject(root, "_pg106", cJSON_CreateBool(${tickdata_name}._pg106));
    // Send _pg109
    cJSON_AddItemToObject(root, "_pg109", cJSON_CreateBool(${tickdata_name}._pg109));
    // Send _pg116
    cJSON_AddItemToObject(root, "_pg116", cJSON_CreateBool(${tickdata_name}._pg116));
    // Send _pg117
    cJSON_AddItemToObject(root, "_pg117", cJSON_CreateBool(${tickdata_name}._pg117));
    // Send _pg15
    cJSON_AddItemToObject(root, "_pg15", cJSON_CreateBool(${tickdata_name}._pg15));
    // Send _pg157
    cJSON_AddItemToObject(root, "_pg157", cJSON_CreateBool(${tickdata_name}._pg157));
    // Send _pg16
    cJSON_AddItemToObject(root, "_pg16", cJSON_CreateBool(${tickdata_name}._pg16));
    // Send _pg165
    cJSON_AddItemToObject(root, "_pg165", cJSON_CreateBool(${tickdata_name}._pg165));
    // Send _pg169
    cJSON_AddItemToObject(root, "_pg169", cJSON_CreateBool(${tickdata_name}._pg169));
    // Send _pg17
    cJSON_AddItemToObject(root, "_pg17", cJSON_CreateBool(${tickdata_name}._pg17));
    // Send _pg22
    cJSON_AddItemToObject(root, "_pg22", cJSON_CreateBool(${tickdata_name}._pg22));
    // Send _pg25
    cJSON_AddItemToObject(root, "_pg25", cJSON_CreateBool(${tickdata_name}._pg25));
    // Send _pg28
    cJSON_AddItemToObject(root, "_pg28", cJSON_CreateBool(${tickdata_name}._pg28));
    // Send _pg34
    cJSON_AddItemToObject(root, "_pg34", cJSON_CreateBool(${tickdata_name}._pg34));
    // Send _pg4
    cJSON_AddItemToObject(root, "_pg4", cJSON_CreateBool(${tickdata_name}._pg4));
    // Send _pg40
    cJSON_AddItemToObject(root, "_pg40", cJSON_CreateBool(${tickdata_name}._pg40));
    // Send _pg43
    cJSON_AddItemToObject(root, "_pg43", cJSON_CreateBool(${tickdata_name}._pg43));
    // Send _pg46
    cJSON_AddItemToObject(root, "_pg46", cJSON_CreateBool(${tickdata_name}._pg46));
    // Send _pg48
    cJSON_AddItemToObject(root, "_pg48", cJSON_CreateBool(${tickdata_name}._pg48));
    // Send _pg52
    cJSON_AddItemToObject(root, "_pg52", cJSON_CreateBool(${tickdata_name}._pg52));
    // Send _pg62
    cJSON_AddItemToObject(root, "_pg62", cJSON_CreateBool(${tickdata_name}._pg62));
    // Send _pg63
    cJSON_AddItemToObject(root, "_pg63", cJSON_CreateBool(${tickdata_name}._pg63));
    // Send _pg66
    cJSON_AddItemToObject(root, "_pg66", cJSON_CreateBool(${tickdata_name}._pg66));
    // Send _pg68
    cJSON_AddItemToObject(root, "_pg68", cJSON_CreateBool(${tickdata_name}._pg68));
    // Send _pg72
    cJSON_AddItemToObject(root, "_pg72", cJSON_CreateBool(${tickdata_name}._pg72));
    // Send _pg80
    cJSON_AddItemToObject(root, "_pg80", cJSON_CreateBool(${tickdata_name}._pg80));
    // Send _pg83
    cJSON_AddItemToObject(root, "_pg83", cJSON_CreateBool(${tickdata_name}._pg83));
    // Send _pg87
    cJSON_AddItemToObject(root, "_pg87", cJSON_CreateBool(${tickdata_name}._pg87));
    // Send _pg91
    cJSON_AddItemToObject(root, "_pg91", cJSON_CreateBool(${tickdata_name}._pg91));
    // Send _pg92
    cJSON_AddItemToObject(root, "_pg92", cJSON_CreateBool(${tickdata_name}._pg92));
    // Send _pg98
    cJSON_AddItemToObject(root, "_pg98", cJSON_CreateBool(${tickdata_name}._pg98));
    // Send _pre_AP
    cJSON_AddItemToObject(root, "_pre_AP", cJSON_CreateBool(${tickdata_name}._pre_AP));
    // Send _pre_VP
    cJSON_AddItemToObject(root, "_pre_VP", cJSON_CreateBool(${tickdata_name}._pre_VP));
    // Send _reg_AP
    cJSON_AddItemToObject(root, "_reg_AP", cJSON_CreateBool(${tickdata_name}._reg_AP));
    // Send _reg_VP
    cJSON_AddItemToObject(root, "_reg_VP", cJSON_CreateBool(${tickdata_name}._reg_VP));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 34; i0++) {
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
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AEI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "LRI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "PVARP_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "URI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VRP_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VS", info);
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
        cJSON_AddItemToArray(properties, cJSON_CreateString("ticktime"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "#ticktime", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AEI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AEI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AR", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_LRI_reset", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_LRI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_LRI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_PVARP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_PVARP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_URI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_URI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_VR", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_VRP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_VRP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_AEI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_AEI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_AVI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_AVI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_LRI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_LRI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_PVARP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_PVARP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_URI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_URI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_VRP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_VRP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_real_AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__pre_real_VS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_AEI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_AEI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_AVI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_AVI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_LRI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_LRI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_PVARP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_PVARP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_URI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_URI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_VRP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_VRP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_real_AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local__reg_real_VS", info);
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
        cJSON_AddItemToObject(interface, "_cg100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg105", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg108", info);
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
        cJSON_AddItemToObject(interface, "_cg12", info);
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
        cJSON_AddItemToObject(interface, "_cg16", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg21", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg34", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg39", info);
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
        cJSON_AddItemToObject(interface, "_cg42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg47", info);
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
        cJSON_AddItemToObject(interface, "_cg52", info);
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
        cJSON_AddItemToObject(interface, "_cg59", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg62", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg67", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg72", info);
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
        cJSON_AddItemToObject(interface, "_cg79", info);
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
        cJSON_AddItemToObject(interface, "_cg92", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg97", info);
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
        cJSON_AddItemToObject(interface, "_g100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g101", info);
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
        cJSON_AddItemToObject(interface, "_g106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g108", info);
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
        cJSON_AddItemToObject(interface, "_g113", info);
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
        cJSON_AddItemToObject(interface, "_g117", info);
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
        cJSON_AddItemToObject(interface, "_g13", info);
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
        cJSON_AddItemToObject(interface, "_g14", info);
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
        cJSON_AddItemToObject(interface, "_g15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g153", info);
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
        cJSON_AddItemToObject(interface, "_g16", info);
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
        cJSON_AddItemToObject(interface, "_g169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g173", info);
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
        cJSON_AddItemToObject(interface, "_g22", info);
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
        cJSON_AddItemToObject(interface, "_g39", info);
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
        cJSON_AddItemToObject(interface, "_g46", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g47", info);
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
        cJSON_AddItemToObject(interface, "_g52", info);
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
        cJSON_AddItemToObject(interface, "_g59", info);
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
        cJSON_AddItemToObject(interface, "_g62", info);
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
        cJSON_AddItemToObject(interface, "_g71", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g72", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g73", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g79", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g8", info);
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
        cJSON_AddItemToObject(interface, "_g82", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g83", info);
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
        cJSON_AddItemToObject(interface, "_g88", info);
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
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g93", info);
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
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg101", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg117", info);
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
        cJSON_AddItemToObject(interface, "_pg157", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg16", info);
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
        cJSON_AddItemToObject(interface, "_pg169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg25", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg34", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg43", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg46", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg48", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg62", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg63", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg68", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg72", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg83", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg91", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg92", info);
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
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pre_AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pre_VP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_reg_AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_reg_VP", info);
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
