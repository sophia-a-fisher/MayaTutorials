//Maya ASCII 2024 scene
//Name: RobotAnim_Finsih.ma
//Last modified: Tue, May 30, 2023 02:41:22 AM
//Codeset: 1252
file -rdi 1 -ns "Robot_Rig" -rfn "Robot_RigRN" -op "v=0;" -typ "mayaAscii" "F:/00_ProyectosCritical/2023/NT_Maya2024/Maya2024_CompleteGuide//scenes/Robot_Rig.ma";
file -rdi 1 -ns "Barrel_Render" -rfn "Barrel_RenderRN" -op "v=0;" -typ "mayaAscii"
		 "F:/00_ProyectosCritical/2023/NT_Maya2024/Maya2024_CompleteGuide//scenes/Barrel_Render.ma";
file -r -ns "Robot_Rig" -dr 1 -rfn "Robot_RigRN" -op "v=0;" -typ "mayaAscii" "F:/00_ProyectosCritical/2023/NT_Maya2024/Maya2024_CompleteGuide//scenes/Robot_Rig.ma";
file -r -ns "Barrel_Render" -dr 1 -rfn "Barrel_RenderRN" -op "v=0;" -typ "mayaAscii"
		 "F:/00_ProyectosCritical/2023/NT_Maya2024/Maya2024_CompleteGuide//scenes/Barrel_Render.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22621)";
fileInfo "UUID" "B2B633D2-4D17-D3DD-B7CE-A8987E56D4A0";
createNode transform -s -n "persp";
	rename -uid "D0D59265-4E3D-2720-633F-FAA3699146A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.2532677532204239 11.882952644972576 81.381142524824938 ;
	setAttr ".r" -type "double3" -1.5383527296072674 -4.1999999999974644 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "76559CAA-43AB-D1D7-0BD1-9F8E5F98F565";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 80.35800321957025;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "2F9841FE-4DFE-686E-8F93-62A717554672";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4973DC55-4FE4-5710-6A41-3092B2C35DED";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9BEA91BA-4DC1-7B31-218F-7B947EC9A47F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5A8E7A82-4D84-5458-E4BE-76924281DB48";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "BC2E001A-472D-9B67-7290-F688F6393449";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "09A1E9A6-4AC1-0CF2-68BE-29AA1A571422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Shotcam";
	rename -uid "26BE6E04-49B5-5A27-E60E-1497AEBE4AD4";
createNode camera -n "ShotcamShape" -p "Shotcam";
	rename -uid "4ECECF41-4D44-3498-1611-CEAB37439DF4";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 60.517151253678769;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dr" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9308588E-44A7-750F-AA5B-4793C5B0F6C3";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6821DF2D-4338-516D-8E68-D8968F838788";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "18C8459D-4748-9635-D837-9B980DF56D32";
createNode displayLayerManager -n "layerManager";
	rename -uid "53214C67-42D0-2859-A52B-9A864271879A";
createNode displayLayer -n "defaultLayer";
	rename -uid "840C31F3-45DD-91CD-2B89-9A8E4722D47E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5B393F09-4B5F-1C7E-CD47-239ECC2F5488";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B9EB4F2F-41EB-71C3-F584-CE8EE3C61AEA";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "FF6AB165-4F4E-D797-D60D-EB8373341C46";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".enable_adaptive_sampling" yes;
	setAttr ".AA_samples_max" 10;
	setAttr ".rndrdvc" 1;
	setAttr ".version" -type "string" "5.3.1.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "49205E80-49BE-BB69-9075-ACB4D6A8CBEF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9C1C7C01-4C36-81C6-3381-3B8770BBAD54";
	setAttr ".color_management" 1;
	setAttr ".ai_translator" -type "string" "png";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "E1A08648-4572-81BF-5143-B6B3BE7F0FE9";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "Robot_RigRN";
	rename -uid "9E1919D2-4626-8FCE-AF4C-B29015D221CA";
	setAttr -s 386 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Robot_RigRN"
		"Robot_RigRN" 0
		"Robot_RigRN" 391
		2 "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Robot_Geo|Robot_Rig:Robot_GeoShape" 
		"uvPivot" " -type \"double2\" 0.49166925437748432 0.50387237966060638"
		2 "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Robot_Geo|Robot_Rig:Robot_GeoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "Robot_Rig:M_Robot_Face" "emissionColor" " -type \"float3\" 0 1 1"
		2 "Robot_Rig:M_Robot_Main" "emission" " 1"
		3 "Robot_Rig:skinCluster1.outputGeometry[0]" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Robot_Geo|Robot_Rig:Robot_GeoShape.inMesh" 
		""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Robot_Geo|Robot_Rig:Robot_GeoShape.inMesh" 
		"Robot_RigRN.placeHolderList[1]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Robot_Geo|Robot_Rig:Robot_GeoShape.uvSet[0].uvSetTweakLocation" 
		"Robot_RigRN.placeHolderList[2]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[3]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[4]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[5]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[6]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[7]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[8]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[9]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[10]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[11]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[12]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[13]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[14]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[15]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[16]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[17]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[18]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[19]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[20]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[21]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[22]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.translateX" 
		"Robot_RigRN.placeHolderList[23]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.translateY" 
		"Robot_RigRN.placeHolderList[24]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[25]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[26]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[27]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[28]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.visibility" 
		"Robot_RigRN.placeHolderList[29]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[30]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[31]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_foot_jntgrp|Robot_Rig:r_foot_jntCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[32]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.translateX" 
		"Robot_RigRN.placeHolderList[33]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.translateY" 
		"Robot_RigRN.placeHolderList[34]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[35]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[36]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[37]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[38]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.visibility" 
		"Robot_RigRN.placeHolderList[39]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[40]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[41]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:r_Foot_ctrlgrp|Robot_Rig:r_Foot_ctrl|Robot_Rig:r_heer_jntgrp|Robot_Rig:r_heer_jntCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[42]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[43]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[44]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[45]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[46]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[47]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[48]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[49]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[50]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[51]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[52]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.translateX" 
		"Robot_RigRN.placeHolderList[53]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.translateY" 
		"Robot_RigRN.placeHolderList[54]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[55]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[56]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[57]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[58]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.visibility" 
		"Robot_RigRN.placeHolderList[59]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[60]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[61]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_heel_jntgrp|Robot_Rig:l_heel_jntCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[62]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.translateX" 
		"Robot_RigRN.placeHolderList[63]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.translateY" 
		"Robot_RigRN.placeHolderList[64]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[65]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[66]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[67]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[68]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.visibility" 
		"Robot_RigRN.placeHolderList[69]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[70]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[71]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:l_Foot_ctrlgrp|Robot_Rig:l_Foot_ctrl|Robot_Rig:l_foot_jntgrp|Robot_Rig:l_foot_jntCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[72]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[73]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[74]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[75]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[76]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[77]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[78]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[79]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[80]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[81]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[82]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[83]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[84]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[85]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[86]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[87]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[88]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[89]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[90]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[91]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[92]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[93]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[94]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[95]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[96]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[97]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[98]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[99]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[100]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[101]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[102]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[103]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[104]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[105]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.translateX" 
		"Robot_RigRN.placeHolderList[106]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.translateY" 
		"Robot_RigRN.placeHolderList[107]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[108]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.visibility" 
		"Robot_RigRN.placeHolderList[109]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[110]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[111]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[112]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[113]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[114]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[115]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[116]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[117]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[118]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[119]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[120]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[121]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[122]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[123]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[124]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[125]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[126]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[127]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[128]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[129]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[130]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[131]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[132]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[133]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[134]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[135]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[136]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[137]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[138]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[139]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[140]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[141]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[142]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[143]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[144]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[145]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[146]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[147]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[148]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[149]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[150]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[151]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[152]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[153]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[154]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[155]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[156]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[157]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[158]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[159]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[160]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[161]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[162]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[163]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[164]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[165]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[166]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[167]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[168]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[169]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[170]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[171]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:antenna_0grp|Robot_Rig:antenna_0Ctrl|Robot_Rig:antenna_1grp|Robot_Rig:antenna_1Ctrl|Robot_Rig:antenna_2grp|Robot_Rig:antenna_2Ctrl|Robot_Rig:antenna_3grp|Robot_Rig:antenna_3Ctrl|Robot_Rig:antenna_4grp|Robot_Rig:antenna_4Ctrl|Robot_Rig:antenna_5grp|Robot_Rig:antenna_5Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[172]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.translateX" 
		"Robot_RigRN.placeHolderList[173]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.translateY" 
		"Robot_RigRN.placeHolderList[174]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[175]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[176]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[177]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[178]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.visibility" 
		"Robot_RigRN.placeHolderList[179]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[180]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[181]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:c_flashlight_jntgrp|Robot_Rig:c_flashlight_jntCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[182]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.translateX" 
		"Robot_RigRN.placeHolderList[183]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.translateY" 
		"Robot_RigRN.placeHolderList[184]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[185]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[186]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[187]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[188]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.visibility" 
		"Robot_RigRN.placeHolderList[189]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[190]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[191]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[192]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.translateX" 
		"Robot_RigRN.placeHolderList[193]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.translateY" 
		"Robot_RigRN.placeHolderList[194]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[195]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[196]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[197]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[198]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.visibility" 
		"Robot_RigRN.placeHolderList[199]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[200]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[201]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[202]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[203]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[204]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[205]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[206]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[207]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[208]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[209]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[210]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[211]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[212]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[213]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[214]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[215]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[216]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[217]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[218]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[219]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[220]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[221]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_thumb_0grp|Robot_Rig:r_thumb_0Ctrl|Robot_Rig:r_thumb_1grp|Robot_Rig:r_thumb_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[222]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[223]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[224]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[225]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[226]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[227]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[228]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[229]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[230]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[231]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[232]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[233]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[234]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[235]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[236]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[237]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[238]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[239]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[240]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[241]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[242]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[243]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[244]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[245]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[246]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[247]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[248]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[249]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[250]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[251]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_index_0grp|Robot_Rig:r_index_0Ctrl|Robot_Rig:r_index_1grp|Robot_Rig:r_index_1Ctrl|Robot_Rig:r_index_2grp|Robot_Rig:r_index_2Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[252]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[253]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[254]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[255]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[256]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[257]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[258]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[259]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[260]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[261]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[262]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[263]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[264]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[265]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[266]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[267]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[268]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[269]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[270]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[271]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[272]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[273]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[274]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[275]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[276]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[277]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[278]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[279]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[280]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[281]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:r_shouldergrp|Robot_Rig:r_shoulderCtrl|Robot_Rig:r_elbowgrp|Robot_Rig:r_elbowCtrl|Robot_Rig:r_pinky_0grp|Robot_Rig:r_pinky_0Ctrl|Robot_Rig:r_pinky_1grp|Robot_Rig:r_pinky_1Ctrl|Robot_Rig:r_pinky_2grp|Robot_Rig:r_pinky_2Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[282]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.translateX" 
		"Robot_RigRN.placeHolderList[283]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.translateY" 
		"Robot_RigRN.placeHolderList[284]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[285]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[286]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[287]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[288]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.visibility" 
		"Robot_RigRN.placeHolderList[289]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[290]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[291]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[292]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.translateX" 
		"Robot_RigRN.placeHolderList[293]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.translateY" 
		"Robot_RigRN.placeHolderList[294]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.translateZ" 
		"Robot_RigRN.placeHolderList[295]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.rotateX" 
		"Robot_RigRN.placeHolderList[296]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.rotateY" 
		"Robot_RigRN.placeHolderList[297]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.rotateZ" 
		"Robot_RigRN.placeHolderList[298]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.visibility" 
		"Robot_RigRN.placeHolderList[299]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.scaleX" 
		"Robot_RigRN.placeHolderList[300]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.scaleY" 
		"Robot_RigRN.placeHolderList[301]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl.scaleZ" 
		"Robot_RigRN.placeHolderList[302]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[303]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[304]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[305]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[306]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[307]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[308]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[309]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[310]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[311]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[312]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[313]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[314]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[315]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[316]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[317]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[318]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[319]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[320]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[321]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[322]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[323]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[324]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[325]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[326]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[327]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[328]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[329]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[330]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[331]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_pinky_0grp|Robot_Rig:l_pinky_0Ctrl|Robot_Rig:l_pinky_1grp|Robot_Rig:l_pinky_1Ctrl|Robot_Rig:l_pinky_2grp|Robot_Rig:l_pinky_2Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[332]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[333]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[334]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[335]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[336]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[337]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[338]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[339]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[340]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[341]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[342]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[343]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[344]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[345]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[346]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[347]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[348]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[349]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[350]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[351]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[352]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[353]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[354]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[355]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[356]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[357]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[358]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[359]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[360]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[361]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_index_0grp|Robot_Rig:l_index_0Ctrl|Robot_Rig:l_index_1grp|Robot_Rig:l_index_1Ctrl|Robot_Rig:l_index_2grp|Robot_Rig:l_index_2Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[362]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[363]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[364]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[365]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[366]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[367]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[368]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[369]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[370]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[371]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[372]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.translateX" 
		"Robot_RigRN.placeHolderList[373]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.translateY" 
		"Robot_RigRN.placeHolderList[374]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.translateZ" 
		"Robot_RigRN.placeHolderList[375]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.rotateX" 
		"Robot_RigRN.placeHolderList[376]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.rotateY" 
		"Robot_RigRN.placeHolderList[377]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.rotateZ" 
		"Robot_RigRN.placeHolderList[378]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.visibility" 
		"Robot_RigRN.placeHolderList[379]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.scaleX" 
		"Robot_RigRN.placeHolderList[380]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.scaleY" 
		"Robot_RigRN.placeHolderList[381]" ""
		5 4 "Robot_RigRN" "|Robot_Rig:Robot_Rig_Grp|Robot_Rig:Master_ctrl|Robot_Rig:Hip_ctrlgrp|Robot_Rig:Hip_ctrl|Robot_Rig:SpineA_grpctrl|Robot_Rig:SpineA_ctrl|Robot_Rig:SpineB_ctrlgrp|Robot_Rig:SpineB_ctrl|Robot_Rig:Neck_ctrlgrp|Robot_Rig:Neck_ctrl|Robot_Rig:l_shouldergrp|Robot_Rig:l_shoulderCtrl|Robot_Rig:l_elbowgrp|Robot_Rig:l_elbowCtrl|Robot_Rig:l_thumb_0grp|Robot_Rig:l_thumb_0Ctrl|Robot_Rig:l_thumb_1grp|Robot_Rig:l_thumb_1Ctrl.scaleZ" 
		"Robot_RigRN.placeHolderList[382]" ""
		5 3 "Robot_RigRN" "Robot_Rig:M_Robot_Face.message" "Robot_RigRN.placeHolderList[383]" 
		""
		5 4 "Robot_RigRN" "Robot_Rig:M_Robot_Face.emission" "Robot_RigRN.placeHolderList[384]" 
		""
		5 3 "Robot_RigRN" "Robot_Rig:aiStandardSurface2SG.message" "Robot_RigRN.placeHolderList[385]" 
		""
		5 3 "Robot_RigRN" "Robot_Rig:skinCluster1.outputGeometry[0]" "Robot_RigRN.placeHolderList[386]" 
		"Robot_Rig:Robot_GeoShape.i";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Barrel_RenderRN";
	rename -uid "C99AF565-4664-96CA-87FC-F5877CD92BDE";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Barrel_RenderRN"
		"Barrel_RenderRN" 0
		"Barrel_RenderRN" 5
		2 "|Barrel_Render:RenderSetup|Barrel_Render:pPlane1" "translate" " -type \"double3\" 0 0 -4.26891463339636701"
		
		2 "|Barrel_Render:RenderSetup|Barrel_Render:pPlane1" "scale" " -type \"double3\" 113.98586191319179761 43.01927893039205486 43.01927893039205486"
		
		2 "|Barrel_Render:Barrel" "visibility" " 0"
		2 "|Barrel_Render:aiSkyDomeLight1|Barrel_Render:aiSkyDomeLightShape1" "aiExposure" 
		" -2"
		2 "Barrel_Render:aiImagerDenoiserOptix1" "enable" " 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DB6ADBF8-4644-0C25-4AC5-8BB5736DA06F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|Shotcam\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1067\n            -height 738\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Shotcam\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1067\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Shotcam\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1067\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DC025B6B-4162-483D-7EA3-A4A90E057E40";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 130 -ast 0 -aet 130 ";
	setAttr ".st" 6;
