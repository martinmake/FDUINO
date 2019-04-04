<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="dots" multiple="2" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="martinmake">
<packages>
<package name="TQFP32">
<smd name="1" x="-4.1148" y="2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-4.1148" y="2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-4.1148" y="1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-4.1148" y="0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-4.1148" y="-0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-4.1148" y="-1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-4.1148" y="-2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-4.1148" y="-2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-2.794" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="10" x="-2.0066" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="11" x="-1.1938" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="12" x="-0.4064" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="13" x="0.4064" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="14" x="1.1938" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="15" x="2.0066" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="16" x="2.794" y="-4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="17" x="4.1148" y="-2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="4.1148" y="-2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="4.1148" y="-1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="4.1148" y="-0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="4.1148" y="0.4064" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="4.1148" y="1.1938" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="4.1148" y="2.0066" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="4.1148" y="2.794" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="2.794" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="26" x="2.0066" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="1.1938" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="0.4064" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="-0.4064" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="-1.1938" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="-2.0066" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="-2.794" y="4.1148" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-3.0734" y1="2.667" x2="-2.667" y2="3.0734" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="-3.5052" x2="-3.0226" y2="-3.5052" width="0" layer="51"/>
<wire x1="-2.5654" y1="-3.5052" x2="-2.2352" y2="-3.5052" width="0" layer="51"/>
<wire x1="-1.778" y1="-3.5052" x2="-1.4224" y2="-3.5052" width="0" layer="51"/>
<wire x1="-0.9652" y1="-3.5052" x2="-0.635" y2="-3.5052" width="0" layer="51"/>
<wire x1="0.635" y1="-3.5052" x2="0.9652" y2="-3.5052" width="0" layer="51"/>
<wire x1="1.4224" y1="-3.5052" x2="1.778" y2="-3.5052" width="0" layer="51"/>
<wire x1="2.2352" y1="-3.5052" x2="2.5654" y2="-3.5052" width="0" layer="51"/>
<wire x1="3.0226" y1="-3.5052" x2="3.5052" y2="-3.5052" width="0" layer="51"/>
<wire x1="3.5052" y1="-3.5052" x2="3.5052" y2="-3.0226" width="0" layer="51"/>
<wire x1="3.5052" y1="-2.5654" x2="3.5052" y2="-2.2352" width="0" layer="51"/>
<wire x1="3.5052" y1="-1.778" x2="3.5052" y2="-1.4224" width="0" layer="51"/>
<wire x1="3.5052" y1="-0.9652" x2="3.5052" y2="-0.635" width="0" layer="51"/>
<wire x1="3.5052" y1="0.635" x2="3.5052" y2="0.9652" width="0" layer="51"/>
<wire x1="3.5052" y1="1.4224" x2="3.5052" y2="1.778" width="0" layer="51"/>
<wire x1="3.5052" y1="2.2352" x2="3.5052" y2="2.5654" width="0" layer="51"/>
<wire x1="3.5052" y1="3.0226" x2="3.5052" y2="3.5052" width="0" layer="51"/>
<wire x1="3.5052" y1="3.5052" x2="3.0226" y2="3.5052" width="0" layer="51"/>
<wire x1="2.5654" y1="3.5052" x2="2.2352" y2="3.5052" width="0" layer="51"/>
<wire x1="1.778" y1="3.5052" x2="1.4224" y2="3.5052" width="0" layer="51"/>
<wire x1="0.9652" y1="3.5052" x2="0.635" y2="3.5052" width="0" layer="51"/>
<wire x1="-0.635" y1="3.5052" x2="-0.9652" y2="3.5052" width="0" layer="51"/>
<wire x1="-1.4224" y1="3.5052" x2="-1.778" y2="3.5052" width="0" layer="51"/>
<wire x1="-2.2352" y1="3.5052" x2="-2.5654" y2="3.5052" width="0" layer="51"/>
<wire x1="-3.0226" y1="3.5052" x2="-3.5052" y2="3.5052" width="0" layer="51"/>
<wire x1="-3.5052" y1="3.5052" x2="-3.5052" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.5052" y1="2.5654" x2="-3.5052" y2="2.2352" width="0" layer="51"/>
<wire x1="-3.5052" y1="1.778" x2="-3.5052" y2="1.4224" width="0" layer="51"/>
<wire x1="-3.5052" y1="0.9652" x2="-3.5052" y2="0.635" width="0" layer="51"/>
<wire x1="-3.5052" y1="-0.635" x2="-3.5052" y2="-0.9652" width="0" layer="51"/>
<wire x1="-3.5052" y1="-1.4224" x2="-3.5052" y2="-1.778" width="0" layer="51"/>
<wire x1="-3.5052" y1="-2.2352" x2="-3.5052" y2="-2.5654" width="0" layer="51"/>
<wire x1="-3.5052" y1="-3.0226" x2="-3.5052" y2="-3.5052" width="0" layer="51"/>
<wire x1="2.5654" y1="3.5052" x2="3.0226" y2="3.5052" width="0" layer="51"/>
<wire x1="3.0226" y1="3.5052" x2="3.0226" y2="4.4958" width="0" layer="51"/>
<wire x1="3.0226" y1="4.4958" x2="2.5654" y2="4.4958" width="0" layer="51"/>
<wire x1="2.5654" y1="4.4958" x2="2.5654" y2="3.5052" width="0" layer="51"/>
<wire x1="1.778" y1="3.5052" x2="2.2352" y2="3.5052" width="0" layer="51"/>
<wire x1="2.2352" y1="3.5052" x2="2.2352" y2="4.4958" width="0" layer="51"/>
<wire x1="2.2352" y1="4.4958" x2="1.778" y2="4.4958" width="0" layer="51"/>
<wire x1="1.778" y1="4.4958" x2="1.778" y2="3.5052" width="0" layer="51"/>
<wire x1="0.9652" y1="3.5052" x2="1.4224" y2="3.5052" width="0" layer="51"/>
<wire x1="1.4224" y1="3.5052" x2="1.4224" y2="4.4958" width="0" layer="51"/>
<wire x1="1.4224" y1="4.4958" x2="0.9652" y2="4.4958" width="0" layer="51"/>
<wire x1="0.9652" y1="4.4958" x2="0.9652" y2="3.5052" width="0" layer="51"/>
<wire x1="0.1778" y1="3.5052" x2="0.635" y2="3.5052" width="0" layer="51"/>
<wire x1="0.635" y1="3.5052" x2="0.635" y2="4.4958" width="0" layer="51"/>
<wire x1="0.635" y1="4.4958" x2="0.1778" y2="4.4958" width="0" layer="51"/>
<wire x1="0.1778" y1="4.4958" x2="0.1778" y2="3.5052" width="0" layer="51"/>
<wire x1="-0.635" y1="3.5052" x2="-0.1778" y2="3.5052" width="0" layer="51"/>
<wire x1="-0.1778" y1="3.5052" x2="-0.1778" y2="4.4958" width="0" layer="51"/>
<wire x1="-0.1778" y1="4.4958" x2="-0.635" y2="4.4958" width="0" layer="51"/>
<wire x1="-0.635" y1="4.4958" x2="-0.635" y2="3.5052" width="0" layer="51"/>
<wire x1="-1.4224" y1="3.5052" x2="-0.9652" y2="3.5052" width="0" layer="51"/>
<wire x1="-0.9652" y1="3.5052" x2="-0.9652" y2="4.4958" width="0" layer="51"/>
<wire x1="-0.9652" y1="4.4958" x2="-1.4224" y2="4.4958" width="0" layer="51"/>
<wire x1="-1.4224" y1="4.4958" x2="-1.4224" y2="3.5052" width="0" layer="51"/>
<wire x1="-2.2352" y1="3.5052" x2="-1.778" y2="3.5052" width="0" layer="51"/>
<wire x1="-1.778" y1="3.5052" x2="-1.778" y2="4.4958" width="0" layer="51"/>
<wire x1="-1.778" y1="4.4958" x2="-2.2352" y2="4.4958" width="0" layer="51"/>
<wire x1="-2.2352" y1="4.4958" x2="-2.2352" y2="3.5052" width="0" layer="51"/>
<wire x1="-3.0226" y1="3.5052" x2="-2.5654" y2="3.5052" width="0" layer="51"/>
<wire x1="-2.5654" y1="3.5052" x2="-2.5654" y2="4.4958" width="0" layer="51"/>
<wire x1="-2.5654" y1="4.4958" x2="-3.0226" y2="4.4958" width="0" layer="51"/>
<wire x1="-3.0226" y1="4.4958" x2="-3.0226" y2="3.5052" width="0" layer="51"/>
<wire x1="-3.5052" y1="2.5654" x2="-3.5052" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.5052" y1="3.0226" x2="-4.4958" y2="3.0226" width="0" layer="51"/>
<wire x1="-4.4958" y1="3.0226" x2="-4.4958" y2="2.5654" width="0" layer="51"/>
<wire x1="-4.4958" y1="2.5654" x2="-3.5052" y2="2.5654" width="0" layer="51"/>
<wire x1="-3.5052" y1="1.778" x2="-3.5052" y2="2.2352" width="0" layer="51"/>
<wire x1="-3.5052" y1="2.2352" x2="-4.4958" y2="2.2352" width="0" layer="51"/>
<wire x1="-4.4958" y1="2.2352" x2="-4.4958" y2="1.778" width="0" layer="51"/>
<wire x1="-4.4958" y1="1.778" x2="-3.5052" y2="1.778" width="0" layer="51"/>
<wire x1="-3.5052" y1="0.9652" x2="-3.5052" y2="1.4224" width="0" layer="51"/>
<wire x1="-3.5052" y1="1.4224" x2="-4.4958" y2="1.4224" width="0" layer="51"/>
<wire x1="-4.4958" y1="1.4224" x2="-4.4958" y2="0.9652" width="0" layer="51"/>
<wire x1="-4.4958" y1="0.9652" x2="-3.5052" y2="0.9652" width="0" layer="51"/>
<wire x1="-3.5052" y1="0.1778" x2="-3.5052" y2="0.635" width="0" layer="51"/>
<wire x1="-3.5052" y1="0.635" x2="-4.4958" y2="0.635" width="0" layer="51"/>
<wire x1="-4.4958" y1="0.635" x2="-4.4958" y2="0.1778" width="0" layer="51"/>
<wire x1="-4.4958" y1="0.1778" x2="-3.5052" y2="0.1778" width="0" layer="51"/>
<wire x1="-3.5052" y1="-0.635" x2="-3.5052" y2="-0.1778" width="0" layer="51"/>
<wire x1="-3.5052" y1="-0.1778" x2="-4.4958" y2="-0.1778" width="0" layer="51"/>
<wire x1="-4.4958" y1="-0.1778" x2="-4.4958" y2="-0.635" width="0" layer="51"/>
<wire x1="-4.4958" y1="-0.635" x2="-3.5052" y2="-0.635" width="0" layer="51"/>
<wire x1="-3.5052" y1="-1.4224" x2="-3.5052" y2="-0.9652" width="0" layer="51"/>
<wire x1="-3.5052" y1="-0.9652" x2="-4.4958" y2="-0.9652" width="0" layer="51"/>
<wire x1="-4.4958" y1="-0.9652" x2="-4.4958" y2="-1.4224" width="0" layer="51"/>
<wire x1="-4.4958" y1="-1.4224" x2="-3.5052" y2="-1.4224" width="0" layer="51"/>
<wire x1="-3.5052" y1="-2.2352" x2="-3.5052" y2="-1.778" width="0" layer="51"/>
<wire x1="-3.5052" y1="-1.778" x2="-4.4958" y2="-1.778" width="0" layer="51"/>
<wire x1="-4.4958" y1="-1.778" x2="-4.4958" y2="-2.2352" width="0" layer="51"/>
<wire x1="-4.4958" y1="-2.2352" x2="-3.5052" y2="-2.2352" width="0" layer="51"/>
<wire x1="-3.5052" y1="-3.0226" x2="-3.5052" y2="-2.5654" width="0" layer="51"/>
<wire x1="-3.5052" y1="-2.5654" x2="-4.4958" y2="-2.5654" width="0" layer="51"/>
<wire x1="-4.4958" y1="-2.5654" x2="-4.4958" y2="-3.0226" width="0" layer="51"/>
<wire x1="-4.4958" y1="-3.0226" x2="-3.5052" y2="-3.0226" width="0" layer="51"/>
<wire x1="-2.5654" y1="-3.5052" x2="-3.0226" y2="-3.5052" width="0" layer="51"/>
<wire x1="-3.0226" y1="-3.5052" x2="-3.0226" y2="-4.4958" width="0" layer="51"/>
<wire x1="-3.0226" y1="-4.4958" x2="-2.5654" y2="-4.4958" width="0" layer="51"/>
<wire x1="-2.5654" y1="-4.4958" x2="-2.5654" y2="-3.5052" width="0" layer="51"/>
<wire x1="-1.778" y1="-3.5052" x2="-2.2352" y2="-3.5052" width="0" layer="51"/>
<wire x1="-2.2352" y1="-3.5052" x2="-2.2352" y2="-4.4958" width="0" layer="51"/>
<wire x1="-2.2352" y1="-4.4958" x2="-1.778" y2="-4.4958" width="0" layer="51"/>
<wire x1="-1.778" y1="-4.4958" x2="-1.778" y2="-3.5052" width="0" layer="51"/>
<wire x1="-0.9652" y1="-3.5052" x2="-1.4224" y2="-3.5052" width="0" layer="51"/>
<wire x1="-1.4224" y1="-3.5052" x2="-1.4224" y2="-4.4958" width="0" layer="51"/>
<wire x1="-1.4224" y1="-4.4958" x2="-0.9652" y2="-4.4958" width="0" layer="51"/>
<wire x1="-0.9652" y1="-4.4958" x2="-0.9652" y2="-3.5052" width="0" layer="51"/>
<wire x1="-0.1778" y1="-3.5052" x2="-0.635" y2="-3.5052" width="0" layer="51"/>
<wire x1="-0.635" y1="-3.5052" x2="-0.635" y2="-4.4958" width="0" layer="51"/>
<wire x1="-0.635" y1="-4.4958" x2="-0.1778" y2="-4.4958" width="0" layer="51"/>
<wire x1="-0.1778" y1="-4.4958" x2="-0.1778" y2="-3.5052" width="0" layer="51"/>
<wire x1="0.635" y1="-3.5052" x2="0.1778" y2="-3.5052" width="0" layer="51"/>
<wire x1="0.1778" y1="-3.5052" x2="0.1778" y2="-4.4958" width="0" layer="51"/>
<wire x1="0.1778" y1="-4.4958" x2="0.635" y2="-4.4958" width="0" layer="51"/>
<wire x1="0.635" y1="-4.4958" x2="0.635" y2="-3.5052" width="0" layer="51"/>
<wire x1="1.4224" y1="-3.5052" x2="0.9652" y2="-3.5052" width="0" layer="51"/>
<wire x1="0.9652" y1="-3.5052" x2="0.9652" y2="-4.4958" width="0" layer="51"/>
<wire x1="0.9652" y1="-4.4958" x2="1.4224" y2="-4.4958" width="0" layer="51"/>
<wire x1="1.4224" y1="-4.4958" x2="1.4224" y2="-3.5052" width="0" layer="51"/>
<wire x1="2.2352" y1="-3.5052" x2="1.778" y2="-3.5052" width="0" layer="51"/>
<wire x1="1.778" y1="-3.5052" x2="1.778" y2="-4.4958" width="0" layer="51"/>
<wire x1="1.778" y1="-4.4958" x2="2.2352" y2="-4.4958" width="0" layer="51"/>
<wire x1="2.2352" y1="-4.4958" x2="2.2352" y2="-3.5052" width="0" layer="51"/>
<wire x1="3.0226" y1="-3.5052" x2="2.5654" y2="-3.5052" width="0" layer="51"/>
<wire x1="2.5654" y1="-3.5052" x2="2.5654" y2="-4.4958" width="0" layer="51"/>
<wire x1="2.5654" y1="-4.4958" x2="3.0226" y2="-4.4958" width="0" layer="51"/>
<wire x1="3.0226" y1="-4.4958" x2="3.0226" y2="-3.5052" width="0" layer="51"/>
<wire x1="3.5052" y1="-2.5654" x2="3.5052" y2="-3.0226" width="0" layer="51"/>
<wire x1="3.5052" y1="-3.0226" x2="4.4958" y2="-3.0226" width="0" layer="51"/>
<wire x1="4.4958" y1="-3.0226" x2="4.4958" y2="-2.5654" width="0" layer="51"/>
<wire x1="4.4958" y1="-2.5654" x2="3.5052" y2="-2.5654" width="0" layer="51"/>
<wire x1="3.5052" y1="-1.778" x2="3.5052" y2="-2.2352" width="0" layer="51"/>
<wire x1="3.5052" y1="-2.2352" x2="4.4958" y2="-2.2352" width="0" layer="51"/>
<wire x1="4.4958" y1="-2.2352" x2="4.4958" y2="-1.778" width="0" layer="51"/>
<wire x1="4.4958" y1="-1.778" x2="3.5052" y2="-1.778" width="0" layer="51"/>
<wire x1="3.5052" y1="-0.9652" x2="3.5052" y2="-1.4224" width="0" layer="51"/>
<wire x1="3.5052" y1="-1.4224" x2="4.4958" y2="-1.4224" width="0" layer="51"/>
<wire x1="4.4958" y1="-1.4224" x2="4.4958" y2="-0.9652" width="0" layer="51"/>
<wire x1="4.4958" y1="-0.9652" x2="3.5052" y2="-0.9652" width="0" layer="51"/>
<wire x1="3.5052" y1="-0.1778" x2="3.5052" y2="-0.635" width="0" layer="51"/>
<wire x1="3.5052" y1="-0.635" x2="4.4958" y2="-0.635" width="0" layer="51"/>
<wire x1="4.4958" y1="-0.635" x2="4.4958" y2="-0.1778" width="0" layer="51"/>
<wire x1="4.4958" y1="-0.1778" x2="3.5052" y2="-0.1778" width="0" layer="51"/>
<wire x1="3.5052" y1="0.635" x2="3.5052" y2="0.1778" width="0" layer="51"/>
<wire x1="3.5052" y1="0.1778" x2="4.4958" y2="0.1778" width="0" layer="51"/>
<wire x1="4.4958" y1="0.1778" x2="4.4958" y2="0.635" width="0" layer="51"/>
<wire x1="4.4958" y1="0.635" x2="3.5052" y2="0.635" width="0" layer="51"/>
<wire x1="3.5052" y1="1.4224" x2="3.5052" y2="0.9652" width="0" layer="51"/>
<wire x1="3.5052" y1="0.9652" x2="4.4958" y2="0.9652" width="0" layer="51"/>
<wire x1="4.4958" y1="0.9652" x2="4.4958" y2="1.4224" width="0" layer="51"/>
<wire x1="4.4958" y1="1.4224" x2="3.5052" y2="1.4224" width="0" layer="51"/>
<wire x1="3.5052" y1="2.2352" x2="3.5052" y2="1.778" width="0" layer="51"/>
<wire x1="3.5052" y1="1.778" x2="4.4958" y2="1.778" width="0" layer="51"/>
<wire x1="4.4958" y1="1.778" x2="4.4958" y2="2.2352" width="0" layer="51"/>
<wire x1="4.4958" y1="2.2352" x2="3.5052" y2="2.2352" width="0" layer="51"/>
<wire x1="3.5052" y1="3.0226" x2="3.5052" y2="2.5654" width="0" layer="51"/>
<wire x1="3.5052" y1="2.5654" x2="4.4958" y2="2.5654" width="0" layer="51"/>
<wire x1="4.4958" y1="2.5654" x2="4.4958" y2="3.0226" width="0" layer="51"/>
<wire x1="4.4958" y1="3.0226" x2="3.5052" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.5052" y1="2.2352" x2="-2.2352" y2="3.5052" width="0" layer="51"/>
<wire x1="-0.1778" y1="-3.5052" x2="0.1778" y2="-3.5052" width="0" layer="51"/>
<wire x1="3.5052" y1="-0.1778" x2="3.5052" y2="0.1778" width="0" layer="51"/>
<wire x1="0.1778" y1="3.5052" x2="-0.1778" y2="3.5052" width="0" layer="51"/>
<wire x1="-3.5052" y1="0.1778" x2="-3.5052" y2="-0.1778" width="0" layer="51"/>
<text x="-5.4864" y="5.3594" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.3594" y="-7.2644" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="SO20" urn="urn:adsk.eagle:footprint:43327/1" locally_modified="yes">
<description>&lt;b&gt;SO20 / SOT163-1 Reflow soldering&lt;/b&gt; Philips SC01_Mounting_1996.pdf</description>
<wire x1="-6.55" y1="3.75" x2="6.55" y2="3.75" width="0.254" layer="21"/>
<wire x1="6.55" y1="3.75" x2="6.55" y2="-3.75" width="0.254" layer="21"/>
<wire x1="6.55" y1="-3.75" x2="-6.55" y2="-3.75" width="0.254" layer="21"/>
<wire x1="-6.55" y1="-3.75" x2="-6.55" y2="3.75" width="0.254" layer="21"/>
<wire x1="-6.45" y1="1.2" x2="-6.45" y2="-1.2" width="0.254" layer="21" curve="-180"/>
<smd name="1" x="-5.715" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="2" x="-4.445" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="3" x="-3.175" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="4" x="-1.905" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="5" x="-0.635" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="6" x="0.635" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="7" x="1.905" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="8" x="3.175" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="9" x="4.445" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="10" x="5.715" y="-4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="11" x="5.715" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="12" x="4.445" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="13" x="3.175" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="14" x="1.905" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="15" x="0.635" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="16" x="-0.635" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="17" x="-1.905" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="18" x="-3.175" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="19" x="-4.445" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<smd name="20" x="-5.715" y="4.78" dx="0.6" dy="1.5" layer="1"/>
<text x="-7" y="-3.9" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-4.25" y="-0.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.9055" y1="-5.0165" x2="-5.5245" y2="-3.8735" layer="51"/>
<rectangle x1="-4.6355" y1="-5.0165" x2="-4.2545" y2="-3.8735" layer="51"/>
<rectangle x1="-3.3655" y1="-5.0165" x2="-2.9845" y2="-3.8735" layer="51"/>
<rectangle x1="-2.0955" y1="-5.0165" x2="-1.7145" y2="-3.8735" layer="51"/>
<rectangle x1="-0.8255" y1="-5.0165" x2="-0.4445" y2="-3.8735" layer="51"/>
<rectangle x1="0.4445" y1="-5.0165" x2="0.8255" y2="-3.8735" layer="51"/>
<rectangle x1="1.7145" y1="-5.0165" x2="2.0955" y2="-3.8735" layer="51"/>
<rectangle x1="2.9845" y1="-5.0165" x2="3.3655" y2="-3.8735" layer="51"/>
<rectangle x1="4.2545" y1="-5.0165" x2="4.6355" y2="-3.8735" layer="51"/>
<rectangle x1="5.5245" y1="-5.0165" x2="5.9055" y2="-3.8735" layer="51"/>
<rectangle x1="5.5245" y1="3.8735" x2="5.9055" y2="5.0165" layer="51"/>
<rectangle x1="4.2545" y1="3.8735" x2="4.6355" y2="5.0165" layer="51"/>
<rectangle x1="2.9845" y1="3.8735" x2="3.3655" y2="5.0165" layer="51"/>
<rectangle x1="1.7145" y1="3.8735" x2="2.0955" y2="5.0165" layer="51"/>
<rectangle x1="0.4445" y1="3.8735" x2="0.8255" y2="5.0165" layer="51"/>
<rectangle x1="-0.8255" y1="3.8735" x2="-0.4445" y2="5.0165" layer="51"/>
<rectangle x1="-2.0955" y1="3.8735" x2="-1.7145" y2="5.0165" layer="51"/>
<rectangle x1="-3.3655" y1="3.8735" x2="-2.9845" y2="5.0165" layer="51"/>
<rectangle x1="-4.6355" y1="3.8735" x2="-4.2545" y2="5.0165" layer="51"/>
<rectangle x1="-5.9055" y1="3.8735" x2="-5.5245" y2="5.0165" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ATMEGA328P">
<wire x1="-7.62" y1="-22.86" x2="10.16" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="10.16" y2="22.86" width="0.4064" layer="94"/>
<wire x1="10.16" y1="22.86" x2="-7.62" y2="22.86" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="22.86" x2="-7.62" y2="-22.86" width="0.4064" layer="94"/>
<text x="-7.62" y="23.495" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PB0" x="-12.7" y="20.32" length="middle"/>
<pin name="PB1" x="-12.7" y="17.78" length="middle"/>
<pin name="PB2" x="-12.7" y="12.7" length="middle"/>
<pin name="PB3" x="-12.7" y="10.16" length="middle"/>
<pin name="PB4" x="-12.7" y="7.62" length="middle"/>
<pin name="PB5" x="-12.7" y="5.08" length="middle" direction="out"/>
<pin name="PB6" x="-12.7" y="-5.08" length="middle" direction="pwr"/>
<pin name="PB7" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="PD0" x="15.24" y="20.32" length="middle" rot="R180"/>
<pin name="PD1" x="15.24" y="17.78" length="middle" rot="R180"/>
<pin name="PD2" x="15.24" y="15.24" length="middle" rot="R180"/>
<pin name="PD3" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="PD4" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="PD5" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="PD6" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="PD7" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="PC0" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="PC1" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="PC2" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="PC3" x="15.24" y="-10.16" length="middle" rot="R180"/>
<pin name="PC4" x="15.24" y="-12.7" length="middle" rot="R180"/>
<pin name="PC5" x="15.24" y="-15.24" length="middle" rot="R180"/>
<pin name="ADC6" x="15.24" y="-17.78" length="middle" rot="R180"/>
<pin name="ADC7" x="15.24" y="-20.32" length="middle" rot="R180"/>
<pin name="AREF" x="-12.7" y="-17.78" length="middle"/>
<pin name="AVCC" x="-12.7" y="-15.24" length="middle"/>
<pin name="GND" x="-12.7" y="-20.32" length="middle"/>
<pin name="VCC" x="-12.7" y="-12.7" length="middle"/>
<pin name="PC6" x="-12.7" y="0" length="middle" direction="in"/>
</symbol>
<symbol name="MOTOR">
<circle x="0" y="0" radius="5.08" width="0.254" layer="94"/>
<text x="-1.7018" y="-2.54" size="5.08" layer="94">M</text>
<wire x1="2.54" y1="6.35" x2="-2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-2.5146" y2="4.445" width="0.254" layer="94"/>
<wire x1="2.54" y1="4.4196" x2="2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="-2.5654" y1="-4.5212" x2="-2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="2.54" y1="-6.35" x2="2.54" y2="-4.5466" width="0.254" layer="94"/>
</symbol>
<symbol name="VM">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VM" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="L6205">
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="20.32" width="0.4064" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-17.78" width="0.4064" layer="94"/>
<text x="-10.16" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="ENA" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="OUT2B" x="15.24" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="IN1A" x="-15.24" y="15.24" length="middle" direction="in"/>
<pin name="IN2A" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="IN1B" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="IN2B" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="ENB" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="VBOOT" x="-15.24" y="-10.16" length="middle" direction="pwr"/>
<pin name="VCP" x="-15.24" y="-12.7" length="middle" direction="pwr"/>
<pin name="OUT1A" x="15.24" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="OUT2A" x="15.24" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="OUT1B" x="15.24" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="VSA" x="-15.24" y="-2.54" length="middle" direction="pwr"/>
<pin name="VSB" x="-15.24" y="-5.08" length="middle" direction="pwr"/>
<pin name="SENSEB" x="15.24" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="SENSEA" x="15.24" y="17.78" length="middle" direction="out" rot="R180"/>
<pin name="GND" x="-15.24" y="-15.24" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA328P" prefix="IC">
<description>32A, 32-lead, 7 x 7 mm Body Size, 1.0 mm Body Thickness,
0.8 mm Lead Pitch, Thin Profile Plastic Quad Flat Package (TQFP)</description>
<gates>
<gate name="&gt;NAME" symbol="ATMEGA328P" x="0" y="0"/>
</gates>
<devices>
<device name="MA" package="TQFP32">
<connects>
<connect gate="&gt;NAME" pin="ADC6" pad="19"/>
<connect gate="&gt;NAME" pin="ADC7" pad="22"/>
<connect gate="&gt;NAME" pin="AREF" pad="20"/>
<connect gate="&gt;NAME" pin="AVCC" pad="18"/>
<connect gate="&gt;NAME" pin="GND" pad="3 5 21"/>
<connect gate="&gt;NAME" pin="PB0" pad="12"/>
<connect gate="&gt;NAME" pin="PB1" pad="13"/>
<connect gate="&gt;NAME" pin="PB2" pad="14"/>
<connect gate="&gt;NAME" pin="PB3" pad="15"/>
<connect gate="&gt;NAME" pin="PB4" pad="16"/>
<connect gate="&gt;NAME" pin="PB5" pad="17"/>
<connect gate="&gt;NAME" pin="PB6" pad="7"/>
<connect gate="&gt;NAME" pin="PB7" pad="8"/>
<connect gate="&gt;NAME" pin="PC0" pad="23"/>
<connect gate="&gt;NAME" pin="PC1" pad="24"/>
<connect gate="&gt;NAME" pin="PC2" pad="25"/>
<connect gate="&gt;NAME" pin="PC3" pad="26"/>
<connect gate="&gt;NAME" pin="PC4" pad="27"/>
<connect gate="&gt;NAME" pin="PC5" pad="28"/>
<connect gate="&gt;NAME" pin="PC6" pad="29"/>
<connect gate="&gt;NAME" pin="PD0" pad="30"/>
<connect gate="&gt;NAME" pin="PD1" pad="31"/>
<connect gate="&gt;NAME" pin="PD2" pad="32"/>
<connect gate="&gt;NAME" pin="PD3" pad="1"/>
<connect gate="&gt;NAME" pin="PD4" pad="2"/>
<connect gate="&gt;NAME" pin="PD5" pad="9"/>
<connect gate="&gt;NAME" pin="PD6" pad="10"/>
<connect gate="&gt;NAME" pin="PD7" pad="11"/>
<connect gate="&gt;NAME" pin="VCC" pad="4 6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOTOR" prefix="M">
<gates>
<gate name="G$1" symbol="MOTOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VM" prefix="VM">
<gates>
<gate name="G$1" symbol="VM" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L6205" prefix="IC">
<gates>
<gate name="A" symbol="L6205" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SO20">
<connects>
<connect gate="A" pin="ENA" pad="20"/>
<connect gate="A" pin="ENB" pad="11"/>
<connect gate="A" pin="GND" pad="5 6 15 16"/>
<connect gate="A" pin="IN1A" pad="1"/>
<connect gate="A" pin="IN1B" pad="9"/>
<connect gate="A" pin="IN2A" pad="2"/>
<connect gate="A" pin="IN2B" pad="10"/>
<connect gate="A" pin="OUT1A" pad="4"/>
<connect gate="A" pin="OUT1B" pad="7"/>
<connect gate="A" pin="OUT2A" pad="18"/>
<connect gate="A" pin="OUT2B" pad="13"/>
<connect gate="A" pin="SENSEA" pad="3"/>
<connect gate="A" pin="SENSEB" pad="8"/>
<connect gate="A" pin="VBOOT" pad="12"/>
<connect gate="A" pin="VCP" pad="19"/>
<connect gate="A" pin="VSA" pad="17"/>
<connect gate="A" pin="VSB" pad="14"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02" urn="urn:adsk.eagle:footprint:22309/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90" urn="urn:adsk.eagle:footprint:22310/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X02" urn="urn:adsk.eagle:package:22435/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02"/>
</packageinstances>
</package3d>
<package3d name="1X02/90" urn="urn:adsk.eagle:package:22437/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD2" urn="urn:adsk.eagle:symbol:22308/1" library_version="3">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" urn="urn:adsk.eagle:component:22516/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22435/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22437/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A5P-LOC" urn="urn:adsk.eagle:symbol:13880/1" library_version="1">
<wire x1="127" y1="3.937" x2="127" y2="9.017" width="0.1016" layer="94"/>
<wire x1="127" y1="9.017" x2="127" y2="14.097" width="0.1016" layer="94"/>
<wire x1="127" y1="14.097" x2="127" y2="19.177" width="0.1016" layer="94"/>
<wire x1="127" y1="19.177" x2="127" y2="24.257" width="0.1016" layer="94"/>
<wire x1="31.75" y1="3.937" x2="31.75" y2="24.257" width="0.1016" layer="94"/>
<wire x1="31.75" y1="24.257" x2="85.725" y2="24.257" width="0.1016" layer="94"/>
<wire x1="85.725" y1="24.257" x2="127" y2="24.257" width="0.1016" layer="94"/>
<wire x1="116.84" y1="3.937" x2="116.84" y2="9.017" width="0.1016" layer="94"/>
<wire x1="116.84" y1="9.017" x2="127" y2="9.017" width="0.1016" layer="94"/>
<wire x1="116.84" y1="9.017" x2="85.725" y2="9.017" width="0.1016" layer="94"/>
<wire x1="85.725" y1="9.017" x2="85.725" y2="3.937" width="0.1016" layer="94"/>
<wire x1="85.725" y1="9.017" x2="85.725" y2="14.097" width="0.1016" layer="94"/>
<wire x1="85.725" y1="14.097" x2="127" y2="14.097" width="0.1016" layer="94"/>
<wire x1="85.725" y1="14.097" x2="85.725" y2="19.177" width="0.1016" layer="94"/>
<wire x1="85.725" y1="19.177" x2="127" y2="19.177" width="0.1016" layer="94"/>
<wire x1="85.725" y1="19.177" x2="85.725" y2="24.257" width="0.1016" layer="94"/>
<text x="87.63" y="15.367" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="87.63" y="10.287" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="100.965" y="5.207" size="2.54" layer="94">&gt;SHEET</text>
<text x="87.376" y="5.08" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="130.81" y2="179.07" columns="4" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA5_P" urn="urn:adsk.eagle:component:13934/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A5, portrait with doc field</description>
<gates>
<gate name="G$1" symbol="A5P-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="martinmake" deviceset="ATMEGA328P" device="MA"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="M1" library="martinmake" deviceset="MOTOR" device=""/>
<part name="M2" library="martinmake" deviceset="MOTOR" device=""/>
<part name="JP-LM" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
<part name="JP-RM" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
<part name="VM1" library="martinmake" deviceset="VM" device=""/>
<part name="IC3" library="martinmake" deviceset="L6205" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA5_P" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="80.01" y="80.01" size="7.62" layer="97" font="vector" ratio="12" align="center">DESIGNED ON ARCH</text>
<wire x1="38.1" y1="74.93" x2="121.92" y2="74.93" width="0.254" layer="97"/>
<wire x1="38.1" y1="85.09" x2="121.92" y2="85.09" width="0.254" layer="97"/>
<wire x1="13.97" y1="50.8" x2="13.97" y2="57.15" width="0.508" layer="97"/>
<wire x1="13.97" y1="57.15" x2="13.97" y2="62.23" width="0.508" layer="97"/>
<wire x1="13.97" y1="62.23" x2="13.97" y2="67.31" width="0.508" layer="97"/>
<wire x1="13.97" y1="67.31" x2="16.51" y2="64.77" width="0.508" layer="97"/>
<wire x1="16.51" y1="64.77" x2="19.05" y2="57.15" width="0.508" layer="97"/>
<wire x1="19.05" y1="57.15" x2="21.59" y2="64.77" width="0.508" layer="97"/>
<wire x1="21.59" y1="64.77" x2="24.13" y2="67.31" width="0.508" layer="97"/>
<wire x1="24.13" y1="67.31" x2="24.13" y2="62.23" width="0.508" layer="97"/>
<wire x1="24.13" y1="62.23" x2="24.13" y2="57.15" width="0.508" layer="97"/>
<wire x1="24.13" y1="57.15" x2="24.13" y2="50.8" width="0.508" layer="97"/>
<wire x1="24.13" y1="50.8" x2="22.86" y2="52.07" width="0.508" layer="97"/>
<wire x1="22.86" y1="52.07" x2="22.86" y2="54.61" width="0.508" layer="97"/>
<wire x1="22.86" y1="54.61" x2="22.86" y2="59.69" width="0.508" layer="97"/>
<wire x1="22.86" y1="59.69" x2="22.86" y2="64.77" width="0.508" layer="97"/>
<wire x1="22.86" y1="64.77" x2="19.05" y2="52.07" width="0.508" layer="97"/>
<wire x1="19.05" y1="52.07" x2="15.24" y2="64.77" width="0.508" layer="97"/>
<wire x1="15.24" y1="64.77" x2="15.24" y2="59.69" width="0.508" layer="97"/>
<wire x1="15.24" y1="59.69" x2="15.24" y2="54.61" width="0.508" layer="97"/>
<wire x1="15.24" y1="54.61" x2="15.24" y2="52.07" width="0.508" layer="97"/>
<wire x1="15.24" y1="52.07" x2="13.97" y2="50.8" width="0.508" layer="97"/>
<wire x1="13.97" y1="50.8" x2="15.24" y2="54.61" width="0.508" layer="97"/>
<wire x1="15.24" y1="54.61" x2="13.97" y2="57.15" width="0.508" layer="97"/>
<wire x1="13.97" y1="57.15" x2="15.24" y2="59.69" width="0.508" layer="97"/>
<wire x1="15.24" y1="59.69" x2="13.97" y2="62.23" width="0.508" layer="97"/>
<wire x1="13.97" y1="62.23" x2="15.24" y2="64.77" width="0.508" layer="97"/>
<wire x1="15.24" y1="64.77" x2="13.97" y2="67.31" width="0.508" layer="97"/>
<wire x1="15.24" y1="64.77" x2="16.51" y2="64.77" width="0.508" layer="97"/>
<wire x1="16.51" y1="64.77" x2="16.51" y2="60.96" width="0.508" layer="97"/>
<wire x1="16.51" y1="60.96" x2="17.78" y2="59.69" width="0.508" layer="97"/>
<wire x1="17.78" y1="59.69" x2="17.78" y2="57.15" width="0.508" layer="97"/>
<wire x1="17.78" y1="57.15" x2="19.05" y2="57.15" width="0.508" layer="97"/>
<wire x1="19.05" y1="57.15" x2="19.05" y2="53.34" width="0.508" layer="97"/>
<wire x1="19.05" y1="57.15" x2="20.32" y2="57.15" width="0.508" layer="97"/>
<wire x1="20.32" y1="57.15" x2="20.32" y2="59.69" width="0.508" layer="97"/>
<wire x1="20.32" y1="59.69" x2="21.59" y2="60.96" width="0.508" layer="97"/>
<wire x1="21.59" y1="60.96" x2="21.59" y2="64.77" width="0.508" layer="97"/>
<wire x1="22.86" y1="64.77" x2="24.13" y2="67.31" width="0.508" layer="97"/>
<wire x1="21.59" y1="64.77" x2="22.86" y2="64.77" width="0.508" layer="97"/>
<wire x1="22.86" y1="64.77" x2="24.13" y2="62.23" width="0.508" layer="97"/>
<wire x1="24.13" y1="62.23" x2="22.86" y2="59.69" width="0.508" layer="97"/>
<wire x1="22.86" y1="59.69" x2="24.13" y2="57.15" width="0.508" layer="97"/>
<wire x1="24.13" y1="57.15" x2="22.86" y2="54.61" width="0.508" layer="97"/>
<wire x1="22.86" y1="54.61" x2="24.13" y2="50.8" width="0.508" layer="97"/>
<wire x1="13.97" y1="71.12" x2="13.97" y2="77.47" width="0.508" layer="97"/>
<wire x1="13.97" y1="77.47" x2="13.97" y2="82.55" width="0.508" layer="97"/>
<wire x1="13.97" y1="82.55" x2="13.97" y2="87.63" width="0.508" layer="97"/>
<wire x1="13.97" y1="87.63" x2="16.51" y2="85.09" width="0.508" layer="97"/>
<wire x1="16.51" y1="85.09" x2="19.05" y2="77.47" width="0.508" layer="97"/>
<wire x1="19.05" y1="77.47" x2="21.59" y2="85.09" width="0.508" layer="97"/>
<wire x1="21.59" y1="85.09" x2="24.13" y2="87.63" width="0.508" layer="97"/>
<wire x1="24.13" y1="87.63" x2="24.13" y2="82.55" width="0.508" layer="97"/>
<wire x1="24.13" y1="82.55" x2="24.13" y2="77.47" width="0.508" layer="97"/>
<wire x1="24.13" y1="77.47" x2="24.13" y2="71.12" width="0.508" layer="97"/>
<wire x1="24.13" y1="71.12" x2="22.86" y2="72.39" width="0.508" layer="97"/>
<wire x1="22.86" y1="72.39" x2="22.86" y2="74.93" width="0.508" layer="97"/>
<wire x1="22.86" y1="74.93" x2="22.86" y2="80.01" width="0.508" layer="97"/>
<wire x1="22.86" y1="80.01" x2="22.86" y2="85.09" width="0.508" layer="97"/>
<wire x1="22.86" y1="85.09" x2="19.05" y2="72.39" width="0.508" layer="97"/>
<wire x1="19.05" y1="72.39" x2="15.24" y2="85.09" width="0.508" layer="97"/>
<wire x1="15.24" y1="85.09" x2="15.24" y2="80.01" width="0.508" layer="97"/>
<wire x1="15.24" y1="80.01" x2="15.24" y2="74.93" width="0.508" layer="97"/>
<wire x1="15.24" y1="74.93" x2="15.24" y2="72.39" width="0.508" layer="97"/>
<wire x1="15.24" y1="72.39" x2="13.97" y2="71.12" width="0.508" layer="97"/>
<wire x1="13.97" y1="71.12" x2="15.24" y2="74.93" width="0.508" layer="97"/>
<wire x1="15.24" y1="74.93" x2="13.97" y2="77.47" width="0.508" layer="97"/>
<wire x1="13.97" y1="77.47" x2="15.24" y2="80.01" width="0.508" layer="97"/>
<wire x1="15.24" y1="80.01" x2="13.97" y2="82.55" width="0.508" layer="97"/>
<wire x1="13.97" y1="82.55" x2="15.24" y2="85.09" width="0.508" layer="97"/>
<wire x1="15.24" y1="85.09" x2="13.97" y2="87.63" width="0.508" layer="97"/>
<wire x1="15.24" y1="85.09" x2="16.51" y2="85.09" width="0.508" layer="97"/>
<wire x1="16.51" y1="85.09" x2="16.51" y2="81.28" width="0.508" layer="97"/>
<wire x1="16.51" y1="81.28" x2="17.78" y2="80.01" width="0.508" layer="97"/>
<wire x1="17.78" y1="80.01" x2="17.78" y2="77.47" width="0.508" layer="97"/>
<wire x1="17.78" y1="77.47" x2="19.05" y2="77.47" width="0.508" layer="97"/>
<wire x1="19.05" y1="77.47" x2="19.05" y2="73.66" width="0.508" layer="97"/>
<wire x1="19.05" y1="77.47" x2="20.32" y2="77.47" width="0.508" layer="97"/>
<wire x1="20.32" y1="77.47" x2="20.32" y2="80.01" width="0.508" layer="97"/>
<wire x1="20.32" y1="80.01" x2="21.59" y2="81.28" width="0.508" layer="97"/>
<wire x1="21.59" y1="81.28" x2="21.59" y2="85.09" width="0.508" layer="97"/>
<wire x1="22.86" y1="85.09" x2="24.13" y2="87.63" width="0.508" layer="97"/>
<wire x1="21.59" y1="85.09" x2="22.86" y2="85.09" width="0.508" layer="97"/>
<wire x1="22.86" y1="85.09" x2="24.13" y2="82.55" width="0.508" layer="97"/>
<wire x1="24.13" y1="82.55" x2="22.86" y2="80.01" width="0.508" layer="97"/>
<wire x1="22.86" y1="80.01" x2="24.13" y2="77.47" width="0.508" layer="97"/>
<wire x1="24.13" y1="77.47" x2="22.86" y2="74.93" width="0.508" layer="97"/>
<wire x1="22.86" y1="74.93" x2="24.13" y2="71.12" width="0.508" layer="97"/>
<wire x1="11.43" y1="62.23" x2="8.89" y2="67.31" width="0.508" layer="97"/>
<wire x1="8.89" y1="67.31" x2="13.97" y2="69.85" width="0.508" layer="97"/>
<wire x1="13.97" y1="69.85" x2="19.05" y2="67.31" width="0.508" layer="97"/>
<wire x1="19.05" y1="67.31" x2="24.13" y2="69.85" width="0.508" layer="97"/>
<wire x1="24.13" y1="69.85" x2="29.21" y2="67.31" width="0.508" layer="97"/>
<wire x1="29.21" y1="67.31" x2="26.67" y2="62.23" width="0.508" layer="97"/>
<wire x1="13.97" y1="69.85" x2="8.89" y2="72.39" width="0.508" layer="97"/>
<wire x1="8.89" y1="72.39" x2="11.43" y2="77.47" width="0.508" layer="97"/>
<wire x1="24.13" y1="69.85" x2="29.21" y2="72.39" width="0.508" layer="97"/>
<wire x1="29.21" y1="72.39" x2="26.67" y2="77.47" width="0.508" layer="97"/>
<wire x1="13.97" y1="69.85" x2="19.05" y2="72.39" width="0.508" layer="97"/>
<wire x1="19.05" y1="72.39" x2="24.13" y2="69.85" width="0.508" layer="97"/>
<wire x1="11.43" y1="59.69" x2="8.89" y2="54.61" width="0.508" layer="97"/>
<wire x1="8.89" y1="54.61" x2="11.43" y2="49.53" width="0.508" layer="97"/>
<wire x1="26.67" y1="59.69" x2="29.21" y2="54.61" width="0.508" layer="97"/>
<wire x1="29.21" y1="54.61" x2="26.67" y2="49.53" width="0.508" layer="97"/>
<wire x1="11.43" y1="80.01" x2="8.89" y2="85.09" width="0.508" layer="97"/>
<wire x1="8.89" y1="85.09" x2="11.43" y2="90.17" width="0.508" layer="97"/>
<wire x1="26.67" y1="90.17" x2="29.21" y2="85.09" width="0.508" layer="97"/>
<wire x1="29.21" y1="85.09" x2="26.67" y2="80.01" width="0.508" layer="97"/>
<wire x1="13.97" y1="90.17" x2="19.05" y2="87.63" width="0.508" layer="97"/>
<wire x1="19.05" y1="87.63" x2="24.13" y2="90.17" width="0.508" layer="97"/>
<wire x1="13.97" y1="49.53" x2="19.05" y2="52.07" width="0.508" layer="97"/>
<wire x1="19.05" y1="52.07" x2="24.13" y2="49.53" width="0.508" layer="97"/>
<text x="40.64" y="54.61" size="2.54" layer="97">! SIMPLIFIED SCHEMATIC !</text>
</plain>
<instances>
<instance part="IC1" gate="&gt;NAME" x="27.94" y="132.08" smashed="yes">
<attribute name="NAME" x="20.32" y="155.575" size="1.778" layer="95"/>
<attribute name="VALUE" x="20.32" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="8.89" y="107.95" smashed="yes">
<attribute name="VALUE" x="6.35" y="105.41" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="VCC" x="8.89" y="121.92" smashed="yes"/>
<instance part="M1" gate="G$1" x="118.11" y="201.93" smashed="yes"/>
<instance part="M2" gate="G$1" x="118.11" y="186.69" smashed="yes" rot="R180"/>
<instance part="JP-LM" gate="G$1" x="111.76" y="200.66" smashed="yes">
<attribute name="NAME" x="105.41" y="206.375" size="1.778" layer="95"/>
<attribute name="VALUE" x="105.41" y="195.58" size="1.778" layer="96"/>
</instance>
<instance part="JP-RM" gate="G$1" x="111.76" y="185.42" smashed="yes">
<attribute name="NAME" x="105.41" y="191.135" size="1.778" layer="95"/>
<attribute name="VALUE" x="105.41" y="180.34" size="1.778" layer="96"/>
</instance>
<instance part="VM1" gate="G$1" x="58.42" y="181.61" smashed="yes" rot="R90">
<attribute name="VALUE" x="57.169203125" y="184.510634375" size="1.778" layer="96" align="center"/>
</instance>
<instance part="IC3" gate="A" x="83.82" y="185.42" smashed="yes">
<attribute name="NAME" x="73.66" y="206.375" size="1.778" layer="95"/>
<attribute name="VALUE" x="73.66" y="165.1" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="1.27" y="41.91" smashed="yes">
<attribute name="DRAWING_NAME" x="88.9" y="57.277" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="88.9" y="52.197" size="2.286" layer="94"/>
<attribute name="SHEET" x="102.235" y="47.117" size="2.54" layer="94"/>
</instance>
<instance part="P+2" gate="VCC" x="66.04" y="208.28" smashed="yes"/>
<instance part="GND2" gate="1" x="66.04" y="165.1" smashed="yes">
<attribute name="VALUE" x="63.5" y="162.56" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
<bus name="DIRA,DIRB,OC0A,OC0B">
<segment>
<wire x1="53.34" y1="198.12" x2="53.34" y2="139.7" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="IC1" gate="&gt;NAME" pin="GND"/>
<wire x1="15.24" y1="111.76" x2="8.89" y2="111.76" width="0.1524" layer="91"/>
<wire x1="8.89" y1="111.76" x2="8.89" y2="110.49" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="A" pin="GND"/>
<wire x1="68.58" y1="170.18" x2="66.04" y2="170.18" width="0.1524" layer="91"/>
<wire x1="66.04" y1="170.18" x2="66.04" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="8.89" y1="119.38" x2="8.89" y2="116.84" width="0.1524" layer="91"/>
<wire x1="8.89" y1="116.84" x2="11.43" y2="116.84" width="0.1524" layer="91"/>
<wire x1="11.43" y1="116.84" x2="11.43" y2="119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="&gt;NAME" pin="VCC"/>
<wire x1="11.43" y1="119.38" x2="15.24" y2="119.38" width="0.1524" layer="91"/>
<pinref part="IC1" gate="&gt;NAME" pin="AVCC"/>
<wire x1="15.24" y1="116.84" x2="11.43" y2="116.84" width="0.1524" layer="91"/>
<junction x="11.43" y="116.84"/>
<pinref part="IC1" gate="&gt;NAME" pin="AREF"/>
<wire x1="15.24" y1="114.3" x2="11.43" y2="114.3" width="0.1524" layer="91"/>
<wire x1="11.43" y1="114.3" x2="11.43" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="A" pin="ENB"/>
<wire x1="68.58" y1="193.04" x2="66.04" y2="193.04" width="0.1524" layer="91"/>
<wire x1="66.04" y1="193.04" x2="66.04" y2="203.2" width="0.1524" layer="91"/>
<wire x1="66.04" y1="205.74" x2="66.04" y2="203.2" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="ENA"/>
<wire x1="68.58" y1="203.2" x2="66.04" y2="203.2" width="0.1524" layer="91"/>
<junction x="66.04" y="203.2"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<pinref part="IC3" gate="A" pin="VBOOT"/>
<wire x1="68.58" y1="175.26" x2="66.04" y2="175.26" width="0.1524" layer="91"/>
<wire x1="66.04" y1="175.26" x2="66.04" y2="193.04" width="0.1524" layer="91"/>
<junction x="66.04" y="193.04"/>
<pinref part="IC3" gate="A" pin="VCP"/>
<wire x1="68.58" y1="172.72" x2="66.04" y2="172.72" width="0.1524" layer="91"/>
<wire x1="66.04" y1="172.72" x2="66.04" y2="175.26" width="0.1524" layer="91"/>
<junction x="66.04" y="175.26"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP-RM" gate="G$1" pin="2"/>
<wire x1="101.6" y1="185.42" x2="109.22" y2="185.42" width="0.1524" layer="91"/>
<wire x1="101.6" y1="185.42" x2="101.6" y2="187.96" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="OUT2B"/>
<wire x1="101.6" y1="187.96" x2="99.06" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP-RM" gate="G$1" pin="1"/>
<wire x1="104.14" y1="187.96" x2="109.22" y2="187.96" width="0.1524" layer="91"/>
<wire x1="104.14" y1="187.96" x2="104.14" y2="190.5" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="OUT1B"/>
<wire x1="104.14" y1="190.5" x2="99.06" y2="190.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="JP-LM" gate="G$1" pin="2"/>
<wire x1="104.14" y1="200.66" x2="109.22" y2="200.66" width="0.1524" layer="91"/>
<wire x1="104.14" y1="200.66" x2="104.14" y2="198.12" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="OUT2A"/>
<wire x1="104.14" y1="198.12" x2="99.06" y2="198.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="JP-LM" gate="G$1" pin="1"/>
<wire x1="109.22" y1="203.2" x2="101.6" y2="203.2" width="0.1524" layer="91"/>
<wire x1="101.6" y1="203.2" x2="101.6" y2="200.66" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="OUT1A"/>
<wire x1="101.6" y1="200.66" x2="99.06" y2="200.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIRA" class="0">
<segment>
<pinref part="IC1" gate="&gt;NAME" pin="PD0"/>
<wire x1="43.18" y1="152.4" x2="50.8" y2="152.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="152.4" x2="53.34" y2="154.94" width="0.1524" layer="91"/>
<label x="50.8" y="152.4" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="53.34" y1="195.58" x2="55.88" y2="198.12" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="IN2A"/>
<wire x1="55.88" y1="198.12" x2="68.58" y2="198.12" width="0.1524" layer="91"/>
<label x="55.88" y="198.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIRB" class="0">
<segment>
<pinref part="IC1" gate="&gt;NAME" pin="PD1"/>
<wire x1="43.18" y1="149.86" x2="50.8" y2="149.86" width="0.1524" layer="91"/>
<wire x1="50.8" y1="149.86" x2="53.34" y2="152.4" width="0.1524" layer="91"/>
<label x="50.8" y="149.86" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="53.34" y1="185.42" x2="55.88" y2="187.96" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="IN2B"/>
<wire x1="55.88" y1="187.96" x2="68.58" y2="187.96" width="0.1524" layer="91"/>
<label x="55.88" y="187.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="OC0B" class="0">
<segment>
<pinref part="IC1" gate="&gt;NAME" pin="PD5"/>
<wire x1="43.18" y1="139.7" x2="50.8" y2="139.7" width="0.1524" layer="91"/>
<wire x1="50.8" y1="139.7" x2="53.34" y2="142.24" width="0.1524" layer="91"/>
<label x="50.8" y="139.7" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="53.34" y1="187.96" x2="55.88" y2="190.5" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="IN1B"/>
<wire x1="55.88" y1="190.5" x2="68.58" y2="190.5" width="0.1524" layer="91"/>
<label x="55.88" y="190.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="OC0A" class="0">
<segment>
<pinref part="IC1" gate="&gt;NAME" pin="PD6"/>
<wire x1="43.18" y1="137.16" x2="50.8" y2="137.16" width="0.1524" layer="91"/>
<wire x1="50.8" y1="137.16" x2="53.34" y2="139.7" width="0.1524" layer="91"/>
<label x="50.8" y="137.16" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="53.34" y1="198.12" x2="55.88" y2="200.66" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="IN1A"/>
<wire x1="55.88" y1="200.66" x2="68.58" y2="200.66" width="0.1524" layer="91"/>
<label x="55.88" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="VM" class="0">
<segment>
<pinref part="IC3" gate="A" pin="VSA"/>
<wire x1="68.58" y1="182.88" x2="63.5" y2="182.88" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="VSB"/>
<wire x1="68.58" y1="180.34" x2="63.5" y2="180.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="182.88" x2="63.5" y2="181.61" width="0.1524" layer="91"/>
<pinref part="VM1" gate="G$1" pin="VM"/>
<wire x1="63.5" y1="181.61" x2="63.5" y2="180.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="181.61" x2="60.96" y2="181.61" width="0.1524" layer="91"/>
<junction x="63.5" y="181.61"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
