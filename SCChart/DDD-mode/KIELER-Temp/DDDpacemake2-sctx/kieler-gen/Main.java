

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.*;

public class Main {

    public static UpDownPar model = new UpDownPar();
    
    private static long _tickstart;
private static long _ticktime;

    
    public static BufferedReader stdInReader = new BufferedReader(new InputStreamReader(System.in));
            
    private static void receiveVariables() {
        try {
            String line = stdInReader.readLine();
            JSONObject json = new JSONObject(line);
            
            // Receive R
            if (json.has("R")) {
                model.R = json.getBoolean("R");
            }
            // Receive deltaT
            if (json.has("deltaT")) {
                model.deltaT = json.getDouble("deltaT");
            }
            // Receive first
            if (json.has("first")) {
                model.first = json.getBoolean("first");
            }
            // Receive second
            if (json.has("second")) {
                model.second = json.getBoolean("second");
            }
            // Receive start
            if (json.has("start")) {
                model.start = json.getBoolean("start");
            }
            // Receive done
            if (json.has("done")) {
                model.done = json.getBoolean("done");
            }
            // Receive sleepT
            if (json.has("sleepT")) {
                model.sleepT = json.getDouble("sleepT");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive _GO
            if (json.has("_GO")) {
                model._GO = json.getBoolean("_GO");
            }
            // Receive _TERM
            if (json.has("_TERM")) {
                model._TERM = json.getBoolean("_TERM");
            }
            // Receive _UpDownPar_local_B
            if (json.has("_UpDownPar_local_B")) {
                model._UpDownPar_local_B = json.getBoolean("_UpDownPar_local_B");
            }
            // Receive _UpDownPar_local_B1
            if (json.has("_UpDownPar_local_B1")) {
                model._UpDownPar_local_B1 = json.getBoolean("_UpDownPar_local_B1");
            }
            // Receive _UpDownPar_local__Atrig
            if (json.has("_UpDownPar_local__Atrig")) {
                model._UpDownPar_local__Atrig = json.getBoolean("_UpDownPar_local__Atrig");
            }
            // Receive _UpDownPar_local__Atrig1
            if (json.has("_UpDownPar_local__Atrig1")) {
                model._UpDownPar_local__Atrig1 = json.getBoolean("_UpDownPar_local__Atrig1");
            }
            // Receive _UpDownPar_local__Atrig10
            if (json.has("_UpDownPar_local__Atrig10")) {
                model._UpDownPar_local__Atrig10 = json.getBoolean("_UpDownPar_local__Atrig10");
            }
            // Receive _UpDownPar_local__Atrig2
            if (json.has("_UpDownPar_local__Atrig2")) {
                model._UpDownPar_local__Atrig2 = json.getBoolean("_UpDownPar_local__Atrig2");
            }
            // Receive _UpDownPar_local__Atrig3
            if (json.has("_UpDownPar_local__Atrig3")) {
                model._UpDownPar_local__Atrig3 = json.getBoolean("_UpDownPar_local__Atrig3");
            }
            // Receive _UpDownPar_local__Atrig4
            if (json.has("_UpDownPar_local__Atrig4")) {
                model._UpDownPar_local__Atrig4 = json.getBoolean("_UpDownPar_local__Atrig4");
            }
            // Receive _UpDownPar_local__Atrig5
            if (json.has("_UpDownPar_local__Atrig5")) {
                model._UpDownPar_local__Atrig5 = json.getBoolean("_UpDownPar_local__Atrig5");
            }
            // Receive _UpDownPar_local__Atrig6
            if (json.has("_UpDownPar_local__Atrig6")) {
                model._UpDownPar_local__Atrig6 = json.getBoolean("_UpDownPar_local__Atrig6");
            }
            // Receive _UpDownPar_local__Atrig7
            if (json.has("_UpDownPar_local__Atrig7")) {
                model._UpDownPar_local__Atrig7 = json.getBoolean("_UpDownPar_local__Atrig7");
            }
            // Receive _UpDownPar_local__Atrig8
            if (json.has("_UpDownPar_local__Atrig8")) {
                model._UpDownPar_local__Atrig8 = json.getBoolean("_UpDownPar_local__Atrig8");
            }
            // Receive _UpDownPar_local__Atrig9
            if (json.has("_UpDownPar_local__Atrig9")) {
                model._UpDownPar_local__Atrig9 = json.getBoolean("_UpDownPar_local__Atrig9");
            }
            // Receive _UpDownPar_local__CFSterm
            if (json.has("_UpDownPar_local__CFSterm")) {
                model._UpDownPar_local__CFSterm = json.getBoolean("_UpDownPar_local__CFSterm");
            }
            // Receive _UpDownPar_local__CFSterm1
            if (json.has("_UpDownPar_local__CFSterm1")) {
                model._UpDownPar_local__CFSterm1 = json.getBoolean("_UpDownPar_local__CFSterm1");
            }
            // Receive _UpDownPar_local__pre__region0_CountingUp_end
            if (json.has("_UpDownPar_local__pre__region0_CountingUp_end")) {
                model._UpDownPar_local__pre__region0_CountingUp_end = json.getBoolean("_UpDownPar_local__pre__region0_CountingUp_end");
            }
            // Receive _UpDownPar_local__pre__region1_CountingDown_end2
            if (json.has("_UpDownPar_local__pre__region1_CountingDown_end2")) {
                model._UpDownPar_local__pre__region1_CountingDown_end2 = json.getBoolean("_UpDownPar_local__pre__region1_CountingDown_end2");
            }
            // Receive _UpDownPar_local__reg__region0_CountingUp_end
            if (json.has("_UpDownPar_local__reg__region0_CountingUp_end")) {
                model._UpDownPar_local__reg__region0_CountingUp_end = json.getBoolean("_UpDownPar_local__reg__region0_CountingUp_end");
            }
            // Receive _UpDownPar_local__reg__region1_CountingDown_end2
            if (json.has("_UpDownPar_local__reg__region1_CountingDown_end2")) {
                model._UpDownPar_local__reg__region1_CountingDown_end2 = json.getBoolean("_UpDownPar_local__reg__region1_CountingDown_end2");
            }
            // Receive _UpDownPar_local__region0_CountingUp_end
            if (json.has("_UpDownPar_local__region0_CountingUp_end")) {
                model._UpDownPar_local__region0_CountingUp_end = json.getBoolean("_UpDownPar_local__region0_CountingUp_end");
            }
            // Receive _UpDownPar_local__region0_bit1_c1
            if (json.has("_UpDownPar_local__region0_bit1_c1")) {
                model._UpDownPar_local__region0_bit1_c1 = json.getDouble("_UpDownPar_local__region0_bit1_c1");
            }
            // Receive _UpDownPar_local__region0_bit1_c2
            if (json.has("_UpDownPar_local__region0_bit1_c2")) {
                model._UpDownPar_local__region0_bit1_c2 = json.getDouble("_UpDownPar_local__region0_bit1_c2");
            }
            // Receive _UpDownPar_local__region1_CountingDown_end2
            if (json.has("_UpDownPar_local__region1_CountingDown_end2")) {
                model._UpDownPar_local__region1_CountingDown_end2 = json.getBoolean("_UpDownPar_local__region1_CountingDown_end2");
            }
            // Receive _cg100
            if (json.has("_cg100")) {
                model._cg100 = json.getBoolean("_cg100");
            }
            // Receive _cg101
            if (json.has("_cg101")) {
                model._cg101 = json.getBoolean("_cg101");
            }
            // Receive _cg103
            if (json.has("_cg103")) {
                model._cg103 = json.getBoolean("_cg103");
            }
            // Receive _cg106
            if (json.has("_cg106")) {
                model._cg106 = json.getBoolean("_cg106");
            }
            // Receive _cg108
            if (json.has("_cg108")) {
                model._cg108 = json.getBoolean("_cg108");
            }
            // Receive _cg109
            if (json.has("_cg109")) {
                model._cg109 = json.getBoolean("_cg109");
            }
            // Receive _cg11
            if (json.has("_cg11")) {
                model._cg11 = json.getBoolean("_cg11");
            }
            // Receive _cg111
            if (json.has("_cg111")) {
                model._cg111 = json.getBoolean("_cg111");
            }
            // Receive _cg113
            if (json.has("_cg113")) {
                model._cg113 = json.getBoolean("_cg113");
            }
            // Receive _cg115
            if (json.has("_cg115")) {
                model._cg115 = json.getBoolean("_cg115");
            }
            // Receive _cg117
            if (json.has("_cg117")) {
                model._cg117 = json.getBoolean("_cg117");
            }
            // Receive _cg118
            if (json.has("_cg118")) {
                model._cg118 = json.getBoolean("_cg118");
            }
            // Receive _cg119
            if (json.has("_cg119")) {
                model._cg119 = json.getBoolean("_cg119");
            }
            // Receive _cg121
            if (json.has("_cg121")) {
                model._cg121 = json.getBoolean("_cg121");
            }
            // Receive _cg123
            if (json.has("_cg123")) {
                model._cg123 = json.getBoolean("_cg123");
            }
            // Receive _cg124
            if (json.has("_cg124")) {
                model._cg124 = json.getBoolean("_cg124");
            }
            // Receive _cg125
            if (json.has("_cg125")) {
                model._cg125 = json.getBoolean("_cg125");
            }
            // Receive _cg127
            if (json.has("_cg127")) {
                model._cg127 = json.getBoolean("_cg127");
            }
            // Receive _cg128
            if (json.has("_cg128")) {
                model._cg128 = json.getBoolean("_cg128");
            }
            // Receive _cg129
            if (json.has("_cg129")) {
                model._cg129 = json.getBoolean("_cg129");
            }
            // Receive _cg13
            if (json.has("_cg13")) {
                model._cg13 = json.getBoolean("_cg13");
            }
            // Receive _cg131
            if (json.has("_cg131")) {
                model._cg131 = json.getBoolean("_cg131");
            }
            // Receive _cg134
            if (json.has("_cg134")) {
                model._cg134 = json.getBoolean("_cg134");
            }
            // Receive _cg136
            if (json.has("_cg136")) {
                model._cg136 = json.getBoolean("_cg136");
            }
            // Receive _cg137
            if (json.has("_cg137")) {
                model._cg137 = json.getBoolean("_cg137");
            }
            // Receive _cg138
            if (json.has("_cg138")) {
                model._cg138 = json.getBoolean("_cg138");
            }
            // Receive _cg14
            if (json.has("_cg14")) {
                model._cg14 = json.getBoolean("_cg14");
            }
            // Receive _cg141
            if (json.has("_cg141")) {
                model._cg141 = json.getBoolean("_cg141");
            }
            // Receive _cg144
            if (json.has("_cg144")) {
                model._cg144 = json.getBoolean("_cg144");
            }
            // Receive _cg145
            if (json.has("_cg145")) {
                model._cg145 = json.getBoolean("_cg145");
            }
            // Receive _cg147
            if (json.has("_cg147")) {
                model._cg147 = json.getBoolean("_cg147");
            }
            // Receive _cg149
            if (json.has("_cg149")) {
                model._cg149 = json.getBoolean("_cg149");
            }
            // Receive _cg150
            if (json.has("_cg150")) {
                model._cg150 = json.getBoolean("_cg150");
            }
            // Receive _cg153
            if (json.has("_cg153")) {
                model._cg153 = json.getBoolean("_cg153");
            }
            // Receive _cg156
            if (json.has("_cg156")) {
                model._cg156 = json.getBoolean("_cg156");
            }
            // Receive _cg159
            if (json.has("_cg159")) {
                model._cg159 = json.getBoolean("_cg159");
            }
            // Receive _cg16
            if (json.has("_cg16")) {
                model._cg16 = json.getBoolean("_cg16");
            }
            // Receive _cg161
            if (json.has("_cg161")) {
                model._cg161 = json.getBoolean("_cg161");
            }
            // Receive _cg163
            if (json.has("_cg163")) {
                model._cg163 = json.getBoolean("_cg163");
            }
            // Receive _cg167
            if (json.has("_cg167")) {
                model._cg167 = json.getBoolean("_cg167");
            }
            // Receive _cg170
            if (json.has("_cg170")) {
                model._cg170 = json.getBoolean("_cg170");
            }
            // Receive _cg172
            if (json.has("_cg172")) {
                model._cg172 = json.getBoolean("_cg172");
            }
            // Receive _cg175
            if (json.has("_cg175")) {
                model._cg175 = json.getBoolean("_cg175");
            }
            // Receive _cg177
            if (json.has("_cg177")) {
                model._cg177 = json.getBoolean("_cg177");
            }
            // Receive _cg180
            if (json.has("_cg180")) {
                model._cg180 = json.getBoolean("_cg180");
            }
            // Receive _cg183
            if (json.has("_cg183")) {
                model._cg183 = json.getBoolean("_cg183");
            }
            // Receive _cg186
            if (json.has("_cg186")) {
                model._cg186 = json.getBoolean("_cg186");
            }
            // Receive _cg187
            if (json.has("_cg187")) {
                model._cg187 = json.getBoolean("_cg187");
            }
            // Receive _cg19
            if (json.has("_cg19")) {
                model._cg19 = json.getBoolean("_cg19");
            }
            // Receive _cg21
            if (json.has("_cg21")) {
                model._cg21 = json.getBoolean("_cg21");
            }
            // Receive _cg22
            if (json.has("_cg22")) {
                model._cg22 = json.getBoolean("_cg22");
            }
            // Receive _cg24
            if (json.has("_cg24")) {
                model._cg24 = json.getBoolean("_cg24");
            }
            // Receive _cg26
            if (json.has("_cg26")) {
                model._cg26 = json.getBoolean("_cg26");
            }
            // Receive _cg28
            if (json.has("_cg28")) {
                model._cg28 = json.getBoolean("_cg28");
            }
            // Receive _cg30
            if (json.has("_cg30")) {
                model._cg30 = json.getBoolean("_cg30");
            }
            // Receive _cg31
            if (json.has("_cg31")) {
                model._cg31 = json.getBoolean("_cg31");
            }
            // Receive _cg32
            if (json.has("_cg32")) {
                model._cg32 = json.getBoolean("_cg32");
            }
            // Receive _cg34
            if (json.has("_cg34")) {
                model._cg34 = json.getBoolean("_cg34");
            }
            // Receive _cg36
            if (json.has("_cg36")) {
                model._cg36 = json.getBoolean("_cg36");
            }
            // Receive _cg37
            if (json.has("_cg37")) {
                model._cg37 = json.getBoolean("_cg37");
            }
            // Receive _cg38
            if (json.has("_cg38")) {
                model._cg38 = json.getBoolean("_cg38");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                model._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg40
            if (json.has("_cg40")) {
                model._cg40 = json.getBoolean("_cg40");
            }
            // Receive _cg41
            if (json.has("_cg41")) {
                model._cg41 = json.getBoolean("_cg41");
            }
            // Receive _cg42
            if (json.has("_cg42")) {
                model._cg42 = json.getBoolean("_cg42");
            }
            // Receive _cg44
            if (json.has("_cg44")) {
                model._cg44 = json.getBoolean("_cg44");
            }
            // Receive _cg47
            if (json.has("_cg47")) {
                model._cg47 = json.getBoolean("_cg47");
            }
            // Receive _cg49
            if (json.has("_cg49")) {
                model._cg49 = json.getBoolean("_cg49");
            }
            // Receive _cg50
            if (json.has("_cg50")) {
                model._cg50 = json.getBoolean("_cg50");
            }
            // Receive _cg51
            if (json.has("_cg51")) {
                model._cg51 = json.getBoolean("_cg51");
            }
            // Receive _cg55
            if (json.has("_cg55")) {
                model._cg55 = json.getBoolean("_cg55");
            }
            // Receive _cg57
            if (json.has("_cg57")) {
                model._cg57 = json.getBoolean("_cg57");
            }
            // Receive _cg59
            if (json.has("_cg59")) {
                model._cg59 = json.getBoolean("_cg59");
            }
            // Receive _cg61
            if (json.has("_cg61")) {
                model._cg61 = json.getBoolean("_cg61");
            }
            // Receive _cg62
            if (json.has("_cg62")) {
                model._cg62 = json.getBoolean("_cg62");
            }
            // Receive _cg64
            if (json.has("_cg64")) {
                model._cg64 = json.getBoolean("_cg64");
            }
            // Receive _cg66
            if (json.has("_cg66")) {
                model._cg66 = json.getBoolean("_cg66");
            }
            // Receive _cg67
            if (json.has("_cg67")) {
                model._cg67 = json.getBoolean("_cg67");
            }
            // Receive _cg69
            if (json.has("_cg69")) {
                model._cg69 = json.getBoolean("_cg69");
            }
            // Receive _cg72
            if (json.has("_cg72")) {
                model._cg72 = json.getBoolean("_cg72");
            }
            // Receive _cg75
            if (json.has("_cg75")) {
                model._cg75 = json.getBoolean("_cg75");
            }
            // Receive _cg77
            if (json.has("_cg77")) {
                model._cg77 = json.getBoolean("_cg77");
            }
            // Receive _cg79
            if (json.has("_cg79")) {
                model._cg79 = json.getBoolean("_cg79");
            }
            // Receive _cg85
            if (json.has("_cg85")) {
                model._cg85 = json.getBoolean("_cg85");
            }
            // Receive _cg87
            if (json.has("_cg87")) {
                model._cg87 = json.getBoolean("_cg87");
            }
            // Receive _cg89
            if (json.has("_cg89")) {
                model._cg89 = json.getBoolean("_cg89");
            }
            // Receive _cg9
            if (json.has("_cg9")) {
                model._cg9 = json.getBoolean("_cg9");
            }
            // Receive _cg90
            if (json.has("_cg90")) {
                model._cg90 = json.getBoolean("_cg90");
            }
            // Receive _cg91
            if (json.has("_cg91")) {
                model._cg91 = json.getBoolean("_cg91");
            }
            // Receive _cg93
            if (json.has("_cg93")) {
                model._cg93 = json.getBoolean("_cg93");
            }
            // Receive _cg95
            if (json.has("_cg95")) {
                model._cg95 = json.getBoolean("_cg95");
            }
            // Receive _cg96
            if (json.has("_cg96")) {
                model._cg96 = json.getBoolean("_cg96");
            }
            // Receive _cg97
            if (json.has("_cg97")) {
                model._cg97 = json.getBoolean("_cg97");
            }
            // Receive _cg99
            if (json.has("_cg99")) {
                model._cg99 = json.getBoolean("_cg99");
            }
            // Receive _g10
            if (json.has("_g10")) {
                model._g10 = json.getBoolean("_g10");
            }
            // Receive _g100
            if (json.has("_g100")) {
                model._g100 = json.getBoolean("_g100");
            }
            // Receive _g102
            if (json.has("_g102")) {
                model._g102 = json.getBoolean("_g102");
            }
            // Receive _g103
            if (json.has("_g103")) {
                model._g103 = json.getBoolean("_g103");
            }
            // Receive _g104
            if (json.has("_g104")) {
                model._g104 = json.getBoolean("_g104");
            }
            // Receive _g105
            if (json.has("_g105")) {
                model._g105 = json.getBoolean("_g105");
            }
            // Receive _g105_e3
            if (json.has("_g105_e3")) {
                model._g105_e3 = json.getBoolean("_g105_e3");
            }
            // Receive _g106
            if (json.has("_g106")) {
                model._g106 = json.getBoolean("_g106");
            }
            // Receive _g107
            if (json.has("_g107")) {
                model._g107 = json.getBoolean("_g107");
            }
            // Receive _g108
            if (json.has("_g108")) {
                model._g108 = json.getBoolean("_g108");
            }
            // Receive _g109
            if (json.has("_g109")) {
                model._g109 = json.getBoolean("_g109");
            }
            // Receive _g11
            if (json.has("_g11")) {
                model._g11 = json.getBoolean("_g11");
            }
            // Receive _g110
            if (json.has("_g110")) {
                model._g110 = json.getBoolean("_g110");
            }
            // Receive _g110_e1
            if (json.has("_g110_e1")) {
                model._g110_e1 = json.getBoolean("_g110_e1");
            }
            // Receive _g111
            if (json.has("_g111")) {
                model._g111 = json.getBoolean("_g111");
            }
            // Receive _g112
            if (json.has("_g112")) {
                model._g112 = json.getBoolean("_g112");
            }
            // Receive _g115
            if (json.has("_g115")) {
                model._g115 = json.getBoolean("_g115");
            }
            // Receive _g116
            if (json.has("_g116")) {
                model._g116 = json.getBoolean("_g116");
            }
            // Receive _g116_e1
            if (json.has("_g116_e1")) {
                model._g116_e1 = json.getBoolean("_g116_e1");
            }
            // Receive _g117
            if (json.has("_g117")) {
                model._g117 = json.getBoolean("_g117");
            }
            // Receive _g119
            if (json.has("_g119")) {
                model._g119 = json.getBoolean("_g119");
            }
            // Receive _g12
            if (json.has("_g12")) {
                model._g12 = json.getBoolean("_g12");
            }
            // Receive _g121
            if (json.has("_g121")) {
                model._g121 = json.getBoolean("_g121");
            }
            // Receive _g122
            if (json.has("_g122")) {
                model._g122 = json.getBoolean("_g122");
            }
            // Receive _g122_e2
            if (json.has("_g122_e2")) {
                model._g122_e2 = json.getBoolean("_g122_e2");
            }
            // Receive _g123
            if (json.has("_g123")) {
                model._g123 = json.getBoolean("_g123");
            }
            // Receive _g124
            if (json.has("_g124")) {
                model._g124 = json.getBoolean("_g124");
            }
            // Receive _g125
            if (json.has("_g125")) {
                model._g125 = json.getBoolean("_g125");
            }
            // Receive _g127
            if (json.has("_g127")) {
                model._g127 = json.getBoolean("_g127");
            }
            // Receive _g128
            if (json.has("_g128")) {
                model._g128 = json.getBoolean("_g128");
            }
            // Receive _g12_e1
            if (json.has("_g12_e1")) {
                model._g12_e1 = json.getBoolean("_g12_e1");
            }
            // Receive _g13
            if (json.has("_g13")) {
                model._g13 = json.getBoolean("_g13");
            }
            // Receive _g131
            if (json.has("_g131")) {
                model._g131 = json.getBoolean("_g131");
            }
            // Receive _g132
            if (json.has("_g132")) {
                model._g132 = json.getBoolean("_g132");
            }
            // Receive _g133
            if (json.has("_g133")) {
                model._g133 = json.getBoolean("_g133");
            }
            // Receive _g133_e3
            if (json.has("_g133_e3")) {
                model._g133_e3 = json.getBoolean("_g133_e3");
            }
            // Receive _g134
            if (json.has("_g134")) {
                model._g134 = json.getBoolean("_g134");
            }
            // Receive _g135
            if (json.has("_g135")) {
                model._g135 = json.getBoolean("_g135");
            }
            // Receive _g136
            if (json.has("_g136")) {
                model._g136 = json.getBoolean("_g136");
            }
            // Receive _g137
            if (json.has("_g137")) {
                model._g137 = json.getBoolean("_g137");
            }
            // Receive _g138
            if (json.has("_g138")) {
                model._g138 = json.getBoolean("_g138");
            }
            // Receive _g139
            if (json.has("_g139")) {
                model._g139 = json.getBoolean("_g139");
            }
            // Receive _g141
            if (json.has("_g141")) {
                model._g141 = json.getBoolean("_g141");
            }
            // Receive _g142
            if (json.has("_g142")) {
                model._g142 = json.getBoolean("_g142");
            }
            // Receive _g142_e2
            if (json.has("_g142_e2")) {
                model._g142_e2 = json.getBoolean("_g142_e2");
            }
            // Receive _g143
            if (json.has("_g143")) {
                model._g143 = json.getBoolean("_g143");
            }
            // Receive _g144
            if (json.has("_g144")) {
                model._g144 = json.getBoolean("_g144");
            }
            // Receive _g145
            if (json.has("_g145")) {
                model._g145 = json.getBoolean("_g145");
            }
            // Receive _g146
            if (json.has("_g146")) {
                model._g146 = json.getBoolean("_g146");
            }
            // Receive _g147
            if (json.has("_g147")) {
                model._g147 = json.getBoolean("_g147");
            }
            // Receive _g149
            if (json.has("_g149")) {
                model._g149 = json.getBoolean("_g149");
            }
            // Receive _g150
            if (json.has("_g150")) {
                model._g150 = json.getBoolean("_g150");
            }
            // Receive _g151
            if (json.has("_g151")) {
                model._g151 = json.getBoolean("_g151");
            }
            // Receive _g153
            if (json.has("_g153")) {
                model._g153 = json.getBoolean("_g153");
            }
            // Receive _g154
            if (json.has("_g154")) {
                model._g154 = json.getBoolean("_g154");
            }
            // Receive _g154_e3
            if (json.has("_g154_e3")) {
                model._g154_e3 = json.getBoolean("_g154_e3");
            }
            // Receive _g155
            if (json.has("_g155")) {
                model._g155 = json.getBoolean("_g155");
            }
            // Receive _g156
            if (json.has("_g156")) {
                model._g156 = json.getBoolean("_g156");
            }
            // Receive _g159
            if (json.has("_g159")) {
                model._g159 = json.getBoolean("_g159");
            }
            // Receive _g16
            if (json.has("_g16")) {
                model._g16 = json.getBoolean("_g16");
            }
            // Receive _g160
            if (json.has("_g160")) {
                model._g160 = json.getBoolean("_g160");
            }
            // Receive _g160_e4
            if (json.has("_g160_e4")) {
                model._g160_e4 = json.getBoolean("_g160_e4");
            }
            // Receive _g161
            if (json.has("_g161")) {
                model._g161 = json.getBoolean("_g161");
            }
            // Receive _g162
            if (json.has("_g162")) {
                model._g162 = json.getBoolean("_g162");
            }
            // Receive _g163
            if (json.has("_g163")) {
                model._g163 = json.getBoolean("_g163");
            }
            // Receive _g165
            if (json.has("_g165")) {
                model._g165 = json.getBoolean("_g165");
            }
            // Receive _g167
            if (json.has("_g167")) {
                model._g167 = json.getBoolean("_g167");
            }
            // Receive _g17
            if (json.has("_g17")) {
                model._g17 = json.getBoolean("_g17");
            }
            // Receive _g170
            if (json.has("_g170")) {
                model._g170 = json.getBoolean("_g170");
            }
            // Receive _g177
            if (json.has("_g177")) {
                model._g177 = json.getBoolean("_g177");
            }
            // Receive _g18
            if (json.has("_g18")) {
                model._g18 = json.getBoolean("_g18");
            }
            // Receive _g180
            if (json.has("_g180")) {
                model._g180 = json.getBoolean("_g180");
            }
            // Receive _g183
            if (json.has("_g183")) {
                model._g183 = json.getBoolean("_g183");
            }
            // Receive _g184
            if (json.has("_g184")) {
                model._g184 = json.getBoolean("_g184");
            }
            // Receive _g18_e2
            if (json.has("_g18_e2")) {
                model._g18_e2 = json.getBoolean("_g18_e2");
            }
            // Receive _g19
            if (json.has("_g19")) {
                model._g19 = json.getBoolean("_g19");
            }
            // Receive _g20
            if (json.has("_g20")) {
                model._g20 = json.getBoolean("_g20");
            }
            // Receive _g21
            if (json.has("_g21")) {
                model._g21 = json.getBoolean("_g21");
            }
            // Receive _g22
            if (json.has("_g22")) {
                model._g22 = json.getBoolean("_g22");
            }
            // Receive _g23
            if (json.has("_g23")) {
                model._g23 = json.getBoolean("_g23");
            }
            // Receive _g23_e1
            if (json.has("_g23_e1")) {
                model._g23_e1 = json.getBoolean("_g23_e1");
            }
            // Receive _g24
            if (json.has("_g24")) {
                model._g24 = json.getBoolean("_g24");
            }
            // Receive _g25
            if (json.has("_g25")) {
                model._g25 = json.getBoolean("_g25");
            }
            // Receive _g28
            if (json.has("_g28")) {
                model._g28 = json.getBoolean("_g28");
            }
            // Receive _g29
            if (json.has("_g29")) {
                model._g29 = json.getBoolean("_g29");
            }
            // Receive _g29_e1
            if (json.has("_g29_e1")) {
                model._g29_e1 = json.getBoolean("_g29_e1");
            }
            // Receive _g30
            if (json.has("_g30")) {
                model._g30 = json.getBoolean("_g30");
            }
            // Receive _g32
            if (json.has("_g32")) {
                model._g32 = json.getBoolean("_g32");
            }
            // Receive _g34
            if (json.has("_g34")) {
                model._g34 = json.getBoolean("_g34");
            }
            // Receive _g35
            if (json.has("_g35")) {
                model._g35 = json.getBoolean("_g35");
            }
            // Receive _g35_e2
            if (json.has("_g35_e2")) {
                model._g35_e2 = json.getBoolean("_g35_e2");
            }
            // Receive _g36
            if (json.has("_g36")) {
                model._g36 = json.getBoolean("_g36");
            }
            // Receive _g37
            if (json.has("_g37")) {
                model._g37 = json.getBoolean("_g37");
            }
            // Receive _g38
            if (json.has("_g38")) {
                model._g38 = json.getBoolean("_g38");
            }
            // Receive _g4
            if (json.has("_g4")) {
                model._g4 = json.getBoolean("_g4");
            }
            // Receive _g40
            if (json.has("_g40")) {
                model._g40 = json.getBoolean("_g40");
            }
            // Receive _g41
            if (json.has("_g41")) {
                model._g41 = json.getBoolean("_g41");
            }
            // Receive _g44
            if (json.has("_g44")) {
                model._g44 = json.getBoolean("_g44");
            }
            // Receive _g45
            if (json.has("_g45")) {
                model._g45 = json.getBoolean("_g45");
            }
            // Receive _g46
            if (json.has("_g46")) {
                model._g46 = json.getBoolean("_g46");
            }
            // Receive _g46_e3
            if (json.has("_g46_e3")) {
                model._g46_e3 = json.getBoolean("_g46_e3");
            }
            // Receive _g47
            if (json.has("_g47")) {
                model._g47 = json.getBoolean("_g47");
            }
            // Receive _g48
            if (json.has("_g48")) {
                model._g48 = json.getBoolean("_g48");
            }
            // Receive _g49
            if (json.has("_g49")) {
                model._g49 = json.getBoolean("_g49");
            }
            // Receive _g5
            if (json.has("_g5")) {
                model._g5 = json.getBoolean("_g5");
            }
            // Receive _g50
            if (json.has("_g50")) {
                model._g50 = json.getBoolean("_g50");
            }
            // Receive _g51
            if (json.has("_g51")) {
                model._g51 = json.getBoolean("_g51");
            }
            // Receive _g52
            if (json.has("_g52")) {
                model._g52 = json.getBoolean("_g52");
            }
            // Receive _g55
            if (json.has("_g55")) {
                model._g55 = json.getBoolean("_g55");
            }
            // Receive _g56
            if (json.has("_g56")) {
                model._g56 = json.getBoolean("_g56");
            }
            // Receive _g56_e2
            if (json.has("_g56_e2")) {
                model._g56_e2 = json.getBoolean("_g56_e2");
            }
            // Receive _g57
            if (json.has("_g57")) {
                model._g57 = json.getBoolean("_g57");
            }
            // Receive _g58
            if (json.has("_g58")) {
                model._g58 = json.getBoolean("_g58");
            }
            // Receive _g59
            if (json.has("_g59")) {
                model._g59 = json.getBoolean("_g59");
            }
            // Receive _g60
            if (json.has("_g60")) {
                model._g60 = json.getBoolean("_g60");
            }
            // Receive _g61
            if (json.has("_g61")) {
                model._g61 = json.getBoolean("_g61");
            }
            // Receive _g62
            if (json.has("_g62")) {
                model._g62 = json.getBoolean("_g62");
            }
            // Receive _g63
            if (json.has("_g63")) {
                model._g63 = json.getBoolean("_g63");
            }
            // Receive _g64
            if (json.has("_g64")) {
                model._g64 = json.getBoolean("_g64");
            }
            // Receive _g65
            if (json.has("_g65")) {
                model._g65 = json.getBoolean("_g65");
            }
            // Receive _g66
            if (json.has("_g66")) {
                model._g66 = json.getBoolean("_g66");
            }
            // Receive _g67
            if (json.has("_g67")) {
                model._g67 = json.getBoolean("_g67");
            }
            // Receive _g69
            if (json.has("_g69")) {
                model._g69 = json.getBoolean("_g69");
            }
            // Receive _g70
            if (json.has("_g70")) {
                model._g70 = json.getBoolean("_g70");
            }
            // Receive _g70_e3
            if (json.has("_g70_e3")) {
                model._g70_e3 = json.getBoolean("_g70_e3");
            }
            // Receive _g72
            if (json.has("_g72")) {
                model._g72 = json.getBoolean("_g72");
            }
            // Receive _g75
            if (json.has("_g75")) {
                model._g75 = json.getBoolean("_g75");
            }
            // Receive _g76
            if (json.has("_g76")) {
                model._g76 = json.getBoolean("_g76");
            }
            // Receive _g76_e4
            if (json.has("_g76_e4")) {
                model._g76_e4 = json.getBoolean("_g76_e4");
            }
            // Receive _g77
            if (json.has("_g77")) {
                model._g77 = json.getBoolean("_g77");
            }
            // Receive _g78
            if (json.has("_g78")) {
                model._g78 = json.getBoolean("_g78");
            }
            // Receive _g79
            if (json.has("_g79")) {
                model._g79 = json.getBoolean("_g79");
            }
            // Receive _g8
            if (json.has("_g8")) {
                model._g8 = json.getBoolean("_g8");
            }
            // Receive _g81
            if (json.has("_g81")) {
                model._g81 = json.getBoolean("_g81");
            }
            // Receive _g84
            if (json.has("_g84")) {
                model._g84 = json.getBoolean("_g84");
            }
            // Receive _g86
            if (json.has("_g86")) {
                model._g86 = json.getBoolean("_g86");
            }
            // Receive _g87
            if (json.has("_g87")) {
                model._g87 = json.getBoolean("_g87");
            }
            // Receive _g88
            if (json.has("_g88")) {
                model._g88 = json.getBoolean("_g88");
            }
            // Receive _g88_e1
            if (json.has("_g88_e1")) {
                model._g88_e1 = json.getBoolean("_g88_e1");
            }
            // Receive _g89
            if (json.has("_g89")) {
                model._g89 = json.getBoolean("_g89");
            }
            // Receive _g91
            if (json.has("_g91")) {
                model._g91 = json.getBoolean("_g91");
            }
            // Receive _g93
            if (json.has("_g93")) {
                model._g93 = json.getBoolean("_g93");
            }
            // Receive _g94
            if (json.has("_g94")) {
                model._g94 = json.getBoolean("_g94");
            }
            // Receive _g94_e2
            if (json.has("_g94_e2")) {
                model._g94_e2 = json.getBoolean("_g94_e2");
            }
            // Receive _g95
            if (json.has("_g95")) {
                model._g95 = json.getBoolean("_g95");
            }
            // Receive _g96
            if (json.has("_g96")) {
                model._g96 = json.getBoolean("_g96");
            }
            // Receive _g97
            if (json.has("_g97")) {
                model._g97 = json.getBoolean("_g97");
            }
            // Receive _g99
            if (json.has("_g99")) {
                model._g99 = json.getBoolean("_g99");
            }
            // Receive _pg10
            if (json.has("_pg10")) {
                model._pg10 = json.getBoolean("_pg10");
            }
            // Receive _pg100
            if (json.has("_pg100")) {
                model._pg100 = json.getBoolean("_pg100");
            }
            // Receive _pg102
            if (json.has("_pg102")) {
                model._pg102 = json.getBoolean("_pg102");
            }
            // Receive _pg104
            if (json.has("_pg104")) {
                model._pg104 = json.getBoolean("_pg104");
            }
            // Receive _pg105_e3
            if (json.has("_pg105_e3")) {
                model._pg105_e3 = json.getBoolean("_pg105_e3");
            }
            // Receive _pg108
            if (json.has("_pg108")) {
                model._pg108 = json.getBoolean("_pg108");
            }
            // Receive _pg12
            if (json.has("_pg12")) {
                model._pg12 = json.getBoolean("_pg12");
            }
            // Receive _pg12_e1
            if (json.has("_pg12_e1")) {
                model._pg12_e1 = json.getBoolean("_pg12_e1");
            }
            // Receive _pg137
            if (json.has("_pg137")) {
                model._pg137 = json.getBoolean("_pg137");
            }
            // Receive _pg141
            if (json.has("_pg141")) {
                model._pg141 = json.getBoolean("_pg141");
            }
            // Receive _pg142
            if (json.has("_pg142")) {
                model._pg142 = json.getBoolean("_pg142");
            }
            // Receive _pg143
            if (json.has("_pg143")) {
                model._pg143 = json.getBoolean("_pg143");
            }
            // Receive _pg150
            if (json.has("_pg150")) {
                model._pg150 = json.getBoolean("_pg150");
            }
            // Receive _pg153
            if (json.has("_pg153")) {
                model._pg153 = json.getBoolean("_pg153");
            }
            // Receive _pg154
            if (json.has("_pg154")) {
                model._pg154 = json.getBoolean("_pg154");
            }
            // Receive _pg155
            if (json.has("_pg155")) {
                model._pg155 = json.getBoolean("_pg155");
            }
            // Receive _pg165
            if (json.has("_pg165")) {
                model._pg165 = json.getBoolean("_pg165");
            }
            // Receive _pg18
            if (json.has("_pg18")) {
                model._pg18 = json.getBoolean("_pg18");
            }
            // Receive _pg35
            if (json.has("_pg35")) {
                model._pg35 = json.getBoolean("_pg35");
            }
            // Receive _pg46
            if (json.has("_pg46")) {
                model._pg46 = json.getBoolean("_pg46");
            }
            // Receive _pg49
            if (json.has("_pg49")) {
                model._pg49 = json.getBoolean("_pg49");
            }
            // Receive _pg60
            if (json.has("_pg60")) {
                model._pg60 = json.getBoolean("_pg60");
            }
            // Receive _pg65
            if (json.has("_pg65")) {
                model._pg65 = json.getBoolean("_pg65");
            }
            // Receive _pg72
            if (json.has("_pg72")) {
                model._pg72 = json.getBoolean("_pg72");
            }
            // Receive _pg77
            if (json.has("_pg77")) {
                model._pg77 = json.getBoolean("_pg77");
            }
            // Receive _pg8
            if (json.has("_pg8")) {
                model._pg8 = json.getBoolean("_pg8");
            }
            // Receive _pg86
            if (json.has("_pg86")) {
                model._pg86 = json.getBoolean("_pg86");
            }
            // Receive _pg88
            if (json.has("_pg88")) {
                model._pg88 = json.getBoolean("_pg88");
            }
            // Receive _pg91
            if (json.has("_pg91")) {
                model._pg91 = json.getBoolean("_pg91");
            }
            // Receive _taken_transitions
            if (json.has("_taken_transitions")) {
                JSONArray _array = json.getJSONArray("_taken_transitions");
                for (int i = 0; i < _array.length(); i++) {
                    model._taken_transitions[i] = _array.getInt(i);
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
        
        // Send R
        json.put("R", JSONObject.wrap(model.R));
        // Send deltaT
        json.put("deltaT", JSONObject.wrap(model.deltaT));
        // Send first
        json.put("first", JSONObject.wrap(model.first));
        // Send second
        json.put("second", JSONObject.wrap(model.second));
        // Send start
        json.put("start", JSONObject.wrap(model.start));
        // Send done
        json.put("done", JSONObject.wrap(model.done));
        // Send sleepT
        json.put("sleepT", JSONObject.wrap(model.sleepT));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send _GO
        json.put("_GO", JSONObject.wrap(model._GO));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(model._TERM));
        // Send _UpDownPar_local_B
        json.put("_UpDownPar_local_B", JSONObject.wrap(model._UpDownPar_local_B));
        // Send _UpDownPar_local_B1
        json.put("_UpDownPar_local_B1", JSONObject.wrap(model._UpDownPar_local_B1));
        // Send _UpDownPar_local__Atrig
        json.put("_UpDownPar_local__Atrig", JSONObject.wrap(model._UpDownPar_local__Atrig));
        // Send _UpDownPar_local__Atrig1
        json.put("_UpDownPar_local__Atrig1", JSONObject.wrap(model._UpDownPar_local__Atrig1));
        // Send _UpDownPar_local__Atrig10
        json.put("_UpDownPar_local__Atrig10", JSONObject.wrap(model._UpDownPar_local__Atrig10));
        // Send _UpDownPar_local__Atrig2
        json.put("_UpDownPar_local__Atrig2", JSONObject.wrap(model._UpDownPar_local__Atrig2));
        // Send _UpDownPar_local__Atrig3
        json.put("_UpDownPar_local__Atrig3", JSONObject.wrap(model._UpDownPar_local__Atrig3));
        // Send _UpDownPar_local__Atrig4
        json.put("_UpDownPar_local__Atrig4", JSONObject.wrap(model._UpDownPar_local__Atrig4));
        // Send _UpDownPar_local__Atrig5
        json.put("_UpDownPar_local__Atrig5", JSONObject.wrap(model._UpDownPar_local__Atrig5));
        // Send _UpDownPar_local__Atrig6
        json.put("_UpDownPar_local__Atrig6", JSONObject.wrap(model._UpDownPar_local__Atrig6));
        // Send _UpDownPar_local__Atrig7
        json.put("_UpDownPar_local__Atrig7", JSONObject.wrap(model._UpDownPar_local__Atrig7));
        // Send _UpDownPar_local__Atrig8
        json.put("_UpDownPar_local__Atrig8", JSONObject.wrap(model._UpDownPar_local__Atrig8));
        // Send _UpDownPar_local__Atrig9
        json.put("_UpDownPar_local__Atrig9", JSONObject.wrap(model._UpDownPar_local__Atrig9));
        // Send _UpDownPar_local__CFSterm
        json.put("_UpDownPar_local__CFSterm", JSONObject.wrap(model._UpDownPar_local__CFSterm));
        // Send _UpDownPar_local__CFSterm1
        json.put("_UpDownPar_local__CFSterm1", JSONObject.wrap(model._UpDownPar_local__CFSterm1));
        // Send _UpDownPar_local__pre__region0_CountingUp_end
        json.put("_UpDownPar_local__pre__region0_CountingUp_end", JSONObject.wrap(model._UpDownPar_local__pre__region0_CountingUp_end));
        // Send _UpDownPar_local__pre__region1_CountingDown_end2
        json.put("_UpDownPar_local__pre__region1_CountingDown_end2", JSONObject.wrap(model._UpDownPar_local__pre__region1_CountingDown_end2));
        // Send _UpDownPar_local__reg__region0_CountingUp_end
        json.put("_UpDownPar_local__reg__region0_CountingUp_end", JSONObject.wrap(model._UpDownPar_local__reg__region0_CountingUp_end));
        // Send _UpDownPar_local__reg__region1_CountingDown_end2
        json.put("_UpDownPar_local__reg__region1_CountingDown_end2", JSONObject.wrap(model._UpDownPar_local__reg__region1_CountingDown_end2));
        // Send _UpDownPar_local__region0_CountingUp_end
        json.put("_UpDownPar_local__region0_CountingUp_end", JSONObject.wrap(model._UpDownPar_local__region0_CountingUp_end));
        // Send _UpDownPar_local__region0_bit1_c1
        json.put("_UpDownPar_local__region0_bit1_c1", JSONObject.wrap(model._UpDownPar_local__region0_bit1_c1));
        // Send _UpDownPar_local__region0_bit1_c2
        json.put("_UpDownPar_local__region0_bit1_c2", JSONObject.wrap(model._UpDownPar_local__region0_bit1_c2));
        // Send _UpDownPar_local__region1_CountingDown_end2
        json.put("_UpDownPar_local__region1_CountingDown_end2", JSONObject.wrap(model._UpDownPar_local__region1_CountingDown_end2));
        // Send _cg100
        json.put("_cg100", JSONObject.wrap(model._cg100));
        // Send _cg101
        json.put("_cg101", JSONObject.wrap(model._cg101));
        // Send _cg103
        json.put("_cg103", JSONObject.wrap(model._cg103));
        // Send _cg106
        json.put("_cg106", JSONObject.wrap(model._cg106));
        // Send _cg108
        json.put("_cg108", JSONObject.wrap(model._cg108));
        // Send _cg109
        json.put("_cg109", JSONObject.wrap(model._cg109));
        // Send _cg11
        json.put("_cg11", JSONObject.wrap(model._cg11));
        // Send _cg111
        json.put("_cg111", JSONObject.wrap(model._cg111));
        // Send _cg113
        json.put("_cg113", JSONObject.wrap(model._cg113));
        // Send _cg115
        json.put("_cg115", JSONObject.wrap(model._cg115));
        // Send _cg117
        json.put("_cg117", JSONObject.wrap(model._cg117));
        // Send _cg118
        json.put("_cg118", JSONObject.wrap(model._cg118));
        // Send _cg119
        json.put("_cg119", JSONObject.wrap(model._cg119));
        // Send _cg121
        json.put("_cg121", JSONObject.wrap(model._cg121));
        // Send _cg123
        json.put("_cg123", JSONObject.wrap(model._cg123));
        // Send _cg124
        json.put("_cg124", JSONObject.wrap(model._cg124));
        // Send _cg125
        json.put("_cg125", JSONObject.wrap(model._cg125));
        // Send _cg127
        json.put("_cg127", JSONObject.wrap(model._cg127));
        // Send _cg128
        json.put("_cg128", JSONObject.wrap(model._cg128));
        // Send _cg129
        json.put("_cg129", JSONObject.wrap(model._cg129));
        // Send _cg13
        json.put("_cg13", JSONObject.wrap(model._cg13));
        // Send _cg131
        json.put("_cg131", JSONObject.wrap(model._cg131));
        // Send _cg134
        json.put("_cg134", JSONObject.wrap(model._cg134));
        // Send _cg136
        json.put("_cg136", JSONObject.wrap(model._cg136));
        // Send _cg137
        json.put("_cg137", JSONObject.wrap(model._cg137));
        // Send _cg138
        json.put("_cg138", JSONObject.wrap(model._cg138));
        // Send _cg14
        json.put("_cg14", JSONObject.wrap(model._cg14));
        // Send _cg141
        json.put("_cg141", JSONObject.wrap(model._cg141));
        // Send _cg144
        json.put("_cg144", JSONObject.wrap(model._cg144));
        // Send _cg145
        json.put("_cg145", JSONObject.wrap(model._cg145));
        // Send _cg147
        json.put("_cg147", JSONObject.wrap(model._cg147));
        // Send _cg149
        json.put("_cg149", JSONObject.wrap(model._cg149));
        // Send _cg150
        json.put("_cg150", JSONObject.wrap(model._cg150));
        // Send _cg153
        json.put("_cg153", JSONObject.wrap(model._cg153));
        // Send _cg156
        json.put("_cg156", JSONObject.wrap(model._cg156));
        // Send _cg159
        json.put("_cg159", JSONObject.wrap(model._cg159));
        // Send _cg16
        json.put("_cg16", JSONObject.wrap(model._cg16));
        // Send _cg161
        json.put("_cg161", JSONObject.wrap(model._cg161));
        // Send _cg163
        json.put("_cg163", JSONObject.wrap(model._cg163));
        // Send _cg167
        json.put("_cg167", JSONObject.wrap(model._cg167));
        // Send _cg170
        json.put("_cg170", JSONObject.wrap(model._cg170));
        // Send _cg172
        json.put("_cg172", JSONObject.wrap(model._cg172));
        // Send _cg175
        json.put("_cg175", JSONObject.wrap(model._cg175));
        // Send _cg177
        json.put("_cg177", JSONObject.wrap(model._cg177));
        // Send _cg180
        json.put("_cg180", JSONObject.wrap(model._cg180));
        // Send _cg183
        json.put("_cg183", JSONObject.wrap(model._cg183));
        // Send _cg186
        json.put("_cg186", JSONObject.wrap(model._cg186));
        // Send _cg187
        json.put("_cg187", JSONObject.wrap(model._cg187));
        // Send _cg19
        json.put("_cg19", JSONObject.wrap(model._cg19));
        // Send _cg21
        json.put("_cg21", JSONObject.wrap(model._cg21));
        // Send _cg22
        json.put("_cg22", JSONObject.wrap(model._cg22));
        // Send _cg24
        json.put("_cg24", JSONObject.wrap(model._cg24));
        // Send _cg26
        json.put("_cg26", JSONObject.wrap(model._cg26));
        // Send _cg28
        json.put("_cg28", JSONObject.wrap(model._cg28));
        // Send _cg30
        json.put("_cg30", JSONObject.wrap(model._cg30));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(model._cg31));
        // Send _cg32
        json.put("_cg32", JSONObject.wrap(model._cg32));
        // Send _cg34
        json.put("_cg34", JSONObject.wrap(model._cg34));
        // Send _cg36
        json.put("_cg36", JSONObject.wrap(model._cg36));
        // Send _cg37
        json.put("_cg37", JSONObject.wrap(model._cg37));
        // Send _cg38
        json.put("_cg38", JSONObject.wrap(model._cg38));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(model._cg4));
        // Send _cg40
        json.put("_cg40", JSONObject.wrap(model._cg40));
        // Send _cg41
        json.put("_cg41", JSONObject.wrap(model._cg41));
        // Send _cg42
        json.put("_cg42", JSONObject.wrap(model._cg42));
        // Send _cg44
        json.put("_cg44", JSONObject.wrap(model._cg44));
        // Send _cg47
        json.put("_cg47", JSONObject.wrap(model._cg47));
        // Send _cg49
        json.put("_cg49", JSONObject.wrap(model._cg49));
        // Send _cg50
        json.put("_cg50", JSONObject.wrap(model._cg50));
        // Send _cg51
        json.put("_cg51", JSONObject.wrap(model._cg51));
        // Send _cg55
        json.put("_cg55", JSONObject.wrap(model._cg55));
        // Send _cg57
        json.put("_cg57", JSONObject.wrap(model._cg57));
        // Send _cg59
        json.put("_cg59", JSONObject.wrap(model._cg59));
        // Send _cg61
        json.put("_cg61", JSONObject.wrap(model._cg61));
        // Send _cg62
        json.put("_cg62", JSONObject.wrap(model._cg62));
        // Send _cg64
        json.put("_cg64", JSONObject.wrap(model._cg64));
        // Send _cg66
        json.put("_cg66", JSONObject.wrap(model._cg66));
        // Send _cg67
        json.put("_cg67", JSONObject.wrap(model._cg67));
        // Send _cg69
        json.put("_cg69", JSONObject.wrap(model._cg69));
        // Send _cg72
        json.put("_cg72", JSONObject.wrap(model._cg72));
        // Send _cg75
        json.put("_cg75", JSONObject.wrap(model._cg75));
        // Send _cg77
        json.put("_cg77", JSONObject.wrap(model._cg77));
        // Send _cg79
        json.put("_cg79", JSONObject.wrap(model._cg79));
        // Send _cg85
        json.put("_cg85", JSONObject.wrap(model._cg85));
        // Send _cg87
        json.put("_cg87", JSONObject.wrap(model._cg87));
        // Send _cg89
        json.put("_cg89", JSONObject.wrap(model._cg89));
        // Send _cg9
        json.put("_cg9", JSONObject.wrap(model._cg9));
        // Send _cg90
        json.put("_cg90", JSONObject.wrap(model._cg90));
        // Send _cg91
        json.put("_cg91", JSONObject.wrap(model._cg91));
        // Send _cg93
        json.put("_cg93", JSONObject.wrap(model._cg93));
        // Send _cg95
        json.put("_cg95", JSONObject.wrap(model._cg95));
        // Send _cg96
        json.put("_cg96", JSONObject.wrap(model._cg96));
        // Send _cg97
        json.put("_cg97", JSONObject.wrap(model._cg97));
        // Send _cg99
        json.put("_cg99", JSONObject.wrap(model._cg99));
        // Send _g10
        json.put("_g10", JSONObject.wrap(model._g10));
        // Send _g100
        json.put("_g100", JSONObject.wrap(model._g100));
        // Send _g102
        json.put("_g102", JSONObject.wrap(model._g102));
        // Send _g103
        json.put("_g103", JSONObject.wrap(model._g103));
        // Send _g104
        json.put("_g104", JSONObject.wrap(model._g104));
        // Send _g105
        json.put("_g105", JSONObject.wrap(model._g105));
        // Send _g105_e3
        json.put("_g105_e3", JSONObject.wrap(model._g105_e3));
        // Send _g106
        json.put("_g106", JSONObject.wrap(model._g106));
        // Send _g107
        json.put("_g107", JSONObject.wrap(model._g107));
        // Send _g108
        json.put("_g108", JSONObject.wrap(model._g108));
        // Send _g109
        json.put("_g109", JSONObject.wrap(model._g109));
        // Send _g11
        json.put("_g11", JSONObject.wrap(model._g11));
        // Send _g110
        json.put("_g110", JSONObject.wrap(model._g110));
        // Send _g110_e1
        json.put("_g110_e1", JSONObject.wrap(model._g110_e1));
        // Send _g111
        json.put("_g111", JSONObject.wrap(model._g111));
        // Send _g112
        json.put("_g112", JSONObject.wrap(model._g112));
        // Send _g115
        json.put("_g115", JSONObject.wrap(model._g115));
        // Send _g116
        json.put("_g116", JSONObject.wrap(model._g116));
        // Send _g116_e1
        json.put("_g116_e1", JSONObject.wrap(model._g116_e1));
        // Send _g117
        json.put("_g117", JSONObject.wrap(model._g117));
        // Send _g119
        json.put("_g119", JSONObject.wrap(model._g119));
        // Send _g12
        json.put("_g12", JSONObject.wrap(model._g12));
        // Send _g121
        json.put("_g121", JSONObject.wrap(model._g121));
        // Send _g122
        json.put("_g122", JSONObject.wrap(model._g122));
        // Send _g122_e2
        json.put("_g122_e2", JSONObject.wrap(model._g122_e2));
        // Send _g123
        json.put("_g123", JSONObject.wrap(model._g123));
        // Send _g124
        json.put("_g124", JSONObject.wrap(model._g124));
        // Send _g125
        json.put("_g125", JSONObject.wrap(model._g125));
        // Send _g127
        json.put("_g127", JSONObject.wrap(model._g127));
        // Send _g128
        json.put("_g128", JSONObject.wrap(model._g128));
        // Send _g12_e1
        json.put("_g12_e1", JSONObject.wrap(model._g12_e1));
        // Send _g13
        json.put("_g13", JSONObject.wrap(model._g13));
        // Send _g131
        json.put("_g131", JSONObject.wrap(model._g131));
        // Send _g132
        json.put("_g132", JSONObject.wrap(model._g132));
        // Send _g133
        json.put("_g133", JSONObject.wrap(model._g133));
        // Send _g133_e3
        json.put("_g133_e3", JSONObject.wrap(model._g133_e3));
        // Send _g134
        json.put("_g134", JSONObject.wrap(model._g134));
        // Send _g135
        json.put("_g135", JSONObject.wrap(model._g135));
        // Send _g136
        json.put("_g136", JSONObject.wrap(model._g136));
        // Send _g137
        json.put("_g137", JSONObject.wrap(model._g137));
        // Send _g138
        json.put("_g138", JSONObject.wrap(model._g138));
        // Send _g139
        json.put("_g139", JSONObject.wrap(model._g139));
        // Send _g141
        json.put("_g141", JSONObject.wrap(model._g141));
        // Send _g142
        json.put("_g142", JSONObject.wrap(model._g142));
        // Send _g142_e2
        json.put("_g142_e2", JSONObject.wrap(model._g142_e2));
        // Send _g143
        json.put("_g143", JSONObject.wrap(model._g143));
        // Send _g144
        json.put("_g144", JSONObject.wrap(model._g144));
        // Send _g145
        json.put("_g145", JSONObject.wrap(model._g145));
        // Send _g146
        json.put("_g146", JSONObject.wrap(model._g146));
        // Send _g147
        json.put("_g147", JSONObject.wrap(model._g147));
        // Send _g149
        json.put("_g149", JSONObject.wrap(model._g149));
        // Send _g150
        json.put("_g150", JSONObject.wrap(model._g150));
        // Send _g151
        json.put("_g151", JSONObject.wrap(model._g151));
        // Send _g153
        json.put("_g153", JSONObject.wrap(model._g153));
        // Send _g154
        json.put("_g154", JSONObject.wrap(model._g154));
        // Send _g154_e3
        json.put("_g154_e3", JSONObject.wrap(model._g154_e3));
        // Send _g155
        json.put("_g155", JSONObject.wrap(model._g155));
        // Send _g156
        json.put("_g156", JSONObject.wrap(model._g156));
        // Send _g159
        json.put("_g159", JSONObject.wrap(model._g159));
        // Send _g16
        json.put("_g16", JSONObject.wrap(model._g16));
        // Send _g160
        json.put("_g160", JSONObject.wrap(model._g160));
        // Send _g160_e4
        json.put("_g160_e4", JSONObject.wrap(model._g160_e4));
        // Send _g161
        json.put("_g161", JSONObject.wrap(model._g161));
        // Send _g162
        json.put("_g162", JSONObject.wrap(model._g162));
        // Send _g163
        json.put("_g163", JSONObject.wrap(model._g163));
        // Send _g165
        json.put("_g165", JSONObject.wrap(model._g165));
        // Send _g167
        json.put("_g167", JSONObject.wrap(model._g167));
        // Send _g17
        json.put("_g17", JSONObject.wrap(model._g17));
        // Send _g170
        json.put("_g170", JSONObject.wrap(model._g170));
        // Send _g177
        json.put("_g177", JSONObject.wrap(model._g177));
        // Send _g18
        json.put("_g18", JSONObject.wrap(model._g18));
        // Send _g180
        json.put("_g180", JSONObject.wrap(model._g180));
        // Send _g183
        json.put("_g183", JSONObject.wrap(model._g183));
        // Send _g184
        json.put("_g184", JSONObject.wrap(model._g184));
        // Send _g18_e2
        json.put("_g18_e2", JSONObject.wrap(model._g18_e2));
        // Send _g19
        json.put("_g19", JSONObject.wrap(model._g19));
        // Send _g20
        json.put("_g20", JSONObject.wrap(model._g20));
        // Send _g21
        json.put("_g21", JSONObject.wrap(model._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(model._g22));
        // Send _g23
        json.put("_g23", JSONObject.wrap(model._g23));
        // Send _g23_e1
        json.put("_g23_e1", JSONObject.wrap(model._g23_e1));
        // Send _g24
        json.put("_g24", JSONObject.wrap(model._g24));
        // Send _g25
        json.put("_g25", JSONObject.wrap(model._g25));
        // Send _g28
        json.put("_g28", JSONObject.wrap(model._g28));
        // Send _g29
        json.put("_g29", JSONObject.wrap(model._g29));
        // Send _g29_e1
        json.put("_g29_e1", JSONObject.wrap(model._g29_e1));
        // Send _g30
        json.put("_g30", JSONObject.wrap(model._g30));
        // Send _g32
        json.put("_g32", JSONObject.wrap(model._g32));
        // Send _g34
        json.put("_g34", JSONObject.wrap(model._g34));
        // Send _g35
        json.put("_g35", JSONObject.wrap(model._g35));
        // Send _g35_e2
        json.put("_g35_e2", JSONObject.wrap(model._g35_e2));
        // Send _g36
        json.put("_g36", JSONObject.wrap(model._g36));
        // Send _g37
        json.put("_g37", JSONObject.wrap(model._g37));
        // Send _g38
        json.put("_g38", JSONObject.wrap(model._g38));
        // Send _g4
        json.put("_g4", JSONObject.wrap(model._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(model._g40));
        // Send _g41
        json.put("_g41", JSONObject.wrap(model._g41));
        // Send _g44
        json.put("_g44", JSONObject.wrap(model._g44));
        // Send _g45
        json.put("_g45", JSONObject.wrap(model._g45));
        // Send _g46
        json.put("_g46", JSONObject.wrap(model._g46));
        // Send _g46_e3
        json.put("_g46_e3", JSONObject.wrap(model._g46_e3));
        // Send _g47
        json.put("_g47", JSONObject.wrap(model._g47));
        // Send _g48
        json.put("_g48", JSONObject.wrap(model._g48));
        // Send _g49
        json.put("_g49", JSONObject.wrap(model._g49));
        // Send _g5
        json.put("_g5", JSONObject.wrap(model._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(model._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(model._g51));
        // Send _g52
        json.put("_g52", JSONObject.wrap(model._g52));
        // Send _g55
        json.put("_g55", JSONObject.wrap(model._g55));
        // Send _g56
        json.put("_g56", JSONObject.wrap(model._g56));
        // Send _g56_e2
        json.put("_g56_e2", JSONObject.wrap(model._g56_e2));
        // Send _g57
        json.put("_g57", JSONObject.wrap(model._g57));
        // Send _g58
        json.put("_g58", JSONObject.wrap(model._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(model._g59));
        // Send _g60
        json.put("_g60", JSONObject.wrap(model._g60));
        // Send _g61
        json.put("_g61", JSONObject.wrap(model._g61));
        // Send _g62
        json.put("_g62", JSONObject.wrap(model._g62));
        // Send _g63
        json.put("_g63", JSONObject.wrap(model._g63));
        // Send _g64
        json.put("_g64", JSONObject.wrap(model._g64));
        // Send _g65
        json.put("_g65", JSONObject.wrap(model._g65));
        // Send _g66
        json.put("_g66", JSONObject.wrap(model._g66));
        // Send _g67
        json.put("_g67", JSONObject.wrap(model._g67));
        // Send _g69
        json.put("_g69", JSONObject.wrap(model._g69));
        // Send _g70
        json.put("_g70", JSONObject.wrap(model._g70));
        // Send _g70_e3
        json.put("_g70_e3", JSONObject.wrap(model._g70_e3));
        // Send _g72
        json.put("_g72", JSONObject.wrap(model._g72));
        // Send _g75
        json.put("_g75", JSONObject.wrap(model._g75));
        // Send _g76
        json.put("_g76", JSONObject.wrap(model._g76));
        // Send _g76_e4
        json.put("_g76_e4", JSONObject.wrap(model._g76_e4));
        // Send _g77
        json.put("_g77", JSONObject.wrap(model._g77));
        // Send _g78
        json.put("_g78", JSONObject.wrap(model._g78));
        // Send _g79
        json.put("_g79", JSONObject.wrap(model._g79));
        // Send _g8
        json.put("_g8", JSONObject.wrap(model._g8));
        // Send _g81
        json.put("_g81", JSONObject.wrap(model._g81));
        // Send _g84
        json.put("_g84", JSONObject.wrap(model._g84));
        // Send _g86
        json.put("_g86", JSONObject.wrap(model._g86));
        // Send _g87
        json.put("_g87", JSONObject.wrap(model._g87));
        // Send _g88
        json.put("_g88", JSONObject.wrap(model._g88));
        // Send _g88_e1
        json.put("_g88_e1", JSONObject.wrap(model._g88_e1));
        // Send _g89
        json.put("_g89", JSONObject.wrap(model._g89));
        // Send _g91
        json.put("_g91", JSONObject.wrap(model._g91));
        // Send _g93
        json.put("_g93", JSONObject.wrap(model._g93));
        // Send _g94
        json.put("_g94", JSONObject.wrap(model._g94));
        // Send _g94_e2
        json.put("_g94_e2", JSONObject.wrap(model._g94_e2));
        // Send _g95
        json.put("_g95", JSONObject.wrap(model._g95));
        // Send _g96
        json.put("_g96", JSONObject.wrap(model._g96));
        // Send _g97
        json.put("_g97", JSONObject.wrap(model._g97));
        // Send _g99
        json.put("_g99", JSONObject.wrap(model._g99));
        // Send _pg10
        json.put("_pg10", JSONObject.wrap(model._pg10));
        // Send _pg100
        json.put("_pg100", JSONObject.wrap(model._pg100));
        // Send _pg102
        json.put("_pg102", JSONObject.wrap(model._pg102));
        // Send _pg104
        json.put("_pg104", JSONObject.wrap(model._pg104));
        // Send _pg105_e3
        json.put("_pg105_e3", JSONObject.wrap(model._pg105_e3));
        // Send _pg108
        json.put("_pg108", JSONObject.wrap(model._pg108));
        // Send _pg12
        json.put("_pg12", JSONObject.wrap(model._pg12));
        // Send _pg12_e1
        json.put("_pg12_e1", JSONObject.wrap(model._pg12_e1));
        // Send _pg137
        json.put("_pg137", JSONObject.wrap(model._pg137));
        // Send _pg141
        json.put("_pg141", JSONObject.wrap(model._pg141));
        // Send _pg142
        json.put("_pg142", JSONObject.wrap(model._pg142));
        // Send _pg143
        json.put("_pg143", JSONObject.wrap(model._pg143));
        // Send _pg150
        json.put("_pg150", JSONObject.wrap(model._pg150));
        // Send _pg153
        json.put("_pg153", JSONObject.wrap(model._pg153));
        // Send _pg154
        json.put("_pg154", JSONObject.wrap(model._pg154));
        // Send _pg155
        json.put("_pg155", JSONObject.wrap(model._pg155));
        // Send _pg165
        json.put("_pg165", JSONObject.wrap(model._pg165));
        // Send _pg18
        json.put("_pg18", JSONObject.wrap(model._pg18));
        // Send _pg35
        json.put("_pg35", JSONObject.wrap(model._pg35));
        // Send _pg46
        json.put("_pg46", JSONObject.wrap(model._pg46));
        // Send _pg49
        json.put("_pg49", JSONObject.wrap(model._pg49));
        // Send _pg60
        json.put("_pg60", JSONObject.wrap(model._pg60));
        // Send _pg65
        json.put("_pg65", JSONObject.wrap(model._pg65));
        // Send _pg72
        json.put("_pg72", JSONObject.wrap(model._pg72));
        // Send _pg77
        json.put("_pg77", JSONObject.wrap(model._pg77));
        // Send _pg8
        json.put("_pg8", JSONObject.wrap(model._pg8));
        // Send _pg86
        json.put("_pg86", JSONObject.wrap(model._pg86));
        // Send _pg88
        json.put("_pg88", JSONObject.wrap(model._pg88));
        // Send _pg91
        json.put("_pg91", JSONObject.wrap(model._pg91));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(model._taken_transitions));
        
        System.out.println(json.toString());
    }
    
    public static void main(String[] args) {
        
        
        // Initialize 
        model.reset();
        
        sendVariables();

        
        while (true) {
            
        
           // Read inputs
           receiveVariables();

           
           _tickstart = System.nanoTime();

        
           // Reaction of model
           model.tick();
           
           _ticktime = System.nanoTime() - _tickstart;

           
           // Send outputs
           sendVariables();

           
           
        }
    }
    
}