createNode file -n "file1";
	rename -uid "A193A575-44CA-50E0-B932-D2BFB1B2A033";
	setAttr ".ftn" -type "string" "F:/00_ProyectosCritical/2023/NT_Maya2024/Maya2024_CompleteGuide//sourceimages/RobotTextures/normal_eyes.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "86B6D083-4261-FAAE-46FE-DCA3187002FD";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "EC57338D-40BD-7B84-85B8-099FF1E94263";
	setAttr ".uopa" yes;
	setAttr -s 802 ".uvtk";
	setAttr ".uvtk[106463]" -type "float2" 0.49096215 0.015611827 ;
	setAttr ".uvtk[106464]" -type "float2" 0.46556985 0.047169507 ;
	setAttr ".uvtk[106465]" -type "float2" 0.45823666 0.040264487 ;
	setAttr ".uvtk[106466]" -type "float2" 0.48263928 0.0099390745 ;
	setAttr ".uvtk[106467]" -type "float2" 0.43555975 0.074372351 ;
	setAttr ".uvtk[106468]" -type "float2" 0.42939717 0.066404998 ;
	setAttr ".uvtk[106469]" -type "float2" 0.4232595 0.058471739 ;
	setAttr ".uvtk[106470]" -type "float2" 0.45093328 0.033388138 ;
	setAttr ".uvtk[106471]" -type "float2" 0.47435039 0.0042905807 ;
	setAttr ".uvtk[106472]" -type "float2" 0.40165836 0.096538663 ;
	setAttr ".uvtk[106473]" -type "float2" 0.3968178 0.087705314 ;
	setAttr ".uvtk[106474]" -type "float2" 0.36471093 0.11313635 ;
	setAttr ".uvtk[106475]" -type "float2" 0.36131173 0.10365498 ;
	setAttr ".uvtk[106476]" -type "float2" 0.35792619 0.094213128 ;
	setAttr ".uvtk[106477]" -type "float2" 0.39199656 0.078909099 ;
	setAttr ".uvtk[106478]" -type "float2" 0.32561904 0.12374187 ;
	setAttr ".uvtk[106479]" -type "float2" 0.32374495 0.11384529 ;
	setAttr ".uvtk[106480]" -type "float2" 0.28535092 0.12810981 ;
	setAttr ".uvtk[106481]" -type "float2" 0.28504807 0.11804193 ;
	setAttr ".uvtk[106482]" -type "float2" 0.28474581 0.10801619 ;
	setAttr ".uvtk[106483]" -type "float2" 0.32187784 0.10398954 ;
	setAttr ".uvtk[106484]" -type "float2" 0.244895 0.1261161 ;
	setAttr ".uvtk[106485]" -type "float2" 0.24617071 0.11612469 ;
	setAttr ".uvtk[106486]" -type "float2" 0.20524792 0.1178267 ;
	setAttr ".uvtk[106487]" -type "float2" 0.20807095 0.10815811 ;
	setAttr ".uvtk[106488]" -type "float2" 0.21088167 0.098529637 ;
	setAttr ".uvtk[106489]" -type "float2" 0.24744077 0.10617447 ;
	setAttr ".uvtk[106490]" -type "float2" 0.16738801 0.10342927 ;
	setAttr ".uvtk[106491]" -type "float2" 0.17168905 0.094320893 ;
	setAttr ".uvtk[106492]" -type "float2" 0.13224314 0.083293997 ;
	setAttr ".uvtk[106493]" -type "float2" 0.13791575 0.074970663 ;
	setAttr ".uvtk[106494]" -type "float2" 0.14356427 0.066682152 ;
	setAttr ".uvtk[106495]" -type "float2" 0.17597173 0.085250258 ;
	setAttr ".uvtk[106496]" -type "float2" 0.10068543 0.057901643 ;
	setAttr ".uvtk[106497]" -type "float2" 0.10759051 0.050568283 ;
	setAttr ".uvtk[106498]" -type "float2" 0.073482603 0.027891472 ;
	setAttr ".uvtk[106499]" -type "float2" 0.081449658 0.021728806 ;
	setAttr ".uvtk[106500]" -type "float2" 0.089383289 0.015591145 ;
	setAttr ".uvtk[106501]" -type "float2" 0.11446659 0.043264858 ;
	setAttr ".uvtk[106502]" -type "float2" 0.051316284 -0.0060098842 ;
	setAttr ".uvtk[106503]" -type "float2" 0.060149401 -0.010850608 ;
	setAttr ".uvtk[106504]" -type "float2" 0.03471835 -0.042957366 ;
	setAttr ".uvtk[106505]" -type "float2" 0.044199906 -0.046356551 ;
	setAttr ".uvtk[106506]" -type "float2" 0.053641774 -0.049742147 ;
	setAttr ".uvtk[106507]" -type "float2" 0.068946004 -0.015671663 ;
	setAttr ".uvtk[106508]" -type "float2" 0.024113024 -0.082049295 ;
	setAttr ".uvtk[106509]" -type "float2" 0.034009829 -0.083923504 ;
	setAttr ".uvtk[106510]" -type "float2" 0.019744935 -0.12231736 ;
	setAttr ".uvtk[106511]" -type "float2" 0.029812941 -0.12262027 ;
	setAttr ".uvtk[106512]" -type "float2" 0.039838806 -0.12292258 ;
	setAttr ".uvtk[106513]" -type "float2" 0.043865442 -0.085790321 ;
	setAttr ".uvtk[106514]" -type "float2" 0.021738576 -0.16277336 ;
	setAttr ".uvtk[106515]" -type "float2" 0.031730156 -0.16149752 ;
	setAttr ".uvtk[106516]" -type "float2" 0.03002801 -0.2024204 ;
	setAttr ".uvtk[106517]" -type "float2" 0.039696664 -0.19959734 ;
	setAttr ".uvtk[106518]" -type "float2" 0.049325369 -0.19678663 ;
	setAttr ".uvtk[106519]" -type "float2" 0.04168047 -0.16022746 ;
	setAttr ".uvtk[106520]" -type "float2" 0.044425733 -0.24028009 ;
	setAttr ".uvtk[106521]" -type "float2" 0.053533904 -0.23597935 ;
	setAttr ".uvtk[106522]" -type "float2" 0.06456095 -0.27542523 ;
	setAttr ".uvtk[106523]" -type "float2" 0.072884046 -0.26975241 ;
	setAttr ".uvtk[106524]" -type "float2" 0.081172884 -0.26410407 ;
	setAttr ".uvtk[106525]" -type "float2" 0.062604614 -0.23169655 ;
	setAttr ".uvtk[106526]" -type "float2" 0.089953348 -0.30698282 ;
	setAttr ".uvtk[106527]" -type "float2" 0.097286656 -0.30007783 ;
	setAttr ".uvtk[106528]" -type "float2" 0.1199635 -0.3341856 ;
	setAttr ".uvtk[106529]" -type "float2" 0.12612621 -0.32621866 ;
	setAttr ".uvtk[106530]" -type "float2" 0.13226376 -0.31828517 ;
	setAttr ".uvtk[106531]" -type "float2" 0.10459004 -0.29320174 ;
	setAttr ".uvtk[106532]" -type "float2" 0.15386473 -0.35635215 ;
	setAttr ".uvtk[106533]" -type "float2" 0.1587054 -0.34751877 ;
	setAttr ".uvtk[106534]" -type "float2" 0.19081211 -0.37294975 ;
	setAttr ".uvtk[106535]" -type "float2" 0.19421153 -0.36346835 ;
	setAttr ".uvtk[106536]" -type "float2" 0.19759715 -0.35402647 ;
	setAttr ".uvtk[106537]" -type "float2" 0.16352664 -0.33872244 ;
	setAttr ".uvtk[106538]" -type "float2" 0.22990425 -0.38355535 ;
	setAttr ".uvtk[106539]" -type "float2" 0.23177822 -0.37365866 ;
	setAttr ".uvtk[106540]" -type "float2" 0.27017239 -0.38792321 ;
	setAttr ".uvtk[106541]" -type "float2" 0.27047512 -0.37785536 ;
	setAttr ".uvtk[106542]" -type "float2" 0.2707774 -0.36782956 ;
	setAttr ".uvtk[106543]" -type "float2" 0.23364526 -0.36380279 ;
	setAttr ".uvtk[106544]" -type "float2" 0.31062818 -0.38592961 ;
	setAttr ".uvtk[106545]" -type "float2" 0.30935225 -0.37593809 ;
	setAttr ".uvtk[106546]" -type "float2" 0.35027528 -0.37764022 ;
	setAttr ".uvtk[106547]" -type "float2" 0.34745216 -0.3679716 ;
	setAttr ".uvtk[106548]" -type "float2" 0.3446416 -0.35834295 ;
	setAttr ".uvtk[106549]" -type "float2" 0.30808222 -0.36598778 ;
	setAttr ".uvtk[106550]" -type "float2" 0.38813508 -0.3632426 ;
	setAttr ".uvtk[106551]" -type "float2" 0.383834 -0.35413435 ;
	setAttr ".uvtk[106552]" -type "float2" 0.42328 -0.34310731 ;
	setAttr ".uvtk[106553]" -type "float2" 0.4176074 -0.33478427 ;
	setAttr ".uvtk[106554]" -type "float2" 0.41195896 -0.3264955 ;
	setAttr ".uvtk[106555]" -type "float2" 0.37955132 -0.34506351 ;
	setAttr ".uvtk[106556]" -type "float2" 0.45483762 -0.31771502 ;
	setAttr ".uvtk[106557]" -type "float2" 0.44793266 -0.31038174 ;
	setAttr ".uvtk[106558]" -type "float2" 0.48204044 -0.28770489 ;
	setAttr ".uvtk[106559]" -type "float2" 0.47407344 -0.28154197 ;
	setAttr ".uvtk[106560]" -type "float2" 0.46613994 -0.27540457 ;
	setAttr ".uvtk[106561]" -type "float2" 0.44105673 -0.30307835 ;
	setAttr ".uvtk[106562]" -type "float2" 0.50420713 -0.25380352 ;
	setAttr ".uvtk[106563]" -type "float2" 0.49537367 -0.24896294 ;
	setAttr ".uvtk[106564]" -type "float2" 0.5208047 -0.21685582 ;
	setAttr ".uvtk[106565]" -type "float2" 0.51132309 -0.21345675 ;
	setAttr ".uvtk[106566]" -type "float2" 0.50188142 -0.21007121 ;
	setAttr ".uvtk[106567]" -type "float2" 0.486577 -0.24414188 ;
	setAttr ".uvtk[106568]" -type "float2" 0.53141028 -0.17776409 ;
	setAttr ".uvtk[106569]" -type "float2" 0.52151358 -0.17589006 ;
	setAttr ".uvtk[106570]" -type "float2" 0.53577816 -0.13749591 ;
	setAttr ".uvtk[106571]" -type "float2" 0.52571046 -0.13719293 ;
	setAttr ".uvtk[106572]" -type "float2" 0.51568419 -0.13689104 ;
	setAttr ".uvtk[106573]" -type "float2" 0.51165766 -0.17402324 ;
	setAttr ".uvtk[106574]" -type "float2" 0.53378433 -0.097040057 ;
	setAttr ".uvtk[106575]" -type "float2" 0.52379274 -0.098316073 ;
	setAttr ".uvtk[106576]" -type "float2" 0.52549517 -0.057393014 ;
	setAttr ".uvtk[106577]" -type "float2" 0.5158264 -0.060216099 ;
	setAttr ".uvtk[106578]" -type "float2" 0.50619793 -0.063027084 ;
	setAttr ".uvtk[106579]" -type "float2" 0.51384264 -0.09958598 ;
	setAttr ".uvtk[106580]" -type "float2" 0.51109761 -0.019533157 ;
	setAttr ".uvtk[106581]" -type "float2" 0.50198925 -0.023834169 ;
	setAttr ".uvtk[106582]" -type "float2" 0.49291849 -0.028116941 ;
	setAttr ".uvtk[106583]" -type "float2" 0.44353074 0.026419759 ;
	setAttr ".uvtk[106584]" -type "float2" 0.46594965 -0.0014334321 ;
	setAttr ".uvtk[106585]" -type "float2" 0.41703874 0.050431609 ;
	setAttr ".uvtk[106586]" -type "float2" 0.41067743 0.042210579 ;
	setAttr ".uvtk[106587]" -type "float2" 0.43596119 0.019294262 ;
	setAttr ".uvtk[106588]" -type "float2" 0.45735937 -0.0072866082 ;
	setAttr ".uvtk[106589]" -type "float2" 0.38710976 0.069994032 ;
	setAttr ".uvtk[106590]" -type "float2" 0.35449415 0.084644377 ;
	setAttr ".uvtk[106591]" -type "float2" 0.35098475 0.074859917 ;
	setAttr ".uvtk[106592]" -type "float2" 0.38211268 0.060878277 ;
	setAttr ".uvtk[106593]" -type "float2" 0.31998527 0.094000638 ;
	setAttr ".uvtk[106594]" -type "float2" 0.28443873 0.097855151 ;
	setAttr ".uvtk[106595]" -type "float2" 0.28412461 0.087464929 ;
	setAttr ".uvtk[106596]" -type "float2" 0.31804961 0.083786666 ;
	setAttr ".uvtk[106597]" -type "float2" 0.2487274 0.09608978 ;
	setAttr ".uvtk[106598]" -type "float2" 0.21372958 0.088771105 ;
	setAttr ".uvtk[106599]" -type "float2" 0.21664186 0.078792587 ;
	setAttr ".uvtk[106600]" -type "float2" 0.25004283 0.085777476 ;
	setAttr ".uvtk[106601]" -type "float2" 0.18031178 0.07605648 ;
	setAttr ".uvtk[106602]" -type "float2" 0.14928852 0.058281362 ;
	setAttr ".uvtk[106603]" -type "float2" 0.15514164 0.049690969 ;
	setAttr ".uvtk[106604]" -type "float2" 0.18474947 0.066655636 ;
	setAttr ".uvtk[106605]" -type "float2" 0.12143503 0.035862148 ;
	setAttr ".uvtk[106606]" -type "float2" 0.097423151 0.0093701556 ;
	setAttr ".uvtk[106607]" -type "float2" 0.10564421 0.0030090883 ;
	setAttr ".uvtk[106608]" -type "float2" 0.12856077 0.028292842 ;
	setAttr ".uvtk[106609]" -type "float2" 0.077860773 -0.020558529 ;
	setAttr ".uvtk[106610]" -type "float2" 0.063210577 -0.053174064 ;
	setAttr ".uvtk[106611]" -type "float2" 0.072994977 -0.056683108 ;
	setAttr ".uvtk[106612]" -type "float2" 0.086976752 -0.025555715 ;
	setAttr ".uvtk[106613]" -type "float2" 0.0538541 -0.087683186 ;
	setAttr ".uvtk[106614]" -type "float2" 0.049999669 -0.12322949 ;
	setAttr ".uvtk[106615]" -type "float2" 0.060389847 -0.12354355 ;
	setAttr ".uvtk[106616]" -type "float2" 0.064068168 -0.089618608 ;
	setAttr ".uvtk[106617]" -type "float2" 0.051765263 -0.15894091 ;
	setAttr ".uvtk[106618]" -type "float2" 0.059083827 -0.19393854 ;
	setAttr ".uvtk[106619]" -type "float2" 0.069062486 -0.19102652 ;
	setAttr ".uvtk[106620]" -type "float2" 0.062077507 -0.1576255 ;
	setAttr ".uvtk[106621]" -type "float2" 0.071798436 -0.22735673 ;
	setAttr ".uvtk[106622]" -type "float2" 0.089573689 -0.25837982 ;
	setAttr ".uvtk[106623]" -type "float2" 0.098163992 -0.25252667 ;
	setAttr ".uvtk[106624]" -type "float2" 0.081199281 -0.22291887 ;
	setAttr ".uvtk[106625]" -type "float2" 0.11199261 -0.28623307 ;
	setAttr ".uvtk[106626]" -type "float2" 0.13848475 -0.31024525 ;
	setAttr ".uvtk[106627]" -type "float2" 0.14484566 -0.30202395 ;
	setAttr ".uvtk[106628]" -type "float2" 0.11956209 -0.27910751 ;
	setAttr ".uvtk[106629]" -type "float2" 0.16841334 -0.32980743 ;
	setAttr ".uvtk[106630]" -type "float2" 0.20102884 -0.34445781 ;
	setAttr ".uvtk[106631]" -type "float2" 0.20453823 -0.33467332 ;
	setAttr ".uvtk[106632]" -type "float2" 0.17341049 -0.32069153 ;
	setAttr ".uvtk[106633]" -type "float2" 0.23553781 -0.3538141 ;
	setAttr ".uvtk[106634]" -type "float2" 0.27108434 -0.35766855 ;
	setAttr ".uvtk[106635]" -type "float2" 0.27139828 -0.34727842 ;
	setAttr ".uvtk[106636]" -type "float2" 0.23747361 -0.34360018 ;
	setAttr ".uvtk[106637]" -type "float2" 0.30679575 -0.35590312 ;
	setAttr ".uvtk[106638]" -type "float2" 0.34179342 -0.34858441 ;
	setAttr ".uvtk[106639]" -type "float2" 0.33888143 -0.33860591 ;
	setAttr ".uvtk[106640]" -type "float2" 0.30548021 -0.34559095 ;
	setAttr ".uvtk[106641]" -type "float2" 0.37521148 -0.33587 ;
	setAttr ".uvtk[106642]" -type "float2" 0.40623459 -0.31809467 ;
	setAttr ".uvtk[106643]" -type "float2" 0.40038165 -0.3095043 ;
	setAttr ".uvtk[106644]" -type "float2" 0.37077364 -0.32646903 ;
	setAttr ".uvtk[106645]" -type "float2" 0.43408811 -0.29567584 ;
	setAttr ".uvtk[106646]" -type "float2" 0.45809996 -0.26918375 ;
	setAttr ".uvtk[106647]" -type "float2" 0.44987884 -0.26282263 ;
	setAttr ".uvtk[106648]" -type "float2" 0.42696258 -0.28810635 ;
	setAttr ".uvtk[106649]" -type "float2" 0.4776623 -0.23925495 ;
	setAttr ".uvtk[106650]" -type "float2" 0.49231252 -0.20663944 ;
	setAttr ".uvtk[106651]" -type "float2" 0.48252803 -0.20313001 ;
	setAttr ".uvtk[106652]" -type "float2" 0.46854633 -0.2342577 ;
	setAttr ".uvtk[106653]" -type "float2" 0.50166887 -0.17213032 ;
	setAttr ".uvtk[106654]" -type "float2" 0.50552344 -0.13658398 ;
	setAttr ".uvtk[106655]" -type "float2" 0.49513337 -0.13626999 ;
	setAttr ".uvtk[106656]" -type "float2" 0.4914549 -0.17019475 ;
	setAttr ".uvtk[106657]" -type "float2" 0.50375783 -0.10087252 ;
	setAttr ".uvtk[106658]" -type "float2" 0.49643922 -0.065874785 ;
	setAttr ".uvtk[106659]" -type "float2" 0.4864608 -0.068786889 ;
	setAttr ".uvtk[106660]" -type "float2" 0.49344581 -0.10218793 ;
	setAttr ".uvtk[106661]" -type "float2" 0.48372489 -0.032456994 ;
	setAttr ".uvtk[106662]" -type "float2" 0.47432405 -0.036894381 ;
	setAttr ".uvtk[106663]" -type "float2" 0.42816746 0.011957347 ;
	setAttr ".uvtk[106664]" -type "float2" 0.44851446 -0.013313591 ;
	setAttr ".uvtk[106665]" -type "float2" 0.40412802 0.033745527 ;
	setAttr ".uvtk[106666]" -type "float2" 0.39735442 0.024989307 ;
	setAttr ".uvtk[106667]" -type "float2" 0.42010695 0.0043679476 ;
	setAttr ".uvtk[106668]" -type "float2" 0.43936658 -0.019547939 ;
	setAttr ".uvtk[106669]" -type "float2" 0.37696785 0.051491916 ;
	setAttr ".uvtk[106670]" -type "float2" 0.34737206 0.064785242 ;
	setAttr ".uvtk[106671]" -type "float2" 0.34363562 0.054364324 ;
	setAttr ".uvtk[106672]" -type "float2" 0.37164694 0.041783333 ;
	setAttr ".uvtk[106673]" -type "float2" 0.31605697 0.073269963 ;
	setAttr ".uvtk[106674]" -type "float2" 0.28380167 0.076766849 ;
	setAttr ".uvtk[106675]" -type "float2" 0.28346854 0.065701544 ;
	setAttr ".uvtk[106676]" -type "float2" 0.31399679 0.062392294 ;
	setAttr ".uvtk[106677]" -type "float2" 0.25139752 0.075159743 ;
	setAttr ".uvtk[106678]" -type "float2" 0.21964039 0.068518177 ;
	setAttr ".uvtk[106679]" -type "float2" 0.2227429 0.057891503 ;
	setAttr ".uvtk[106680]" -type "float2" 0.25279963 0.064177766 ;
	setAttr ".uvtk[106681]" -type "float2" 0.18931894 0.056976154 ;
	setAttr ".uvtk[106682]" -type "float2" 0.1611685 0.040846065 ;
	setAttr ".uvtk[106683]" -type "float2" 0.167403 0.031698182 ;
	setAttr ".uvtk[106684]" -type "float2" 0.19404592 0.046964899 ;
	setAttr ".uvtk[106685]" -type "float2" 0.13589747 0.020499244 ;
	setAttr ".uvtk[106686]" -type "float2" 0.11410947 -0.0035403818 ;
	setAttr ".uvtk[106687]" -type "float2" 0.12286572 -0.010313973 ;
	setAttr ".uvtk[106688]" -type "float2" 0.14348681 0.01243861 ;
	setAttr ".uvtk[106689]" -type "float2" 0.096362993 -0.03070043 ;
	setAttr ".uvtk[106690]" -type "float2" 0.083069801 -0.060296461 ;
	setAttr ".uvtk[106691]" -type "float2" 0.09349066 -0.064032659 ;
	setAttr ".uvtk[106692]" -type "float2" 0.10607174 -0.036021516 ;
	setAttr ".uvtk[106693]" -type "float2" 0.074584842 -0.091611132 ;
	setAttr ".uvtk[106694]" -type "float2" 0.071087956 -0.1238663 ;
	setAttr ".uvtk[106695]" -type "float2" 0.082153365 -0.12419961 ;
	setAttr ".uvtk[106696]" -type "float2" 0.08546266 -0.093671605 ;
	setAttr ".uvtk[106697]" -type "float2" 0.072695062 -0.15627067 ;
	setAttr ".uvtk[106698]" -type "float2" 0.079336703 -0.18802749 ;
	setAttr ".uvtk[106699]" -type "float2" 0.089963511 -0.18492527 ;
	setAttr ".uvtk[106700]" -type "float2" 0.083677024 -0.15486871 ;
	setAttr ".uvtk[106701]" -type "float2" 0.090878621 -0.21834943 ;
	setAttr ".uvtk[106702]" -type "float2" 0.1070087 -0.24649978 ;
	setAttr ".uvtk[106703]" -type "float2" 0.11615677 -0.24026531 ;
	setAttr ".uvtk[106704]" -type "float2" 0.10089001 -0.21362239 ;
	setAttr ".uvtk[106705]" -type "float2" 0.12735569 -0.27177048 ;
	setAttr ".uvtk[106706]" -type "float2" 0.15139514 -0.29355881 ;
	setAttr ".uvtk[106707]" -type "float2" 0.15816891 -0.28480256 ;
	setAttr ".uvtk[106708]" -type "float2" 0.13541619 -0.26418146 ;
	setAttr ".uvtk[106709]" -type "float2" 0.17855544 -0.31130522 ;
	setAttr ".uvtk[106710]" -type "float2" 0.20815127 -0.32459849 ;
	setAttr ".uvtk[106711]" -type "float2" 0.21188751 -0.31417766 ;
	setAttr ".uvtk[106712]" -type "float2" 0.18387629 -0.30159676 ;
	setAttr ".uvtk[106713]" -type "float2" 0.23946601 -0.33308336 ;
	setAttr ".uvtk[106714]" -type "float2" 0.27172133 -0.3365804 ;
	setAttr ".uvtk[106715]" -type "float2" 0.27205449 -0.32551497 ;
	setAttr ".uvtk[106716]" -type "float2" 0.2415264 -0.32220572 ;
	setAttr ".uvtk[106717]" -type "float2" 0.30412546 -0.33497322 ;
	setAttr ".uvtk[106718]" -type "float2" 0.33588248 -0.32833159 ;
	setAttr ".uvtk[106719]" -type "float2" 0.33278027 -0.31770486 ;
	setAttr ".uvtk[106720]" -type "float2" 0.30272359 -0.32399124 ;
	setAttr ".uvtk[106721]" -type "float2" 0.36620417 -0.31678954 ;
	setAttr ".uvtk[106722]" -type "float2" 0.39435458 -0.30065957 ;
	setAttr ".uvtk[106723]" -type "float2" 0.3881202 -0.29151154 ;
	setAttr ".uvtk[106724]" -type "float2" 0.3614772 -0.30677837 ;
	setAttr ".uvtk[106725]" -type "float2" 0.41962558 -0.28031266 ;
	setAttr ".uvtk[106726]" -type "float2" 0.44141358 -0.25627315 ;
	setAttr ".uvtk[106727]" -type "float2" 0.43265748 -0.2494995 ;
	setAttr ".uvtk[106728]" -type "float2" 0.41203621 -0.27225214 ;
	setAttr ".uvtk[106729]" -type "float2" 0.45916003 -0.22911283 ;
	setAttr ".uvtk[106730]" -type "float2" 0.47245345 -0.19951701 ;
	setAttr ".uvtk[106731]" -type "float2" 0.46203244 -0.19578061 ;
	setAttr ".uvtk[106732]" -type "float2" 0.44945163 -0.22379199 ;
	setAttr ".uvtk[106733]" -type "float2" 0.48093823 -0.16820213 ;
	setAttr ".uvtk[106734]" -type "float2" 0.48443517 -0.13594687 ;
	setAttr ".uvtk[106735]" -type "float2" 0.4733699 -0.13561371 ;
	setAttr ".uvtk[106736]" -type "float2" 0.47006053 -0.16614187 ;
	setAttr ".uvtk[106737]" -type "float2" 0.48282802 -0.10354269 ;
	setAttr ".uvtk[106738]" -type "float2" 0.47618645 -0.071785629 ;
	setAttr ".uvtk[106739]" -type "float2" 0.4655596 -0.07488808 ;
	setAttr ".uvtk[106740]" -type "float2" 0.4718461 -0.10494459 ;
	setAttr ".uvtk[106741]" -type "float2" 0.46464443 -0.04146409 ;
	setAttr ".uvtk[106742]" -type "float2" 0.45463324 -0.046190977 ;
	setAttr ".uvtk[106743]" -type "float2" 0.4117471 -0.0035044551 ;
	setAttr ".uvtk[106744]" -type "float2" 0.42987871 -0.026015639 ;
	setAttr ".uvtk[106745]" -type "float2" 0.39032942 0.015906334 ;
	setAttr ".uvtk[106746]" -type "float2" 0.38303703 0.0064759254 ;
	setAttr ".uvtk[106747]" -type "float2" 0.4030692 -0.011678219 ;
	setAttr ".uvtk[106748]" -type "float2" 0.42002904 -0.032730997 ;
	setAttr ".uvtk[106749]" -type "float2" 0.36612898 0.031712651 ;
	setAttr ".uvtk[106750]" -type "float2" 0.3397612 0.043555081 ;
	setAttr ".uvtk[106751]" -type "float2" 0.33573979 0.032332838 ;
	setAttr ".uvtk[106752]" -type "float2" 0.3604016 0.021257341 ;
	setAttr ".uvtk[106753]" -type "float2" 0.31186068 0.051109493 ;
	setAttr ".uvtk[106754]" -type "float2" 0.28312415 0.054223955 ;
	setAttr ".uvtk[106755]" -type "float2" 0.28276742 0.04230839 ;
	setAttr ".uvtk[106756]" -type "float2" 0.30964452 0.039395988 ;
	setAttr ".uvtk[106757]" -type "float2" 0.25425476 0.052787259 ;
	setAttr ".uvtk[106758]" -type "float2" 0.22596185 0.046869233 ;
	setAttr ".uvtk[106759]" -type "float2" 0.22930498 0.035426512 ;
	setAttr ".uvtk[106760]" -type "float2" 0.25576681 0.040962175 ;
	setAttr ".uvtk[106761]" -type "float2" 0.19894977 0.03658165 ;
	setAttr ".uvtk[106762]" -type "float2" 0.17387031 0.022210255 ;
	setAttr ".uvtk[106763]" -type "float2" 0.180586 0.012360588 ;
	setAttr ".uvtk[106764]" -type "float2" 0.20404182 0.025802389 ;
	setAttr ".uvtk[106765]" -type "float2" 0.15135945 0.0040788203 ;
	setAttr ".uvtk[106766]" -type "float2" 0.13194855 -0.017338976 ;
	setAttr ".uvtk[106767]" -type "float2" 0.14137892 -0.024631187 ;
	setAttr ".uvtk[106768]" -type "float2" 0.15953304 -0.0045991987 ;
	setAttr ".uvtk[106769]" -type "float2" 0.11614211 -0.041539237 ;
	setAttr ".uvtk[106770]" -type "float2" 0.10429989 -0.067907318 ;
	setAttr ".uvtk[106771]" -type "float2" 0.11552207 -0.071928367 ;
	setAttr ".uvtk[106772]" -type "float2" 0.12659737 -0.047266886 ;
	setAttr ".uvtk[106773]" -type "float2" 0.096745372 -0.095807537 ;
	setAttr ".uvtk[106774]" -type "float2" 0.093630761 -0.12454444 ;
	setAttr ".uvtk[106775]" -type "float2" 0.10554646 -0.1249008 ;
	setAttr ".uvtk[106776]" -type "float2" 0.10845891 -0.098023638 ;
	setAttr ".uvtk[106777]" -type "float2" 0.095067739 -0.15341364 ;
	setAttr ".uvtk[106778]" -type "float2" 0.1009856 -0.18170647 ;
	setAttr ".uvtk[106779]" -type "float2" 0.11242834 -0.17836326 ;
	setAttr ".uvtk[106780]" -type "float2" 0.10689288 -0.15190171 ;
	setAttr ".uvtk[106781]" -type "float2" 0.1112733 -0.20871851 ;
	setAttr ".uvtk[106782]" -type "float2" 0.12564467 -0.2337977 ;
	setAttr ".uvtk[106783]" -type "float2" 0.13549404 -0.22708231 ;
	setAttr ".uvtk[106784]" -type "float2" 0.1220524 -0.20362639 ;
	setAttr ".uvtk[106785]" -type "float2" 0.14377615 -0.25630885 ;
	setAttr ".uvtk[106786]" -type "float2" 0.16519393 -0.2757197 ;
	setAttr ".uvtk[106787]" -type "float2" 0.17248619 -0.26628935 ;
	setAttr ".uvtk[106788]" -type "float2" 0.15245406 -0.24813512 ;
	setAttr ".uvtk[106789]" -type "float2" 0.18939428 -0.29152617 ;
	setAttr ".uvtk[106790]" -type "float2" 0.21576218 -0.30336863 ;
	setAttr ".uvtk[106791]" -type "float2" 0.2197832 -0.29214615 ;
	setAttr ".uvtk[106792]" -type "float2" 0.19512166 -0.28107089 ;
	setAttr ".uvtk[106793]" -type "float2" 0.24366233 -0.31092295 ;
	setAttr ".uvtk[106794]" -type "float2" 0.27239925 -0.31403762 ;
	setAttr ".uvtk[106795]" -type "float2" 0.2727558 -0.30212194 ;
	setAttr ".uvtk[106796]" -type "float2" 0.24587865 -0.29920948 ;
	setAttr ".uvtk[106797]" -type "float2" 0.30126846 -0.31260061 ;
	setAttr ".uvtk[106798]" -type "float2" 0.32956123 -0.30668268 ;
	setAttr ".uvtk[106799]" -type "float2" 0.32621819 -0.29524004 ;
	setAttr ".uvtk[106800]" -type "float2" 0.29975647 -0.30077553 ;
	setAttr ".uvtk[106801]" -type "float2" 0.35657334 -0.29639497 ;
	setAttr ".uvtk[106802]" -type "float2" 0.38165265 -0.2820237 ;
	setAttr ".uvtk[106803]" -type "float2" 0.37493733 -0.27217412 ;
	setAttr ".uvtk[106804]" -type "float2" 0.35148138 -0.28561592 ;
	setAttr ".uvtk[106805]" -type "float2" 0.4041639 -0.26389211 ;
	setAttr ".uvtk[106806]" -type "float2" 0.4235746 -0.2424745 ;
	setAttr ".uvtk[106807]" -type "float2" 0.41414419 -0.23518214 ;
	setAttr ".uvtk[106808]" -type "float2" 0.39599004 -0.25521418 ;
	setAttr ".uvtk[106809]" -type "float2" 0.43938091 -0.21827409 ;
	setAttr ".uvtk[106810]" -type "float2" 0.45122322 -0.19190639 ;
	setAttr ".uvtk[106811]" -type "float2" 0.44000101 -0.18788505 ;
	setAttr ".uvtk[106812]" -type "float2" 0.42892578 -0.21254665 ;
	setAttr ".uvtk[106813]" -type "float2" 0.45877776 -0.16400588 ;
	setAttr ".uvtk[106814]" -type "float2" 0.46189243 -0.13526914 ;
	setAttr ".uvtk[106815]" -type "float2" 0.44997662 -0.13491273 ;
	setAttr ".uvtk[106816]" -type "float2" 0.44706446 -0.16178975 ;
	setAttr ".uvtk[106817]" -type "float2" 0.46045551 -0.10639992 ;
	setAttr ".uvtk[106818]" -type "float2" 0.45453751 -0.078106999 ;
	setAttr ".uvtk[106819]" -type "float2" 0.44309473 -0.081450254 ;
	setAttr ".uvtk[106820]" -type "float2" 0.44863039 -0.10791177 ;
	setAttr ".uvtk[106821]" -type "float2" 0.44424987 -0.051094949 ;
	setAttr ".uvtk[106822]" -type "float2" 0.43347096 -0.056186914 ;
	setAttr ".uvtk[106823]" -type "float2" 0.39406255 -0.020163476 ;
	setAttr ".uvtk[106824]" -type "float2" 0.40980604 -0.039703131 ;
	setAttr ".uvtk[106825]" -type "float2" 0.37546888 -0.0033140182 ;
	setAttr ".uvtk[106826]" -type "float2" 0.36762512 -0.013462186 ;
	setAttr ".uvtk[106827]" -type "float2" 0.38472831 -0.028959811 ;
	setAttr ".uvtk[106828]" -type "float2" 0.39921033 -0.04693085 ;
	setAttr ".uvtk[106829]" -type "float2" 0.35445797 0.010404229 ;
	setAttr ".uvtk[106830]" -type "float2" 0.33156723 0.020683289 ;
	setAttr ".uvtk[106831]" -type "float2" 0.32724372 0.0086079836 ;
	setAttr ".uvtk[106832]" -type "float2" 0.34829852 -0.00084614754 ;
	setAttr ".uvtk[106833]" -type "float2" 0.30734575 0.027237475 ;
	setAttr ".uvtk[106834]" -type "float2" 0.28239876 0.02993989 ;
	setAttr ".uvtk[106835]" -type "float2" 0.28201842 0.017119214 ;
	setAttr ".uvtk[106836]" -type "float2" 0.30496442 0.01463443 ;
	setAttr ".uvtk[106837]" -type "float2" 0.25733745 0.028688326 ;
	setAttr ".uvtk[106838]" -type "float2" 0.23277672 0.023549274 ;
	setAttr ".uvtk[106839]" -type "float2" 0.23637648 0.011238769 ;
	setAttr ".uvtk[106840]" -type "float2" 0.25896737 0.015966132 ;
	setAttr ".uvtk[106841]" -type "float2" 0.20932855 0.014614657 ;
	setAttr ".uvtk[106842]" -type "float2" 0.18755771 0.0021376163 ;
	setAttr ".uvtk[106843]" -type "float2" 0.19478576 -0.0084581226 ;
	setAttr ".uvtk[106844]" -type "float2" 0.21480985 0.0030189902 ;
	setAttr ".uvtk[106845]" -type "float2" 0.16801833 -0.013605759 ;
	setAttr ".uvtk[106846]" -type "float2" 0.15116869 -0.032199606 ;
	setAttr ".uvtk[106847]" -type "float2" 0.16131707 -0.040043101 ;
	setAttr ".uvtk[106848]" -type "float2" 0.17681451 -0.022940025 ;
	setAttr ".uvtk[106849]" -type "float2" 0.13745068 -0.053210363 ;
	setAttr ".uvtk[106850]" -type "float2" 0.12717152 -0.07610099 ;
	setAttr ".uvtk[106851]" -type "float2" 0.13924681 -0.080424592 ;
	setAttr ".uvtk[106852]" -type "float2" 0.14870085 -0.059369847 ;
	setAttr ".uvtk[106853]" -type "float2" 0.12061755 -0.10032266 ;
	setAttr ".uvtk[106854]" -type "float2" 0.11791503 -0.1252694 ;
	setAttr ".uvtk[106855]" -type "float2" 0.13073544 -0.12565003 ;
	setAttr ".uvtk[106856]" -type "float2" 0.13322036 -0.10270385 ;
	setAttr ".uvtk[106857]" -type "float2" 0.11916679 -0.15033071 ;
	setAttr ".uvtk[106858]" -type "float2" 0.12430547 -0.17489147 ;
	setAttr ".uvtk[106859]" -type "float2" 0.13661598 -0.17129171 ;
	setAttr ".uvtk[106860]" -type "float2" 0.13188884 -0.14870106 ;
	setAttr ".uvtk[106861]" -type "float2" 0.13324033 -0.19833964 ;
	setAttr ".uvtk[106862]" -type "float2" 0.14571719 -0.22011065 ;
	setAttr ".uvtk[106863]" -type "float2" 0.15631297 -0.21288264 ;
	setAttr ".uvtk[106864]" -type "float2" 0.14483601 -0.19285837 ;
	setAttr ".uvtk[106865]" -type "float2" 0.16146055 -0.23964983 ;
	setAttr ".uvtk[106866]" -type "float2" 0.1800544 -0.25649956 ;
	setAttr ".uvtk[106867]" -type "float2" 0.18789811 -0.24635124 ;
	setAttr ".uvtk[106868]" -type "float2" 0.17079501 -0.2308535 ;
	setAttr ".uvtk[106869]" -type "float2" 0.20106538 -0.27021766 ;
	setAttr ".uvtk[106870]" -type "float2" 0.22395591 -0.28049687 ;
	setAttr ".uvtk[106871]" -type "float2" 0.22827968 -0.26842153 ;
	setAttr ".uvtk[106872]" -type "float2" 0.20722462 -0.25896746 ;
	setAttr ".uvtk[106873]" -type "float2" 0.24817748 -0.28705081 ;
	setAttr ".uvtk[106874]" -type "float2" 0.27312416 -0.28975326 ;
	setAttr ".uvtk[106875]" -type "float2" 0.2735047 -0.27693284 ;
	setAttr ".uvtk[106876]" -type "float2" 0.25055888 -0.27444774 ;
	setAttr ".uvtk[106877]" -type "float2" 0.29818547 -0.28850156 ;
	setAttr ".uvtk[106878]" -type "float2" 0.32274655 -0.2833629 ;
	setAttr ".uvtk[106879]" -type "float2" 0.31914663 -0.27105233 ;
	setAttr ".uvtk[106880]" -type "float2" 0.29655579 -0.27577966 ;
	setAttr ".uvtk[106881]" -type "float2" 0.34619451 -0.27442798 ;
	setAttr ".uvtk[106882]" -type "float2" 0.3679654 -0.26195115 ;
	setAttr ".uvtk[106883]" -type "float2" 0.36073747 -0.25135544 ;
	setAttr ".uvtk[106884]" -type "float2" 0.34071323 -0.2628324 ;
	setAttr ".uvtk[106885]" -type "float2" 0.3875047 -0.24620771 ;
	setAttr ".uvtk[106886]" -type "float2" 0.40435442 -0.22761387 ;
	setAttr ".uvtk[106887]" -type "float2" 0.3942062 -0.21977043 ;
	setAttr ".uvtk[106888]" -type "float2" 0.37870848 -0.23687327 ;
	setAttr ".uvtk[106889]" -type "float2" 0.41807255 -0.20660311 ;
	setAttr ".uvtk[106890]" -type "float2" 0.42835182 -0.18371242 ;
	setAttr ".uvtk[106891]" -type "float2" 0.4162764 -0.17938876 ;
	setAttr ".uvtk[106892]" -type "float2" 0.40682223 -0.20044369 ;
	setAttr ".uvtk[106893]" -type "float2" 0.43490571 -0.15949082 ;
	setAttr ".uvtk[106894]" -type "float2" 0.43760818 -0.13454401 ;
	setAttr ".uvtk[106895]" -type "float2" 0.42478764 -0.13416353 ;
	setAttr ".uvtk[106896]" -type "float2" 0.42230251 -0.15710932 ;
	setAttr ".uvtk[106897]" -type "float2" 0.4363566 -0.10948262 ;
	setAttr ".uvtk[106898]" -type "float2" 0.4312177 -0.084921569 ;
	setAttr ".uvtk[106899]" -type "float2" 0.41890705 -0.0885216 ;
	setAttr ".uvtk[106900]" -type "float2" 0.42363441 -0.11111245 ;
	setAttr ".uvtk[106901]" -type "float2" 0.42228296 -0.061473727 ;
	setAttr ".uvtk[106902]" -type "float2" 0.41068709 -0.06695497 ;
	setAttr ".uvtk[106903]" -type "float2" 0.37507308 -0.038061082 ;
	setAttr ".uvtk[106904]" -type "float2" 0.38824975 -0.054409742 ;
	setAttr ".uvtk[106905]" -type "float2" 0.35951236 -0.02396208 ;
	setAttr ".uvtk[106906]" -type "float2" 0.35114312 -0.034796238 ;
	setAttr ".uvtk[106907]" -type "float2" 0.36511236 -0.047452331 ;
	setAttr ".uvtk[106908]" -type "float2" 0.37694225 -0.062127531 ;
	setAttr ".uvtk[106909]" -type "float2" 0.34192842 -0.012485445 ;
	setAttr ".uvtk[106910]" -type "float2" 0.32277232 -0.0038850307 ;
	setAttr ".uvtk[106911]" -type "float2" 0.31816098 -0.016775191 ;
	setAttr ".uvtk[106912]" -type "float2" 0.3353571 -0.024495065 ;
	setAttr ".uvtk[106913]" -type "float2" 0.30250248 0.0015960336 ;
	setAttr ".uvtk[106914]" -type "float2" 0.28162652 0.0038561672 ;
	setAttr ".uvtk[106915]" -type "float2" 0.28122398 -0.0098280758 ;
	setAttr ".uvtk[106916]" -type "float2" 0.29996443 -0.011856303 ;
	setAttr ".uvtk[106917]" -type "float2" 0.26065493 0.0028052926 ;
	setAttr ".uvtk[106918]" -type "float2" 0.24010228 -0.0014962554 ;
	setAttr ".uvtk[106919]" -type "float2" 0.24394815 -0.01463525 ;
	setAttr ".uvtk[106920]" -type "float2" 0.26239794 -0.010773048 ;
	setAttr ".uvtk[106921]" -type "float2" 0.22048195 -0.0089763254 ;
	setAttr ".uvtk[106922]" -type "float2" 0.20226462 -0.019418523 ;
	setAttr ".uvtk[106923]" -type "float2" 0.20998229 -0.030725829 ;
	setAttr ".uvtk[106924]" -type "float2" 0.2263356 -0.021351457 ;
	setAttr ".uvtk[106925]" -type "float2" 0.18591584 -0.0325955 ;
	setAttr ".uvtk[106926]" -type "float2" 0.17181675 -0.048155952 ;
	setAttr ".uvtk[106927]" -type "float2" 0.18265121 -0.056525163 ;
	setAttr ".uvtk[106928]" -type "float2" 0.19530706 -0.0425561 ;
	setAttr ".uvtk[106929]" -type "float2" 0.16034015 -0.065739982 ;
	setAttr ".uvtk[106930]" -type "float2" 0.15173976 -0.084896021 ;
	setAttr ".uvtk[106931]" -type "float2" 0.1646301 -0.089507565 ;
	setAttr ".uvtk[106932]" -type "float2" 0.17234989 -0.072311088 ;
	setAttr ".uvtk[106933]" -type "float2" 0.14625864 -0.10516576 ;
	setAttr ".uvtk[106934]" -type "float2" 0.14399864 -0.12604193 ;
	setAttr ".uvtk[106935]" -type "float2" 0.157683 -0.12644438 ;
	setAttr ".uvtk[106936]" -type "float2" 0.15971108 -0.10770409 ;
	setAttr ".uvtk[106937]" -type "float2" 0.1450495 -0.14701329 ;
	setAttr ".uvtk[106938]" -type "float2" 0.14935116 -0.16756594 ;
	setAttr ".uvtk[106939]" -type "float2" 0.1624902 -0.16372025 ;
	setAttr ".uvtk[106940]" -type "float2" 0.15862779 -0.14527017 ;
	setAttr ".uvtk[106941]" -type "float2" 0.15683116 -0.18718633 ;
	setAttr ".uvtk[106942]" -type "float2" 0.1672733 -0.20540383 ;
	setAttr ".uvtk[106943]" -type "float2" 0.17858098 -0.19768602 ;
	setAttr ".uvtk[106944]" -type "float2" 0.16920628 -0.1813328 ;
	setAttr ".uvtk[106945]" -type "float2" 0.18045029 -0.22175241 ;
	setAttr ".uvtk[106946]" -type "float2" 0.19601086 -0.2358512 ;
	setAttr ".uvtk[106947]" -type "float2" 0.20438008 -0.22501704 ;
	setAttr ".uvtk[106948]" -type "float2" 0.19041093 -0.21236122 ;
	setAttr ".uvtk[106949]" -type "float2" 0.21359499 -0.2473281 ;
	setAttr ".uvtk[106950]" -type "float2" 0.23275079 -0.25592831 ;
	setAttr ".uvtk[106951]" -type "float2" 0.23736234 -0.2430383 ;
	setAttr ".uvtk[106952]" -type "float2" 0.22016586 -0.23531842 ;
	setAttr ".uvtk[106953]" -type "float2" 0.25302073 -0.26140958 ;
	setAttr ".uvtk[106954]" -type "float2" 0.27389672 -0.26366949 ;
	setAttr ".uvtk[106955]" -type "float2" 0.27429926 -0.24998528 ;
	setAttr ".uvtk[106956]" -type "float2" 0.25555891 -0.24795705 ;
	setAttr ".uvtk[106957]" -type "float2" 0.29486835 -0.26261878 ;
	setAttr ".uvtk[106958]" -type "float2" 0.3154209 -0.25831711 ;
	setAttr ".uvtk[106959]" -type "float2" 0.311575 -0.2451781 ;
	setAttr ".uvtk[106960]" -type "float2" 0.29312506 -0.2490404 ;
	setAttr ".uvtk[106961]" -type "float2" 0.33504134 -0.25083709 ;
	setAttr ".uvtk[106962]" -type "float2" 0.35325867 -0.24039489 ;
	setAttr ".uvtk[106963]" -type "float2" 0.34554085 -0.22908729 ;
	setAttr ".uvtk[106964]" -type "float2" 0.32918754 -0.238462 ;
	setAttr ".uvtk[106965]" -type "float2" 0.36960721 -0.22721803 ;
	setAttr ".uvtk[106966]" -type "float2" 0.38370627 -0.21165735 ;
	setAttr ".uvtk[106967]" -type "float2" 0.37287199 -0.20328844 ;
	setAttr ".uvtk[106968]" -type "float2" 0.36021617 -0.21725738 ;
	setAttr ".uvtk[106969]" -type "float2" 0.39518288 -0.19407332 ;
	setAttr ".uvtk[106970]" -type "float2" 0.4037832 -0.1749174 ;
	setAttr ".uvtk[106971]" -type "float2" 0.39089316 -0.17030588 ;
	setAttr ".uvtk[106972]" -type "float2" 0.3831732 -0.18750232 ;
	setAttr ".uvtk[106973]" -type "float2" 0.40926448 -0.15464753 ;
	setAttr ".uvtk[106974]" -type "float2" 0.41152444 -0.13377166 ;
	setAttr ".uvtk[106975]" -type "float2" 0.39783996 -0.13336909 ;
	setAttr ".uvtk[106976]" -type "float2" 0.39581215 -0.15210953 ;
	setAttr ".uvtk[106977]" -type "float2" 0.41047353 -0.11280009 ;
	setAttr ".uvtk[106978]" -type "float2" 0.40617198 -0.092247546 ;
	setAttr ".uvtk[106979]" -type "float2" 0.393033 -0.096093476 ;
	setAttr ".uvtk[106980]" -type "float2" 0.39689526 -0.11454314 ;
	setAttr ".uvtk[106981]" -type "float2" 0.39869201 -0.072626948 ;
	setAttr ".uvtk[106982]" -type "float2" 0.38631678 -0.078480721 ;
	setAttr ".uvtk[106983]" -type "float2" 0.35486633 -0.057115257 ;
	setAttr ".uvtk[106984]" -type "float2" 0.36531019 -0.070069015 ;
	setAttr ".uvtk[106985]" -type "float2" 0.34253448 -0.045943677 ;
	setAttr ".uvtk[106986]" -type "float2" 0.33370876 -0.057375431 ;
	setAttr ".uvtk[106987]" -type "float2" 0.34436142 -0.067024946 ;
	setAttr ".uvtk[106988]" -type "float2" 0.3533839 -0.07821393 ;
	setAttr ".uvtk[106989]" -type "float2" 0.3285988 -0.036851227 ;
	setAttr ".uvtk[106990]" -type "float2" 0.31341833 -0.030037224 ;
	setAttr ".uvtk[106991]" -type "float2" 0.30855715 -0.043636799 ;
	setAttr ".uvtk[106992]" -type "float2" 0.32167029 -0.049522281 ;
	setAttr ".uvtk[106993]" -type "float2" 0.2973547 -0.025696114 ;
	setAttr ".uvtk[106994]" -type "float2" 0.28081173 -0.023906603 ;
	setAttr ".uvtk[106995]" -type "float2" 0.28039077 -0.038342789 ;
	setAttr ".uvtk[106996]" -type "float2" 0.29468089 -0.039887965 ;
	setAttr ".uvtk[106997]" -type "float2" 0.26419318 -0.024741992 ;
	setAttr ".uvtk[106998]" -type "float2" 0.24790649 -0.028152093 ;
	setAttr ".uvtk[106999]" -type "float2" 0.25196737 -0.042011663 ;
	setAttr ".uvtk[107000]" -type "float2" 0.26603574 -0.039065227 ;
	setAttr ".uvtk[107001]" -type "float2" 0.23235945 -0.03408204 ;
	setAttr ".uvtk[107002]" -type "float2" 0.21792386 -0.042358026 ;
	setAttr ".uvtk[107003]" -type "float2" 0.22606875 -0.054284558 ;
	setAttr ".uvtk[107004]" -type "float2" 0.23853798 -0.047134981 ;
	setAttr ".uvtk[107005]" -type "float2" 0.20497011 -0.052802011 ;
	setAttr ".uvtk[107006]" -type "float2" 0.19379847 -0.065133795 ;
	setAttr ".uvtk[107007]" -type "float2" 0.20523022 -0.073959753 ;
	setAttr ".uvtk[107008]" -type "float2" 0.21487968 -0.063306972 ;
	setAttr ".uvtk[107009]" -type "float2" 0.1847062 -0.07906954 ;
	setAttr ".uvtk[107010]" -type "float2" 0.17789219 -0.094250128 ;
	setAttr ".uvtk[107011]" -type "float2" 0.19149159 -0.099111304 ;
	setAttr ".uvtk[107012]" -type "float2" 0.19737695 -0.085997984 ;
	setAttr ".uvtk[107013]" -type "float2" 0.17355107 -0.11031346 ;
	setAttr ".uvtk[107014]" -type "float2" 0.17176156 -0.12685673 ;
	setAttr ".uvtk[107015]" -type "float2" 0.18619762 -0.12727737 ;
	setAttr ".uvtk[107016]" -type "float2" 0.18774284 -0.11298726 ;
	setAttr ".uvtk[107017]" -type "float2" 0.17259686 -0.14347523 ;
	setAttr ".uvtk[107018]" -type "float2" 0.17600711 -0.15976185 ;
	setAttr ".uvtk[107019]" -type "float2" 0.1898668 -0.15570122 ;
	setAttr ".uvtk[107020]" -type "float2" 0.18692027 -0.14163285 ;
	setAttr ".uvtk[107021]" -type "float2" 0.18193682 -0.17530897 ;
	setAttr ".uvtk[107022]" -type "float2" 0.19021301 -0.18974438 ;
	setAttr ".uvtk[107023]" -type "float2" 0.20213939 -0.1815995 ;
	setAttr ".uvtk[107024]" -type "float2" 0.19498999 -0.16913024 ;
	setAttr ".uvtk[107025]" -type "float2" 0.20065701 -0.20269805 ;
	setAttr ".uvtk[107026]" -type "float2" 0.21298882 -0.21386981 ;
	setAttr ".uvtk[107027]" -type "float2" 0.22181462 -0.20243809 ;
	setAttr ".uvtk[107028]" -type "float2" 0.21116179 -0.19278857 ;
	setAttr ".uvtk[107029]" -type "float2" 0.22692451 -0.22296211 ;
	setAttr ".uvtk[107030]" -type "float2" 0.24210501 -0.22977614 ;
	setAttr ".uvtk[107031]" -type "float2" 0.24696621 -0.21617657 ;
	setAttr ".uvtk[107032]" -type "float2" 0.23385297 -0.21029133 ;
	setAttr ".uvtk[107033]" -type "float2" 0.25816819 -0.23411724 ;
	setAttr ".uvtk[107034]" -type "float2" 0.27471155 -0.23590669 ;
	setAttr ".uvtk[107035]" -type "float2" 0.27513224 -0.22147059 ;
	setAttr ".uvtk[107036]" -type "float2" 0.26084211 -0.21992543 ;
	setAttr ".uvtk[107037]" -type "float2" 0.29133016 -0.23507142 ;
	setAttr ".uvtk[107038]" -type "float2" 0.30761653 -0.23166132 ;
	setAttr ".uvtk[107039]" -type "float2" 0.30355567 -0.21780163 ;
	setAttr ".uvtk[107040]" -type "float2" 0.28948757 -0.22074795 ;
	setAttr ".uvtk[107041]" -type "float2" 0.32316369 -0.22573149 ;
	setAttr ".uvtk[107042]" -type "float2" 0.33759907 -0.21745527 ;
	setAttr ".uvtk[107043]" -type "float2" 0.32945421 -0.20552886 ;
	setAttr ".uvtk[107044]" -type "float2" 0.31698531 -0.21267834 ;
	setAttr ".uvtk[107045]" -type "float2" 0.35055315 -0.20701152 ;
	setAttr ".uvtk[107046]" -type "float2" 0.36172462 -0.19467956 ;
	setAttr ".uvtk[107047]" -type "float2" 0.35029289 -0.18585369 ;
	setAttr ".uvtk[107048]" -type "float2" 0.34064335 -0.19650647 ;
	setAttr ".uvtk[107049]" -type "float2" 0.37081692 -0.18074372 ;
	setAttr ".uvtk[107050]" -type "float2" 0.37763113 -0.16556323 ;
	setAttr ".uvtk[107051]" -type "float2" 0.36403161 -0.16070208 ;
	setAttr ".uvtk[107052]" -type "float2" 0.35814616 -0.17381528 ;
	setAttr ".uvtk[107053]" -type "float2" 0.38197196 -0.14949986 ;
	setAttr ".uvtk[107054]" -type "float2" 0.38376141 -0.13295671 ;
	setAttr ".uvtk[107055]" -type "float2" 0.36932555 -0.13253587 ;
	setAttr ".uvtk[107056]" -type "float2" 0.36778045 -0.14682624 ;
	setAttr ".uvtk[107057]" -type "float2" 0.38292623 -0.11633816 ;
	setAttr ".uvtk[107058]" -type "float2" 0.37951612 -0.1000517 ;
	setAttr ".uvtk[107059]" -type "float2" 0.3656565 -0.10411257 ;
	setAttr ".uvtk[107060]" -type "float2" 0.36860272 -0.11818084 ;
	setAttr ".uvtk[107061]" -type "float2" 0.37358627 -0.084504664 ;
	setAttr ".uvtk[107062]" -type "float2" 0.36053336 -0.090683162 ;
	setAttr ".uvtk[107063]" -type "float2" 0.33362696 -0.07715416 ;
	setAttr ".uvtk[107064]" -type "float2" 0.34119606 -0.086539626 ;
	setAttr ".uvtk[107065]" -type "float2" 0.32469025 -0.069059789 ;
	setAttr ".uvtk[107066]" -type "float2" 0.31550783 -0.080959678 ;
	setAttr ".uvtk[107067]" -type "float2" 0.32269657 -0.087470472 ;
	setAttr ".uvtk[107068]" -type "float2" 0.32878581 -0.09501946 ;
	setAttr ".uvtk[107069]" -type "float2" 0.31459123 -0.062472463 ;
	setAttr ".uvtk[107070]" -type "float2" 0.30359066 -0.057536006 ;
	setAttr ".uvtk[107071]" -type "float2" 0.29853472 -0.071691155 ;
	setAttr ".uvtk[107072]" -type "float2" 0.30738384 -0.075661659 ;
	setAttr ".uvtk[107073]" -type "float2" 0.29195032 -0.054392099 ;
	setAttr ".uvtk[107074]" -type "float2" 0.2799626 -0.053096473 ;
	setAttr ".uvtk[107075]" -type "float2" 0.27952844 -0.068121135 ;
	setAttr ".uvtk[107076]" -type "float2" 0.28917119 -0.069162846 ;
	setAttr ".uvtk[107077]" -type "float2" 0.26792049 -0.053703666 ;
	setAttr ".uvtk[107078]" -type "float2" 0.25611931 -0.056175813 ;
	setAttr ".uvtk[107079]" -type "float2" 0.26034912 -0.0705989 ;
	setAttr ".uvtk[107080]" -type "float2" 0.26984194 -0.068610013 ;
	setAttr ".uvtk[107081]" -type "float2" 0.24485417 -0.060474202 ;
	setAttr ".uvtk[107082]" -type "float2" 0.23439445 -0.066472217 ;
	setAttr ".uvtk[107083]" -type "float2" 0.24287431 -0.078882746 ;
	setAttr ".uvtk[107084]" -type "float2" 0.2512877 -0.0740574 ;
	setAttr ".uvtk[107085]" -type "float2" 0.22500895 -0.074041471 ;
	setAttr ".uvtk[107086]" -type "float2" 0.21691455 -0.082978234 ;
	setAttr ".uvtk[107087]" -type "float2" 0.22881462 -0.092160575 ;
	setAttr ".uvtk[107088]" -type "float2" 0.23532517 -0.084971659 ;
	setAttr ".uvtk[107089]" -type "float2" 0.21032749 -0.093077168 ;
	setAttr ".uvtk[107090]" -type "float2" 0.20539106 -0.10407775 ;
	setAttr ".uvtk[107091]" -type "float2" 0.21954603 -0.10913365 ;
	setAttr ".uvtk[107092]" -type "float2" 0.22351651 -0.10028475 ;
	setAttr ".uvtk[107093]" -type "float2" 0.20224716 -0.11571818 ;
	setAttr ".uvtk[107094]" -type "float2" 0.20095141 -0.12770587 ;
	setAttr ".uvtk[107095]" -type "float2" 0.21597601 -0.12813967 ;
	setAttr ".uvtk[107096]" -type "float2" 0.21701764 -0.11849701 ;
	setAttr ".uvtk[107097]" -type "float2" 0.20155846 -0.1397478 ;
	setAttr ".uvtk[107098]" -type "float2" 0.20403065 -0.15154898 ;
	setAttr ".uvtk[107099]" -type "float2" 0.21845402 -0.14731908 ;
	setAttr ".uvtk[107100]" -type "float2" 0.21646495 -0.13782638 ;
	setAttr ".uvtk[107101]" -type "float2" 0.20832916 -0.1628142 ;
	setAttr ".uvtk[107102]" -type "float2" 0.21432726 -0.17327401 ;
	setAttr ".uvtk[107103]" -type "float2" 0.22673748 -0.16479403 ;
	setAttr ".uvtk[107104]" -type "float2" 0.22191234 -0.15638056 ;
	setAttr ".uvtk[107105]" -type "float2" 0.22189657 -0.18265939 ;
	setAttr ".uvtk[107106]" -type "float2" 0.23083305 -0.19075379 ;
	setAttr ".uvtk[107107]" -type "float2" 0.2400154 -0.17885369 ;
	setAttr ".uvtk[107108]" -type "float2" 0.23282659 -0.17234313 ;
	setAttr ".uvtk[107109]" -type "float2" 0.24093218 -0.19734079 ;
	setAttr ".uvtk[107110]" -type "float2" 0.25193271 -0.20227721 ;
	setAttr ".uvtk[107111]" -type "float2" 0.25698847 -0.18812227 ;
	setAttr ".uvtk[107112]" -type "float2" 0.24813946 -0.18415177 ;
	setAttr ".uvtk[107113]" -type "float2" 0.26357299 -0.20542115 ;
	setAttr ".uvtk[107114]" -type "float2" 0.27556053 -0.20671687 ;
	setAttr ".uvtk[107115]" -type "float2" 0.27599463 -0.19169229 ;
	setAttr ".uvtk[107116]" -type "float2" 0.26635203 -0.19065052 ;
	setAttr ".uvtk[107117]" -type "float2" 0.28760269 -0.20610982 ;
	setAttr ".uvtk[107118]" -type "float2" 0.29940394 -0.20363745 ;
	setAttr ".uvtk[107119]" -type "float2" 0.29517394 -0.18921408 ;
	setAttr ".uvtk[107120]" -type "float2" 0.28568134 -0.19120342 ;
	setAttr ".uvtk[107121]" -type "float2" 0.31066909 -0.19933909 ;
	setAttr ".uvtk[107122]" -type "float2" 0.32112882 -0.19334102 ;
	setAttr ".uvtk[107123]" -type "float2" 0.31264883 -0.18093088 ;
	setAttr ".uvtk[107124]" -type "float2" 0.30423531 -0.18575609 ;
	setAttr ".uvtk[107125]" -type "float2" 0.33051416 -0.18577179 ;
	setAttr ".uvtk[107126]" -type "float2" 0.33860853 -0.17683521 ;
	setAttr ".uvtk[107127]" -type "float2" 0.32670859 -0.16765282 ;
	setAttr ".uvtk[107128]" -type "float2" 0.320198 -0.1748417 ;
	setAttr ".uvtk[107129]" -type "float2" 0.34519553 -0.16673639 ;
	setAttr ".uvtk[107130]" -type "float2" 0.35013223 -0.15573558 ;
	setAttr ".uvtk[107131]" -type "float2" 0.33597711 -0.15067992 ;
	setAttr ".uvtk[107132]" -type "float2" 0.33200657 -0.15952873 ;
	setAttr ".uvtk[107133]" -type "float2" 0.35327607 -0.14409539 ;
	setAttr ".uvtk[107134]" -type "float2" 0.35457167 -0.13210776 ;
	setAttr ".uvtk[107135]" -type "float2" 0.33954725 -0.13167378 ;
	setAttr ".uvtk[107136]" -type "float2" 0.33850548 -0.14131629 ;
	setAttr ".uvtk[107137]" -type "float2" 0.35396445 -0.12006575 ;
	setAttr ".uvtk[107138]" -type "float2" 0.3514924 -0.10826445 ;
	setAttr ".uvtk[107139]" -type "float2" 0.33706915 -0.11249435 ;
	setAttr ".uvtk[107140]" -type "float2" 0.33905837 -0.12198704 ;
	setAttr ".uvtk[107141]" -type "float2" 0.34719402 -0.096999168 ;
	setAttr ".uvtk[107142]" -type "float2" 0.33361092 -0.10343289 ;
	setAttr ".uvtk[107143]" -type "float2" 0.3116062 -0.097940564 ;
	setAttr ".uvtk[107144]" -type "float2" 0.31619355 -0.10362583 ;
	setAttr ".uvtk[107145]" -type "float2" 0.3061915 -0.093035996 ;
	setAttr ".uvtk[107146]" -type "float2" 0.29716536 -0.10474187 ;
	setAttr ".uvtk[107147]" -type "float2" 0.30134016 -0.10763668 ;
	setAttr ".uvtk[107148]" -type "float2" 0.30399215 -0.11196977 ;
	setAttr ".uvtk[107149]" -type "float2" 0.30007169 -0.089046359 ;
	setAttr ".uvtk[107150]" -type "float2" 0.29340634 -0.086055219 ;
	setAttr ".uvtk[107151]" -type "float2" 0.28843939 -0.099977255 ;
	setAttr ".uvtk[107152]" -type "float2" 0.29330426 -0.10144031 ;
	setAttr ".uvtk[107153]" -type "float2" 0.28635293 -0.084152102 ;
	setAttr ".uvtk[107154]" -type "float2" 0.27908975 -0.08336705 ;
	setAttr ".uvtk[107155]" -type "float2" 0.2786682 -0.098142684 ;
	setAttr ".uvtk[107156]" -type "float2" 0.28374711 -0.098030865 ;
	setAttr ".uvtk[107157]" -type "float2" 0.27179357 -0.083736539 ;
	setAttr ".uvtk[107158]" -type "float2" 0.26464325 -0.085234225 ;
	setAttr ".uvtk[107159]" -type "float2" 0.26880801 -0.099417031 ;
	setAttr ".uvtk[107160]" -type "float2" 0.27360386 -0.097741246 ;
	setAttr ".uvtk[107161]" -type "float2" 0.25781834 -0.087840438 ;
	setAttr ".uvtk[107162]" -type "float2" 0.25148076 -0.091474645 ;
	setAttr ".uvtk[107163]" -type "float2" 0.25982445 -0.10367614 ;
	setAttr ".uvtk[107164]" -type "float2" 0.26386777 -0.10060042 ;
	setAttr ".uvtk[107165]" -type "float2" 0.24579526 -0.096062116 ;
	setAttr ".uvtk[107166]" -type "float2" 0.24089094 -0.10147672 ;
	setAttr ".uvtk[107167]" -type "float2" 0.25259686 -0.11050283 ;
	setAttr ".uvtk[107168]" -type "float2" 0.25549161 -0.10632818 ;
	setAttr ".uvtk[107169]" -type "float2" 0.2369013 -0.10759675 ;
	setAttr ".uvtk[107170]" -type "float2" 0.23391025 -0.1142618 ;
	setAttr ".uvtk[107171]" -type "float2" 0.24783243 -0.11922883 ;
	setAttr ".uvtk[107172]" -type "float2" 0.24929531 -0.11436384 ;
	setAttr ".uvtk[107173]" -type "float2" 0.23200701 -0.12131529 ;
	setAttr ".uvtk[107174]" -type "float2" 0.23122178 -0.12857854 ;
	setAttr ".uvtk[107175]" -type "float2" 0.24599744 -0.12899995 ;
	setAttr ".uvtk[107176]" -type "float2" 0.24588554 -0.12392128 ;
	setAttr ".uvtk[107177]" -type "float2" 0.23159145 -0.13587469 ;
	setAttr ".uvtk[107178]" -type "float2" 0.23308919 -0.14302504 ;
	setAttr ".uvtk[107179]" -type "float2" 0.24727197 -0.13886011 ;
	setAttr ".uvtk[107180]" -type "float2" 0.24559613 -0.1340645 ;
	setAttr ".uvtk[107181]" -type "float2" 0.23569529 -0.14984989 ;
	setAttr ".uvtk[107182]" -type "float2" 0.23932935 -0.15618742 ;
	setAttr ".uvtk[107183]" -type "float2" 0.25153095 -0.14784367 ;
	setAttr ".uvtk[107184]" -type "float2" 0.24845533 -0.14380056 ;
	setAttr ".uvtk[107185]" -type "float2" 0.24391718 -0.1618731 ;
	setAttr ".uvtk[107186]" -type "float2" 0.24933161 -0.16677737 ;
	setAttr ".uvtk[107187]" -type "float2" 0.25835758 -0.1550715 ;
	setAttr ".uvtk[107188]" -type "float2" 0.25418311 -0.15217671 ;
	setAttr ".uvtk[107189]" -type "float2" 0.25545168 -0.17076707 ;
	setAttr ".uvtk[107190]" -type "float2" 0.26211679 -0.17375815 ;
	setAttr ".uvtk[107191]" -type "float2" 0.26708376 -0.15983593 ;
	setAttr ".uvtk[107192]" -type "float2" 0.26221877 -0.15837288 ;
	setAttr ".uvtk[107193]" -type "float2" 0.26917005 -0.17566124 ;
	setAttr ".uvtk[107194]" -type "float2" 0.27643326 -0.17644635 ;
	setAttr ".uvtk[107195]" -type "float2" 0.27685508 -0.16167066 ;
	setAttr ".uvtk[107196]" -type "float2" 0.27177623 -0.16178247 ;
	setAttr ".uvtk[107197]" -type "float2" 0.28372943 -0.17607674 ;
	setAttr ".uvtk[107198]" -type "float2" 0.29087996 -0.17457896 ;
	setAttr ".uvtk[107199]" -type "float2" 0.28671494 -0.16039631 ;
	setAttr ".uvtk[107200]" -type "float2" 0.28191915 -0.162072 ;
	setAttr ".uvtk[107201]" -type "float2" 0.29770482 -0.17197278 ;
	setAttr ".uvtk[107202]" -type "float2" 0.30404243 -0.16833875 ;
	setAttr ".uvtk[107203]" -type "float2" 0.29569861 -0.15613717 ;
	setAttr ".uvtk[107204]" -type "float2" 0.29165536 -0.15921301 ;
	setAttr ".uvtk[107205]" -type "float2" 0.30972791 -0.16375118 ;
	setAttr ".uvtk[107206]" -type "float2" 0.31463242 -0.15833673 ;
	setAttr ".uvtk[107207]" -type "float2" 0.30292651 -0.1493105 ;
	setAttr ".uvtk[107208]" -type "float2" 0.30003163 -0.15348521 ;
	setAttr ".uvtk[107209]" -type "float2" 0.31862181 -0.15221667 ;
	setAttr ".uvtk[107210]" -type "float2" 0.32161304 -0.1455515 ;
	setAttr ".uvtk[107211]" -type "float2" 0.30769095 -0.1405845 ;
	setAttr ".uvtk[107212]" -type "float2" 0.30622765 -0.1454494 ;
	setAttr ".uvtk[107213]" -type "float2" 0.32351616 -0.13849813 ;
	setAttr ".uvtk[107214]" -type "float2" 0.32430127 -0.13123482 ;
	setAttr ".uvtk[107215]" -type "float2" 0.30952561 -0.13081318 ;
	setAttr ".uvtk[107216]" -type "float2" 0.30963755 -0.13589209 ;
	setAttr ".uvtk[107217]" -type "float2" 0.32393163 -0.12393871 ;
	setAttr ".uvtk[107218]" -type "float2" 0.32243383 -0.11678827 ;
	setAttr ".uvtk[107219]" -type "float2" 0.30825102 -0.12095332 ;
	setAttr ".uvtk[107220]" -type "float2" 0.30992693 -0.12574893 ;
	setAttr ".uvtk[107221]" -type "float2" 0.31982777 -0.10996342 ;
	setAttr ".uvtk[107222]" -type "float2" 0.30706787 -0.11601275 ;
	setAttr ".uvtk[107223]" -type "float2" 0.29288179 -0.1156256 ;
	setAttr ".uvtk[107224]" -type "float2" 0.29275724 -0.11965239 ;
	setAttr ".uvtk[107225]" -type "float2" 0.2888546 -0.11552024 ;
	setAttr ".uvtk[107226]" -type "float2" 0.27776152 -0.12990659 ;
	setAttr ".uvtk[107227]" -type "float2" 0.28772855 -0.1116522 ;
	setAttr ".uvtk[107228]" -type "float2" 0.28386581 -0.11279655 ;
	setAttr ".uvtk[107229]" -type "float2" 0.28159979 -0.10946578 ;
	setAttr ".uvtk[107230]" -type "float2" 0.2782799 -0.11174756 ;
	setAttr ".uvtk[107231]" -type "float2" 0.27509543 -0.10927993 ;
	setAttr ".uvtk[107232]" -type "float2" 0.27264315 -0.11247611 ;
	setAttr ".uvtk[107233]" -type "float2" 0.26885197 -0.11111349 ;
	setAttr ".uvtk[107234]" -type "float2" 0.26750714 -0.11491102 ;
	setAttr ".uvtk[107235]" -type "float2" 0.26348051 -0.11478644 ;
	setAttr ".uvtk[107236]" -type "float2" 0.26337519 -0.11881375 ;
	setAttr ".uvtk[107237]" -type "float2" 0.25950724 -0.11993974 ;
	setAttr ".uvtk[107238]" -type "float2" 0.26065126 -0.12380248 ;
	setAttr ".uvtk[107239]" -type "float2" 0.25732061 -0.12606835 ;
	setAttr ".uvtk[107240]" -type "float2" 0.25960237 -0.12938845 ;
	setAttr ".uvtk[107241]" -type "float2" 0.25713503 -0.13257283 ;
	setAttr ".uvtk[107242]" -type "float2" 0.26033112 -0.13502526 ;
	setAttr ".uvtk[107243]" -type "float2" 0.25896841 -0.1388163 ;
	setAttr ".uvtk[107244]" -type "float2" 0.26276588 -0.14016111 ;
	setAttr ".uvtk[107245]" -type "float2" 0.26264137 -0.14418766 ;
	setAttr ".uvtk[107246]" -type "float2" 0.26666862 -0.1442931 ;
	setAttr ".uvtk[107247]" -type "float2" 0.26779455 -0.14816105 ;
	setAttr ".uvtk[107248]" -type "float2" 0.27165723 -0.14701688 ;
	setAttr ".uvtk[107249]" -type "float2" 0.27392331 -0.15034762 ;
	setAttr ".uvtk[107250]" -type "float2" 0.27724323 -0.14806587 ;
	setAttr ".uvtk[107251]" -type "float2" 0.28042784 -0.15053332 ;
	setAttr ".uvtk[107252]" -type "float2" 0.28288019 -0.14733711 ;
	setAttr ".uvtk[107253]" -type "float2" 0.28667131 -0.14869976 ;
	setAttr ".uvtk[107254]" -type "float2" 0.28801602 -0.14490241 ;
	setAttr ".uvtk[107255]" -type "float2" 0.29204249 -0.14502686 ;
	setAttr ".uvtk[107256]" -type "float2" 0.29214808 -0.14099953 ;
	setAttr ".uvtk[107257]" -type "float2" 0.29601592 -0.13987353 ;
	setAttr ".uvtk[107258]" -type "float2" 0.29487184 -0.13601118 ;
	setAttr ".uvtk[107259]" -type "float2" 0.29820243 -0.13374501 ;
	setAttr ".uvtk[107260]" -type "float2" 0.29592067 -0.13042483 ;
	setAttr ".uvtk[107261]" -type "float2" 0.29838803 -0.12724042 ;
	setAttr ".uvtk[107262]" -type "float2" 0.29519215 -0.12478811 ;
	setAttr ".uvtk[107263]" -type "float2" 0.29655477 -0.12099689 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6765FE3B-4349-5988-9F1F-73B69DD51A88";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -833.40306665575304 -646.30292841084031 ;
	setAttr ".tgi[0].vh" -type "double2" -288.16499308347278 -90.06004968389 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -142.85714721679688;
	setAttr ".tgi[0].ni[0].y" 68.571426391601562;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -491.42855834960938;
	setAttr ".tgi[0].ni[1].y" 68.571426391601562;
	setAttr ".tgi[0].ni[1].nvs" 2387;
	setAttr ".tgi[0].ni[2].x" -992.41064453125;
	setAttr ".tgi[0].ni[2].y" -122.17457580566406;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -770.98211669921875;
	setAttr ".tgi[0].ni[3].y" -122.17457580566406;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode animCurveTL -n "Master_ctrl_translateX";
	rename -uid "C932F525-4086-5A3C-1CE4-FEAA6C61F32F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "Master_ctrl_translateY";
	rename -uid "8B1B9130-4891-EB1C-1502-D38FC8C1819C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "Master_ctrl_translateZ";
	rename -uid "3FF49CD2-4138-42B6-BFBF-2B8F7708175F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "Hip_ctrl_translateX";
	rename -uid "E5B97993-4CCC-21FE-89FB-65BBA208C021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -0.35787184825114721 30 -0.43106768045101024
		 61 -0.014802123050803619 64 -1.3212568946081706 67 3.027722374956435 74 -0.35787184825114721
		 83 -0.35787184825114721 86 -0.35787184825114721 91 -0.35787184825114721 112 -0.35787184825114721
		 130 -0.56400775496889122;
