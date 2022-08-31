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
        // Receive AEI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "AEI_start");
        if(item != NULL) {
            ${tickdata_name}.AEI_start = item->valueint;
        }
        // Receive AEI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "AEI_stop");
        if(item != NULL) {
            ${tickdata_name}.AEI_stop = item->valueint;
        }
        // Receive AVI_extend
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_extend");
        if(item != NULL) {
            ${tickdata_name}.AVI_extend = item->valueint;
        }
        // Receive AVI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_start");
        if(item != NULL) {
            ${tickdata_name}.AVI_start = item->valueint;
        }
        // Receive AVI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_stop");
        if(item != NULL) {
            ${tickdata_name}.AVI_stop = item->valueint;
        }
        // Receive LRI_reset
        item = cJSON_GetObjectItemCaseSensitive(root, "LRI_reset");
        if(item != NULL) {
            ${tickdata_name}.LRI_reset = item->valueint;
        }
        // Receive LRI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "LRI_start");
        if(item != NULL) {
            ${tickdata_name}.LRI_start = item->valueint;
        }
        // Receive LRI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "LRI_stop");
        if(item != NULL) {
            ${tickdata_name}.LRI_stop = item->valueint;
        }
        // Receive PVARP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "PVARP_start");
        if(item != NULL) {
            ${tickdata_name}.PVARP_start = item->valueint;
        }
        // Receive PVARP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "PVARP_stop");
        if(item != NULL) {
            ${tickdata_name}.PVARP_stop = item->valueint;
        }
        // Receive URI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "URI_start");
        if(item != NULL) {
            ${tickdata_name}.URI_start = item->valueint;
        }
        // Receive URI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "URI_stop");
        if(item != NULL) {
            ${tickdata_name}.URI_stop = item->valueint;
        }
        // Receive VRP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "VRP_start");
        if(item != NULL) {
            ${tickdata_name}.VRP_start = item->valueint;
        }
        // Receive VRP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "VRP_stop");
        if(item != NULL) {
            ${tickdata_name}.VRP_stop = item->valueint;
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
        // Receive _cg19
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg19");
        if(item != NULL) {
            ${tickdata_name}._cg19 = item->valueint;
        }
        // Receive _cg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg4");
        if(item != NULL) {
            ${tickdata_name}._cg4 = item->valueint;
        }
        // Receive _cg7
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg7");
        if(item != NULL) {
            ${tickdata_name}._cg7 = item->valueint;
        }
        // Receive _cg9
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg9");
        if(item != NULL) {
            ${tickdata_name}._cg9 = item->valueint;
        }
        // Receive _g13
        item = cJSON_GetObjectItemCaseSensitive(root, "_g13");
        if(item != NULL) {
            ${tickdata_name}._g13 = item->valueint;
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
        // Receive _g28
        item = cJSON_GetObjectItemCaseSensitive(root, "_g28");
        if(item != NULL) {
            ${tickdata_name}._g28 = item->valueint;
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
        // Receive _g5
        item = cJSON_GetObjectItemCaseSensitive(root, "_g5");
        if(item != NULL) {
            ${tickdata_name}._g5 = item->valueint;
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
        // Receive _g8
        item = cJSON_GetObjectItemCaseSensitive(root, "_g8");
        if(item != NULL) {
            ${tickdata_name}._g8 = item->valueint;
        }
        // Receive _pg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg13");
        if(item != NULL) {
            ${tickdata_name}._pg13 = item->valueint;
        }
        // Receive _pg28
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg28");
        if(item != NULL) {
            ${tickdata_name}._pg28 = item->valueint;
        }
        // Receive _pg3
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg3");
        if(item != NULL) {
            ${tickdata_name}._pg3 = item->valueint;
        }
        // Receive _pg6
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg6");
        if(item != NULL) {
            ${tickdata_name}._pg6 = item->valueint;
        }
        // Receive _taken_transitions
        item = cJSON_GetObjectItemCaseSensitive(root, "_taken_transitions");
        if(item != NULL) {
            for (int i0 = 0; i0 < cJSON_GetArraySize(item); i0++) {
                cJSON *item0 = cJSON_GetArrayItem(item, i0);
                ${tickdata_name}._taken_transitions[i0] = item0->valueint;
            }
        }
        // Receive doneAS
        item = cJSON_GetObjectItemCaseSensitive(root, "doneAS");
        if(item != NULL) {
            ${tickdata_name}.doneAS = item->valueint;
        }
        // Receive doneAVI
        item = cJSON_GetObjectItemCaseSensitive(root, "doneAVI");
        if(item != NULL) {
            ${tickdata_name}.doneAVI = item->valueint;
        }
        // Receive doneVS
        item = cJSON_GetObjectItemCaseSensitive(root, "doneVS");
        if(item != NULL) {
            ${tickdata_name}.doneVS = item->valueint;
        }
    }
  
    cJSON_Delete(root);
    free(buffer);
}

void sendVariables(int send_interface) {
    cJSON* root = cJSON_CreateObject();
    cJSON *array;
    
    // Send AEI_counter
    cJSON_AddItemToObject(root, "AEI_counter", cJSON_CreateBool(${tickdata_name}.AEI_counter));
    // Send AS
    cJSON_AddItemToObject(root, "AS", cJSON_CreateBool(${tickdata_name}.AS));
    // Send AVI_counter
    cJSON_AddItemToObject(root, "AVI_counter", cJSON_CreateBool(${tickdata_name}.AVI_counter));
    // Send LRI_counter
    cJSON_AddItemToObject(root, "LRI_counter", cJSON_CreateBool(${tickdata_name}.LRI_counter));
    // Send PVARP_counter
    cJSON_AddItemToObject(root, "PVARP_counter", cJSON_CreateBool(${tickdata_name}.PVARP_counter));
    // Send URI_counter
    cJSON_AddItemToObject(root, "URI_counter", cJSON_CreateBool(${tickdata_name}.URI_counter));
    // Send VRP_counter
    cJSON_AddItemToObject(root, "VRP_counter", cJSON_CreateBool(${tickdata_name}.VRP_counter));
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(${tickdata_name}.VS));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(${tickdata_name}.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(${tickdata_name}.VP));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send AEI_start
    cJSON_AddItemToObject(root, "AEI_start", cJSON_CreateBool(${tickdata_name}.AEI_start));
    // Send AEI_stop
    cJSON_AddItemToObject(root, "AEI_stop", cJSON_CreateBool(${tickdata_name}.AEI_stop));
    // Send AVI_extend
    cJSON_AddItemToObject(root, "AVI_extend", cJSON_CreateBool(${tickdata_name}.AVI_extend));
    // Send AVI_start
    cJSON_AddItemToObject(root, "AVI_start", cJSON_CreateBool(${tickdata_name}.AVI_start));
    // Send AVI_stop
    cJSON_AddItemToObject(root, "AVI_stop", cJSON_CreateBool(${tickdata_name}.AVI_stop));
    // Send LRI_reset
    cJSON_AddItemToObject(root, "LRI_reset", cJSON_CreateBool(${tickdata_name}.LRI_reset));
    // Send LRI_start
    cJSON_AddItemToObject(root, "LRI_start", cJSON_CreateBool(${tickdata_name}.LRI_start));
    // Send LRI_stop
    cJSON_AddItemToObject(root, "LRI_stop", cJSON_CreateBool(${tickdata_name}.LRI_stop));
    // Send PVARP_start
    cJSON_AddItemToObject(root, "PVARP_start", cJSON_CreateBool(${tickdata_name}.PVARP_start));
    // Send PVARP_stop
    cJSON_AddItemToObject(root, "PVARP_stop", cJSON_CreateBool(${tickdata_name}.PVARP_stop));
    // Send URI_start
    cJSON_AddItemToObject(root, "URI_start", cJSON_CreateBool(${tickdata_name}.URI_start));
    // Send URI_stop
    cJSON_AddItemToObject(root, "URI_stop", cJSON_CreateBool(${tickdata_name}.URI_stop));
    // Send VRP_start
    cJSON_AddItemToObject(root, "VRP_start", cJSON_CreateBool(${tickdata_name}.VRP_start));
    // Send VRP_stop
    cJSON_AddItemToObject(root, "VRP_stop", cJSON_CreateBool(${tickdata_name}.VRP_stop));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg14
    cJSON_AddItemToObject(root, "_cg14", cJSON_CreateBool(${tickdata_name}._cg14));
    // Send _cg17
    cJSON_AddItemToObject(root, "_cg17", cJSON_CreateBool(${tickdata_name}._cg17));
    // Send _cg19
    cJSON_AddItemToObject(root, "_cg19", cJSON_CreateBool(${tickdata_name}._cg19));
    // Send _cg4
    cJSON_AddItemToObject(root, "_cg4", cJSON_CreateBool(${tickdata_name}._cg4));
    // Send _cg7
    cJSON_AddItemToObject(root, "_cg7", cJSON_CreateBool(${tickdata_name}._cg7));
    // Send _cg9
    cJSON_AddItemToObject(root, "_cg9", cJSON_CreateBool(${tickdata_name}._cg9));
    // Send _g13
    cJSON_AddItemToObject(root, "_g13", cJSON_CreateBool(${tickdata_name}._g13));
    // Send _g14
    cJSON_AddItemToObject(root, "_g14", cJSON_CreateBool(${tickdata_name}._g14));
    // Send _g15
    cJSON_AddItemToObject(root, "_g15", cJSON_CreateBool(${tickdata_name}._g15));
    // Send _g28
    cJSON_AddItemToObject(root, "_g28", cJSON_CreateBool(${tickdata_name}._g28));
    // Send _g3
    cJSON_AddItemToObject(root, "_g3", cJSON_CreateBool(${tickdata_name}._g3));
    // Send _g4
    cJSON_AddItemToObject(root, "_g4", cJSON_CreateBool(${tickdata_name}._g4));
    // Send _g5
    cJSON_AddItemToObject(root, "_g5", cJSON_CreateBool(${tickdata_name}._g5));
    // Send _g6
    cJSON_AddItemToObject(root, "_g6", cJSON_CreateBool(${tickdata_name}._g6));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g8
    cJSON_AddItemToObject(root, "_g8", cJSON_CreateBool(${tickdata_name}._g8));
    // Send _pg13
    cJSON_AddItemToObject(root, "_pg13", cJSON_CreateBool(${tickdata_name}._pg13));
    // Send _pg28
    cJSON_AddItemToObject(root, "_pg28", cJSON_CreateBool(${tickdata_name}._pg28));
    // Send _pg3
    cJSON_AddItemToObject(root, "_pg3", cJSON_CreateBool(${tickdata_name}._pg3));
    // Send _pg6
    cJSON_AddItemToObject(root, "_pg6", cJSON_CreateBool(${tickdata_name}._pg6));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 9; i0++) {
        cJSON *item0 = cJSON_CreateNumber(${tickdata_name}._taken_transitions[i0]);
        cJSON_AddItemToArray(array, item0);
    }
    cJSON_AddItemToObject(root, "_taken_transitions", array);
    // Send doneAS
    cJSON_AddItemToObject(root, "doneAS", cJSON_CreateBool(${tickdata_name}.doneAS));
    // Send doneAVI
    cJSON_AddItemToObject(root, "doneAVI", cJSON_CreateBool(${tickdata_name}.doneAVI));
    // Send doneVS
    cJSON_AddItemToObject(root, "doneVS", cJSON_CreateBool(${tickdata_name}.doneVS));
    
    if (send_interface) {
        cJSON *interface = cJSON_CreateObject();
        cJSON *info, *properties;
        
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AEI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "LRI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "PVARP_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "URI_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VRP_counter", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
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
        cJSON_AddItemToObject(interface, "AEI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AEI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_extend", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AVI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "LRI_reset", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "LRI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "LRI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "PVARP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "PVARP_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "URI_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "URI_stop", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VRP_start", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VRP_stop", info);
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
        cJSON_AddItemToObject(interface, "_cg19", info);
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
        cJSON_AddItemToObject(interface, "_cg7", info);
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
        cJSON_AddItemToObject(interface, "_g13", info);
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
        cJSON_AddItemToObject(interface, "_g28", info);
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
        cJSON_AddItemToObject(interface, "_g5", info);
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
        cJSON_AddItemToObject(interface, "_g8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg13", info);
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
        cJSON_AddItemToObject(interface, "_pg3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("simulation"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_taken_transitions", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "doneAS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "doneAVI", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "doneVS", info);
        
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
