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
        // Receive AVI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_counter");
        if(item != NULL) {
            ${tickdata_name}.AVI_counter = item->valueint;
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
        // Receive _DDDpacemaker_local_AVI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_start");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AVI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AVI_state = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_stop");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_AVI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_URI_state
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_URI_state");
        if(item != NULL) {
            ${tickdata_name}._DDDpacemaker_local_URI_state = item->valueint;
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
        // Receive _cg14
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg14");
        if(item != NULL) {
            ${tickdata_name}._cg14 = item->valueint;
        }
        // Receive _cg17
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg17");
        if(item != NULL) {
            ${tickdata_name}._cg17 = item->valueint;
        }
        // Receive _cg3
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg3");
        if(item != NULL) {
            ${tickdata_name}._cg3 = item->valueint;
        }
        // Receive _cg6
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg6");
        if(item != NULL) {
            ${tickdata_name}._cg6 = item->valueint;
        }
        // Receive _cg9
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg9");
        if(item != NULL) {
            ${tickdata_name}._cg9 = item->valueint;
        }
        // Receive _g10
        item = cJSON_GetObjectItemCaseSensitive(root, "_g10");
        if(item != NULL) {
            ${tickdata_name}._g10 = item->valueint;
        }
        // Receive _g14
        item = cJSON_GetObjectItemCaseSensitive(root, "_g14");
        if(item != NULL) {
            ${tickdata_name}._g14 = item->valueint;
        }
        // Receive _g15
        item = cJSON_GetObjectItemCaseSensitive(root, "_g15");
        if(item != NULL) {
            ${tickdata_name}._g15 = item->valueint;
        }
        // Receive _g17
        item = cJSON_GetObjectItemCaseSensitive(root, "_g17");
        if(item != NULL) {
            ${tickdata_name}._g17 = item->valueint;
        }
        // Receive _g18
        item = cJSON_GetObjectItemCaseSensitive(root, "_g18");
        if(item != NULL) {
            ${tickdata_name}._g18 = item->valueint;
        }
        // Receive _g22
        item = cJSON_GetObjectItemCaseSensitive(root, "_g22");
        if(item != NULL) {
            ${tickdata_name}._g22 = item->valueint;
        }
        // Receive _g26
        item = cJSON_GetObjectItemCaseSensitive(root, "_g26");
        if(item != NULL) {
            ${tickdata_name}._g26 = item->valueint;
        }
        // Receive _g3
        item = cJSON_GetObjectItemCaseSensitive(root, "_g3");
        if(item != NULL) {
            ${tickdata_name}._g3 = item->valueint;
        }
        // Receive _g4
        item = cJSON_GetObjectItemCaseSensitive(root, "_g4");
        if(item != NULL) {
            ${tickdata_name}._g4 = item->valueint;
        }
        // Receive _g6
        item = cJSON_GetObjectItemCaseSensitive(root, "_g6");
        if(item != NULL) {
            ${tickdata_name}._g6 = item->valueint;
        }
        // Receive _g7
        item = cJSON_GetObjectItemCaseSensitive(root, "_g7");
        if(item != NULL) {
            ${tickdata_name}._g7 = item->valueint;
        }
        // Receive _g9
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9");
        if(item != NULL) {
            ${tickdata_name}._g9 = item->valueint;
        }
        // Receive _pg10
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg10");
        if(item != NULL) {
            ${tickdata_name}._pg10 = item->valueint;
        }
        // Receive _pg15
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg15");
        if(item != NULL) {
            ${tickdata_name}._pg15 = item->valueint;
        }
        // Receive _pg18
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg18");
        if(item != NULL) {
            ${tickdata_name}._pg18 = item->valueint;
        }
        // Receive _pg22
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg22");
        if(item != NULL) {
            ${tickdata_name}._pg22 = item->valueint;
        }
        // Receive _pg26
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg26");
        if(item != NULL) {
            ${tickdata_name}._pg26 = item->valueint;
        }
        // Receive _pg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg4");
        if(item != NULL) {
            ${tickdata_name}._pg4 = item->valueint;
        }
        // Receive _pg9
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg9");
        if(item != NULL) {
            ${tickdata_name}._pg9 = item->valueint;
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
    // Send AVI_counter
    cJSON_AddItemToObject(root, "AVI_counter", cJSON_CreateNumber(${tickdata_name}.AVI_counter));
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(${tickdata_name}.VS));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(${tickdata_name}.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(${tickdata_name}.VP));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send _DDDpacemaker_local_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AVI_start));
    // Send _DDDpacemaker_local_AVI_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AVI_state));
    // Send _DDDpacemaker_local_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_AVI_stop));
    // Send _DDDpacemaker_local_URI_state
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_URI_state", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_URI_state));
    // Send _DDDpacemaker_local__pre_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AVI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AVI_start));
    // Send _DDDpacemaker_local__pre_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__pre_AVI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__pre_AVI_stop));
    // Send _DDDpacemaker_local__reg_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AVI_start", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AVI_start));
    // Send _DDDpacemaker_local__reg_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local__reg_AVI_stop", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local__reg_AVI_stop));
    // Send _DDDpacemaker_local_real_AS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_AS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_real_AS));
    // Send _DDDpacemaker_local_real_VS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_VS", cJSON_CreateBool(${tickdata_name}._DDDpacemaker_local_real_VS));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg14
    cJSON_AddItemToObject(root, "_cg14", cJSON_CreateBool(${tickdata_name}._cg14));
    // Send _cg17
    cJSON_AddItemToObject(root, "_cg17", cJSON_CreateBool(${tickdata_name}._cg17));
    // Send _cg3
    cJSON_AddItemToObject(root, "_cg3", cJSON_CreateBool(${tickdata_name}._cg3));
    // Send _cg6
    cJSON_AddItemToObject(root, "_cg6", cJSON_CreateBool(${tickdata_name}._cg6));
    // Send _cg9
    cJSON_AddItemToObject(root, "_cg9", cJSON_CreateBool(${tickdata_name}._cg9));
    // Send _g10
    cJSON_AddItemToObject(root, "_g10", cJSON_CreateBool(${tickdata_name}._g10));
    // Send _g14
    cJSON_AddItemToObject(root, "_g14", cJSON_CreateBool(${tickdata_name}._g14));
    // Send _g15
    cJSON_AddItemToObject(root, "_g15", cJSON_CreateBool(${tickdata_name}._g15));
    // Send _g17
    cJSON_AddItemToObject(root, "_g17", cJSON_CreateBool(${tickdata_name}._g17));
    // Send _g18
    cJSON_AddItemToObject(root, "_g18", cJSON_CreateBool(${tickdata_name}._g18));
    // Send _g22
    cJSON_AddItemToObject(root, "_g22", cJSON_CreateBool(${tickdata_name}._g22));
    // Send _g26
    cJSON_AddItemToObject(root, "_g26", cJSON_CreateBool(${tickdata_name}._g26));
    // Send _g3
    cJSON_AddItemToObject(root, "_g3", cJSON_CreateBool(${tickdata_name}._g3));
    // Send _g4
    cJSON_AddItemToObject(root, "_g4", cJSON_CreateBool(${tickdata_name}._g4));
    // Send _g6
    cJSON_AddItemToObject(root, "_g6", cJSON_CreateBool(${tickdata_name}._g6));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g9
    cJSON_AddItemToObject(root, "_g9", cJSON_CreateBool(${tickdata_name}._g9));
    // Send _pg10
    cJSON_AddItemToObject(root, "_pg10", cJSON_CreateBool(${tickdata_name}._pg10));
    // Send _pg15
    cJSON_AddItemToObject(root, "_pg15", cJSON_CreateBool(${tickdata_name}._pg15));
    // Send _pg18
    cJSON_AddItemToObject(root, "_pg18", cJSON_CreateBool(${tickdata_name}._pg18));
    // Send _pg22
    cJSON_AddItemToObject(root, "_pg22", cJSON_CreateBool(${tickdata_name}._pg22));
    // Send _pg26
    cJSON_AddItemToObject(root, "_pg26", cJSON_CreateBool(${tickdata_name}._pg26));
    // Send _pg4
    cJSON_AddItemToObject(root, "_pg4", cJSON_CreateBool(${tickdata_name}._pg4));
    // Send _pg9
    cJSON_AddItemToObject(root, "_pg9", cJSON_CreateBool(${tickdata_name}._pg9));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 5; i0++) {
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
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_counter", info);
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
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_state", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_URI_state", info);
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
        cJSON_AddItemToObject(interface, "_cg14", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg3", info);
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
        cJSON_AddItemToObject(interface, "_cg9", info);
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
        cJSON_AddItemToObject(interface, "_g14", info);
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
        cJSON_AddItemToObject(interface, "_g17", info);
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
        cJSON_AddItemToObject(interface, "_g22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g26", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g3", info);
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
        cJSON_AddItemToObject(interface, "_g6", info);
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
        cJSON_AddItemToObject(interface, "_g9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg10", info);
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
        cJSON_AddItemToObject(interface, "_pg18", info);
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
        cJSON_AddItemToObject(interface, "_pg26", info);
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
        cJSON_AddItemToObject(interface, "_pg9", info);
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