createNode animCurveTL -n "Hip_ctrl_translateY";
	rename -uid "66B65769-4089-3721-934F-17A5A49631FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0.37769704671842508 61 -0.099100085029160234
		 64 -0.35152209595435324 67 -0.57589721677674544 74 0 83 0 86 0 91 0 112 0 130 -0.38987937825564423;
createNode animCurveTL -n "Hip_ctrl_translateZ";
	rename -uid "637FEC8E-468E-0259-4E8F-EC94B7AE4AF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0.27534016549210527 61 0.4548140195424053
		 64 0.30332467850382705 67 0.54367532022231879 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "SpineA_ctrl_translateX";
	rename -uid "A9A946C1-4D21-EF19-AAE2-4E9901A1423E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "SpineA_ctrl_translateY";
	rename -uid "32328917-4D0E-F38B-11FF-6AB1BA58F563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "SpineA_ctrl_translateZ";
	rename -uid "234E928B-4280-6E1E-1E80-EC8D4FF1FB06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "SpineB_ctrl_translateX";
	rename -uid "546727CE-4E3D-9F43-F3D8-EDBD246945C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "SpineB_ctrl_translateY";
	rename -uid "02F7BC8E-4FCC-DEB7-32F5-799E60B1CC09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "SpineB_ctrl_translateZ";
	rename -uid "53156052-4DD0-822E-396F-B8B163D2435C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "Neck_ctrl_translateX";
	rename -uid "618C1E17-4654-083F-5120-AB839E7148C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 2.7135347564089765
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "Neck_ctrl_translateY";
	rename -uid "A48BE84F-4993-5295-FD4F-4499B575D1AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "Neck_ctrl_translateZ";
	rename -uid "F7D852C2-4656-2AB4-F1A5-CCB9C47CD9FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_0Ctrl_translateX";
	rename -uid "90C4FC42-4FC4-447C-40B0-8D972F38BF70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_0Ctrl_translateY";
	rename -uid "B4CC2412-4851-6FBF-07DE-E4B2E20EF8CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_0Ctrl_translateZ";
	rename -uid "48D49393-41DF-4668-6E76-B3B1129AB31B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_1Ctrl_translateX";
	rename -uid "1B1440C3-47A7-F5F8-6D0C-3296602448A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_1Ctrl_translateY";
	rename -uid "69D6AC8D-46C4-EE05-0634-9594E20B2D6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_1Ctrl_translateZ";
	rename -uid "C226E22F-4AF6-D1AA-3034-51B18CAAF41E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_2Ctrl_translateX";
	rename -uid "C6162E8E-4C86-BE9D-5B43-16A411FE57B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_2Ctrl_translateY";
	rename -uid "F0AD33D8-47B1-ECCD-A0EC-3DAFAC98FA0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_2Ctrl_translateZ";
	rename -uid "660BF1A8-44AC-6C5E-4000-CEA158B7C93C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_3Ctrl_translateX";
	rename -uid "179BFA24-41DE-B0CB-9CB3-DAB99849B92F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_3Ctrl_translateY";
	rename -uid "0BFE9E36-4F1C-6EBF-436A-C4AFBC37FB55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_3Ctrl_translateZ";
	rename -uid "B944044E-426B-FDD1-3C75-51A35F0A5BFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_4Ctrl_translateX";
	rename -uid "B1F5DD1C-44DE-19D7-1F1D-CE986C14B44C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_4Ctrl_translateY";
	rename -uid "BA5A87A5-48C4-FBC3-98A4-63BA8C413D83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_4Ctrl_translateZ";
	rename -uid "5899BD31-48F2-EAEA-F87A-B7A6CC8A1F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_5Ctrl_translateX";
	rename -uid "6DCF9385-44D0-6A04-9F9E-5988B3D8A70D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_5Ctrl_translateY";
	rename -uid "DC0E1003-4CA0-19F1-422E-D99B06562049";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "antenna_5Ctrl_translateZ";
	rename -uid "E9DC4C7F-4AD9-D410-68B6-ECAE2C77EA67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "c_flashlight_jntCtrl_translateX";
	rename -uid "827644C1-4617-AF36-CAB1-4CB10E5EBDA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "c_flashlight_jntCtrl_translateY";
	rename -uid "A7EBAB08-4AC4-817E-8F2D-CB9652E514B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "c_flashlight_jntCtrl_translateZ";
	rename -uid "C104DD4E-41CD-5E78-E188-0EA728287167";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_shoulderCtrl_translateX";
	rename -uid "0137E9D8-40C9-1D28-E0EB-58A1DD252C36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 1.7704581422347587
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "l_shoulderCtrl_translateY";
	rename -uid "81619E4A-4054-A889-86B9-2E920236881B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 3.1208250465707144
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "l_shoulderCtrl_translateZ";
	rename -uid "BAE1F5E4-4CB0-4C45-9F55-B69FEDA7EF65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 -0.48443610408812521
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "l_elbowCtrl_translateX";
	rename -uid "E226BDAC-47A7-7690-4CFC-A6A21CFCBB5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_elbowCtrl_translateY";
	rename -uid "6009ACB6-4C37-AE2F-F028-148DEC8B548B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_elbowCtrl_translateZ";
	rename -uid "587E165E-4941-5FE3-1547-3E984C1E9F32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_0Ctrl_translateX";
	rename -uid "84D9AE25-40DC-5DBC-9A4F-6DB81899B9EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_0Ctrl_translateY";
	rename -uid "3F17CFBB-4B4B-F576-8964-1AB978DB1ED0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_0Ctrl_translateZ";
	rename -uid "491260E4-4BBA-121A-11BB-88BAF93CA035";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_1Ctrl_translateX";
	rename -uid "70EE6AE1-4443-49FD-03D7-DDA6D707DE17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_1Ctrl_translateY";
	rename -uid "917C77E3-4D18-86CA-6897-79AC35284B36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_1Ctrl_translateZ";
	rename -uid "F7322370-4679-759E-915D-1AAC395DD717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_2Ctrl_translateX";
	rename -uid "F92E37B0-43B9-B793-FF1D-B4A0C4036BA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_2Ctrl_translateY";
	rename -uid "EB2F93F4-41BB-ED0F-B161-13AE767AD58E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_index_2Ctrl_translateZ";
	rename -uid "B52AC2D2-4F5A-7681-9FA1-1691DC0547BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_0Ctrl_translateX";
	rename -uid "C390D355-469A-BD02-70CC-2A92340CB0A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_0Ctrl_translateY";
	rename -uid "AFFBCFC5-4A17-E077-9958-46AD0792859C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_0Ctrl_translateZ";
	rename -uid "A7189E28-45C7-BE97-A0BE-FB8672D84A8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_1Ctrl_translateX";
	rename -uid "95B67122-4F92-47A7-BD33-268354D2630D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_1Ctrl_translateY";
	rename -uid "72B512E0-431C-B957-C050-5B80ADA37FCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_1Ctrl_translateZ";
	rename -uid "7569962D-45B3-10D1-0756-499ED4EC6DFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_2Ctrl_translateX";
	rename -uid "A62D983C-47C7-928C-AEDB-809A107F795F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_2Ctrl_translateY";
	rename -uid "C82F1B96-48EF-AE8E-0CCC-69B98046964C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_pinky_2Ctrl_translateZ";
	rename -uid "3189AA70-4E40-31EB-50C2-8BB455F3CF6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_thumb_0Ctrl_translateX";
	rename -uid "3C850679-48A3-2726-9259-8F9756D3E92F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_thumb_0Ctrl_translateY";
	rename -uid "D1E24210-4393-2DDE-6EEE-899FCB185A93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_thumb_0Ctrl_translateZ";
	rename -uid "8BD52123-4093-0FED-7A32-92A68AAD6FCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_thumb_1Ctrl_translateX";
	rename -uid "D09D535D-490A-6A4A-42A8-A5B62948500D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_thumb_1Ctrl_translateY";
	rename -uid "38C6A1C2-4D5A-3E81-5570-E281F8478EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_thumb_1Ctrl_translateZ";
	rename -uid "91EEA0A4-442D-1EA7-D1D0-A38A3A9FE98D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_shoulderCtrl_translateX";
	rename -uid "5AE2CB72-462B-A8F7-78F0-92B1B8414557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 -0.78818489209207221
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "r_shoulderCtrl_translateY";
	rename -uid "62BCDFBA-4F8F-6546-5B66-2AB23D378F69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 -2.491351672901672
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "r_shoulderCtrl_translateZ";
	rename -uid "4D87AE93-46F8-7D23-B447-0FA565A34017";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0.48350520546951947
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "r_elbowCtrl_translateX";
	rename -uid "20A67AC2-48B2-076D-CE3B-8B9967039F05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_elbowCtrl_translateY";
	rename -uid "4985E2F9-4A3A-02CD-5980-189162BDE7E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_elbowCtrl_translateZ";
	rename -uid "9540CAB2-4250-A895-F021-23B44F7D8A23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_0Ctrl_translateX";
	rename -uid "CF850D92-48AA-4211-B23A-CDA1EDEB9872";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_0Ctrl_translateY";
	rename -uid "D1D7ADD2-4179-1022-DAC1-909CD613E75D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_0Ctrl_translateZ";
	rename -uid "16A2BC27-4E5B-2435-2653-05AFD790314B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_1Ctrl_translateX";
	rename -uid "09F40FC9-4B18-F4AB-9F0C-61BA15598BE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_1Ctrl_translateY";
	rename -uid "2F76E23E-404F-7E4D-1B58-559917B7BB2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_1Ctrl_translateZ";
	rename -uid "6811A19D-44B0-C994-70F7-7F97938015D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_2Ctrl_translateX";
	rename -uid "63D3089C-4F39-EE3B-1516-439BE1131D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_2Ctrl_translateY";
	rename -uid "0B7322FB-4DFC-5537-9978-25B6DC16A0A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_index_2Ctrl_translateZ";
	rename -uid "D304D2DD-4148-E61A-70EA-179235BBAD50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_0Ctrl_translateX";
	rename -uid "CC117725-4F91-8FAC-2486-138A646BDC14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_0Ctrl_translateY";
	rename -uid "86EBD032-4B6C-2CC2-2274-109FD88A9421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_0Ctrl_translateZ";
	rename -uid "683084AA-441A-F354-8358-5EB0750874E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_1Ctrl_translateX";
	rename -uid "6E8D4B29-4FCE-96F0-E068-AD83EF891C57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_1Ctrl_translateY";
	rename -uid "DBBD2872-4568-84DC-612F-B291B4B6F82B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_1Ctrl_translateZ";
	rename -uid "0FAB3301-44E9-008F-591C-51ADCC41DADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_2Ctrl_translateX";
	rename -uid "843826F0-40ED-1F0E-3605-4E8BE065E3E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_2Ctrl_translateY";
	rename -uid "A042E92D-4E48-6A54-F44B-92AA9CBAD3F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_pinky_2Ctrl_translateZ";
	rename -uid "E0DED92E-4896-9363-CA1B-C884B22E4436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_thumb_0Ctrl_translateX";
	rename -uid "9FA709DC-4DA8-ABB6-030D-87B0D1ACF9F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_thumb_0Ctrl_translateY";
	rename -uid "75CB8BCD-43AC-8762-204E-CAAD03735647";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_thumb_0Ctrl_translateZ";
	rename -uid "5DBEEB14-44A3-45D5-1289-31AC27B6E41E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_thumb_1Ctrl_translateX";
	rename -uid "1DD76C93-48D5-3501-0B14-40BDB0914833";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_thumb_1Ctrl_translateY";
	rename -uid "3C94C9D5-48E3-D236-1734-579A849FC2B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_thumb_1Ctrl_translateZ";
	rename -uid "AECA2376-46DC-BCDD-A3FA-70A33616B23B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_Foot_ctrl_translateX";
	rename -uid "EDC0BE5D-4B05-A485-5B1B-7DAB97FEB4E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 1.2158328532420848 30 1.2158328532420848
		 61 1.2158328532420848 64 1.2158328532420848 67 1.2158328532420848 74 1.2158328532420848
		 83 1.2158328532420848 86 1.2158328532420848 91 1.2158328532420848 112 1.2158328532420848
		 130 1.2158328532420848;
