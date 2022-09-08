<#macro ticktime_decl position>
private static long _tickstart;
private static long _ticktime;
</#macro>

<#macro ticktime_reset position>
_tickstart = System.nanoTime();
</#macro>

<#macro ticktime_store position>
_ticktime = System.nanoTime() - _tickstart;
</#macro>

<#macro ticktime_print position>
println("Tick: %d ns", _ticktime);
</#macro>
