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
            
            // Receive LRITO
            if (json.has("LRITO")) {
                ${tickdata_name}.LRITO = json.getBoolean("LRITO");
            }
            // Receive VRPTO
            if (json.has("VRPTO")) {
                ${tickdata_name}.VRPTO = json.getBoolean("VRPTO");
            }
            // Receive VSense
            if (json.has("VSense")) {
                ${tickdata_name}.VSense = json.getBoolean("VSense");
            }
            // Receive VPace
            if (json.has("VPace")) {
                ${tickdata_name}.VPace = json.getBoolean("VPace");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive _GO
            if (json.has("_GO")) {
                ${tickdata_name}._GO = json.getBoolean("_GO");
            }
            // Receive _TERM
            if (json.has("_TERM")) {
                ${tickdata_name}._TERM = json.getBoolean("_TERM");
            }
            // Receive _VVIPacemaker_example_local_LRI_ex
            if (json.has("_VVIPacemaker_example_local_LRI_ex")) {
                ${tickdata_name}._VVIPacemaker_example_local_LRI_ex = json.getBoolean("_VVIPacemaker_example_local_LRI_ex");
            }
            // Receive _VVIPacemaker_example_local_LRI_start
            if (json.has("_VVIPacemaker_example_local_LRI_start")) {
                ${tickdata_name}._VVIPacemaker_example_local_LRI_start = json.getBoolean("_VVIPacemaker_example_local_LRI_start");
            }
            // Receive _VVIPacemaker_example_local_LRI_stop
            if (json.has("_VVIPacemaker_example_local_LRI_stop")) {
                ${tickdata_name}._VVIPacemaker_example_local_LRI_stop = json.getBoolean("_VVIPacemaker_example_local_LRI_stop");
            }
            // Receive _VVIPacemaker_example_local_VRP_ex
            if (json.has("_VVIPacemaker_example_local_VRP_ex")) {
                ${tickdata_name}._VVIPacemaker_example_local_VRP_ex = json.getBoolean("_VVIPacemaker_example_local_VRP_ex");
            }
            // Receive _VVIPacemaker_example_local_VRP_start
            if (json.has("_VVIPacemaker_example_local_VRP_start")) {
                ${tickdata_name}._VVIPacemaker_example_local_VRP_start = json.getBoolean("_VVIPacemaker_example_local_VRP_start");
            }
            // Receive _VVIPacemaker_example_local_VRP_stop
            if (json.has("_VVIPacemaker_example_local_VRP_stop")) {
                ${tickdata_name}._VVIPacemaker_example_local_VRP_stop = json.getBoolean("_VVIPacemaker_example_local_VRP_stop");
            }
            // Receive _cg10
            if (json.has("_cg10")) {
                ${tickdata_name}._cg10 = json.getBoolean("_cg10");
            }
            // Receive _cg12
            if (json.has("_cg12")) {
                ${tickdata_name}._cg12 = json.getBoolean("_cg12");
            }
            // Receive _cg17
            if (json.has("_cg17")) {
                ${tickdata_name}._cg17 = json.getBoolean("_cg17");
            }
            // Receive _cg20
            if (json.has("_cg20")) {
                ${tickdata_name}._cg20 = json.getBoolean("_cg20");
            }
            // Receive _cg22
            if (json.has("_cg22")) {
                ${tickdata_name}._cg22 = json.getBoolean("_cg22");
            }
            // Receive _cg27
            if (json.has("_cg27")) {
                ${tickdata_name}._cg27 = json.getBoolean("_cg27");
            }
            // Receive _cg3
            if (json.has("_cg3")) {
                ${tickdata_name}._cg3 = json.getBoolean("_cg3");
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
            // Receive _cg40
            if (json.has("_cg40")) {
                ${tickdata_name}._cg40 = json.getBoolean("_cg40");
            }
            // Receive _cg43
            if (json.has("_cg43")) {
                ${tickdata_name}._cg43 = json.getBoolean("_cg43");
            }
            // Receive _cg7
            if (json.has("_cg7")) {
                ${tickdata_name}._cg7 = json.getBoolean("_cg7");
            }
            // Receive _g10
            if (json.has("_g10")) {
                ${tickdata_name}._g10 = json.getBoolean("_g10");
            }
            // Receive _g11
            if (json.has("_g11")) {
                ${tickdata_name}._g11 = json.getBoolean("_g11");
            }
            // Receive _g12
            if (json.has("_g12")) {
                ${tickdata_name}._g12 = json.getBoolean("_g12");
            }
            // Receive _g13
            if (json.has("_g13")) {
                ${tickdata_name}._g13 = json.getBoolean("_g13");
            }
            // Receive _g17
            if (json.has("_g17")) {
                ${tickdata_name}._g17 = json.getBoolean("_g17");
            }
            // Receive _g18
            if (json.has("_g18")) {
                ${tickdata_name}._g18 = json.getBoolean("_g18");
            }
            // Receive _g2
            if (json.has("_g2")) {
                ${tickdata_name}._g2 = json.getBoolean("_g2");
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
            // Receive _g27
            if (json.has("_g27")) {
                ${tickdata_name}._g27 = json.getBoolean("_g27");
            }
            // Receive _g28
            if (json.has("_g28")) {
                ${tickdata_name}._g28 = json.getBoolean("_g28");
            }
            // Receive _g29
            if (json.has("_g29")) {
                ${tickdata_name}._g29 = json.getBoolean("_g29");
            }
            // Receive _g3
            if (json.has("_g3")) {
                ${tickdata_name}._g3 = json.getBoolean("_g3");
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
            // Receive _g4
            if (json.has("_g4")) {
                ${tickdata_name}._g4 = json.getBoolean("_g4");
            }
            // Receive _g40
            if (json.has("_g40")) {
                ${tickdata_name}._g40 = json.getBoolean("_g40");
            }
            // Receive _g44
            if (json.has("_g44")) {
                ${tickdata_name}._g44 = json.getBoolean("_g44");
            }
            // Receive _g5
            if (json.has("_g5")) {
                ${tickdata_name}._g5 = json.getBoolean("_g5");
            }
            // Receive _g7
            if (json.has("_g7")) {
                ${tickdata_name}._g7 = json.getBoolean("_g7");
            }
            // Receive _g8
            if (json.has("_g8")) {
                ${tickdata_name}._g8 = json.getBoolean("_g8");
            }
            // Receive _pg17
            if (json.has("_pg17")) {
                ${tickdata_name}._pg17 = json.getBoolean("_pg17");
            }
            // Receive _pg2
            if (json.has("_pg2")) {
                ${tickdata_name}._pg2 = json.getBoolean("_pg2");
            }
            // Receive _pg23
            if (json.has("_pg23")) {
                ${tickdata_name}._pg23 = json.getBoolean("_pg23");
            }
            // Receive _pg29
            if (json.has("_pg29")) {
                ${tickdata_name}._pg29 = json.getBoolean("_pg29");
            }
            // Receive _pg32
            if (json.has("_pg32")) {
                ${tickdata_name}._pg32 = json.getBoolean("_pg32");
            }
            // Receive _pg33
            if (json.has("_pg33")) {
                ${tickdata_name}._pg33 = json.getBoolean("_pg33");
            }
            // Receive _pg40
            if (json.has("_pg40")) {
                ${tickdata_name}._pg40 = json.getBoolean("_pg40");
            }
            // Receive _pg5
            if (json.has("_pg5")) {
                ${tickdata_name}._pg5 = json.getBoolean("_pg5");
            }
            // Receive _pg8
            if (json.has("_pg8")) {
                ${tickdata_name}._pg8 = json.getBoolean("_pg8");
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
        
        // Send LRITO
        json.put("LRITO", JSONObject.wrap(${tickdata_name}.LRITO));
        // Send VRPTO
        json.put("VRPTO", JSONObject.wrap(${tickdata_name}.VRPTO));
        // Send VSense
        json.put("VSense", JSONObject.wrap(${tickdata_name}.VSense));
        // Send VPace
        json.put("VPace", JSONObject.wrap(${tickdata_name}.VPace));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send _GO
        json.put("_GO", JSONObject.wrap(${tickdata_name}._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(${tickdata_name}._TERM));
        // Send _VVIPacemaker_example_local_LRI_ex
        json.put("_VVIPacemaker_example_local_LRI_ex", JSONObject.wrap(${tickdata_name}._VVIPacemaker_example_local_LRI_ex));
        // Send _VVIPacemaker_example_local_LRI_start
        json.put("_VVIPacemaker_example_local_LRI_start", JSONObject.wrap(${tickdata_name}._VVIPacemaker_example_local_LRI_start));
        // Send _VVIPacemaker_example_local_LRI_stop
        json.put("_VVIPacemaker_example_local_LRI_stop", JSONObject.wrap(${tickdata_name}._VVIPacemaker_example_local_LRI_stop));
        // Send _VVIPacemaker_example_local_VRP_ex
        json.put("_VVIPacemaker_example_local_VRP_ex", JSONObject.wrap(${tickdata_name}._VVIPacemaker_example_local_VRP_ex));
        // Send _VVIPacemaker_example_local_VRP_start
        json.put("_VVIPacemaker_example_local_VRP_start", JSONObject.wrap(${tickdata_name}._VVIPacemaker_example_local_VRP_start));
        // Send _VVIPacemaker_example_local_VRP_stop
        json.put("_VVIPacemaker_example_local_VRP_stop", JSONObject.wrap(${tickdata_name}._VVIPacemaker_example_local_VRP_stop));
        // Send _cg10
        json.put("_cg10", JSONObject.wrap(${tickdata_name}._cg10));
        // Send _cg12
        json.put("_cg12", JSONObject.wrap(${tickdata_name}._cg12));
        // Send _cg17
        json.put("_cg17", JSONObject.wrap(${tickdata_name}._cg17));
        // Send _cg20
        json.put("_cg20", JSONObject.wrap(${tickdata_name}._cg20));
        // Send _cg22
        json.put("_cg22", JSONObject.wrap(${tickdata_name}._cg22));
        // Send _cg27
        json.put("_cg27", JSONObject.wrap(${tickdata_name}._cg27));
        // Send _cg3
        json.put("_cg3", JSONObject.wrap(${tickdata_name}._cg3));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(${tickdata_name}._cg31));
        // Send _cg33
        json.put("_cg33", JSONObject.wrap(${tickdata_name}._cg33));
        // Send _cg35
        json.put("_cg35", JSONObject.wrap(${tickdata_name}._cg35));
        // Send _cg40
        json.put("_cg40", JSONObject.wrap(${tickdata_name}._cg40));
        // Send _cg43
        json.put("_cg43", JSONObject.wrap(${tickdata_name}._cg43));
        // Send _cg7
        json.put("_cg7", JSONObject.wrap(${tickdata_name}._cg7));
        // Send _g10
        json.put("_g10", JSONObject.wrap(${tickdata_name}._g10));
        // Send _g11
        json.put("_g11", JSONObject.wrap(${tickdata_name}._g11));
        // Send _g12
        json.put("_g12", JSONObject.wrap(${tickdata_name}._g12));
        // Send _g13
        json.put("_g13", JSONObject.wrap(${tickdata_name}._g13));
        // Send _g17
        json.put("_g17", JSONObject.wrap(${tickdata_name}._g17));
        // Send _g18
        json.put("_g18", JSONObject.wrap(${tickdata_name}._g18));
        // Send _g2
        json.put("_g2", JSONObject.wrap(${tickdata_name}._g2));
        // Send _g20
        json.put("_g20", JSONObject.wrap(${tickdata_name}._g20));
        // Send _g21
        json.put("_g21", JSONObject.wrap(${tickdata_name}._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(${tickdata_name}._g22));
        // Send _g23
        json.put("_g23", JSONObject.wrap(${tickdata_name}._g23));
        // Send _g27
        json.put("_g27", JSONObject.wrap(${tickdata_name}._g27));
        // Send _g28
        json.put("_g28", JSONObject.wrap(${tickdata_name}._g28));
        // Send _g29
        json.put("_g29", JSONObject.wrap(${tickdata_name}._g29));
        // Send _g3
        json.put("_g3", JSONObject.wrap(${tickdata_name}._g3));
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
        // Send _g4
        json.put("_g4", JSONObject.wrap(${tickdata_name}._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(${tickdata_name}._g40));
        // Send _g44
        json.put("_g44", JSONObject.wrap(${tickdata_name}._g44));
        // Send _g5
        json.put("_g5", JSONObject.wrap(${tickdata_name}._g5));
        // Send _g7
        json.put("_g7", JSONObject.wrap(${tickdata_name}._g7));
        // Send _g8
        json.put("_g8", JSONObject.wrap(${tickdata_name}._g8));
        // Send _pg17
        json.put("_pg17", JSONObject.wrap(${tickdata_name}._pg17));
        // Send _pg2
        json.put("_pg2", JSONObject.wrap(${tickdata_name}._pg2));
        // Send _pg23
        json.put("_pg23", JSONObject.wrap(${tickdata_name}._pg23));
        // Send _pg29
        json.put("_pg29", JSONObject.wrap(${tickdata_name}._pg29));
        // Send _pg32
        json.put("_pg32", JSONObject.wrap(${tickdata_name}._pg32));
        // Send _pg33
        json.put("_pg33", JSONObject.wrap(${tickdata_name}._pg33));
        // Send _pg40
        json.put("_pg40", JSONObject.wrap(${tickdata_name}._pg40));
        // Send _pg5
        json.put("_pg5", JSONObject.wrap(${tickdata_name}._pg5));
        // Send _pg8
        json.put("_pg8", JSONObject.wrap(${tickdata_name}._pg8));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(${tickdata_name}._taken_transitions));
        
        System.out.println(json.toString());
    }
</#macro>