createNode animCurveTL -n "l_Foot_ctrl_translateY";
	rename -uid "D266AD2F-4D75-69D9-A7F4-9DA0C2AC6927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -2.613352522471363e-16 30 0 61 0 64 0
		 67 0 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "l_Foot_ctrl_translateZ";
	rename -uid "752CEE86-475D-A54D-DE32-37B9303CE5CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -1.6333453265446019e-17 30 0 61 0
		 64 0 67 0 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTL -n "l_foot_jntCtrl_translateX";
	rename -uid "2664BE3B-48AB-E7EC-006C-799A99F36A0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_foot_jntCtrl_translateY";
	rename -uid "ECEC3BD3-4E7F-9C50-AA6C-5192447FA150";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_foot_jntCtrl_translateZ";
	rename -uid "B676680E-4749-17BB-DB25-E2A7903A635C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_heel_jntCtrl_translateX";
	rename -uid "54E67221-4889-93F4-2926-6E9BF9513558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_heel_jntCtrl_translateY";
	rename -uid "2C7AD86E-47CA-BF87-99E8-53B4CD5F8D68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "l_heel_jntCtrl_translateZ";
	rename -uid "53273A0D-490C-64B6-02BA-96B2799A4357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_Foot_ctrl_translateX";
	rename -uid "96B1123D-49F3-95BF-8735-07B74BC872DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_Foot_ctrl_translateY";
	rename -uid "196F0CA0-4C73-10C7-5172-E9A402B035BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.06090984092474383 1 0.06090984092474383
		 30 0.06090984092474383 61 0.06090984092474383 64 0.06090984092474383 67 0.06090984092474383
		 74 0.06090984092474383 83 0.06090984092474383 86 0.06090984092474383 91 0.06090984092474383
		 112 0.06090984092474383 130 0.06090984092474383;
