

#include "lib/ticktime.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "lib/cJSON.h"

#include "DDDpacemaker.h"

// The data for the model
TickData model;

double _ticktime;


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
            model.AEI_counter = item->valueint;
        }
        // Receive AS
        item = cJSON_GetObjectItemCaseSensitive(root, "AS");
        if(item != NULL) {
            model.AS = item->valueint;
        }
        // Receive AVI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "AVI_counter");
        if(item != NULL) {
            model.AVI_counter = item->valueint;
        }
        // Receive LRI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "LRI_counter");
        if(item != NULL) {
            model.LRI_counter = item->valueint;
        }
        // Receive PVARP_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "PVARP_counter");
        if(item != NULL) {
            model.PVARP_counter = item->valueint;
        }
        // Receive URI_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "URI_counter");
        if(item != NULL) {
            model.URI_counter = item->valueint;
        }
        // Receive VRP_counter
        item = cJSON_GetObjectItemCaseSensitive(root, "VRP_counter");
        if(item != NULL) {
            model.VRP_counter = item->valueint;
        }
        // Receive VS
        item = cJSON_GetObjectItemCaseSensitive(root, "VS");
        if(item != NULL) {
            model.VS = item->valueint;
        }
        // Receive AP
        item = cJSON_GetObjectItemCaseSensitive(root, "AP");
        if(item != NULL) {
            model.AP = item->valueint;
        }
        // Receive VP
        item = cJSON_GetObjectItemCaseSensitive(root, "VP");
        if(item != NULL) {
            model.VP = item->valueint;
        }
        // Receive #ticktime
        item = cJSON_GetObjectItemCaseSensitive(root, "#ticktime");
        if(item != NULL) {
            _ticktime = item->valuedouble;
        }
        // Receive _DDDpacemaker_local_AEI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AEI_start");
        if(item != NULL) {
            model._DDDpacemaker_local_AEI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_AEI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AEI_stop");
        if(item != NULL) {
            model._DDDpacemaker_local_AEI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_AR
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AR");
        if(item != NULL) {
            model._DDDpacemaker_local_AR = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_extend
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_extend");
        if(item != NULL) {
            model._DDDpacemaker_local_AVI_extend = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_start");
        if(item != NULL) {
            model._DDDpacemaker_local_AVI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_AVI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_AVI_stop");
        if(item != NULL) {
            model._DDDpacemaker_local_AVI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_reset
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_reset");
        if(item != NULL) {
            model._DDDpacemaker_local_LRI_reset = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_start");
        if(item != NULL) {
            model._DDDpacemaker_local_LRI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_LRI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_LRI_stop");
        if(item != NULL) {
            model._DDDpacemaker_local_LRI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_PVARP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_PVARP_start");
        if(item != NULL) {
            model._DDDpacemaker_local_PVARP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_PVARP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_PVARP_stop");
        if(item != NULL) {
            model._DDDpacemaker_local_PVARP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_URI_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_URI_start");
        if(item != NULL) {
            model._DDDpacemaker_local_URI_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_URI_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_URI_stop");
        if(item != NULL) {
            model._DDDpacemaker_local_URI_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_VR
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VR");
        if(item != NULL) {
            model._DDDpacemaker_local_VR = item->valueint;
        }
        // Receive _DDDpacemaker_local_VRP_start
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VRP_start");
        if(item != NULL) {
            model._DDDpacemaker_local_VRP_start = item->valueint;
        }
        // Receive _DDDpacemaker_local_VRP_stop
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_VRP_stop");
        if(item != NULL) {
            model._DDDpacemaker_local_VRP_stop = item->valueint;
        }
        // Receive _DDDpacemaker_local_real_AS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_real_AS");
        if(item != NULL) {
            model._DDDpacemaker_local_real_AS = item->valueint;
        }
        // Receive _DDDpacemaker_local_real_VS
        item = cJSON_GetObjectItemCaseSensitive(root, "_DDDpacemaker_local_real_VS");
        if(item != NULL) {
            model._DDDpacemaker_local_real_VS = item->valueint;
        }
        // Receive _GO
        item = cJSON_GetObjectItemCaseSensitive(root, "_GO");
        if(item != NULL) {
            model._GO = item->valueint;
        }
        // Receive _TERM
        item = cJSON_GetObjectItemCaseSensitive(root, "_TERM");
        if(item != NULL) {
            model._TERM = item->valueint;
        }
        // Receive _cg104
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg104");
        if(item != NULL) {
            model._cg104 = item->valueint;
        }
        // Receive _cg107
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg107");
        if(item != NULL) {
            model._cg107 = item->valueint;
        }
        // Receive _cg11
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg11");
        if(item != NULL) {
            model._cg11 = item->valueint;
        }
        // Receive _cg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg112");
        if(item != NULL) {
            model._cg112 = item->valueint;
        }
        // Receive _cg115
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg115");
        if(item != NULL) {
            model._cg115 = item->valueint;
        }
        // Receive _cg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg13");
        if(item != NULL) {
            model._cg13 = item->valueint;
        }
        // Receive _cg15
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg15");
        if(item != NULL) {
            model._cg15 = item->valueint;
        }
        // Receive _cg20
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg20");
        if(item != NULL) {
            model._cg20 = item->valueint;
        }
        // Receive _cg23
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg23");
        if(item != NULL) {
            model._cg23 = item->valueint;
        }
        // Receive _cg28
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg28");
        if(item != NULL) {
            model._cg28 = item->valueint;
        }
        // Receive _cg3
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg3");
        if(item != NULL) {
            model._cg3 = item->valueint;
        }
        // Receive _cg31
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg31");
        if(item != NULL) {
            model._cg31 = item->valueint;
        }
        // Receive _cg33
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg33");
        if(item != NULL) {
            model._cg33 = item->valueint;
        }
        // Receive _cg38
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg38");
        if(item != NULL) {
            model._cg38 = item->valueint;
        }
        // Receive _cg41
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg41");
        if(item != NULL) {
            model._cg41 = item->valueint;
        }
        // Receive _cg46
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg46");
        if(item != NULL) {
            model._cg46 = item->valueint;
        }
        // Receive _cg49
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg49");
        if(item != NULL) {
            model._cg49 = item->valueint;
        }
        // Receive _cg51
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg51");
        if(item != NULL) {
            model._cg51 = item->valueint;
        }
        // Receive _cg53
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg53");
        if(item != NULL) {
            model._cg53 = item->valueint;
        }
        // Receive _cg58
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg58");
        if(item != NULL) {
            model._cg58 = item->valueint;
        }
        // Receive _cg6
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg6");
        if(item != NULL) {
            model._cg6 = item->valueint;
        }
        // Receive _cg61
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg61");
        if(item != NULL) {
            model._cg61 = item->valueint;
        }
        // Receive _cg66
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg66");
        if(item != NULL) {
            model._cg66 = item->valueint;
        }
        // Receive _cg69
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg69");
        if(item != NULL) {
            model._cg69 = item->valueint;
        }
        // Receive _cg71
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg71");
        if(item != NULL) {
            model._cg71 = item->valueint;
        }
        // Receive _cg73
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg73");
        if(item != NULL) {
            model._cg73 = item->valueint;
        }
        // Receive _cg78
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg78");
        if(item != NULL) {
            model._cg78 = item->valueint;
        }
        // Receive _cg8
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg8");
        if(item != NULL) {
            model._cg8 = item->valueint;
        }
        // Receive _cg81
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg81");
        if(item != NULL) {
            model._cg81 = item->valueint;
        }
        // Receive _cg86
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg86");
        if(item != NULL) {
            model._cg86 = item->valueint;
        }
        // Receive _cg89
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg89");
        if(item != NULL) {
            model._cg89 = item->valueint;
        }
        // Receive _cg91
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg91");
        if(item != NULL) {
            model._cg91 = item->valueint;
        }
        // Receive _cg96
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg96");
        if(item != NULL) {
            model._cg96 = item->valueint;
        }
        // Receive _cg99
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg99");
        if(item != NULL) {
            model._cg99 = item->valueint;
        }
        // Receive _g10
        item = cJSON_GetObjectItemCaseSensitive(root, "_g10");
        if(item != NULL) {
            model._g10 = item->valueint;
        }
        // Receive _g106
        item = cJSON_GetObjectItemCaseSensitive(root, "_g106");
        if(item != NULL) {
            model._g106 = item->valueint;
        }
        // Receive _g107
        item = cJSON_GetObjectItemCaseSensitive(root, "_g107");
        if(item != NULL) {
            model._g107 = item->valueint;
        }
        // Receive _g108
        item = cJSON_GetObjectItemCaseSensitive(root, "_g108");
        if(item != NULL) {
            model._g108 = item->valueint;
        }
        // Receive _g11
        item = cJSON_GetObjectItemCaseSensitive(root, "_g11");
        if(item != NULL) {
            model._g11 = item->valueint;
        }
        // Receive _g12
        item = cJSON_GetObjectItemCaseSensitive(root, "_g12");
        if(item != NULL) {
            model._g12 = item->valueint;
        }
        // Receive _g30
        item = cJSON_GetObjectItemCaseSensitive(root, "_g30");
        if(item != NULL) {
            model._g30 = item->valueint;
        }
        // Receive _g31
        item = cJSON_GetObjectItemCaseSensitive(root, "_g31");
        if(item != NULL) {
            model._g31 = item->valueint;
        }
        // Receive _g32
        item = cJSON_GetObjectItemCaseSensitive(root, "_g32");
        if(item != NULL) {
            model._g32 = item->valueint;
        }
        // Receive _g48
        item = cJSON_GetObjectItemCaseSensitive(root, "_g48");
        if(item != NULL) {
            model._g48 = item->valueint;
        }
        // Receive _g49
        item = cJSON_GetObjectItemCaseSensitive(root, "_g49");
        if(item != NULL) {
            model._g49 = item->valueint;
        }
        // Receive _g5
        item = cJSON_GetObjectItemCaseSensitive(root, "_g5");
        if(item != NULL) {
            model._g5 = item->valueint;
        }
        // Receive _g50
        item = cJSON_GetObjectItemCaseSensitive(root, "_g50");
        if(item != NULL) {
            model._g50 = item->valueint;
        }
        // Receive _g51
        item = cJSON_GetObjectItemCaseSensitive(root, "_g51");
        if(item != NULL) {
            model._g51 = item->valueint;
        }
        // Receive _g52
        item = cJSON_GetObjectItemCaseSensitive(root, "_g52");
        if(item != NULL) {
            model._g52 = item->valueint;
        }
        // Receive _g6
        item = cJSON_GetObjectItemCaseSensitive(root, "_g6");
        if(item != NULL) {
            model._g6 = item->valueint;
        }
        // Receive _g60
        item = cJSON_GetObjectItemCaseSensitive(root, "_g60");
        if(item != NULL) {
            model._g60 = item->valueint;
        }
        // Receive _g61
        item = cJSON_GetObjectItemCaseSensitive(root, "_g61");
        if(item != NULL) {
            model._g61 = item->valueint;
        }
        // Receive _g68
        item = cJSON_GetObjectItemCaseSensitive(root, "_g68");
        if(item != NULL) {
            model._g68 = item->valueint;
        }
        // Receive _g7
        item = cJSON_GetObjectItemCaseSensitive(root, "_g7");
        if(item != NULL) {
            model._g7 = item->valueint;
        }
        // Receive _g71
        item = cJSON_GetObjectItemCaseSensitive(root, "_g71");
        if(item != NULL) {
            model._g71 = item->valueint;
        }
        // Receive _g72
        item = cJSON_GetObjectItemCaseSensitive(root, "_g72");
        if(item != NULL) {
            model._g72 = item->valueint;
        }
        // Receive _pg10
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg10");
        if(item != NULL) {
            model._pg10 = item->valueint;
        }
        // Receive _pg106
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg106");
        if(item != NULL) {
            model._pg106 = item->valueint;
        }
        // Receive _pg30
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg30");
        if(item != NULL) {
            model._pg30 = item->valueint;
        }
        // Receive _pg48
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg48");
        if(item != NULL) {
            model._pg48 = item->valueint;
        }
        // Receive _pg5
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg5");
        if(item != NULL) {
            model._pg5 = item->valueint;
        }
        // Receive _pg60
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg60");
        if(item != NULL) {
            model._pg60 = item->valueint;
        }
        // Receive _pg68
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg68");
        if(item != NULL) {
            model._pg68 = item->valueint;
        }
        // Receive _taken_transitions
        item = cJSON_GetObjectItemCaseSensitive(root, "_taken_transitions");
        if(item != NULL) {
            for (int i0 = 0; i0 < cJSON_GetArraySize(item); i0++) {
                cJSON *item0 = cJSON_GetArrayItem(item, i0);
                model._taken_transitions[i0] = item0->valueint;
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
    cJSON_AddItemToObject(root, "AEI_counter", cJSON_CreateNumber(model.AEI_counter));
    // Send AS
    cJSON_AddItemToObject(root, "AS", cJSON_CreateBool(model.AS));
    // Send AVI_counter
    cJSON_AddItemToObject(root, "AVI_counter", cJSON_CreateNumber(model.AVI_counter));
    // Send LRI_counter
    cJSON_AddItemToObject(root, "LRI_counter", cJSON_CreateNumber(model.LRI_counter));
    // Send PVARP_counter
    cJSON_AddItemToObject(root, "PVARP_counter", cJSON_CreateNumber(model.PVARP_counter));
    // Send URI_counter
    cJSON_AddItemToObject(root, "URI_counter", cJSON_CreateNumber(model.URI_counter));
    // Send VRP_counter
    cJSON_AddItemToObject(root, "VRP_counter", cJSON_CreateNumber(model.VRP_counter));
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(model.VS));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(model.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(model.VP));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send _DDDpacemaker_local_AEI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AEI_start", cJSON_CreateBool(model._DDDpacemaker_local_AEI_start));
    // Send _DDDpacemaker_local_AEI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AEI_stop", cJSON_CreateBool(model._DDDpacemaker_local_AEI_stop));
    // Send _DDDpacemaker_local_AR
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AR", cJSON_CreateBool(model._DDDpacemaker_local_AR));
    // Send _DDDpacemaker_local_AVI_extend
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_extend", cJSON_CreateBool(model._DDDpacemaker_local_AVI_extend));
    // Send _DDDpacemaker_local_AVI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_start", cJSON_CreateBool(model._DDDpacemaker_local_AVI_start));
    // Send _DDDpacemaker_local_AVI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_AVI_stop", cJSON_CreateBool(model._DDDpacemaker_local_AVI_stop));
    // Send _DDDpacemaker_local_LRI_reset
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_reset", cJSON_CreateBool(model._DDDpacemaker_local_LRI_reset));
    // Send _DDDpacemaker_local_LRI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_start", cJSON_CreateBool(model._DDDpacemaker_local_LRI_start));
    // Send _DDDpacemaker_local_LRI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_LRI_stop", cJSON_CreateBool(model._DDDpacemaker_local_LRI_stop));
    // Send _DDDpacemaker_local_PVARP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_PVARP_start", cJSON_CreateBool(model._DDDpacemaker_local_PVARP_start));
    // Send _DDDpacemaker_local_PVARP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_PVARP_stop", cJSON_CreateBool(model._DDDpacemaker_local_PVARP_stop));
    // Send _DDDpacemaker_local_URI_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_URI_start", cJSON_CreateBool(model._DDDpacemaker_local_URI_start));
    // Send _DDDpacemaker_local_URI_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_URI_stop", cJSON_CreateBool(model._DDDpacemaker_local_URI_stop));
    // Send _DDDpacemaker_local_VR
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VR", cJSON_CreateBool(model._DDDpacemaker_local_VR));
    // Send _DDDpacemaker_local_VRP_start
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VRP_start", cJSON_CreateBool(model._DDDpacemaker_local_VRP_start));
    // Send _DDDpacemaker_local_VRP_stop
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_VRP_stop", cJSON_CreateBool(model._DDDpacemaker_local_VRP_stop));
    // Send _DDDpacemaker_local_real_AS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_AS", cJSON_CreateBool(model._DDDpacemaker_local_real_AS));
    // Send _DDDpacemaker_local_real_VS
    cJSON_AddItemToObject(root, "_DDDpacemaker_local_real_VS", cJSON_CreateBool(model._DDDpacemaker_local_real_VS));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(model._GO));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(model._TERM));
    // Send _cg104
    cJSON_AddItemToObject(root, "_cg104", cJSON_CreateBool(model._cg104));
    // Send _cg107
    cJSON_AddItemToObject(root, "_cg107", cJSON_CreateBool(model._cg107));
    // Send _cg11
    cJSON_AddItemToObject(root, "_cg11", cJSON_CreateBool(model._cg11));
    // Send _cg112
    cJSON_AddItemToObject(root, "_cg112", cJSON_CreateBool(model._cg112));
    // Send _cg115
    cJSON_AddItemToObject(root, "_cg115", cJSON_CreateBool(model._cg115));
    // Send _cg13
    cJSON_AddItemToObject(root, "_cg13", cJSON_CreateBool(model._cg13));
    // Send _cg15
    cJSON_AddItemToObject(root, "_cg15", cJSON_CreateBool(model._cg15));
    // Send _cg20
    cJSON_AddItemToObject(root, "_cg20", cJSON_CreateBool(model._cg20));
    // Send _cg23
    cJSON_AddItemToObject(root, "_cg23", cJSON_CreateBool(model._cg23));
    // Send _cg28
    cJSON_AddItemToObject(root, "_cg28", cJSON_CreateBool(model._cg28));
    // Send _cg3
    cJSON_AddItemToObject(root, "_cg3", cJSON_CreateBool(model._cg3));
    // Send _cg31
    cJSON_AddItemToObject(root, "_cg31", cJSON_CreateBool(model._cg31));
    // Send _cg33
    cJSON_AddItemToObject(root, "_cg33", cJSON_CreateBool(model._cg33));
    // Send _cg38
    cJSON_AddItemToObject(root, "_cg38", cJSON_CreateBool(model._cg38));
    // Send _cg41
    cJSON_AddItemToObject(root, "_cg41", cJSON_CreateBool(model._cg41));
    // Send _cg46
    cJSON_AddItemToObject(root, "_cg46", cJSON_CreateBool(model._cg46));
    // Send _cg49
    cJSON_AddItemToObject(root, "_cg49", cJSON_CreateBool(model._cg49));
    // Send _cg51
    cJSON_AddItemToObject(root, "_cg51", cJSON_CreateBool(model._cg51));
    // Send _cg53
    cJSON_AddItemToObject(root, "_cg53", cJSON_CreateBool(model._cg53));
    // Send _cg58
    cJSON_AddItemToObject(root, "_cg58", cJSON_CreateBool(model._cg58));
    // Send _cg6
    cJSON_AddItemToObject(root, "_cg6", cJSON_CreateBool(model._cg6));
    // Send _cg61
    cJSON_AddItemToObject(root, "_cg61", cJSON_CreateBool(model._cg61));
    // Send _cg66
    cJSON_AddItemToObject(root, "_cg66", cJSON_CreateBool(model._cg66));
    // Send _cg69
    cJSON_AddItemToObject(root, "_cg69", cJSON_CreateBool(model._cg69));
    // Send _cg71
    cJSON_AddItemToObject(root, "_cg71", cJSON_CreateBool(model._cg71));
    // Send _cg73
    cJSON_AddItemToObject(root, "_cg73", cJSON_CreateBool(model._cg73));
    // Send _cg78
    cJSON_AddItemToObject(root, "_cg78", cJSON_CreateBool(model._cg78));
    // Send _cg8
    cJSON_AddItemToObject(root, "_cg8", cJSON_CreateBool(model._cg8));
    // Send _cg81
    cJSON_AddItemToObject(root, "_cg81", cJSON_CreateBool(model._cg81));
    // Send _cg86
    cJSON_AddItemToObject(root, "_cg86", cJSON_CreateBool(model._cg86));
    // Send _cg89
    cJSON_AddItemToObject(root, "_cg89", cJSON_CreateBool(model._cg89));
    // Send _cg91
    cJSON_AddItemToObject(root, "_cg91", cJSON_CreateBool(model._cg91));
    // Send _cg96
    cJSON_AddItemToObject(root, "_cg96", cJSON_CreateBool(model._cg96));
    // Send _cg99
    cJSON_AddItemToObject(root, "_cg99", cJSON_CreateBool(model._cg99));
    // Send _g10
    cJSON_AddItemToObject(root, "_g10", cJSON_CreateBool(model._g10));
    // Send _g106
    cJSON_AddItemToObject(root, "_g106", cJSON_CreateBool(model._g106));
    // Send _g107
    cJSON_AddItemToObject(root, "_g107", cJSON_CreateBool(model._g107));
    // Send _g108
    cJSON_AddItemToObject(root, "_g108", cJSON_CreateBool(model._g108));
    // Send _g11
    cJSON_AddItemToObject(root, "_g11", cJSON_CreateBool(model._g11));
    // Send _g12
    cJSON_AddItemToObject(root, "_g12", cJSON_CreateBool(model._g12));
    // Send _g30
    cJSON_AddItemToObject(root, "_g30", cJSON_CreateBool(model._g30));
    // Send _g31
    cJSON_AddItemToObject(root, "_g31", cJSON_CreateBool(model._g31));
    // Send _g32
    cJSON_AddItemToObject(root, "_g32", cJSON_CreateBool(model._g32));
    // Send _g48
    cJSON_AddItemToObject(root, "_g48", cJSON_CreateBool(model._g48));
    // Send _g49
    cJSON_AddItemToObject(root, "_g49", cJSON_CreateBool(model._g49));
    // Send _g5
    cJSON_AddItemToObject(root, "_g5", cJSON_CreateBool(model._g5));
    // Send _g50
    cJSON_AddItemToObject(root, "_g50", cJSON_CreateBool(model._g50));
    // Send _g51
    cJSON_AddItemToObject(root, "_g51", cJSON_CreateBool(model._g51));
    // Send _g52
    cJSON_AddItemToObject(root, "_g52", cJSON_CreateBool(model._g52));
    // Send _g6
    cJSON_AddItemToObject(root, "_g6", cJSON_CreateBool(model._g6));
    // Send _g60
    cJSON_AddItemToObject(root, "_g60", cJSON_CreateBool(model._g60));
    // Send _g61
    cJSON_AddItemToObject(root, "_g61", cJSON_CreateBool(model._g61));
    // Send _g68
    cJSON_AddItemToObject(root, "_g68", cJSON_CreateBool(model._g68));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(model._g7));
    // Send _g71
    cJSON_AddItemToObject(root, "_g71", cJSON_CreateBool(model._g71));
    // Send _g72
    cJSON_AddItemToObject(root, "_g72", cJSON_CreateBool(model._g72));
    // Send _pg10
    cJSON_AddItemToObject(root, "_pg10", cJSON_CreateBool(model._pg10));
    // Send _pg106
    cJSON_AddItemToObject(root, "_pg106", cJSON_CreateBool(model._pg106));
    // Send _pg30
    cJSON_AddItemToObject(root, "_pg30", cJSON_CreateBool(model._pg30));
    // Send _pg48
    cJSON_AddItemToObject(root, "_pg48", cJSON_CreateBool(model._pg48));
    // Send _pg5
    cJSON_AddItemToObject(root, "_pg5", cJSON_CreateBool(model._pg5));
    // Send _pg60
    cJSON_AddItemToObject(root, "_pg60", cJSON_CreateBool(model._pg60));
    // Send _pg68
    cJSON_AddItemToObject(root, "_pg68", cJSON_CreateBool(model._pg68));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 34; i0++) {
        cJSON *item0 = cJSON_CreateNumber(model._taken_transitions[i0]);
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
        cJSON_AddItemToObject(interface, "_DDDpacemaker_local_AVI_extend", info);
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
        cJSON_AddItemToObject(interface, "_cg104", info);
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
        cJSON_AddItemToObject(interface, "_cg11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg20", info);
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
        cJSON_AddItemToObject(interface, "_cg3", info);
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
        cJSON_AddItemToObject(interface, "_cg38", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg41", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg46", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg51", info);
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
        cJSON_AddItemToObject(interface, "_cg61", info);
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
        cJSON_AddItemToObject(interface, "_cg69", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg71", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg73", info);
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
        cJSON_AddItemToObject(interface, "_cg8", info);
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
        cJSON_AddItemToObject(interface, "_cg86", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg89", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg91", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg96", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg99", info);
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
        cJSON_AddItemToObject(interface, "_g106", info);
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
        cJSON_AddItemToObject(interface, "_g108", info);
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
        cJSON_AddItemToObject(interface, "_g12", info);
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
        cJSON_AddItemToObject(interface, "_g52", info);
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
        cJSON_AddItemToObject(interface, "_g61", info);
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
        cJSON_AddItemToObject(interface, "_g71", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g72", info);
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
        cJSON_AddItemToObject(interface, "_pg106", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg30", info);
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
        cJSON_AddItemToObject(interface, "_pg5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg60", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg68", info);
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

int main(int argc, const char* argv[]) {
    

    // Initialize 
    reset(&model);
    
    sendVariables(1);

    
    // Tick loop
    while (1) {
        
    
        // Read inputs
        receiveVariables();

        
        resetticktime();

  
        // Reaction of model
        tick(&model);
        
        _ticktime = getticktime();

         
        // Send outputs
        sendVariables(0);

        
        
    }
    
}