createNode animCurveTL -n "r_Foot_ctrl_translateZ";
	rename -uid "B228972A-43ED-5FEE-4238-BFA046A45E1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_foot_jntCtrl_translateX";
	rename -uid "C8FF9A48-42EB-E3D0-4135-BB801ABC12FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_foot_jntCtrl_translateY";
	rename -uid "975BE924-4255-E6CF-ABF4-B6A7DEE30E98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_foot_jntCtrl_translateZ";
	rename -uid "C8A06817-4AAC-1E9B-F162-DB8813C74161";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_heer_jntCtrl_translateX";
	rename -uid "3D67CB6D-46E2-C922-E7C8-3CBE9012C323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_heer_jntCtrl_translateY";
	rename -uid "013109B6-4439-D5DC-6FD2-318A0E2B5CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTL -n "r_heer_jntCtrl_translateZ";
	rename -uid "44FD7E03-4485-8258-37AC-5F9700669811";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "l_shoulderCtrl_visibility";
	rename -uid "70E22CC3-4001-F727-7FA5-FEB619131156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_shoulderCtrl_rotateX";
	rename -uid "4D71E5FC-4057-BCCA-8B06-7C8E33B3D96D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 30 -0.18254747178007094 61 -1.4603797742405682
		 64 -25.985992345803243 67 -89.469672366840769 70 -92.814516722260493 74 0 83 -1.0302575337914437
		 86 -0.73453546390686231 91 -0.26710380505704112 112 0 130 -5.4401166494718627;
createNode animCurveTA -n "l_shoulderCtrl_rotateY";
	rename -uid "3852FD07-4811-5F38-09B4-5FB0D18A0216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 30 12.83200874065747 61 8.4029374659407985
		 64 -20.795917711198815 67 22.79961375833274 70 8.3640954459758898 74 0 83 6.3491873772990655
		 86 4.5267354449261852 91 1.6460856163367963 112 0 130 4.8522614883989243;
createNode animCurveTA -n "l_shoulderCtrl_rotateZ";
	rename -uid "95A5D936-42CE-7B64-F604-E2837A9D8C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 30 0.83229898591362172 61 6.6583918873089738
		 64 18.600175288752354 67 90.060910376500914 70 88.950205837662963 74 0 83 1.2688442296944076
		 86 0.90463894154138291 91 0.32895961510595767 112 0 130 2.773837442513535;
createNode animCurveTU -n "l_shoulderCtrl_scaleX";
	rename -uid "C76C0C16-4213-D383-A609-64BBDEECBEE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_shoulderCtrl_scaleY";
	rename -uid "8CB298B9-4777-49C4-0D3A-9EA38BB0F711";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_shoulderCtrl_scaleZ";
	rename -uid "D03875B0-4ADD-B355-FD6B-8FA4DD5AD6BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_elbowCtrl_visibility";
	rename -uid "AC9869C2-4DB0-AD1A-8E40-F3A2EB37BB48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_elbowCtrl_rotateX";
	rename -uid "B60FCA84-4DBA-D47D-32CF-8FB8FA71BC1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 13.776220353350947
		 67 0 74 0 83 0 86 0 91 0 112 0 130 5.207621395661552;
createNode animCurveTA -n "l_elbowCtrl_rotateY";
	rename -uid "E4A76CC7-4B54-37A4-C063-E383DA196CEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 -39.176152379327988 61 0.46036036825740878
		 64 -67.473752391667475 67 0.057545046032176174 74 0 83 -42.846194240907295 86 -30.547749597683897
		 91 -11.108272580975978 112 0 130 -2.9366511596665426;
createNode animCurveTA -n "l_elbowCtrl_rotateZ";
	rename -uid "A026FC45-471F-5FC7-EB62-A9AE292495F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 -4.0349828551662696
		 67 0 74 0 83 0 86 0 91 0 112 0 130 -0.20105171412852932;
createNode animCurveTU -n "l_elbowCtrl_scaleX";
	rename -uid "62B89D18-48D9-28D1-F52C-D79B299B91C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_elbowCtrl_scaleY";
	rename -uid "AC7ECA2C-4651-122C-8498-6F9DAB57DBD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_elbowCtrl_scaleZ";
	rename -uid "C1629322-4164-EBD2-D745-DF8C690E9935";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_1Ctrl_visibility";
	rename -uid "4FE4586C-47F8-68C1-E23B-41BF13C2C99A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_pinky_1Ctrl_rotateX";
	rename -uid "DF0360F6-4EA3-F07C-EAEA-79A12FC3BB42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_pinky_1Ctrl_rotateY";
	rename -uid "E60B5A70-485B-EFE3-A073-4B9BAC9E9C36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_pinky_1Ctrl_rotateZ";
	rename -uid "7F2891F9-4BA9-651D-927C-DF87B7021737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -40.727896824190559 30 -40.727896824190559
		 61 -40.727896824190559 64 -40.727896824190559 67 -40.727896824190559 74 -40.727896824190559
		 83 -40.727896824190559 86 -40.727896824190559 91 -40.727896824190559 112 -40.727896824190559
		 130 -60.297296490747357;
createNode animCurveTU -n "l_pinky_1Ctrl_scaleX";
	rename -uid "AA1B759C-4F56-4C87-5C56-178D6BB28DFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_1Ctrl_scaleY";
	rename -uid "ED122DF7-4066-3A55-9BD2-EBA55B42EC34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_1Ctrl_scaleZ";
	rename -uid "B6CB81CB-4655-6BC5-628A-9285ADE99AC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_0Ctrl_visibility";
	rename -uid "35BA74C3-41AF-1982-4F8A-1792AD795542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_pinky_0Ctrl_rotateX";
	rename -uid "951B3E3D-41E1-5228-B5E3-C39245A6B015";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_pinky_0Ctrl_rotateY";
	rename -uid "DFB9FE3F-41A2-223B-E9A2-C78CFB647C34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_pinky_0Ctrl_rotateZ";
	rename -uid "CCDDF74F-419D-0C7E-19A3-BBBEB0DDB366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -40.727896824190559 30 -40.727896824190559
		 61 -40.727896824190559 64 -40.727896824190559 67 -40.727896824190559 74 -40.727896824190559
		 83 -40.727896824190559 86 -40.727896824190559 91 -40.727896824190559 112 -40.727896824190559
		 130 -40.727896824190559;
createNode animCurveTU -n "l_pinky_0Ctrl_scaleX";
	rename -uid "74DC8989-4238-05CA-B956-D6B37FD00930";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_0Ctrl_scaleY";
	rename -uid "07310CA1-4BDE-E4C8-314A-D9977AFD7AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_0Ctrl_scaleZ";
	rename -uid "B89A9F22-41A8-E0B4-BE51-D68AE47D32CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_0Ctrl_visibility";
	rename -uid "891FAF34-4E30-C458-54BD-1C9460FA117C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_index_0Ctrl_rotateX";
	rename -uid "05DA31E3-4172-ACF8-5E33-61AF714BAC5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_index_0Ctrl_rotateY";
	rename -uid "F382DB3E-4A92-78B6-A9D0-999D9DD3E6C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_index_0Ctrl_rotateZ";
	rename -uid "12076A2D-41B2-ACC2-B2A4-1BAA309A55C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -38.461269657389174 30 -38.461269657389174
		 61 -38.461269657389174 64 -38.461269657389174 67 -38.461269657389174 74 -38.461269657389174
		 83 -38.461269657389174 86 -38.461269657389174 91 -38.461269657389174 112 -38.461269657389174
		 130 -38.461269657389174;
createNode animCurveTU -n "l_index_0Ctrl_scaleX";
	rename -uid "52C39CDA-4216-429C-7642-CDB6EB3830C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_0Ctrl_scaleY";
	rename -uid "CC265ED6-4782-20F5-0BD4-299C6E530FC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_0Ctrl_scaleZ";
	rename -uid "2C73EB26-4773-8FCF-D409-2F8647F8EA43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_2Ctrl_visibility";
	rename -uid "C0B0D0C9-4FEF-DDF9-6681-96BE618DFD36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_pinky_2Ctrl_rotateX";
	rename -uid "A6ECA245-4A7E-BBBB-8C64-85ADDFC8A701";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_pinky_2Ctrl_rotateY";
	rename -uid "E2E5473E-4D5A-512A-26DF-AEA6D2C871C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_pinky_2Ctrl_rotateZ";
	rename -uid "3C09536E-4391-3EA2-65BF-60A0592D7DC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -40.727896824190559 30 -40.727896824190559
		 61 -40.727896824190559 64 -40.727896824190559 67 -40.727896824190559 74 -40.727896824190559
		 83 -40.727896824190559 86 -40.727896824190559 91 -40.727896824190559 112 -40.727896824190559
		 130 -60.297296490747357;
createNode animCurveTU -n "l_pinky_2Ctrl_scaleX";
	rename -uid "821C02C4-4879-CE93-8B01-6EA928941547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_2Ctrl_scaleY";
	rename -uid "6608D4D5-464D-A71B-17B7-39BCDB04203E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_pinky_2Ctrl_scaleZ";
	rename -uid "5A887B10-4858-FDD9-7925-B89C34CA3DED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_1Ctrl_visibility";
	rename -uid "CBE71F5D-4799-F408-A076-B894DDA5EB8E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_index_1Ctrl_rotateX";
	rename -uid "E1F0653A-4F66-FBEA-9A6A-B19883590ECF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_index_1Ctrl_rotateY";
	rename -uid "E0C97F54-4F24-243C-585D-6E8DD63933CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_index_1Ctrl_rotateZ";
	rename -uid "61056A3B-4D43-436B-B6D2-37BEBD4CC2B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -38.461269657389174 30 -38.461269657389174
		 61 -38.461269657389174 64 -38.461269657389174 67 -38.461269657389174 74 -38.461269657389174
		 83 -38.461269657389174 86 -38.461269657389174 91 -38.461269657389174 112 -38.461269657389174
		 130 -58.030669323946;
createNode animCurveTU -n "l_index_1Ctrl_scaleX";
	rename -uid "30C8D7AB-41FD-44C3-95AB-59A7295E5454";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_1Ctrl_scaleY";
	rename -uid "9A9A0BFA-40C4-A858-3C54-F58E1AB5428C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_1Ctrl_scaleZ";
	rename -uid "F52CBC6A-45DA-EAD7-6F48-A8BBC7E2DCC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_thumb_1Ctrl_visibility";
	rename -uid "2A794483-42AA-AE24-B322-2DA24F076853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_thumb_1Ctrl_rotateX";
	rename -uid "AEA057EA-479A-8917-B100-91822F542DAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_thumb_1Ctrl_rotateY";
	rename -uid "70B3BFFD-4146-D3AE-6761-FB94753595C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_thumb_1Ctrl_rotateZ";
	rename -uid "0E324B23-439B-CE19-6C7E-88A221A55995";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "l_thumb_1Ctrl_scaleX";
	rename -uid "C31DD1FE-4B44-A66C-A9EA-87A7D8986A34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_thumb_1Ctrl_scaleY";
	rename -uid "37AE1814-41B5-43D2-DE63-93B190EA447A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_thumb_1Ctrl_scaleZ";
	rename -uid "41C5B6AB-4A2E-F53B-9ADD-35A374D70FCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_2Ctrl_visibility";
	rename -uid "80D5A7C6-468B-0445-35F5-4EBD9461C35D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_index_2Ctrl_rotateX";
	rename -uid "459E5FAA-4033-2405-1BFD-9F9F4F52AA79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_index_2Ctrl_rotateY";
	rename -uid "EB2414AD-4B44-22D7-ADF4-94945ED0B715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_index_2Ctrl_rotateZ";
	rename -uid "34236EC5-45E5-B23F-5BA7-4E8A36B65700";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -38.461269657389174 30 -38.461269657389174
		 61 -38.461269657389174 64 -38.461269657389174 67 -38.461269657389174 74 -38.461269657389174
		 83 -38.461269657389174 86 -38.461269657389174 91 -38.461269657389174 112 -38.461269657389174
		 130 -58.030669323946;
createNode animCurveTU -n "l_index_2Ctrl_scaleX";
	rename -uid "148BC14B-4A12-0767-FED8-218C59F3F40B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_2Ctrl_scaleY";
	rename -uid "77149F59-4470-D3A9-CED3-FF9081E3315E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_index_2Ctrl_scaleZ";
	rename -uid "73F03A36-4CF4-44C2-6663-44BB2FD3286D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_thumb_0Ctrl_visibility";
	rename -uid "72EE2E17-45D7-9870-A178-2A99F69DBA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_thumb_0Ctrl_rotateX";
	rename -uid "42DAAC21-42D7-4B7E-EC47-298981A9DB51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -14.510625826217941 30 -14.510625826217941
		 61 -14.510625826217941 64 -14.510625826217941 67 -14.510625826217941 74 -14.510625826217941
		 83 -14.510625826217941 86 -14.510625826217941 91 -14.510625826217941 112 -14.510625826217941
		 130 -14.510625826217941;
createNode animCurveTA -n "l_thumb_0Ctrl_rotateY";
	rename -uid "20E6EF00-4D4F-D926-E55F-D6815A246155";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 33.132823139446565 30 33.132823139446565
		 61 33.132823139446565 64 33.132823139446565 67 33.132823139446565 74 33.132823139446565
		 83 33.132823139446565 86 33.132823139446565 91 33.132823139446565 112 33.132823139446565
		 130 33.132823139446565;
createNode animCurveTA -n "l_thumb_0Ctrl_rotateZ";
	rename -uid "D36F9A9C-415F-8AFD-EDAF-53922C313DD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -22.378525127993985 30 -22.378525127993985
		 61 -22.378525127993985 64 -22.378525127993985 67 -22.378525127993985 74 -22.378525127993985
		 83 -22.378525127993985 86 -22.378525127993985 91 -22.378525127993985 112 -22.378525127993985
		 130 -22.378525127993985;
createNode animCurveTU -n "l_thumb_0Ctrl_scaleX";
	rename -uid "DBB37FB1-4A9B-0377-330E-95B274B577A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_thumb_0Ctrl_scaleY";
	rename -uid "72A1B48E-4C33-4B41-E1D3-7C8335B7B3AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_thumb_0Ctrl_scaleZ";
	rename -uid "49743A1D-43CB-E9E1-6733-AF9681AA0421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_heel_jntCtrl_visibility";
	rename -uid "E0128ECD-4100-D4FD-CB14-1D9AAB2A1DBC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_heel_jntCtrl_rotateX";
	rename -uid "C56971B3-47BB-1895-990A-7CB24958D157";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_heel_jntCtrl_rotateY";
	rename -uid "305CE705-4C2E-3A12-AFF1-1DBE2CC2944C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_heel_jntCtrl_rotateZ";
	rename -uid "87F0D4A0-4D0C-7DB2-86EE-0BB22DD4BB42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "l_heel_jntCtrl_scaleX";
	rename -uid "EA83CEA6-43B0-57F0-1488-5B8733F56CA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_heel_jntCtrl_scaleY";
	rename -uid "5168BC0C-4440-8946-6559-A392A646CDFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_heel_jntCtrl_scaleZ";
	rename -uid "F528FFDA-4903-F047-BC3D-0C8D79BB65B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_foot_jntCtrl_visibility";
	rename -uid "11915CEC-464C-570B-A5AF-5AAE2C982716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_foot_jntCtrl_rotateX";
	rename -uid "BCB25A01-4FB5-518E-67C6-E9BA1DF302B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_foot_jntCtrl_rotateY";
	rename -uid "E295E8D8-44B5-D28D-597B-AEA8B5DF631C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "l_foot_jntCtrl_rotateZ";
	rename -uid "575A7D20-4BF6-4C07-1DF0-4580707219FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "l_foot_jntCtrl_scaleX";
	rename -uid "C16D1C9F-45F9-0DD4-E284-6BB06006368A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_foot_jntCtrl_scaleY";
	rename -uid "350E0CE7-4781-463A-3EA8-75AFBA454660";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_foot_jntCtrl_scaleZ";
	rename -uid "6B1680C8-410B-D2A1-9C3C-7683525ECCC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Hip_ctrl_visibility";
	rename -uid "3E2E5DD4-46E1-64B0-D145-C79FAD89D676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "Hip_ctrl_rotateX";
	rename -uid "7F35D615-4C29-F28E-4D7C-8099CB5697A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "Hip_ctrl_rotateY";
	rename -uid "70BCC4F7-4CB9-48AE-D549-A883F2107EE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "Hip_ctrl_rotateZ";
	rename -uid "857A3B6A-497D-9363-E92D-9D85918FA60F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "Hip_ctrl_scaleX";
	rename -uid "72A1DC4D-4648-69A4-0B38-0698AD63AE89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Hip_ctrl_scaleY";
	rename -uid "A80B6CDC-40D9-CFC5-1C56-EFBA4A4709A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Hip_ctrl_scaleZ";
	rename -uid "8C2B138B-4383-E305-C885-1BAED3378A5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_Foot_ctrl_visibility";
	rename -uid "52C69CCE-4BAE-F9E3-52DB-3886135EF014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "l_Foot_ctrl_rotateX";
	rename -uid "98E6F7B2-4B2B-842B-94BE-5E8140871DB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -1.6427420321476698 30 -1.6427420321476698
		 61 -1.6427420321476698 64 -1.6427420321476698 67 -1.6427420321476698 74 -1.6427420321476698
		 83 -1.6427420321476698 86 -1.6427420321476698 91 -1.6427420321476698 112 -1.6427420321476698
		 130 -1.6427420321476698;
createNode animCurveTA -n "l_Foot_ctrl_rotateY";
	rename -uid "92C1196C-416E-0BB1-2279-468A364366AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 14.645561108002642 30 14.645561108002642
		 61 14.645561108002642 64 14.645561108002642 67 14.645561108002642 74 14.645561108002642
		 83 14.645561108002642 86 14.645561108002642 91 14.645561108002642 112 14.645561108002642
		 130 14.645561108002642;
createNode animCurveTA -n "l_Foot_ctrl_rotateZ";
	rename -uid "C5A67148-41FE-B8BE-BE0D-63BF0E20BAC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -1.2551237643580462 30 -1.2551237643580462
		 61 -1.2551237643580462 64 -1.2551237643580462 67 -1.2551237643580462 74 -1.2551237643580462
		 83 -1.2551237643580462 86 -1.2551237643580462 91 -1.2551237643580462 112 -1.2551237643580462
		 130 -1.2551237643580462;
createNode animCurveTU -n "l_Foot_ctrl_scaleX";
	rename -uid "2AAD6081-405F-BB27-B7AD-0EBD6A6E645B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_Foot_ctrl_scaleY";
	rename -uid "346661F2-4C03-1B3B-0561-A3916FBFC441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "l_Foot_ctrl_scaleZ";
	rename -uid "70864A78-4BD2-E9B6-F7A5-4DBFE1AA4308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "SpineB_ctrl_visibility";
	rename -uid "DD9C868B-4EB1-853B-24BD-64A0C596753D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "SpineB_ctrl_rotateX";
	rename -uid "416143AC-49FF-E4D1-BD0D-5DAB859C7903";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "SpineB_ctrl_rotateY";
	rename -uid "72F6277D-42E9-B38D-10D2-6EB2C5DDA6F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "SpineB_ctrl_rotateZ";
	rename -uid "747F325E-4241-FB67-64CD-A49B2D919790";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "SpineB_ctrl_scaleX";
	rename -uid "884C8C78-4E93-804D-22CC-59B33A497CC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "SpineB_ctrl_scaleY";
	rename -uid "E24CEC6C-4673-E2A4-F8F2-E992D1B6CFC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "SpineB_ctrl_scaleZ";
	rename -uid "5CCBEDDE-4299-144E-AF53-B4931C3FEB2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Neck_ctrl_visibility";
	rename -uid "D513A5EB-4E62-0A92-5357-98B6B48A3008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "Neck_ctrl_rotateX";
	rename -uid "B336E768-46E2-69C9-10C7-19838AB107D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 16.879259037332201 30 -36.324376086302273
		 61 -9.6911440690880521 64 -15.825721076415032 67 -10.063939067117493 74 -9.1617630775164116
		 83 -8.9831603691176483 86 -9.1593222788426178 91 -8.7764588601395754 112 -9.1617630775164116
		 130 -5.5194800361054499;
createNode animCurveTA -n "Neck_ctrl_rotateY";
	rename -uid "FDABAB51-477B-FE6D-AD7D-99AF2259BC0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 -0.63222444456240989 61 -1.2644488891248205
		 64 -51.893903289065292 67 15.616814856760946 74 0 83 -1.8076372107597531 86 -0.21237453746062065
		 91 -2.6393654410727119 112 0 130 0;
createNode animCurveTA -n "Neck_ctrl_rotateZ";
	rename -uid "90F6F7DE-4054-E78A-6DD5-6AA0E705A091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 -1.0772393720382742 61 -3.1756313328139885
		 64 9.1820747537772185 67 -6.1269155324246363 74 0 83 -11.284612569070617 86 -1.3169294907692852
		 91 -16.608321721735678 112 0 130 0;
createNode animCurveTU -n "Neck_ctrl_scaleX";
	rename -uid "6CE17661-4DA6-0C3B-A932-45A10BCF82A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Neck_ctrl_scaleY";
	rename -uid "FEB1585C-49BA-AD97-9719-75B6E63EF61F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Neck_ctrl_scaleZ";
	rename -uid "0399C939-42C7-5C06-497E-48A2336DADB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_0Ctrl_visibility";
	rename -uid "510812BB-44C1-5396-0C0B-B4B2023ED68F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "antenna_0Ctrl_rotateX";
	rename -uid "5FF9B1C5-4A94-7D81-68B7-C3B1A69A078C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 -9.3373630191866877
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_0Ctrl_rotateY";
	rename -uid "C74268CB-463D-0110-C464-FB83770151CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 55.014540607984479 30 -30.098703024580558
		 61 35.73062902404935 64 -70.867190529496767 67 28.287390974734727 74 0 83 47.128818180447354
		 86 44.321494717301299 91 39.415061385397024 112 46.008816702158754 130 46.008816702158754;
createNode animCurveTA -n "antenna_0Ctrl_rotateZ";
	rename -uid "5C8B29BD-4152-D32F-CEA3-71BD91945550";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 -20.285233518436293
		 74 0 83 0 86 0 91 0 112 0 130 0;
createNode animCurveTU -n "antenna_0Ctrl_scaleX";
	rename -uid "74D57772-4A63-7020-9301-4E889D56B000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_0Ctrl_scaleY";
	rename -uid "9360BFCA-49FF-27B9-F466-7796CA03D591";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_0Ctrl_scaleZ";
	rename -uid "55193507-4A0A-CE75-8880-10B7ED2BBE1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_1Ctrl_visibility";
	rename -uid "32F9A94D-4378-6925-EA05-A5ADA6833825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "antenna_1Ctrl_rotateX";
	rename -uid "D3015FCB-4EF2-4EC7-BA93-BE8C99358AF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_1Ctrl_rotateY";
	rename -uid "CFBBC6FB-449E-6364-B6D9-A09B9AB67A70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_1Ctrl_rotateZ";
	rename -uid "BB6C9FA1-42AF-6DB0-E5F7-63808BDDF4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "antenna_1Ctrl_scaleX";
	rename -uid "DBAE1B80-45CA-718E-D066-45BBF677E12B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_1Ctrl_scaleY";
	rename -uid "474175AF-4C7E-20DA-0AA2-FB9D6B3E0CEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_1Ctrl_scaleZ";
	rename -uid "23CC772B-49C7-B47E-238A-C790A9E655C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "SpineA_ctrl_visibility";
	rename -uid "65AC10E3-4C25-3272-4C8C-5CA630D57BE2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "SpineA_ctrl_rotateX";
	rename -uid "F84F7B4D-4D7C-5E8B-BB55-C8B8EC49724D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "SpineA_ctrl_rotateY";
	rename -uid "A7F2226C-4E71-C115-48D4-FF8C0D5C2E8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "SpineA_ctrl_rotateZ";
	rename -uid "E7E747EB-4406-9FD6-0B50-78B5F578BE62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "SpineA_ctrl_scaleX";
	rename -uid "D7CC7A2C-4227-0507-234E-D4913DC6430A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "SpineA_ctrl_scaleY";
	rename -uid "3A39FB13-4735-15A0-CFE3-1498F18A655E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "SpineA_ctrl_scaleZ";
	rename -uid "7681FA3C-48AA-B25A-609C-F0A05ACAF8E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_2Ctrl_visibility";
	rename -uid "1AFFBAB5-4F92-9DDF-481D-D7BF0F73E3A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "antenna_2Ctrl_rotateX";
	rename -uid "14477644-4DA8-E498-E89B-0781E636D3BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_2Ctrl_rotateY";
	rename -uid "CD0AC1B7-4E7B-D9B1-E057-5292DCCD9B86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_2Ctrl_rotateZ";
	rename -uid "7986CB67-432D-6F11-B334-1BA67FA94B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "antenna_2Ctrl_scaleX";
	rename -uid "DE3D2113-4061-BF11-F412-E989257F56A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_2Ctrl_scaleY";
	rename -uid "E51042AE-4723-A19A-E23E-B0AA37A727B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_2Ctrl_scaleZ";
	rename -uid "31776785-4644-88C1-0177-97916F684B19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_3Ctrl_visibility";
	rename -uid "C504CCE2-4F75-829E-568E-7BBE6C48E2AA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "antenna_3Ctrl_rotateX";
	rename -uid "7D5980A4-4E66-D7F9-44E2-31892391E102";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_3Ctrl_rotateY";
	rename -uid "34D238ED-425C-94BD-8AAD-C88B2B615F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -3.0148712586274766 1 -3.0148712586274766
		 30 -3.0148712586274766 61 -3.0148712586274766 64 -3.0148712586274766 67 -3.0148712586274766
		 74 -3.0148712586274766 83 -3.0148712586274766 86 -3.0148712586274766 91 -3.0148712586274766
		 112 -3.0148712586274766 130 -3.0148712586274766;
createNode animCurveTA -n "antenna_3Ctrl_rotateZ";
	rename -uid "9ABFBB49-436F-1C2C-43C0-588D5759B924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "antenna_3Ctrl_scaleX";
	rename -uid "689533A7-4D3C-F795-596F-A4A04F331D98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_3Ctrl_scaleY";
	rename -uid "C0CAEE26-47F9-3344-ADC6-C5A5759DB266";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_3Ctrl_scaleZ";
	rename -uid "C2905F73-4941-15FC-EEE2-ECB70B15F84D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_shoulderCtrl_visibility";
	rename -uid "05061698-4738-B022-01A5-D7AE9233F44D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_shoulderCtrl_rotateX";
	rename -uid "338E64EA-455F-D072-7D7E-68BEF9A47E5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 30 3.0830531194172512 61 6.1661062388345043
		 64 16.492543578686263 67 -103.62021066333278 70 -80.818622436472253 74 0 83 -84.697237484448195
		 86 -59.034887820513546 91 -19.256331909170939 112 0 130 0;
createNode animCurveTA -n "r_shoulderCtrl_rotateY";
	rename -uid "A2B36039-4BB0-69DC-0CA3-F5AEADB93E75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 30 18.681420837758168 61 5.1341595844652774
		 64 -20.216559578478545 67 15.505057079109143 70 13.103948751052263 74 0 83 4.510780168913243
		 86 8.5684768045934554 91 10.822434377377427 112 0 130 0;
createNode animCurveTA -n "r_shoulderCtrl_rotateZ";
	rename -uid "9ED6B7DB-4604-65C5-F4E8-ACB97F0A9CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 30 -2.7479887321359975 61 -5.495977464271995
		 64 18.301381921779878 67 74.601672959178813 70 83.97096915449508 74 0 83 65.039805628507082
		 86 59.050782159591257 91 42.221791085924266 112 0 130 0;
createNode animCurveTU -n "r_shoulderCtrl_scaleX";
	rename -uid "1F6441B7-4FF4-26B3-4064-4C9E47023CEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_shoulderCtrl_scaleY";
	rename -uid "9CDD0DED-4267-BF72-44F0-F0BAB113FE2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_shoulderCtrl_scaleZ";
	rename -uid "E8D97F64-4041-C842-6967-048CC23D47D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_4Ctrl_visibility";
	rename -uid "2F2B536F-4A55-8EE6-B86C-83BBF7B3F238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "antenna_4Ctrl_rotateX";
	rename -uid "420D531D-49C0-5968-6ABC-F0B35FC1E7C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_4Ctrl_rotateY";
	rename -uid "A5B1C472-43DB-A13E-F026-6A89C5845773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -3.0148712586274766 1 -3.0148712586274766
		 30 -3.0148712586274766 61 -3.0148712586274766 64 -3.0148712586274766 67 -3.0148712586274766
		 74 -3.0148712586274766 83 -3.0148712586274766 86 -3.0148712586274766 91 -3.0148712586274766
		 112 -3.0148712586274766 130 -3.0148712586274766;
createNode animCurveTA -n "antenna_4Ctrl_rotateZ";
	rename -uid "AEA7997F-42F3-F8CC-5DF3-FEA7B570BA0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "antenna_4Ctrl_scaleX";
	rename -uid "4B66BA19-4516-4B58-712B-F69AA8F27E8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_4Ctrl_scaleY";
	rename -uid "30FCF79F-4981-1C9D-C712-D3BD1D81D18A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_4Ctrl_scaleZ";
	rename -uid "BC2C09A4-4E51-CDB3-589D-0AB35F035C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_5Ctrl_visibility";
	rename -uid "31A1B3E8-444C-EF8E-3CA1-648D68909AB6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "antenna_5Ctrl_rotateX";
	rename -uid "6D14ED6E-4B04-F4E4-FB54-BC8BCF5790FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "antenna_5Ctrl_rotateY";
	rename -uid "E54A2ADE-49FC-E31E-59D2-018314737A6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -3.0148712586274766 1 -3.0148712586274766
		 30 -3.0148712586274766 61 -3.0148712586274766 64 -3.0148712586274766 67 -3.0148712586274766
		 74 -3.0148712586274766 83 -3.0148712586274766 86 -3.0148712586274766 91 -3.0148712586274766
		 112 -3.0148712586274766 130 -3.0148712586274766;
createNode animCurveTA -n "antenna_5Ctrl_rotateZ";
	rename -uid "A56A97C9-4F49-9CF1-E256-E5ADF66D6A5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "antenna_5Ctrl_scaleX";
	rename -uid "40ADDF3C-4178-1398-C3ED-90BE6CBEA0E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_5Ctrl_scaleY";
	rename -uid "5C1C47FC-435F-A3A2-BC82-61BE1E387C4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "antenna_5Ctrl_scaleZ";
	rename -uid "CFAD55DD-4814-8493-C361-B7AC2094B52C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "c_flashlight_jntCtrl_visibility";
	rename -uid "F8D0D4F3-4287-E8DA-FC23-48B3C6D540A1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "c_flashlight_jntCtrl_rotateX";
	rename -uid "851393CE-445A-40F4-4A76-0684B59EA026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "c_flashlight_jntCtrl_rotateY";
	rename -uid "2A84546A-468E-1A19-8641-91A05684CB64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "c_flashlight_jntCtrl_rotateZ";
	rename -uid "64D54010-4751-F9D1-C36A-99911EE68F89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "c_flashlight_jntCtrl_scaleX";
	rename -uid "16E415CF-4FF1-BF07-8F75-0A90B8FFE29D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "c_flashlight_jntCtrl_scaleY";
	rename -uid "5879D501-4B87-5103-F8CC-2EAC24A838EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "c_flashlight_jntCtrl_scaleZ";
	rename -uid "6D89FE34-47C1-F585-3C03-1DAB9E2160B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_foot_jntCtrl_visibility";
	rename -uid "FCEB92C9-4B63-A5FD-AD61-6C99C94A097D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_foot_jntCtrl_rotateX";
	rename -uid "E632E550-4620-FB8D-844B-FC82548F7072";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_foot_jntCtrl_rotateY";
	rename -uid "173D0B88-4202-E2C9-01A5-A5B647F4179F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_foot_jntCtrl_rotateZ";
	rename -uid "DE035ADA-4563-348F-CA71-7D923EE33182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "r_foot_jntCtrl_scaleX";
	rename -uid "FE36EE2D-40B5-2B20-F66D-1E83A820ED77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_foot_jntCtrl_scaleY";
	rename -uid "F61F04C0-4826-0197-AD84-8B8CD697A3DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_foot_jntCtrl_scaleZ";
	rename -uid "55F2E0CF-4855-3B5A-EBEF-21A502E052EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Master_ctrl_visibility";
	rename -uid "5D1F9691-40FE-36C0-D999-3788D63747DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "Master_ctrl_rotateX";
	rename -uid "E309190C-42E8-B58E-0EAF-C499C462F2FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "Master_ctrl_rotateY";
	rename -uid "C7CF271A-4135-0F3A-0EA4-6C943CFF6E8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "Master_ctrl_rotateZ";
	rename -uid "2EFFBB90-4811-120D-FFA8-B2B90C0C771B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "Master_ctrl_scaleX";
	rename -uid "234345CD-4D49-74D7-AEC4-4D823D6B0BF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.84965423920325489 1 0.84965423920325489
		 30 0.84965423920325489 61 0.84965423920325489 64 0.84965423920325489 67 0.84965423920325489
		 74 0.84965423920325489 83 0.84965423920325489 86 0.84965423920325489 91 0.84965423920325489
		 112 0.84965423920325489 130 0.84965423920325489;
createNode animCurveTU -n "Master_ctrl_scaleY";
	rename -uid "89D43D74-45E8-C6E9-32A9-DEAABA30A072";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.84965423920325489 1 0.84965423920325489
		 30 0.84965423920325489 61 0.84965423920325489 64 0.84965423920325489 67 0.84965423920325489
		 74 0.84965423920325489 83 0.84965423920325489 86 0.84965423920325489 91 0.84965423920325489
		 112 0.84965423920325489 130 0.84965423920325489;
createNode animCurveTU -n "Master_ctrl_scaleZ";
	rename -uid "21B2597F-4D68-B545-6967-0D8CB6CC7CC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.84965423920325489 1 0.84965423920325489
		 30 0.84965423920325489 61 0.84965423920325489 64 0.84965423920325489 67 0.84965423920325489
		 74 0.84965423920325489 83 0.84965423920325489 86 0.84965423920325489 91 0.84965423920325489
		 112 0.84965423920325489 130 0.84965423920325489;
createNode animCurveTU -n "r_Foot_ctrl_visibility";
	rename -uid "429237FB-41DB-D9CB-A197-B496D19BFFC1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_Foot_ctrl_rotateX";
	rename -uid "53476274-477F-B7A8-008E-1794B0DF81A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_Foot_ctrl_rotateY";
	rename -uid "FA77ADFF-48F8-139F-CB07-E59DDA4E3A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 18.701615891205499 30 18.701615891205499
		 61 18.701615891205499 64 18.701615891205499 67 18.701615891205499 74 18.701615891205499
		 83 18.701615891205499 86 18.701615891205499 91 18.701615891205499 112 18.701615891205499
		 130 18.701615891205499;
createNode animCurveTA -n "r_Foot_ctrl_rotateZ";
	rename -uid "DFB18E04-473E-E8C6-A05E-81A6BD673768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "r_Foot_ctrl_scaleX";
	rename -uid "B302B676-4C01-7B5E-8617-2D872EE2E704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_Foot_ctrl_scaleY";
	rename -uid "E2CFBAC9-42BF-3A86-608D-B7B5FC8E7049";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_Foot_ctrl_scaleZ";
	rename -uid "3C53812A-40BC-B9B9-9FFC-22A93C2C2DFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_heer_jntCtrl_visibility";
	rename -uid "27810C9F-488F-0702-80CF-C08C82495972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_heer_jntCtrl_rotateX";
	rename -uid "98807F4E-4C98-A1F5-6BFD-B894585445E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_heer_jntCtrl_rotateY";
	rename -uid "93CEC23F-4C94-EE37-7B51-48A6F4077559";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_heer_jntCtrl_rotateZ";
	rename -uid "A1146FEB-4431-36E5-34F0-608800F0FC5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "r_heer_jntCtrl_scaleX";
	rename -uid "592287DC-4CDB-7915-5665-0D8861C81201";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_heer_jntCtrl_scaleY";
	rename -uid "68B2CE91-4DEB-60FC-2BAE-708D4A1C34B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_heer_jntCtrl_scaleZ";
	rename -uid "C37FE068-4CBF-270B-C453-01856CF99491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_thumb_0Ctrl_visibility";
	rename -uid "465EA8E0-4E10-DC33-D406-6A878E690F32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_thumb_0Ctrl_rotateX";
	rename -uid "E3560DF4-4E95-70B4-D7CB-87BB95F0E215";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -7.018934156627723 30 -7.018934156627723
		 61 -7.018934156627723 64 -7.018934156627723 67 -7.018934156627723 74 -7.018934156627723
		 83 -4.9888496296271763 86 -5.5715590771921484 91 -6.4926159459238777 112 -7.018934156627723
		 130 -7.018934156627723;
createNode animCurveTA -n "r_thumb_0Ctrl_rotateY";
	rename -uid "022E8C6A-4F3A-4A5E-202A-E6B2B0378E08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 25.924469719836971 30 25.924469719836971
		 61 25.924469719836971 64 25.924469719836971 67 25.924469719836971 74 25.924469719836971
		 83 -6.0521584388098493 86 3.1263181622832237 91 17.634232789817418 112 25.924469719836971
		 130 25.924469719836971;
createNode animCurveTA -n "r_thumb_0Ctrl_rotateZ";
	rename -uid "C8A53385-481C-7ACD-84B4-7D86D874BD45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -33.531003676075187 30 -33.531003676075187
		 61 -33.531003676075187 64 -33.531003676075187 67 -33.531003676075187 74 -33.531003676075187
		 83 -4.4726234611898956 86 -12.81345481916623 91 -25.997349546290103 112 -33.531003676075187
		 130 -33.531003676075187;
createNode animCurveTU -n "r_thumb_0Ctrl_scaleX";
	rename -uid "0F88AC88-4F0F-C166-D6EA-95A14A20B085";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_thumb_0Ctrl_scaleY";
	rename -uid "647BA1EF-4D74-334D-477A-7CB95863DA7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_thumb_0Ctrl_scaleZ";
	rename -uid "8BF84916-4B15-D8FB-B391-E0950CC556B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_elbowCtrl_visibility";
	rename -uid "ED4787F0-40C5-BAB9-A011-C2BC852B3FA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_elbowCtrl_rotateX";
	rename -uid "A1351C53-4AC7-9453-FA8A-BCAEFC4AA592";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 -75.993981082995717
		 67 0 74 0 83 6.6784766375081359 86 5.1390694898092386 91 -82.598120478452401 112 0
		 130 -6.3754579774945963;
createNode animCurveTA -n "r_elbowCtrl_rotateY";
	rename -uid "037FA2E6-4334-F24C-C8CE-5FA74F67050C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 -26.521015344205594 61 -2.8786810467558928
		 64 -60.918980174976319 67 -0.35983513084448665 74 0 83 -41.758239014730904 86 -14.414850570437032
		 91 -24.921351666042639 112 0 130 0.66520098756794954;
createNode animCurveTA -n "r_elbowCtrl_rotateZ";
	rename -uid "8D8DD891-489B-479C-9DE1-D8A92FFF761B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 94.823526144302079
		 67 0 74 0 83 18.993558707698309 86 22.170027389484353 91 105.81729371310065 112 0
		 130 3.1255742661064199;
createNode animCurveTU -n "r_elbowCtrl_scaleX";
	rename -uid "1278A8AC-461C-45F0-DE17-B4851E4A263E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_elbowCtrl_scaleY";
	rename -uid "759AA96B-4004-FAFC-98C6-2CB5A444C837";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_elbowCtrl_scaleZ";
	rename -uid "691B0DAC-4FD1-3077-4EBD-78BE3B4F6160";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_thumb_1Ctrl_visibility";
	rename -uid "AD30F163-4BCB-B202-CF83-51A7133DA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_thumb_1Ctrl_rotateX";
	rename -uid "B7520CA9-4724-5CA4-BF22-F98CFC50B9C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_thumb_1Ctrl_rotateY";
	rename -uid "AEF55B35-4B6C-F3B3-0C2B-7D9BEBC5BE32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_thumb_1Ctrl_rotateZ";
	rename -uid "005C2DF6-4B22-0940-9F50-8DB02687648F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTU -n "r_thumb_1Ctrl_scaleX";
	rename -uid "F77D649E-4F18-8DBB-9FF7-7AB5A2CF86BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_thumb_1Ctrl_scaleY";
	rename -uid "FACCF69D-4A43-C43C-37D6-3CB1A06DD784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_thumb_1Ctrl_scaleZ";
	rename -uid "2449EBC5-4A63-02D6-304B-0A8D9AB89678";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_0Ctrl_visibility";
	rename -uid "2A9CEB5F-4D50-4A9F-9A8E-51B42EB968F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_index_0Ctrl_rotateX";
	rename -uid "D4660A3A-4A50-CF00-9383-CF9E8C18A4A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_index_0Ctrl_rotateY";
	rename -uid "30E03B18-4CC5-CB90-FE9A-E293E623EF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_index_0Ctrl_rotateZ";
	rename -uid "544489FA-49A1-6DBC-1E70-0B97A8D43E6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -75.68835126639884 30 -63.920528401445843
		 61 -45.319776131036271 64 -39.575426165174477 67 -34.690774833659383 74 -75.68835126639884
		 83 3.8526391718337485 86 2.469890165092004 91 -7.2093528821001955 112 -75.68835126639884
		 130 -75.68835126639884;
createNode animCurveTU -n "r_index_0Ctrl_scaleX";
	rename -uid "43D88836-42DA-31A7-8CD7-06925F907892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_0Ctrl_scaleY";
	rename -uid "DBBDCD73-4DC9-3730-C996-0B95357E9C38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_0Ctrl_scaleZ";
	rename -uid "4ED77A10-49A9-3447-E054-74AEDC36D0DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_1Ctrl_visibility";
	rename -uid "AB54462F-4F65-1712-9E24-1894046B883A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_index_1Ctrl_rotateX";
	rename -uid "4BC9CCC7-4A6B-06C4-3D71-91B6E536BF6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_index_1Ctrl_rotateY";
	rename -uid "B0457D6A-4276-9BE2-C59A-25BA290BA579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_index_1Ctrl_rotateZ";
	rename -uid "60397135-4711-58CD-34DD-609F04C287F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -75.68835126639884 30 -63.920528401445843
		 61 -45.319776131036271 64 -39.575426165174477 67 -34.690774833659383 74 -75.68835126639884
		 83 3.8526391718337485 86 2.469890165092004 91 -7.2093528821001955 112 -75.68835126639884
		 130 -75.68835126639884;
createNode animCurveTU -n "r_index_1Ctrl_scaleX";
	rename -uid "115FD32C-4B0C-9FB3-5187-3FA10BCF8470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_1Ctrl_scaleY";
	rename -uid "B8680A9D-45E4-A85A-F20C-E490F2A7D568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_1Ctrl_scaleZ";
	rename -uid "94DAC1E3-4EA9-014C-3840-879392835FAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_2Ctrl_visibility";
	rename -uid "69D0731C-4B87-2C72-6C2A-EBA17589C753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_index_2Ctrl_rotateX";
	rename -uid "F43F3ED7-4595-8F8E-C043-87BE6B087E8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_index_2Ctrl_rotateY";
	rename -uid "897135C5-4014-1FC2-9C56-17AE52C003EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_index_2Ctrl_rotateZ";
	rename -uid "0A36D4C7-4CB5-CA18-F8B4-CABB2978F180";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -75.68835126639884 30 -63.920528401445843
		 61 -45.319776131036271 64 -39.575426165174477 67 -34.690774833659383 74 -75.68835126639884
		 83 3.8526391718337485 86 2.469890165092004 91 -7.2093528821001955 112 -75.68835126639884
		 130 -75.68835126639884;
createNode animCurveTU -n "r_index_2Ctrl_scaleX";
	rename -uid "6F62E495-4FF3-4379-3AB8-EDACF2D4FF9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_2Ctrl_scaleY";
	rename -uid "3F95DE8F-46F8-3D54-9E00-AA83F9E3C117";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_index_2Ctrl_scaleZ";
	rename -uid "12D83718-4E65-000B-C344-5C9A2FC40DAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_0Ctrl_visibility";
	rename -uid "D333CC8C-4B89-25FA-5121-49A69A655ACF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_pinky_0Ctrl_rotateX";
	rename -uid "6B3F575A-46DC-38D4-9B82-5DA6BD8798E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 3.1120368836792776
		 91 6.2240737673585489 112 0 130 0;
createNode animCurveTA -n "r_pinky_0Ctrl_rotateY";
	rename -uid "60E7466D-4C30-34A6-6076-29A6D2E7287C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 -0.44965169589690884
		 91 -0.89930339179381691 112 0 130 0;
createNode animCurveTA -n "r_pinky_0Ctrl_rotateZ";
	rename -uid "A973202C-49AB-4C8D-2D2E-1EAEC179ACF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -77.85160309033688 30 -59.228799988509898
		 61 -29.792756375944681 64 -20.702213495593629 67 -12.972160025907421 74 -77.85160309033688
		 83 -0.16298147896830789 86 -0.52081045344942611 91 -3.0256132748172484 112 -77.85160309033688
		 130 -77.85160309033688;
createNode animCurveTU -n "r_pinky_0Ctrl_scaleX";
	rename -uid "6004A064-40EF-CAAA-2396-878768C5D49C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_0Ctrl_scaleY";
	rename -uid "44E69B17-4E2A-B2D0-758E-7DAA2498B645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_0Ctrl_scaleZ";
	rename -uid "635FDC8A-4187-51A0-20A9-9E8CBC98750B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_2Ctrl_visibility";
	rename -uid "E9565051-40D7-2BB1-B79E-90BB2EE9F700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_pinky_2Ctrl_rotateX";
	rename -uid "6EB643D6-437B-5176-3B6E-26A5AE311EFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_pinky_2Ctrl_rotateY";
	rename -uid "336C3447-4611-5818-95C2-70854CC79B7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_pinky_2Ctrl_rotateZ";
	rename -uid "15A97E18-404E-0F0A-049F-3093050EF182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -77.85160309033688 30 -59.228799988509898
		 61 -29.792756375944681 64 -20.702213495593629 67 -12.972160025907421 74 -77.85160309033688
		 83 -0.16298147896830789 86 1.7793743752391344 91 2.0568537829830538 112 -77.85160309033688
		 130 -77.85160309033688;
createNode animCurveTU -n "r_pinky_2Ctrl_scaleX";
	rename -uid "AE153788-4977-A1CC-819F-7481A37051DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_2Ctrl_scaleY";
	rename -uid "FC97E0D2-40D5-49E0-B4A8-C9BB332DD754";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_2Ctrl_scaleZ";
	rename -uid "E32105CB-49C0-1DFF-8F62-32B45B37C99C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_1Ctrl_visibility";
	rename -uid "B49A53BC-4D10-B672-9BC6-00993632FD1C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "r_pinky_1Ctrl_rotateX";
	rename -uid "B3C9EEDA-44B4-CFCD-A683-9DA0F0B22D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_pinky_1Ctrl_rotateY";
	rename -uid "A437B3CF-406A-F21D-7ED0-AF9513292BEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 30 0 61 0 64 0 67 0 74 0 83 0 86 0
		 91 0 112 0 130 0;
createNode animCurveTA -n "r_pinky_1Ctrl_rotateZ";
	rename -uid "F9FA7954-4481-4049-8953-3EADB763185E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 -77.85160309033688 30 -59.228799988509898
		 61 -29.792756375944681 64 -20.702213495593629 67 -12.972160025907421 74 -77.85160309033688
		 83 -0.16298147896830789 86 1.7793743752391344 91 2.0568537829830538 112 -77.85160309033688
		 130 -77.85160309033688;
createNode animCurveTU -n "r_pinky_1Ctrl_scaleX";
	rename -uid "ACD284E6-44E2-1C0C-C8D1-BB897EA9E838";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_1Ctrl_scaleY";
	rename -uid "FB261537-4710-5638-62EF-669144948C27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "r_pinky_1Ctrl_scaleZ";
	rename -uid "704063DF-4754-9E43-0647-7FADDC5C5240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 30 1 61 1 64 1 67 1 74 1 83 1 86 1
		 91 1 112 1 130 1;
createNode animCurveTU -n "Shotcam_visibility";
	rename -uid "466E3B4E-4E80-ED23-20CE-21B12D6C6EDF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 65 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Shotcam_translateX";
	rename -uid "90CE18D0-450F-1F8A-4BA7-FDA9C3A367B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -9.7215773958096854 60 -7.5260058094768878
		 65 -7.5260058094768878 130 -7.6767169834818043;
createNode animCurveTL -n "Shotcam_translateY";
	rename -uid "C47E4695-4651-24B1-F216-44B6A11B96F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9484953285337383 60 9.890459525340999
		 65 9.890459525340999 130 9.8363913832681966;
createNode animCurveTL -n "Shotcam_translateZ";
	rename -uid "7A9D68D0-40DB-DFC7-B9D5-B0BCDE40C6E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 56.4307607951732 60 51.648498941784901
		 65 51.648498941784901 130 52.669113014334336;
createNode animCurveTA -n "Shotcam_rotateX";
	rename -uid "FE2747A5-4B33-CB47-EE90-629BB6647733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.0000000000000107 65 3.0000000000000107;
createNode animCurveTA -n "Shotcam_rotateY";
	rename -uid "0D19D872-40EC-B55D-CD53-BF80CA9F8161";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.3999999999999471 65 -8.3999999999999471;
createNode animCurveTA -n "Shotcam_rotateZ";
	rename -uid "24BD26B5-4A71-F04C-3E46-24B3ACA97B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -7.5352608036183771e-17 65 -7.5352608036183771e-17;
createNode animCurveTU -n "Shotcam_scaleX";
	rename -uid "96E70213-405E-B712-4E84-869D63EC9D58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 65 1;
createNode animCurveTU -n "Shotcam_scaleY";
	rename -uid "7E2D1FCA-4CB8-3934-8E37-529246F4B645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 65 1;
createNode animCurveTU -n "Shotcam_scaleZ";
	rename -uid "348CB439-45F9-8F76-4079-848859854653";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 65 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".ef" 130;
	setAttr ".pff" yes;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "polyTweakUV1.out" "Robot_RigRN.phl[1]";
connectAttr "polyTweakUV1.uvtk[0]" "Robot_RigRN.phl[2]";
connectAttr "Master_ctrl_translateX.o" "Robot_RigRN.phl[3]";
connectAttr "Master_ctrl_translateY.o" "Robot_RigRN.phl[4]";
connectAttr "Master_ctrl_translateZ.o" "Robot_RigRN.phl[5]";
connectAttr "Master_ctrl_rotateX.o" "Robot_RigRN.phl[6]";
connectAttr "Master_ctrl_rotateY.o" "Robot_RigRN.phl[7]";
connectAttr "Master_ctrl_rotateZ.o" "Robot_RigRN.phl[8]";
connectAttr "Master_ctrl_scaleX.o" "Robot_RigRN.phl[9]";
connectAttr "Master_ctrl_scaleY.o" "Robot_RigRN.phl[10]";
connectAttr "Master_ctrl_scaleZ.o" "Robot_RigRN.phl[11]";
connectAttr "Master_ctrl_visibility.o" "Robot_RigRN.phl[12]";
connectAttr "r_Foot_ctrl_rotateX.o" "Robot_RigRN.phl[13]";
connectAttr "r_Foot_ctrl_rotateY.o" "Robot_RigRN.phl[14]";
connectAttr "r_Foot_ctrl_rotateZ.o" "Robot_RigRN.phl[15]";
connectAttr "r_Foot_ctrl_translateX.o" "Robot_RigRN.phl[16]";
connectAttr "r_Foot_ctrl_translateY.o" "Robot_RigRN.phl[17]";
connectAttr "r_Foot_ctrl_translateZ.o" "Robot_RigRN.phl[18]";
connectAttr "r_Foot_ctrl_visibility.o" "Robot_RigRN.phl[19]";
connectAttr "r_Foot_ctrl_scaleX.o" "Robot_RigRN.phl[20]";
connectAttr "r_Foot_ctrl_scaleY.o" "Robot_RigRN.phl[21]";
connectAttr "r_Foot_ctrl_scaleZ.o" "Robot_RigRN.phl[22]";
connectAttr "r_foot_jntCtrl_translateX.o" "Robot_RigRN.phl[23]";
connectAttr "r_foot_jntCtrl_translateY.o" "Robot_RigRN.phl[24]";
connectAttr "r_foot_jntCtrl_translateZ.o" "Robot_RigRN.phl[25]";
connectAttr "r_foot_jntCtrl_rotateX.o" "Robot_RigRN.phl[26]";
connectAttr "r_foot_jntCtrl_rotateY.o" "Robot_RigRN.phl[27]";
connectAttr "r_foot_jntCtrl_rotateZ.o" "Robot_RigRN.phl[28]";
connectAttr "r_foot_jntCtrl_visibility.o" "Robot_RigRN.phl[29]";
connectAttr "r_foot_jntCtrl_scaleX.o" "Robot_RigRN.phl[30]";
connectAttr "r_foot_jntCtrl_scaleY.o" "Robot_RigRN.phl[31]";
connectAttr "r_foot_jntCtrl_scaleZ.o" "Robot_RigRN.phl[32]";
connectAttr "r_heer_jntCtrl_translateX.o" "Robot_RigRN.phl[33]";
connectAttr "r_heer_jntCtrl_translateY.o" "Robot_RigRN.phl[34]";
connectAttr "r_heer_jntCtrl_translateZ.o" "Robot_RigRN.phl[35]";
connectAttr "r_heer_jntCtrl_rotateX.o" "Robot_RigRN.phl[36]";
connectAttr "r_heer_jntCtrl_rotateY.o" "Robot_RigRN.phl[37]";
connectAttr "r_heer_jntCtrl_rotateZ.o" "Robot_RigRN.phl[38]";
connectAttr "r_heer_jntCtrl_visibility.o" "Robot_RigRN.phl[39]";
connectAttr "r_heer_jntCtrl_scaleX.o" "Robot_RigRN.phl[40]";
connectAttr "r_heer_jntCtrl_scaleY.o" "Robot_RigRN.phl[41]";
connectAttr "r_heer_jntCtrl_scaleZ.o" "Robot_RigRN.phl[42]";
connectAttr "l_Foot_ctrl_rotateX.o" "Robot_RigRN.phl[43]";
connectAttr "l_Foot_ctrl_rotateY.o" "Robot_RigRN.phl[44]";
connectAttr "l_Foot_ctrl_rotateZ.o" "Robot_RigRN.phl[45]";
connectAttr "l_Foot_ctrl_translateX.o" "Robot_RigRN.phl[46]";
connectAttr "l_Foot_ctrl_translateY.o" "Robot_RigRN.phl[47]";
connectAttr "l_Foot_ctrl_translateZ.o" "Robot_RigRN.phl[48]";
connectAttr "l_Foot_ctrl_visibility.o" "Robot_RigRN.phl[49]";
connectAttr "l_Foot_ctrl_scaleX.o" "Robot_RigRN.phl[50]";
connectAttr "l_Foot_ctrl_scaleY.o" "Robot_RigRN.phl[51]";
connectAttr "l_Foot_ctrl_scaleZ.o" "Robot_RigRN.phl[52]";
connectAttr "l_heel_jntCtrl_translateX.o" "Robot_RigRN.phl[53]";
connectAttr "l_heel_jntCtrl_translateY.o" "Robot_RigRN.phl[54]";
connectAttr "l_heel_jntCtrl_translateZ.o" "Robot_RigRN.phl[55]";
connectAttr "l_heel_jntCtrl_rotateX.o" "Robot_RigRN.phl[56]";
connectAttr "l_heel_jntCtrl_rotateY.o" "Robot_RigRN.phl[57]";
connectAttr "l_heel_jntCtrl_rotateZ.o" "Robot_RigRN.phl[58]";
connectAttr "l_heel_jntCtrl_visibility.o" "Robot_RigRN.phl[59]";
connectAttr "l_heel_jntCtrl_scaleX.o" "Robot_RigRN.phl[60]";
connectAttr "l_heel_jntCtrl_scaleY.o" "Robot_RigRN.phl[61]";
connectAttr "l_heel_jntCtrl_scaleZ.o" "Robot_RigRN.phl[62]";
connectAttr "l_foot_jntCtrl_translateX.o" "Robot_RigRN.phl[63]";
connectAttr "l_foot_jntCtrl_translateY.o" "Robot_RigRN.phl[64]";
connectAttr "l_foot_jntCtrl_translateZ.o" "Robot_RigRN.phl[65]";
connectAttr "l_foot_jntCtrl_rotateX.o" "Robot_RigRN.phl[66]";
connectAttr "l_foot_jntCtrl_rotateY.o" "Robot_RigRN.phl[67]";
connectAttr "l_foot_jntCtrl_rotateZ.o" "Robot_RigRN.phl[68]";
connectAttr "l_foot_jntCtrl_visibility.o" "Robot_RigRN.phl[69]";
connectAttr "l_foot_jntCtrl_scaleX.o" "Robot_RigRN.phl[70]";
connectAttr "l_foot_jntCtrl_scaleY.o" "Robot_RigRN.phl[71]";
connectAttr "l_foot_jntCtrl_scaleZ.o" "Robot_RigRN.phl[72]";
connectAttr "Hip_ctrl_translateX.o" "Robot_RigRN.phl[73]";
connectAttr "Hip_ctrl_translateY.o" "Robot_RigRN.phl[74]";
connectAttr "Hip_ctrl_translateZ.o" "Robot_RigRN.phl[75]";
connectAttr "Hip_ctrl_rotateX.o" "Robot_RigRN.phl[76]";
connectAttr "Hip_ctrl_rotateY.o" "Robot_RigRN.phl[77]";
connectAttr "Hip_ctrl_rotateZ.o" "Robot_RigRN.phl[78]";
connectAttr "Hip_ctrl_scaleX.o" "Robot_RigRN.phl[79]";
connectAttr "Hip_ctrl_scaleY.o" "Robot_RigRN.phl[80]";
connectAttr "Hip_ctrl_scaleZ.o" "Robot_RigRN.phl[81]";
connectAttr "Hip_ctrl_visibility.o" "Robot_RigRN.phl[82]";
connectAttr "SpineA_ctrl_rotateX.o" "Robot_RigRN.phl[83]";
connectAttr "SpineA_ctrl_rotateY.o" "Robot_RigRN.phl[84]";
connectAttr "SpineA_ctrl_rotateZ.o" "Robot_RigRN.phl[85]";
connectAttr "SpineA_ctrl_translateX.o" "Robot_RigRN.phl[86]";
connectAttr "SpineA_ctrl_translateY.o" "Robot_RigRN.phl[87]";
connectAttr "SpineA_ctrl_translateZ.o" "Robot_RigRN.phl[88]";
connectAttr "SpineA_ctrl_visibility.o" "Robot_RigRN.phl[89]";
connectAttr "SpineA_ctrl_scaleX.o" "Robot_RigRN.phl[90]";
connectAttr "SpineA_ctrl_scaleY.o" "Robot_RigRN.phl[91]";
connectAttr "SpineA_ctrl_scaleZ.o" "Robot_RigRN.phl[92]";
connectAttr "SpineB_ctrl_rotateX.o" "Robot_RigRN.phl[93]";
connectAttr "SpineB_ctrl_rotateY.o" "Robot_RigRN.phl[94]";
connectAttr "SpineB_ctrl_rotateZ.o" "Robot_RigRN.phl[95]";
connectAttr "SpineB_ctrl_translateX.o" "Robot_RigRN.phl[96]";
connectAttr "SpineB_ctrl_translateY.o" "Robot_RigRN.phl[97]";
connectAttr "SpineB_ctrl_translateZ.o" "Robot_RigRN.phl[98]";
connectAttr "SpineB_ctrl_visibility.o" "Robot_RigRN.phl[99]";
connectAttr "SpineB_ctrl_scaleX.o" "Robot_RigRN.phl[100]";
connectAttr "SpineB_ctrl_scaleY.o" "Robot_RigRN.phl[101]";
connectAttr "SpineB_ctrl_scaleZ.o" "Robot_RigRN.phl[102]";
connectAttr "Neck_ctrl_rotateX.o" "Robot_RigRN.phl[103]";
connectAttr "Neck_ctrl_rotateY.o" "Robot_RigRN.phl[104]";
connectAttr "Neck_ctrl_rotateZ.o" "Robot_RigRN.phl[105]";
connectAttr "Neck_ctrl_translateX.o" "Robot_RigRN.phl[106]";
connectAttr "Neck_ctrl_translateY.o" "Robot_RigRN.phl[107]";
connectAttr "Neck_ctrl_translateZ.o" "Robot_RigRN.phl[108]";
connectAttr "Neck_ctrl_visibility.o" "Robot_RigRN.phl[109]";
connectAttr "Neck_ctrl_scaleX.o" "Robot_RigRN.phl[110]";
connectAttr "Neck_ctrl_scaleY.o" "Robot_RigRN.phl[111]";
connectAttr "Neck_ctrl_scaleZ.o" "Robot_RigRN.phl[112]";
connectAttr "antenna_0Ctrl_translateX.o" "Robot_RigRN.phl[113]";
connectAttr "antenna_0Ctrl_translateY.o" "Robot_RigRN.phl[114]";
connectAttr "antenna_0Ctrl_translateZ.o" "Robot_RigRN.phl[115]";
connectAttr "antenna_0Ctrl_rotateX.o" "Robot_RigRN.phl[116]";
connectAttr "antenna_0Ctrl_rotateY.o" "Robot_RigRN.phl[117]";
connectAttr "antenna_0Ctrl_rotateZ.o" "Robot_RigRN.phl[118]";
connectAttr "antenna_0Ctrl_visibility.o" "Robot_RigRN.phl[119]";
connectAttr "antenna_0Ctrl_scaleX.o" "Robot_RigRN.phl[120]";
connectAttr "antenna_0Ctrl_scaleY.o" "Robot_RigRN.phl[121]";
connectAttr "antenna_0Ctrl_scaleZ.o" "Robot_RigRN.phl[122]";
connectAttr "antenna_1Ctrl_translateX.o" "Robot_RigRN.phl[123]";
connectAttr "antenna_1Ctrl_translateY.o" "Robot_RigRN.phl[124]";
connectAttr "antenna_1Ctrl_translateZ.o" "Robot_RigRN.phl[125]";
connectAttr "antenna_1Ctrl_rotateX.o" "Robot_RigRN.phl[126]";
connectAttr "antenna_1Ctrl_rotateY.o" "Robot_RigRN.phl[127]";
connectAttr "antenna_1Ctrl_rotateZ.o" "Robot_RigRN.phl[128]";
connectAttr "antenna_1Ctrl_visibility.o" "Robot_RigRN.phl[129]";
connectAttr "antenna_1Ctrl_scaleX.o" "Robot_RigRN.phl[130]";
connectAttr "antenna_1Ctrl_scaleY.o" "Robot_RigRN.phl[131]";
connectAttr "antenna_1Ctrl_scaleZ.o" "Robot_RigRN.phl[132]";
connectAttr "antenna_2Ctrl_translateX.o" "Robot_RigRN.phl[133]";
connectAttr "antenna_2Ctrl_translateY.o" "Robot_RigRN.phl[134]";
connectAttr "antenna_2Ctrl_translateZ.o" "Robot_RigRN.phl[135]";
connectAttr "antenna_2Ctrl_rotateX.o" "Robot_RigRN.phl[136]";
connectAttr "antenna_2Ctrl_rotateY.o" "Robot_RigRN.phl[137]";
connectAttr "antenna_2Ctrl_rotateZ.o" "Robot_RigRN.phl[138]";
connectAttr "antenna_2Ctrl_visibility.o" "Robot_RigRN.phl[139]";
connectAttr "antenna_2Ctrl_scaleX.o" "Robot_RigRN.phl[140]";
connectAttr "antenna_2Ctrl_scaleY.o" "Robot_RigRN.phl[141]";
connectAttr "antenna_2Ctrl_scaleZ.o" "Robot_RigRN.phl[142]";
connectAttr "antenna_3Ctrl_translateX.o" "Robot_RigRN.phl[143]";
connectAttr "antenna_3Ctrl_translateY.o" "Robot_RigRN.phl[144]";
connectAttr "antenna_3Ctrl_translateZ.o" "Robot_RigRN.phl[145]";
connectAttr "antenna_3Ctrl_rotateX.o" "Robot_RigRN.phl[146]";
connectAttr "antenna_3Ctrl_rotateY.o" "Robot_RigRN.phl[147]";
connectAttr "antenna_3Ctrl_rotateZ.o" "Robot_RigRN.phl[148]";
connectAttr "antenna_3Ctrl_visibility.o" "Robot_RigRN.phl[149]";
connectAttr "antenna_3Ctrl_scaleX.o" "Robot_RigRN.phl[150]";
connectAttr "antenna_3Ctrl_scaleY.o" "Robot_RigRN.phl[151]";
connectAttr "antenna_3Ctrl_scaleZ.o" "Robot_RigRN.phl[152]";
connectAttr "antenna_4Ctrl_translateX.o" "Robot_RigRN.phl[153]";
connectAttr "antenna_4Ctrl_translateY.o" "Robot_RigRN.phl[154]";
connectAttr "antenna_4Ctrl_translateZ.o" "Robot_RigRN.phl[155]";
connectAttr "antenna_4Ctrl_rotateX.o" "Robot_RigRN.phl[156]";
connectAttr "antenna_4Ctrl_rotateY.o" "Robot_RigRN.phl[157]";
connectAttr "antenna_4Ctrl_rotateZ.o" "Robot_RigRN.phl[158]";
connectAttr "antenna_4Ctrl_visibility.o" "Robot_RigRN.phl[159]";
connectAttr "antenna_4Ctrl_scaleX.o" "Robot_RigRN.phl[160]";
connectAttr "antenna_4Ctrl_scaleY.o" "Robot_RigRN.phl[161]";
connectAttr "antenna_4Ctrl_scaleZ.o" "Robot_RigRN.phl[162]";
connectAttr "antenna_5Ctrl_translateX.o" "Robot_RigRN.phl[163]";
connectAttr "antenna_5Ctrl_translateY.o" "Robot_RigRN.phl[164]";
connectAttr "antenna_5Ctrl_translateZ.o" "Robot_RigRN.phl[165]";
connectAttr "antenna_5Ctrl_rotateX.o" "Robot_RigRN.phl[166]";
connectAttr "antenna_5Ctrl_rotateY.o" "Robot_RigRN.phl[167]";
connectAttr "antenna_5Ctrl_rotateZ.o" "Robot_RigRN.phl[168]";
connectAttr "antenna_5Ctrl_visibility.o" "Robot_RigRN.phl[169]";
connectAttr "antenna_5Ctrl_scaleX.o" "Robot_RigRN.phl[170]";
connectAttr "antenna_5Ctrl_scaleY.o" "Robot_RigRN.phl[171]";
connectAttr "antenna_5Ctrl_scaleZ.o" "Robot_RigRN.phl[172]";
connectAttr "c_flashlight_jntCtrl_translateX.o" "Robot_RigRN.phl[173]";
connectAttr "c_flashlight_jntCtrl_translateY.o" "Robot_RigRN.phl[174]";
connectAttr "c_flashlight_jntCtrl_translateZ.o" "Robot_RigRN.phl[175]";
connectAttr "c_flashlight_jntCtrl_rotateX.o" "Robot_RigRN.phl[176]";
connectAttr "c_flashlight_jntCtrl_rotateY.o" "Robot_RigRN.phl[177]";
connectAttr "c_flashlight_jntCtrl_rotateZ.o" "Robot_RigRN.phl[178]";
connectAttr "c_flashlight_jntCtrl_visibility.o" "Robot_RigRN.phl[179]";
connectAttr "c_flashlight_jntCtrl_scaleX.o" "Robot_RigRN.phl[180]";
connectAttr "c_flashlight_jntCtrl_scaleY.o" "Robot_RigRN.phl[181]";
connectAttr "c_flashlight_jntCtrl_scaleZ.o" "Robot_RigRN.phl[182]";
connectAttr "r_shoulderCtrl_translateX.o" "Robot_RigRN.phl[183]";
connectAttr "r_shoulderCtrl_translateY.o" "Robot_RigRN.phl[184]";
connectAttr "r_shoulderCtrl_translateZ.o" "Robot_RigRN.phl[185]";
connectAttr "r_shoulderCtrl_rotateX.o" "Robot_RigRN.phl[186]";
connectAttr "r_shoulderCtrl_rotateY.o" "Robot_RigRN.phl[187]";
connectAttr "r_shoulderCtrl_rotateZ.o" "Robot_RigRN.phl[188]";
connectAttr "r_shoulderCtrl_visibility.o" "Robot_RigRN.phl[189]";
connectAttr "r_shoulderCtrl_scaleX.o" "Robot_RigRN.phl[190]";
connectAttr "r_shoulderCtrl_scaleY.o" "Robot_RigRN.phl[191]";
connectAttr "r_shoulderCtrl_scaleZ.o" "Robot_RigRN.phl[192]";
connectAttr "r_elbowCtrl_translateX.o" "Robot_RigRN.phl[193]";
connectAttr "r_elbowCtrl_translateY.o" "Robot_RigRN.phl[194]";
connectAttr "r_elbowCtrl_translateZ.o" "Robot_RigRN.phl[195]";
connectAttr "r_elbowCtrl_rotateX.o" "Robot_RigRN.phl[196]";
connectAttr "r_elbowCtrl_rotateY.o" "Robot_RigRN.phl[197]";
connectAttr "r_elbowCtrl_rotateZ.o" "Robot_RigRN.phl[198]";
connectAttr "r_elbowCtrl_visibility.o" "Robot_RigRN.phl[199]";
connectAttr "r_elbowCtrl_scaleX.o" "Robot_RigRN.phl[200]";
connectAttr "r_elbowCtrl_scaleY.o" "Robot_RigRN.phl[201]";
connectAttr "r_elbowCtrl_scaleZ.o" "Robot_RigRN.phl[202]";
connectAttr "r_thumb_0Ctrl_translateX.o" "Robot_RigRN.phl[203]";
connectAttr "r_thumb_0Ctrl_translateY.o" "Robot_RigRN.phl[204]";
connectAttr "r_thumb_0Ctrl_translateZ.o" "Robot_RigRN.phl[205]";
connectAttr "r_thumb_0Ctrl_rotateX.o" "Robot_RigRN.phl[206]";
connectAttr "r_thumb_0Ctrl_rotateY.o" "Robot_RigRN.phl[207]";
connectAttr "r_thumb_0Ctrl_rotateZ.o" "Robot_RigRN.phl[208]";
connectAttr "r_thumb_0Ctrl_visibility.o" "Robot_RigRN.phl[209]";
connectAttr "r_thumb_0Ctrl_scaleX.o" "Robot_RigRN.phl[210]";
connectAttr "r_thumb_0Ctrl_scaleY.o" "Robot_RigRN.phl[211]";
connectAttr "r_thumb_0Ctrl_scaleZ.o" "Robot_RigRN.phl[212]";
connectAttr "r_thumb_1Ctrl_translateX.o" "Robot_RigRN.phl[213]";
connectAttr "r_thumb_1Ctrl_translateY.o" "Robot_RigRN.phl[214]";
connectAttr "r_thumb_1Ctrl_translateZ.o" "Robot_RigRN.phl[215]";
connectAttr "r_thumb_1Ctrl_rotateX.o" "Robot_RigRN.phl[216]";
connectAttr "r_thumb_1Ctrl_rotateY.o" "Robot_RigRN.phl[217]";
connectAttr "r_thumb_1Ctrl_rotateZ.o" "Robot_RigRN.phl[218]";
connectAttr "r_thumb_1Ctrl_visibility.o" "Robot_RigRN.phl[219]";
connectAttr "r_thumb_1Ctrl_scaleX.o" "Robot_RigRN.phl[220]";
connectAttr "r_thumb_1Ctrl_scaleY.o" "Robot_RigRN.phl[221]";
connectAttr "r_thumb_1Ctrl_scaleZ.o" "Robot_RigRN.phl[222]";
connectAttr "r_index_0Ctrl_translateX.o" "Robot_RigRN.phl[223]";
connectAttr "r_index_0Ctrl_translateY.o" "Robot_RigRN.phl[224]";
connectAttr "r_index_0Ctrl_translateZ.o" "Robot_RigRN.phl[225]";
connectAttr "r_index_0Ctrl_rotateX.o" "Robot_RigRN.phl[226]";
connectAttr "r_index_0Ctrl_rotateY.o" "Robot_RigRN.phl[227]";
connectAttr "r_index_0Ctrl_rotateZ.o" "Robot_RigRN.phl[228]";
connectAttr "r_index_0Ctrl_visibility.o" "Robot_RigRN.phl[229]";
connectAttr "r_index_0Ctrl_scaleX.o" "Robot_RigRN.phl[230]";
connectAttr "r_index_0Ctrl_scaleY.o" "Robot_RigRN.phl[231]";
connectAttr "r_index_0Ctrl_scaleZ.o" "Robot_RigRN.phl[232]";
connectAttr "r_index_1Ctrl_translateX.o" "Robot_RigRN.phl[233]";
connectAttr "r_index_1Ctrl_translateY.o" "Robot_RigRN.phl[234]";
connectAttr "r_index_1Ctrl_translateZ.o" "Robot_RigRN.phl[235]";
connectAttr "r_index_1Ctrl_rotateX.o" "Robot_RigRN.phl[236]";
connectAttr "r_index_1Ctrl_rotateY.o" "Robot_RigRN.phl[237]";
connectAttr "r_index_1Ctrl_rotateZ.o" "Robot_RigRN.phl[238]";
connectAttr "r_index_1Ctrl_visibility.o" "Robot_RigRN.phl[239]";
connectAttr "r_index_1Ctrl_scaleX.o" "Robot_RigRN.phl[240]";
connectAttr "r_index_1Ctrl_scaleY.o" "Robot_RigRN.phl[241]";
connectAttr "r_index_1Ctrl_scaleZ.o" "Robot_RigRN.phl[242]";
connectAttr "r_index_2Ctrl_translateX.o" "Robot_RigRN.phl[243]";
connectAttr "r_index_2Ctrl_translateY.o" "Robot_RigRN.phl[244]";
connectAttr "r_index_2Ctrl_translateZ.o" "Robot_RigRN.phl[245]";
connectAttr "r_index_2Ctrl_rotateX.o" "Robot_RigRN.phl[246]";
connectAttr "r_index_2Ctrl_rotateY.o" "Robot_RigRN.phl[247]";
connectAttr "r_index_2Ctrl_rotateZ.o" "Robot_RigRN.phl[248]";
connectAttr "r_index_2Ctrl_visibility.o" "Robot_RigRN.phl[249]";
connectAttr "r_index_2Ctrl_scaleX.o" "Robot_RigRN.phl[250]";
connectAttr "r_index_2Ctrl_scaleY.o" "Robot_RigRN.phl[251]";
connectAttr "r_index_2Ctrl_scaleZ.o" "Robot_RigRN.phl[252]";
connectAttr "r_pinky_0Ctrl_translateX.o" "Robot_RigRN.phl[253]";
connectAttr "r_pinky_0Ctrl_translateY.o" "Robot_RigRN.phl[254]";
connectAttr "r_pinky_0Ctrl_translateZ.o" "Robot_RigRN.phl[255]";
connectAttr "r_pinky_0Ctrl_rotateX.o" "Robot_RigRN.phl[256]";
connectAttr "r_pinky_0Ctrl_rotateY.o" "Robot_RigRN.phl[257]";
connectAttr "r_pinky_0Ctrl_rotateZ.o" "Robot_RigRN.phl[258]";
connectAttr "r_pinky_0Ctrl_visibility.o" "Robot_RigRN.phl[259]";
connectAttr "r_pinky_0Ctrl_scaleX.o" "Robot_RigRN.phl[260]";
connectAttr "r_pinky_0Ctrl_scaleY.o" "Robot_RigRN.phl[261]";
connectAttr "r_pinky_0Ctrl_scaleZ.o" "Robot_RigRN.phl[262]";
connectAttr "r_pinky_1Ctrl_translateX.o" "Robot_RigRN.phl[263]";
connectAttr "r_pinky_1Ctrl_translateY.o" "Robot_RigRN.phl[264]";
connectAttr "r_pinky_1Ctrl_translateZ.o" "Robot_RigRN.phl[265]";
connectAttr "r_pinky_1Ctrl_rotateX.o" "Robot_RigRN.phl[266]";
connectAttr "r_pinky_1Ctrl_rotateY.o" "Robot_RigRN.phl[267]";
connectAttr "r_pinky_1Ctrl_rotateZ.o" "Robot_RigRN.phl[268]";
connectAttr "r_pinky_1Ctrl_visibility.o" "Robot_RigRN.phl[269]";
connectAttr "r_pinky_1Ctrl_scaleX.o" "Robot_RigRN.phl[270]";
connectAttr "r_pinky_1Ctrl_scaleY.o" "Robot_RigRN.phl[271]";
connectAttr "r_pinky_1Ctrl_scaleZ.o" "Robot_RigRN.phl[272]";
connectAttr "r_pinky_2Ctrl_translateX.o" "Robot_RigRN.phl[273]";
connectAttr "r_pinky_2Ctrl_translateY.o" "Robot_RigRN.phl[274]";
connectAttr "r_pinky_2Ctrl_translateZ.o" "Robot_RigRN.phl[275]";
connectAttr "r_pinky_2Ctrl_rotateX.o" "Robot_RigRN.phl[276]";
connectAttr "r_pinky_2Ctrl_rotateY.o" "Robot_RigRN.phl[277]";
connectAttr "r_pinky_2Ctrl_rotateZ.o" "Robot_RigRN.phl[278]";
connectAttr "r_pinky_2Ctrl_visibility.o" "Robot_RigRN.phl[279]";
connectAttr "r_pinky_2Ctrl_scaleX.o" "Robot_RigRN.phl[280]";
connectAttr "r_pinky_2Ctrl_scaleY.o" "Robot_RigRN.phl[281]";
connectAttr "r_pinky_2Ctrl_scaleZ.o" "Robot_RigRN.phl[282]";
connectAttr "l_shoulderCtrl_translateX.o" "Robot_RigRN.phl[283]";
connectAttr "l_shoulderCtrl_translateY.o" "Robot_RigRN.phl[284]";
connectAttr "l_shoulderCtrl_translateZ.o" "Robot_RigRN.phl[285]";
connectAttr "l_shoulderCtrl_rotateX.o" "Robot_RigRN.phl[286]";
connectAttr "l_shoulderCtrl_rotateY.o" "Robot_RigRN.phl[287]";
connectAttr "l_shoulderCtrl_rotateZ.o" "Robot_RigRN.phl[288]";
connectAttr "l_shoulderCtrl_visibility.o" "Robot_RigRN.phl[289]";
connectAttr "l_shoulderCtrl_scaleX.o" "Robot_RigRN.phl[290]";
connectAttr "l_shoulderCtrl_scaleY.o" "Robot_RigRN.phl[291]";
connectAttr "l_shoulderCtrl_scaleZ.o" "Robot_RigRN.phl[292]";
connectAttr "l_elbowCtrl_translateX.o" "Robot_RigRN.phl[293]";
connectAttr "l_elbowCtrl_translateY.o" "Robot_RigRN.phl[294]";
connectAttr "l_elbowCtrl_translateZ.o" "Robot_RigRN.phl[295]";
connectAttr "l_elbowCtrl_rotateX.o" "Robot_RigRN.phl[296]";
connectAttr "l_elbowCtrl_rotateY.o" "Robot_RigRN.phl[297]";
connectAttr "l_elbowCtrl_rotateZ.o" "Robot_RigRN.phl[298]";
connectAttr "l_elbowCtrl_visibility.o" "Robot_RigRN.phl[299]";
connectAttr "l_elbowCtrl_scaleX.o" "Robot_RigRN.phl[300]";
connectAttr "l_elbowCtrl_scaleY.o" "Robot_RigRN.phl[301]";
connectAttr "l_elbowCtrl_scaleZ.o" "Robot_RigRN.phl[302]";
connectAttr "l_pinky_0Ctrl_translateX.o" "Robot_RigRN.phl[303]";
connectAttr "l_pinky_0Ctrl_translateY.o" "Robot_RigRN.phl[304]";
connectAttr "l_pinky_0Ctrl_translateZ.o" "Robot_RigRN.phl[305]";
connectAttr "l_pinky_0Ctrl_rotateX.o" "Robot_RigRN.phl[306]";
connectAttr "l_pinky_0Ctrl_rotateY.o" "Robot_RigRN.phl[307]";
connectAttr "l_pinky_0Ctrl_rotateZ.o" "Robot_RigRN.phl[308]";
connectAttr "l_pinky_0Ctrl_visibility.o" "Robot_RigRN.phl[309]";
connectAttr "l_pinky_0Ctrl_scaleX.o" "Robot_RigRN.phl[310]";
connectAttr "l_pinky_0Ctrl_scaleY.o" "Robot_RigRN.phl[311]";
connectAttr "l_pinky_0Ctrl_scaleZ.o" "Robot_RigRN.phl[312]";
connectAttr "l_pinky_1Ctrl_translateX.o" "Robot_RigRN.phl[313]";
connectAttr "l_pinky_1Ctrl_translateY.o" "Robot_RigRN.phl[314]";
connectAttr "l_pinky_1Ctrl_translateZ.o" "Robot_RigRN.phl[315]";
connectAttr "l_pinky_1Ctrl_rotateX.o" "Robot_RigRN.phl[316]";
connectAttr "l_pinky_1Ctrl_rotateY.o" "Robot_RigRN.phl[317]";
connectAttr "l_pinky_1Ctrl_rotateZ.o" "Robot_RigRN.phl[318]";
connectAttr "l_pinky_1Ctrl_visibility.o" "Robot_RigRN.phl[319]";
connectAttr "l_pinky_1Ctrl_scaleX.o" "Robot_RigRN.phl[320]";
connectAttr "l_pinky_1Ctrl_scaleY.o" "Robot_RigRN.phl[321]";
connectAttr "l_pinky_1Ctrl_scaleZ.o" "Robot_RigRN.phl[322]";
connectAttr "l_pinky_2Ctrl_translateX.o" "Robot_RigRN.phl[323]";
connectAttr "l_pinky_2Ctrl_translateY.o" "Robot_RigRN.phl[324]";
connectAttr "l_pinky_2Ctrl_translateZ.o" "Robot_RigRN.phl[325]";
connectAttr "l_pinky_2Ctrl_rotateX.o" "Robot_RigRN.phl[326]";
connectAttr "l_pinky_2Ctrl_rotateY.o" "Robot_RigRN.phl[327]";
connectAttr "l_pinky_2Ctrl_rotateZ.o" "Robot_RigRN.phl[328]";
connectAttr "l_pinky_2Ctrl_visibility.o" "Robot_RigRN.phl[329]";
connectAttr "l_pinky_2Ctrl_scaleX.o" "Robot_RigRN.phl[330]";
connectAttr "l_pinky_2Ctrl_scaleY.o" "Robot_RigRN.phl[331]";
connectAttr "l_pinky_2Ctrl_scaleZ.o" "Robot_RigRN.phl[332]";
connectAttr "l_index_0Ctrl_translateX.o" "Robot_RigRN.phl[333]";
connectAttr "l_index_0Ctrl_translateY.o" "Robot_RigRN.phl[334]";
connectAttr "l_index_0Ctrl_translateZ.o" "Robot_RigRN.phl[335]";
connectAttr "l_index_0Ctrl_rotateX.o" "Robot_RigRN.phl[336]";
connectAttr "l_index_0Ctrl_rotateY.o" "Robot_RigRN.phl[337]";
connectAttr "l_index_0Ctrl_rotateZ.o" "Robot_RigRN.phl[338]";
connectAttr "l_index_0Ctrl_visibility.o" "Robot_RigRN.phl[339]";
connectAttr "l_index_0Ctrl_scaleX.o" "Robot_RigRN.phl[340]";
connectAttr "l_index_0Ctrl_scaleY.o" "Robot_RigRN.phl[341]";
connectAttr "l_index_0Ctrl_scaleZ.o" "Robot_RigRN.phl[342]";
connectAttr "l_index_1Ctrl_translateX.o" "Robot_RigRN.phl[343]";
connectAttr "l_index_1Ctrl_translateY.o" "Robot_RigRN.phl[344]";
connectAttr "l_index_1Ctrl_translateZ.o" "Robot_RigRN.phl[345]";
connectAttr "l_index_1Ctrl_rotateX.o" "Robot_RigRN.phl[346]";
connectAttr "l_index_1Ctrl_rotateY.o" "Robot_RigRN.phl[347]";
connectAttr "l_index_1Ctrl_rotateZ.o" "Robot_RigRN.phl[348]";
connectAttr "l_index_1Ctrl_visibility.o" "Robot_RigRN.phl[349]";
connectAttr "l_index_1Ctrl_scaleX.o" "Robot_RigRN.phl[350]";
connectAttr "l_index_1Ctrl_scaleY.o" "Robot_RigRN.phl[351]";
connectAttr "l_index_1Ctrl_scaleZ.o" "Robot_RigRN.phl[352]";
connectAttr "l_index_2Ctrl_translateX.o" "Robot_RigRN.phl[353]";
connectAttr "l_index_2Ctrl_translateY.o" "Robot_RigRN.phl[354]";
connectAttr "l_index_2Ctrl_translateZ.o" "Robot_RigRN.phl[355]";
connectAttr "l_index_2Ctrl_rotateX.o" "Robot_RigRN.phl[356]";
connectAttr "l_index_2Ctrl_rotateY.o" "Robot_RigRN.phl[357]";
connectAttr "l_index_2Ctrl_rotateZ.o" "Robot_RigRN.phl[358]";
connectAttr "l_index_2Ctrl_visibility.o" "Robot_RigRN.phl[359]";
connectAttr "l_index_2Ctrl_scaleX.o" "Robot_RigRN.phl[360]";
connectAttr "l_index_2Ctrl_scaleY.o" "Robot_RigRN.phl[361]";
connectAttr "l_index_2Ctrl_scaleZ.o" "Robot_RigRN.phl[362]";
connectAttr "l_thumb_0Ctrl_translateX.o" "Robot_RigRN.phl[363]";
connectAttr "l_thumb_0Ctrl_translateY.o" "Robot_RigRN.phl[364]";
connectAttr "l_thumb_0Ctrl_translateZ.o" "Robot_RigRN.phl[365]";
connectAttr "l_thumb_0Ctrl_rotateX.o" "Robot_RigRN.phl[366]";
connectAttr "l_thumb_0Ctrl_rotateY.o" "Robot_RigRN.phl[367]";
connectAttr "l_thumb_0Ctrl_rotateZ.o" "Robot_RigRN.phl[368]";
connectAttr "l_thumb_0Ctrl_visibility.o" "Robot_RigRN.phl[369]";
connectAttr "l_thumb_0Ctrl_scaleX.o" "Robot_RigRN.phl[370]";
connectAttr "l_thumb_0Ctrl_scaleY.o" "Robot_RigRN.phl[371]";
connectAttr "l_thumb_0Ctrl_scaleZ.o" "Robot_RigRN.phl[372]";
connectAttr "l_thumb_1Ctrl_translateX.o" "Robot_RigRN.phl[373]";
connectAttr "l_thumb_1Ctrl_translateY.o" "Robot_RigRN.phl[374]";
connectAttr "l_thumb_1Ctrl_translateZ.o" "Robot_RigRN.phl[375]";
connectAttr "l_thumb_1Ctrl_rotateX.o" "Robot_RigRN.phl[376]";
connectAttr "l_thumb_1Ctrl_rotateY.o" "Robot_RigRN.phl[377]";
connectAttr "l_thumb_1Ctrl_rotateZ.o" "Robot_RigRN.phl[378]";
connectAttr "l_thumb_1Ctrl_visibility.o" "Robot_RigRN.phl[379]";
connectAttr "l_thumb_1Ctrl_scaleX.o" "Robot_RigRN.phl[380]";
connectAttr "l_thumb_1Ctrl_scaleY.o" "Robot_RigRN.phl[381]";
connectAttr "l_thumb_1Ctrl_scaleZ.o" "Robot_RigRN.phl[382]";
connectAttr "Robot_RigRN.phl[383]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file1.ocr" "Robot_RigRN.phl[384]";
connectAttr "Robot_RigRN.phl[385]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Robot_RigRN.phl[386]" "polyTweakUV1.ip";
connectAttr "Shotcam_visibility.o" "Shotcam.v";
connectAttr "Shotcam_translateX.o" "Shotcam.tx";
connectAttr "Shotcam_translateY.o" "Shotcam.ty";
connectAttr "Shotcam_translateZ.o" "Shotcam.tz";
connectAttr "Shotcam_rotateX.o" "Shotcam.rx";
connectAttr "Shotcam_rotateY.o" "Shotcam.ry";
connectAttr "Shotcam_rotateZ.o" "Shotcam.rz";
connectAttr "Shotcam_scaleX.o" "Shotcam.sx";
connectAttr "Shotcam_scaleY.o" "Shotcam.sy";
connectAttr "Shotcam_scaleZ.o" "Shotcam.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of RobotAnim_Finsih.ma
