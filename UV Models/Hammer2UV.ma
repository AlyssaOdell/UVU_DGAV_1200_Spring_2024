//Maya ASCII 2024 scene
//Name: Hammer2UV.ma
//Last modified: Wed, Feb 07, 2024 09:58:23 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "4F69B014-4FAC-6566-9A19-AE807800EB6C";
createNode transform -s -n "persp";
	rename -uid "EE21EE54-49A6-4E0A-ECDC-55AF79682CC6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.486438082548183 19.337377848996244 -9.919890769477604 ;
	setAttr ".r" -type "double3" 150.46609303449364 -55.40044927533048 180 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-15 -8.8817841970012523e-16 0 ;
	setAttr ".rpt" -type "double3" 2.753227478860075e-14 3.720452114320702e-15 -3.7931601655392978e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "69F4EF3F-4ECD-D2D0-11D0-96861BD42BA7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 22.999576879232368;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.014479100704189563 8 1.4431619644164968 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1EE0915A-4C37-A2BC-1C71-8BB331766878";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "00CDA18A-4562-61E7-E06E-548AA1D1D8AD";
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
	rename -uid "1B33BAB3-4809-E694-520D-CFA9AE4D1FA4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.2206680938552382e-13 8 1001.5431619644165 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "24E2BCD1-4760-E502-ADE5-2B928F3807C0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 27.439351036616387;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -2.2206680938552382e-13 8 1.4431619644165039 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C67CB9AF-4757-D981-6477-B4B8DDAB9916";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "762C0CA9-42CE-1977-CB5E-CA89CA4D5579";
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
createNode transform -n "Hammer2";
	rename -uid "4C452AB4-4372-F850-3E79-DBB312DB4F85";
createNode transform -n "Top" -p "Hammer2";
	rename -uid "8C683ACE-42E1-2060-93ED-F0B2AC1D5D17";
createNode transform -n "Hammer" -p "Top";
	rename -uid "0E15A059-4BFA-EAD8-FC8A-2EB15D5E44F6";
	setAttr ".rp" -type "double3" 0 15 -3.5 ;
	setAttr ".sp" -type "double3" 0 15 -3.5 ;
createNode mesh -n "HammerShape" -p "Hammer";
	rename -uid "B65B4CE6-4823-96DD-E823-79A693BC97CA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.18782021105289459 0.91650259494781494 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Center" -p "Top";
	rename -uid "6C1F54C7-4902-9FC5-6FB2-5AABC47F4749";
	setAttr ".rp" -type "double3" 0 15 0 ;
	setAttr ".sp" -type "double3" 0 15 0 ;
createNode mesh -n "CenterShape" -p "Center";
	rename -uid "A5936EBB-4FFF-610B-881B-27BBF0FD229D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -1.3691987693177303 4.9054560675678474 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Spikes" -p "Top";
	rename -uid "321F7D66-416F-32B5-1A16-19A39A1CB61A";
createNode transform -n "Spike1" -p "Spikes";
	rename -uid "B2DE3A3F-4BBC-C780-19FE-C8830EAB4318";
	setAttr ".rp" -type "double3" -0.6 15 5.5 ;
	setAttr ".sp" -type "double3" -0.6 15 5.5 ;
createNode mesh -n "SpikeShape1" -p "Spike1";
	rename -uid "6985D51D-4054-0B7A-2772-2CB63AE55593";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.074039803514897251 0.36869725584983826 ;
	setAttr -s 3 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "ASET";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "ASET";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[1]" -type "float3" 0.0027382337 0.028253123 -0.015286119 ;
	setAttr ".pt[4]" -type "float3" 0.0027382337 0.028253123 -0.015286119 ;
	setAttr ".pt[13]" -type "float3" 0.0027382337 0.028253123 -0.015286119 ;
createNode mesh -n "polySurfaceShape1" -p "Spike1";
	rename -uid "E4358418-4F32-5933-0379-A09F0265178C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0.5 0 -0.5 0.5 0 0.5 
		-0.5 0 -0.5 -0.5 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Spike2" -p "Spikes";
	rename -uid "49552FDE-418C-5D28-85AB-8D995B6913D1";
	setAttr ".rp" -type "double3" 0.5 15 5.5 ;
	setAttr ".sp" -type "double3" 0.5 15 5.5 ;
createNode mesh -n "SpikeShape2" -p "Spike2";
	rename -uid "A3E87DB2-4957-FE7D-3363-F4BE1CC42CFD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.060538375895436647 0.69830551743507385 ;
	setAttr -s 12 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uvSet";
	setAttr ".uvst[2].uvsn" -type "string" "UVset2";
	setAttr ".uvst[3].uvsn" -type "string" "UVset21";
	setAttr ".uvst[4].uvsn" -type "string" "UVset22";
	setAttr ".uvst[5].uvsn" -type "string" "UVset23";
	setAttr ".uvst[6].uvsn" -type "string" "UVset24";
	setAttr ".uvst[7].uvsn" -type "string" "UVset25";
	setAttr ".uvst[8].uvsn" -type "string" "UVset26";
	setAttr ".uvst[9].uvsn" -type "string" "UVset27";
	setAttr ".uvst[10].uvsn" -type "string" "AUVSET";
	setAttr ".uvst[11].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "UVset22";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[2]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[4]" -type "float3" 0 1.8626451e-09 -2.3283064e-10 ;
	setAttr ".pt[5]" -type "float3" 0 0 5.8207661e-11 ;
	setAttr ".pt[6]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[7]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[12]" -type "float3" 0 -1.8626451e-09 2.3283064e-10 ;
	setAttr ".pt[13]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape1" -p "Spike2";
	rename -uid "49BFC915-474D-E326-7A92-2197121D6CB8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0.5 0 -0.5 0.5 0 0.5 
		-0.5 0 -0.5 -0.5 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode mesh -n "polySurfaceShape2" -p "Spike2";
	rename -uid "391C6047-4F99-FE11-B948-4FB8F6F474E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.5 0.125 0.375 0.5
		 0.625 0.5 0.375 0.75 0.625 0.75 0.5 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  0 0 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5;
	setAttr -s 8 ".ed[0:7]"  1 2 0 3 4 0 0 1 0 0 2 0 1 3 0 2 4 0 3 0 0
		 4 0 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 3 3 -1 -3
		mu 0 3 0 2 1
		f 4 0 5 -2 -5
		mu 0 4 1 2 4 3
		f 3 1 7 -7
		mu 0 3 3 4 5
		f 3 -8 -6 -4
		mu 0 3 0 6 7
		f 3 6 2 4
		mu 0 3 8 0 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "Handle__Shaft" -p "Hammer2";
	rename -uid "C8465140-43EA-48CF-264B-E1BA5F917589";
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
createNode mesh -n "Handle__ShaftShape" -p "Handle__Shaft";
	rename -uid "2EF197CD-4BE2-A642-44A7-55B92BDA093E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68130433559417725 0.92526747483805005 ;
	setAttr -s 5 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "ASET1";
	setAttr ".uvst[2].uvsn" -type "string" "AUVSET";
	setAttr ".uvst[3].uvsn" -type "string" "SET4REAL";
	setAttr ".uvst[4].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "ASET1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "483AAEB5-4784-991D-180B-519C08481411";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "691D5201-4117-5F9F-19DE-21BB855AA41C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D50C742B-4161-09D2-DC2A-95A9106292E2";
createNode displayLayerManager -n "layerManager";
	rename -uid "1528602B-41E7-424B-3EAD-F2A32862F7FC";
createNode displayLayer -n "defaultLayer";
	rename -uid "6A041E05-4F70-4144-822E-2FB01AF4B8A4";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "461A4D28-4BBF-EC7B-2421-8CBB6B222013";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BDC0F51F-4686-3135-15F0-2A97A1443BF5";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "C8CBB838-4FE6-DF5F-90C7-57816221641F";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "456721B2-47F8-A13D-17C6-C7BE90C9A909";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "E5562DBC-45B8-8254-417B-70BD6AC4035E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "546961C2-480E-10F8-6B34-9982DDCBBF8A";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "E922B5E0-4C6B-3E7F-51C2-C4A517C8CE1E";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "2EC136FE-4CA2-BAF1-45DC-E79EC6FBF87A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "FB296017-4EF9-CCA8-E23E-8684674FC7BA";
	setAttr ".ics" -type "componentList" 1 "f[201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2 0 ;
	setAttr ".rs" 57792;
	setAttr ".lt" -type "double3" 0 -7.7896283078493479e-23 3.9968028886505667e-15 ;
	setAttr ".ls" -type "double3" 1 1 6.0441790592130378 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39856332540512085 2 -0.39856332540512085 ;
	setAttr ".cbx" -type "double3" 0.39856332540512085 2 0.39856332540512085 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "58E4A30C-48E2-3E17-DAA1-0B914A1B4FE4";
	setAttr ".ics" -type "componentList" 1 "f[201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 3 0 0 0 0 1 0 0 3 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6 0 ;
	setAttr ".rs" 39720;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39856332540512085 6 -0.39856332540512085 ;
	setAttr ".cbx" -type "double3" 0.39856332540512085 6 0.39856332540512085 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "AF6B5CF6-4B88-1FFD-24D4-D29432BC89C7";
	setAttr ".ics" -type "componentList" 1 "f[201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 3 0 0 0 0 1 0 0 3 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6 0 ;
	setAttr ".rs" 43758;
	setAttr ".lt" -type "double3" 0 -2.1175823681357508e-22 8.0000000000000959 ;
	setAttr ".ls" -type "double3" 1 1 8.6881055217585672 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39856332540512085 6 -0.39856332540512085 ;
	setAttr ".cbx" -type "double3" 0.39856332540512085 6 0.39856332540512085 ;
createNode polyCube -n "polyCube1";
	rename -uid "1B771DC6-4B2E-B705-2AAD-A1A58F6B995C";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "75F17F6A-493B-C3A0-A955-2E9CB9DFF15A";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "A22B7962-4871-57F4-5313-A08B661C71BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0:1]" "e[4:5]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 15 -3.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "0B77F5D2-449C-197C-690A-9A921DBA68BF";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[6:9]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "6E865182-422D-CCB2-BA80-6D97E6BB1491";
	setAttr ".ics" -type "componentList" 1 "vtx[0:3]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 15 3.5 1;
	setAttr ".d" 1e-06;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "FDFB3D39-4269-98E3-8D2F-28B234C7FC14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2 0 0 0 0 1 0 -0.63017767429230909 15 3.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "C42A380D-4845-A027-D9F2-EB8A164ACCD3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2 0 0 0 0 1 0 1 15 3.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "90E36ABF-410E-8999-E3CE-989632D69BC6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 2 0 0 0 0 5 0 0 15 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "5643F2A2-423E-D4C1-6AEC-559DAC364E9F";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 3 0 0 0 0 1 0 0 3 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "D46D0546-47D6-83E5-9B5B-15A1647CD670";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2 0 0 0 0 6 0 -0.59999999999999998 15 5.5 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "9ACAF33A-460C-FAA1-BFF1-368B7D6604C8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2 0 0 0 0 6 0 0.5 15 5.5 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "3320E5AD-4680-ECAB-75EA-E382779CA203";
	setAttr ".txf" -type "matrix" 2 0 0 0 0 2 0 0 0 0 2 0 0 15 -3.5 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "FD835ABD-448A-30EF-3365-8880CDBF15F6";
	setAttr ".txf" -type "matrix" 2 0 0 0 0 2 0 0 0 0 5 0 0 15 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8725436D-4919-AA45-AA3B-5AA15D82B971";
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
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 776\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 664\n            -height 776\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 664\\n    -height 776\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 664\\n    -height 776\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A680E1C3-45EF-34CA-DAA1-BDB0F488B89D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "17F29AE4-4E65-30D8-7682-D8B9338DB3B4";
	setAttr ".uopa" yes;
	setAttr -s 382 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.65278047 0 -0.70234919 0.038821548
		 -0.70339274 0.036900848 -0.72595453 -0.020875752 -0.62694246 0.059172034 -0.62769538
		 0.057318747 -0.62890631 0.058654457 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.69809967
		 0.039687365 -0.69951838 0.03782168 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.69421875
		 0.040730059 -0.69563705 0.038860559 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.69033629
		 0.041765988 -0.69175482 0.039895982 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.68645883
		 0.042807728 -0.68787646 0.040933996 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.68257737
		 0.043852001 -0.6839968 0.041972458 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.67869973
		 0.044893026 -0.68011999 0.043013126 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.67481917
		 0.04594487 -0.67624319 0.044055581 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.67094487
		 0.046990782 -0.67237014 0.045101196 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.66707027
		 0.048038512 -0.6684972 0.046148509 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.66320014
		 0.049092203 -0.66463554 0.047195107 -0.65278053 2.9802322e-08 -0.65278047 0 -0.65278047
		 0 -0.65933919 0.050149173 -0.66077811 0.048248082 -0.65278053 5.9604645e-08 -0.65278047
		 8.9406967e-08 -0.65278047 0 -0.65548396 0.051200897 -0.65692288 0.049298733 -0.65278047
		 -2.9802322e-08 -0.65278041 8.9406967e-08 -0.65278047 0 -0.65163225 0.052257329 -0.65307218
		 0.050350726 -0.65278041 5.9604645e-08 -0.65278047 1.7881393e-07 -0.65278047 0 -0.64778495
		 0.053316563 -0.64922553 0.051408648 -0.65278047 -5.9604645e-08 -0.65278047 -2.9802322e-08
		 -0.65278047 0 -0.6439383 0.054372579 -0.64537841 0.052463919 -0.65278053 2.9802322e-08
		 -0.65278053 -2.9802322e-08 -0.65278047 0 -0.64009571 0.055431634 -0.64153552 0.053521007
		 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.6362555 0.056490421 -0.63769627 0.054584146
		 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.63241953 0.057554036 -0.63385797 0.055640012
		 -0.65278047 0 -0.65278047 0 -0.65278047 0 -0.63002151 0.056702703 -0.69927382 0 -0.6468699
		 0.00043344498 -0.64882541 -8.4221363e-05 -0.64807302 0.0017895699 -0.7214148 -0.017342567
		 -0.71908236 -0.016738892 -0.72015435 -0.018661022 -0.69927382 0 -0.71797645 -0.017974257
		 -0.71755934 -0.016212881 -0.71520656 -0.015684903 -0.7159723 -0.017627776 -0.69927382
		 0 -0.71409917 -0.016982198 -0.71367884 -0.015198708 -0.71132588 -0.014677107 -0.71209025
		 -0.016627848 -0.69927382 0 -0.7102164 -0.015984714 -0.70979762 -0.014195204 -0.70744467
		 -0.013679206 -0.70820826 -0.015630782 -0.69927382 0 -0.70632911 -0.014983177 -0.70591605
		 -0.013201237 -0.70356226 -0.012692094 -0.7043221 -0.014627755 -0.69927382 0 -0.70245105
		 -0.013994515 -0.70203269 -0.012220621 -0.69968247 -0.011705935 -0.70044601 -0.013638973
		 -0.69927382 0 -0.69857192 -0.012988567 -0.69815242 -0.011239767 -0.69580495 -0.010707021
		 -0.6965636 -0.012631655 -0.69927382 0 -0.69469357 -0.01199013 -0.69427633 -0.010238767
		 -0.69193006 -0.0097029805 -0.69268686 -0.011633396 -0.69927382 0 -0.69081765 -0.010986388
		 -0.69040227 -0.0092337132 -0.68805701 -0.0086969137 -0.68881345 -0.010630369 -0.69927382
		 0 -0.68694723 -0.0099818707 -0.68653101 -0.0082243085 -0.68418819 -0.0076858997 -0.68494499
		 -0.0096275806 -0.69927382 0 -0.68308973 -0.0089713335 -0.68266416 -0.0072130561 -0.68032563
		 -0.0066760182 -0.68108773 -0.0086117387 -0.69927382 0 -0.67923385 -0.0079742074 -0.67880541
		 -0.0062053204 -0.67647266 -0.005676806 -0.67723083 -0.0076220036 -0.69927382 0 -0.67538708
		 -0.0069849491 -0.67495489 -0.0052091479 -0.67262471 -0.0046771765 -0.67339182 -0.0066264868
		 -0.69927382 0 -0.67153472 -0.0059841871 -0.67110884 -0.0042051673 -0.66877902 -0.0036735535
		 -0.66953832 -0.0056302547 -0.69927382 0 -0.66768557 -0.0049976707 -0.66726345 -0.003203094
		 -0.66493148 -0.002682209 -0.66569066 -0.0046448112 -0.69927382 0 -0.66383779 -0.0040092468
		 -0.6634168 -0.0022114515 -0.66108674 -0.0016900301 -0.66184568 -0.0036556721 -0.69927382
		 0 -0.66000003 -0.0030212998 -0.65957355 -0.0012190342 -0.65724766 -0.00069510937
		 -0.6580137 -0.0026642084 -0.69927382 0 -0.65615976 -0.0020153522 -0.65573692 -0.0002207756
		 -0.65341473 0.00031489134 -0.65417719 -0.0016604066 -0.69927382 0 -0.65232199 -0.0010203123
		 -0.65190595 0.00078958273 -0.64958191 0.0013151765 -0.65033746 -0.00066751242 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.7010597 0.037514657 -0.69717407 0.038508058 -0.69329375
		 0.039547056 -0.68941391 0.040584266 -0.68553478 0.041622281 -0.68165684 0.042662054
		 -0.67778015 0.043703705 -0.67390549 0.044748008 -0.67003268 0.045794547 -0.66616619
		 0.046841055 -0.66230452 0.047888935 -0.65845072 0.048942924 -0.65459824 0.049994379
		 -0.65074849 0.051047772 -0.64690298 0.052106351 -0.64305842 0.053163052 -0.6392169
		 0.054220587 -0.63537902 0.055282801 -0.63154095 0.056339264 -0.6457569 0.0024055839
		 -0.65278047 0 -0.65278047 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0;
	setAttr ".uvtk[250:381]" -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.70747495 0.03909716 -0.70589662 0.038148761 -0.69668663 0.039496362
		 -0.70028603 0.039356083 -0.69252008 0.040625662 -0.69608718 0.040370286 -0.68863606
		 0.041665494 -0.69220781 0.041412562 -0.68475878 0.04270491 -0.68832827 0.042451411
		 -0.68087882 0.043743074 -0.68444943 0.043490261 -0.67700207 0.04478851 -0.6805706
		 0.04453513 -0.67312348 0.045830339 -0.6766929 0.045576662 -0.66925138 0.046884447
		 -0.67281651 0.046629637 -0.66537714 0.047931612 -0.66894233 0.047676206 -0.66151029
		 0.048988283 -0.66507149 0.048729509 -0.6576432 0.050041646 -0.66120356 0.049782008
		 -0.65378726 0.051102638 -0.65734535 0.050841063 -0.64993453 0.05215469 -0.6534906
		 0.051892966 -0.64609104 0.053214639 -0.64964116 0.052950442 -0.64223939 0.054273337
		 -0.64579463 0.054010272 -0.63839722 0.055332214 -0.64195037 0.055068672 -0.63455617
		 0.05639109 -0.63810867 0.056127578 -0.6307196 0.05745396 -0.63427067 0.057189882
		 -0.62687957 0.058511227 -0.63043147 0.058249235 -0.72580612 -0.019316852 -0.72221136
		 -0.019188702 -0.71661651 -0.017978609 -0.71244401 -0.017053366 -0.70855802 -0.016050935
		 -0.70467556 -0.01505506 -0.7007907 -0.014053106 -0.69691467 -0.01305908 -0.69303006
		 -0.01205802 -0.6891548 -0.011053383 -0.6852839 -0.010050356 -0.68141931 -0.0090450644
		 -0.67755955 -0.0080314875 -0.67370629 -0.007047832 -0.66986847 -0.0060454011 -0.66601849
		 -0.0050552487 -0.66217315 -0.0040697455 -0.65832949 -0.0030805469 -0.65449739 -0.0020852089
		 -0.6506651 -0.0010846257 -0.64682788 -9.3460083e-05 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382 0 -0.69927382
		 0 -0.69927382 0 -0.69927382 0 -0.69927382 0;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "E92E51D6-4406-BD2C-EA43-F7981B678CF8";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk[0:37]" -type "float2" -0.94449264 0 -0.9444927
		 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264
		 0 -0.94449264 0 -0.94449264 0 -0.9444927 0 -0.94449264 0 -0.94449264 0 -0.94449264
		 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264
		 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264
		 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449264 0 -0.94449258
		 0 -0.9444927 0 -0.9444927 0 -0.94449258 0 -0.94449264 0 -0.94449264 0 -0.94449264
		 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "0D1246CD-4982-D04F-FFBE-80BA96E30438";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 15 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 5 2 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "D75A4180-4D1C-E06E-94F2-DC8669A7B4AC";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -1.058053374 0 -1.058053374
		 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374
		 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374
		 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374
		 0 -1.058053374 0 -1.058053374 0 -1.058053374 0 -1.058053374 0;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "11A5742B-49C5-F923-AD60-C8ABEB161CFB";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk[0:28]" -type "float2" -0.91402513 0 -0.91402513
		 0 -0.91402519 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513
		 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513
		 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513
		 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513 0 -0.91402513
		 0 -0.91402513 0 -0.91402513 0 -0.91402513 0;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "DDF05815-46CC-4DBF-E333-4C9D4609530B";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk[0:28]" -type "float2" -0.99711835 0 -0.99711835
		 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835
		 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835
		 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99711835 0 -0.99988812
		 0 -0.99988812 0 -0.99988812 0 -0.96388108 0 -0.96388108 0 -0.96388108 0 -0.99711835
		 0 -0.99711835 0 -0.99711835 0 -0.99711835 0;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "334B2B23-45EE-F2D2-DD1D-27839A6C780A";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[2]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[5]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[7]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[9]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[10]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[11]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[12]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[13]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[14]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[15]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[16]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[17]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[18]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[19]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[20]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[21]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[22]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[24]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[26]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[28]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[30]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[32]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[34]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[38]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[45]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[46]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[49]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.93618333 0 ;
	setAttr ".uvtk[51]" -type "float2" -0.93618333 0 ;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "FE394032-425D-D32D-3FFB-5387712F38EA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 15 0 ;
	setAttr ".ps" -type "double2" 180 2 ;
	setAttr ".r" 5;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "B8814595-405C-CCBD-6EB8-A3B7EAE2A412";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" -0.042356938 0.085764691
		 -0.0050782263 -0.1167244 0.41990158 -0.17830087 0.49531749 0.018057443 -0.060342848
		 -0.10176289 -0.14036477 0.13617119 -0.14167297 -0.078447089 -0.07472223 -0.52647406
		 -0.022717655 -0.54045534 -0.19250256 -0.069276258 -0.6456272 -0.13718304 -0.18808156
		 -0.5002895 -0.14046702 -0.50888622 -0.0835675 -0.73450643 0.45496222 -0.80728078
		 0.4031893 -0.60525995 -0.133147 -0.70410007 -0.6182977 -0.57520235 0.43712902 -0.61211669
		 0.45817319 -0.19447999 -0.7374934 -0.80757558 -0.65560377 -0.78501087 -0.78443021
		 -0.21435988 -0.69828314 -0.15864916 -0.72293949 0.06406685 -1.50950646 -0.51647282
		 -1.73778653 -0.49811441 -0.7356661 -0.62555254 -0.66514635 -0.59480155 -0.86908376
		 0.00028520351;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "84BB0A1A-4E03-05A4-DB5A-199E4CA14E92";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "626B1D5F-4F5B-BDD5-55FA-76B67380B936";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2 2 2 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "DFEFDFFC-45BC-C0D1-451C-C7B06333F4EF";
	setAttr ".uopa" yes;
	setAttr -s 57 ".uvtk[0:56]" -type "float2" -0.25246036 0.26581442 -0.24991499
		 0.37431777 -0.32915011 0.34820187 -0.33448783 0.2681706 -0.21125604 0.31815851 -0.25627255
		 0.15725474 -0.21440689 0.20898573 -0.37025109 0.32620329 -0.39296708 0.27007353 -0.33405182
		 0.18839733 -0.37413326 0.21345858 -0.22031531 0.73396653 -0.24072026 0.79034281 -0.28118271
		 0.81414938 -0.27875364 0.73432404 -0.35949904 0.84323514 -0.36073029 0.73476672 -0.2821036
		 0.65445036 -0.24144962 0.67768157 -0.40001491 0.78974056 -0.40060693 0.68063557 -0.3606934
		 0.62630916 -0.15664098 0.18293115 -0.07840234 0.15356591 -0.076818675 0.26204124
		 -0.15879825 0.26274505 -0.037706047 0.20681694 -0.036764771 0.31592587 -0.076503098
		 0.37049964 -0.15517664 0.34263602 -0.21723887 0.26331356 -0.19704878 0.20690808 -0.19588906
		 0.31957391 0.72968459 0.63490683 0.77017474 0.65862834 0.79068726 0.71499044 0.73224974
		 0.71473837 0.76966071 0.77128804 0.72903556 0.79460394 0.65027374 0.7144264 0.65132868
		 0.60596102 0.65048689 0.8228845 0.61090261 0.65957761 0.61048543 0.76868147 0.49006584
		 0.067681164 0.46730763 0.1255137 0.40968913 0.14903447 0.40920079 0.068169504 0.35185659
		 0.1262764 0.32833558 0.068657726 0.40871245 -0.012695717 0.46654475 0.010062415 0.35109371
		 0.010825355 0.062594235 -0.83568376 0.062594235 -0.72671849 -0.046371061 -0.72671849
		 -0.046371061 -0.83568376;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "89A70DE1-4ED9-55E7-73B5-6AAC4975D648";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]" "f[140:159]" "f[201:261]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.9802322387695312e-08 9.9999923706054688 -1.7881393432617188e-07 ;
	setAttr ".ps" -type "double2" 180 7.9999847412109375 ;
	setAttr ".r" 1.7988275289535522;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "58EBF9BF-4B0B-A544-BC66-D3842804A36D";
	setAttr ".uopa" yes;
	setAttr -s 144 ".uvtk";
	setAttr ".uvtk[101]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[108]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[113]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[118]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[123]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[128]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[133]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[138]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[143]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[148]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[153]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[158]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[163]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[168]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[173]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[178]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[183]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[188]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[193]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[198]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[199]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[200]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[223]" -type "float2" -2.2505469 0.92093998 ;
	setAttr ".uvtk[224]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[225]" -type "float2" -2.2505469 0.92093998 ;
	setAttr ".uvtk[226]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[227]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[228]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[229]" -type "float2" -2.2505474 0.92093998 ;
	setAttr ".uvtk[230]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[231]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[232]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[233]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[234]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[235]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[236]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[237]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[238]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[239]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[240]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[241]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[242]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[243]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[244]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[245]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[246]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[247]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[248]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[249]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[250]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[251]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[252]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[253]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[254]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[255]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[256]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[257]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[258]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[259]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[260]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[322]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[323]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[324]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[325]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[326]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[327]" -type "float2" -2.2505469 0.92093992 ;
	setAttr ".uvtk[328]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[329]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[330]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[331]" -type "float2" -2.2505474 0.92093992 ;
	setAttr ".uvtk[332]" -type "float2" -2.2505469 0.92093992 ;
	setAttr ".uvtk[333]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[334]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[335]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[336]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[337]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[338]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[339]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[340]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[341]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[342]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[343]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[344]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[345]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[346]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[347]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[348]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[349]" -type "float2" -2.2505469 0.92093998 ;
	setAttr ".uvtk[350]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[351]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[352]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[353]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[354]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[355]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[356]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[357]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[358]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[359]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[360]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[361]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[362]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[363]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[364]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[365]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[366]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[367]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[368]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[369]" -type "float2" -2.2505469 0.92093998 ;
	setAttr ".uvtk[370]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[371]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[372]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[373]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[374]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[375]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[376]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[377]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[378]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[379]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[380]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[381]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[382]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[383]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[384]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[385]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[386]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[387]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[388]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[389]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[390]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[391]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[392]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[393]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[394]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[395]" -type "float2" -2.2505472 0.92094004 ;
	setAttr ".uvtk[396]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[397]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[398]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[399]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[400]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[401]" -type "float2" -2.2505472 0.92093992 ;
	setAttr ".uvtk[402]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[403]" -type "float2" -2.2505472 0.92093998 ;
	setAttr ".uvtk[404]" -type "float2" -2.2505472 0.92093998 ;
createNode polyCylProj -n "polyCylProj3";
	rename -uid "D5F55936-4C52-B2A4-61C9-8EBBF8248D73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 41 "f[1:3]" "f[5:6]" "f[8:9]" "f[11:12]" "f[14:15]" "f[17:18]" "f[20:21]" "f[23:24]" "f[26:27]" "f[29:30]" "f[32:33]" "f[35:36]" "f[38:39]" "f[41:42]" "f[44:45]" "f[47:48]" "f[50:51]" "f[53:54]" "f[56:57]" "f[59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]" "f[100:119]" "f[160:199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5.9604644775390625e-08 3 -1.7881393432617188e-07 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".r" 1.9800444841384888;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "D2008C15-437C-202F-8EDA-2D93E722BAD1";
	setAttr ".uopa" yes;
	setAttr -s 367 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.71325922 2.2351742e-08 -3.038646936
		 -0.183772 -3.040864706 -0.20476809 -3.056689978 -0.20516232 -3.055519342 -0.18485631
		 -3.027196646 -0.18321481 -3.010241985 0.16888118 -0.71325916 1.4901161e-08 -0.71325916
		 1.4901161e-08 -0.71325922 2.9802322e-08 -2.9987905 0.169438 -3.028193712 -0.20356317
		 -0.71325916 -5.9604645e-08 -0.71325922 3.3527613e-08 -0.71325922 4.4703484e-08 -3.010318995
		 -0.18215922 -3.012447119 -0.2031783 -0.7132591 -5.5879354e-09 -0.71325922 9.3132257e-09
		 -0.71325916 0 -3.066963673 -0.18545024 -3.069489241 -0.2063631 -0.71325916 -1.3038516e-08
		 -0.71325922 -7.4505806e-09 -0.71325922 7.4505806e-09 -3.085528612 -0.20682169 -3.083822966
		 -0.18662827 -0.7132591 6.519258e-08 -0.71325922 -1.6763806e-08 -0.71325922 5.2154064e-08
		 -3.038559914 0.16732156 -3.027114153 0.16784811 -0.71325922 -2.6077032e-08 -0.71325922
		 -2.9802322e-08 -0.71325916 3.7252903e-08 -3.095252991 -0.18732728 -3.09863019 -0.20805398
		 -0.71325922 3.7252903e-08 -0.71325922 -3.7252903e-08 -0.71325922 7.4505806e-09 -3.11518931
		 -0.20878793 -3.11208224 -0.18874301 -0.71325922 -2.2351742e-08 -0.71325922 -1.4901161e-08
		 -0.71325916 2.9802322e-08 -3.066850185 0.16595638 -3.055418253 0.16639352 -0.71325934
		 0 -0.71325934 -1.4901161e-08 -0.71325922 0 -3.12348437 -0.18968476 -3.1289289 -0.21027198
		 -0.7132591 -4.4703484e-08 -0.71325922 1.4901161e-08 -0.71325922 2.9802322e-08 -3.1402514
		 -0.19159065 -0.71325922 -5.9604645e-08 -0.71325922 -5.9604645e-08 -0.71325922 0 -3.095081568
		 0.16505969 -3.083679438 0.16528535 -0.71325922 -5.9604645e-08 -0.71325922 -5.9604645e-08
		 -0.71325922 -1.4901161e-08 -2.58571672 -0.16080995 -2.57984662 -0.18303409 -0.71325922
		 -2.9802322e-08 -0.71325928 -2.9802322e-08 -0.71325916 -5.9604645e-08 -2.59826779
		 -0.18139419 -2.60246181 -0.16063109 -0.71325922 0 -0.71325928 -2.9802322e-08 -0.71325922
		 -4.4703484e-08 -2.557302 0.19763577 -3.11185908 0.16490054 -0.71325916 0 -0.71325922
		 0 -0.71325916 2.9802322e-08 -2.61384058 -0.16068515 -2.61248422 -0.18139999 -0.71325916
		 0 -0.71325916 0 -0.71325922 -2.9802322e-08 -2.62952423 -0.18137003 -2.63064718 -0.16113956
		 -0.71325922 7.4505806e-08 -0.71325916 1.4901161e-08 -0.71325922 -2.9802322e-08 -2.5854125
		 0.19426072 -2.5740273 0.19538796 -0.71325922 4.4703484e-08 -0.71325916 8.9406967e-08
		 -0.71325928 1.4901161e-08 -2.64206624 -0.16149125 -2.64283252 -0.1822625 -0.71325916
		 1.4901161e-08 -0.71325922 1.4901161e-08 -0.71325922 1.4901161e-08 -2.65914488 -0.18258902
		 -0.70678675 0.052768469 -2.65891123 -0.1623162 -2.61364079 0.19186342 -2.60222054
		 0.19265234 -2.67035103 -0.16280866 -2.67202973 -0.18373246 -2.68798447 -0.18413252
		 -0.72898889 0.050642371 -2.68721676 -0.16380188 -2.6419301 0.1899718 -2.63049054
		 0.19060087 -2.69866538 -0.16434844 -0.71513116 0.20950264 -2.70068645 -0.18534502
		 -2.71648598 -0.18575619 -2.71554017 -0.16540402 -2.67024779 0.18829048 -0.65509343
		 0.21634036 -2.65879917 0.18885791 -2.72699261 -0.16596648 -2.72911835 -0.18698412
		 -2.7448597 -0.18739408 -0.7568841 0.043841541 -2.74387074 -0.16703916 -2.69857669
		 0.18667877 -2.68712449 0.18722796 -2.75532413 -0.16760361 -0.77795529 0.042006016
		 -2.75747037 -0.18862264 -2.77319407 -0.18902989 -2.77220345 -0.16867751 -2.72690964
		 0.1850816 -0.77519679 0.20299119 -2.71545601 0.18562841 -2.78365684 -0.16924012 -2.7858007
		 -0.19025595 -2.80152082 -0.19066085 -0.80346251 0.035757482 -2.80053639 -0.17031114
		 -2.7552433 0.18348193 -2.74378967 0.18403065 -2.81199002 -0.17087144 -0.82239652
		 0.034555376 -2.81412768 -0.19188443 -2.82984853 -0.19228737 -2.82886958 -0.17193922
		 -2.7835772 0.18187618 -0.83540738 0.19639534 -2.77212334 0.18242741 -2.84032273 -0.17249754
		 -2.84245634 -0.19350895 -2.8581779 -0.19391014 -0.84369683 0.029959202 -2.85720229
		 -0.17356257 -2.81191087 0.18026519 -2.800457 0.18081844 -2.86865568 -0.1741192 -0.85896015
		 0.030681551 -2.87078643 -0.19513012 -2.88650846 -0.19552955 -2.885535 -0.17518176
		 -2.84024453 0.17864966 -0.8959384 0.18909281 -2.8287909 0.1792047 -2.89698863 -0.17573676
		 -2.89911628 -0.19674817 -2.9148376 -0.19714567 -0.87346172 0.030937374 -2.91386819
		 -0.17679675 -2.8685782 0.17703009 -2.85712457 0.17758667 -2.92532134 -0.17734988
		 0.15197271 0.45581096 -2.92744493 -0.19836299 -2.94316506 -0.19875811 -2.9422009
		 -0.17840688 -2.8969121 0.1754061 0.29082841 0.4624179 -2.88545847 0.17596459 -2.95365477
		 -0.17895775 -2.95577192 -0.19997405 -2.9714911 -0.20036593 0.11635488 0.41218239
		 -2.97053409 -0.18001129 -2.925246 0.17377698 -2.91379213 0.17433763 -2.98198724 -0.18055984
		 0.091786802 0.38349694 -2.98410034 -0.20157991 -2.99982381 -0.2019677 -2.99886632
		 -0.18161094 -2.9535799 0.17214227 0.21977097 0.42652541 -2.94212604 0.17270517 -2.98191285
		 0.17050505 -2.97045946 0.17106867 -2.99669766 0.19045055 0.057459354 0.35106391 0.033778682
		 0.3305071 0.15296143 0.40292233 -2.98093534 0.19086051 -3.0093557835 0.18922782 -3.025215864
		 0.18882096 -3.037989378 0.18763304 -3.054092169 0.18725884 -3.067152739 0.18620741
		 -3.083787203 0.18600619 -3.097492456 0.1854409 -3.11518455 0.18603611 -2.54819894
		 0.21911275 -2.56691813 0.21612847 -2.58113074 0.2143029 -2.59811139 0.21326232 -2.61145043
		 0.21197426 -2.62767458 0.21143913 -2.64058423 0.21023595 -2.65648341 0.20982683 -2.66919947
		 0.20862603 -2.68497181 0.20824158 -2.69761086 0.20703423 -0.71325916 2.2351742e-08
		 -0.71325922 4.4703484e-08 0.00023058057 0.30539471 -0.023269609 0.28959149 0.087111533
		 0.38045877 -0.056435198 0.2687903 -0.079932779 0.25585753 0.022184044 0.35935396
		 -0.1127651 0.2377755 -0.13623145 0.226744 -0.041914791 0.33969837 -0.16869178 0.21056336
		 -0.19207159 0.20094782 -0.10525912 0.32151002 -0.22414093 0.18625194 -0.24741393
		 0.17780393 -0.16794208 0.30477434 -0.27910417 0.16436821 -0.30227572 0.15695113 -0.23006076
		 0.28946096 -0.33362216 0.14464432 -0.35671338 0.13817412 -0.29170328 0.2755149 -0.38777119
		 0.12690645 -0.41081804 0.12131542 -0.35293207 0.26287252 -0.4416433 0.1110037 -0.4646799
		 0.10622257 -0.41380709 0.25146073 -0.49530905 0.096779764;
	setAttr ".uvtk[250:366]" -0.51834965 0.092734993 -0.47441119 0.24120945 -0.54879296
		 0.084066451 -0.5718267 0.080673158 -0.53479588 0.23202604 -0.6020447 0.072660506
		 -0.62501025 0.069809556 -0.59500098 0.22377795 -0.65486431 0.062314689 -0.67760694
		 0.059883535 -2.71334124 0.20664966 -2.72595477 0.2054379 -2.74167514 0.20504892 -2.75428271
		 0.20383465 -2.7700026 0.20344186 -2.78260994 0.20222604 -2.79833102 0.20183051 -2.81093931
		 0.20061326 -2.82666135 0.2002157 -2.83927035 0.19899714 -2.85499287 0.19859779 -2.86760116
		 0.1973778 -2.88332295 0.19697666 -2.89593077 0.19575489 -2.91165137 0.19535196 -2.92425799
		 0.19412792 -2.93997931 0.19372296 -2.95258737 0.1924963 -2.96831679 0.19208872 -0.95713043
		 0.18013662 -0.95712757 0.18013495 -0.95712686 0.18013233 -1.81517744 1.44906545 -1.68846798
		 1.4509449 -1.57040858 1.44352937 -1.46354401 1.43024349 -1.36913669 1.41531253 -1.24481738
		 1.4154036 -1.13170242 1.40988922 -1.030514002 1.40112972 -0.9414016 1.39176464 -0.86383855
		 1.38452601 -0.79658264 1.38199329 -0.73774612 1.38633037 -0.68497014 1.39908576 -0.63563693
		 1.42110062 -0.58706886 1.45249844 -0.53670168 1.49274087 -0.48221809 1.54072595 -0.42164135
		 1.59492254 -0.79611325 1.65352726 -0.71145141 1.69404674 -0.88318229 0.036992431
		 -0.59499669 0.22378391 -0.53479183 0.23202926 -0.47441405 0.241216 -0.41381127 0.25146824
		 -0.35292706 0.26287729 -0.29169947 0.27552205 -0.23006243 0.2894699 -0.16794148 0.30478328
		 -0.10525364 0.32151586 -0.041909784 0.33970433 0.022181898 0.35936207 0.087114632
		 0.38046616 0.15296537 0.40292114 0.21977347 0.42652565 0.29082972 0.46241671 -0.89593911
		 0.18910009 -0.83540666 0.19640309 -0.77520061 0.20300049 -0.47461337 1.69493628 -0.5338465
		 1.69639468 -0.59302735 1.6967237 -0.65220833 1.69593668 0.4573707 1.51488519 0.38976955
		 1.53796434 0.32353178 1.55917096 0.25845391 1.5785768 0.1943652 1.59625673 0.13112277
		 1.61228395 0.068604827 1.62672949 0.0067096055 1.63966012 -0.054651827 1.65113902
		 -0.11555508 1.66122317 -0.17606643 1.66996431 -0.23624438 1.67740774 -0.29614109
		 1.68359447 -0.35580477 1.68855929 -0.415281 1.69233131 -0.71513283 0.20950717 -0.65509558
		 0.21634418 -0.77519941 0.20299572 -0.83540785 0.19639987 -0.89593744 0.18909532 0.29082817
		 0.46241826 0.21977371 0.42652386 0.15296465 0.40292102 0.087114632 0.38046187 0.022181898
		 0.35935754 -0.041912884 0.33970255 -0.10525602 0.32151228 -0.16794088 0.30477864
		 -0.23006219 0.28946537 -0.29170233 0.27551943 -0.35292873 0.26287347 -0.41380781
		 0.2514655 -0.47441465 0.24121171 -0.53478944 0.23202664 -0.59499812 0.22377902 -0.71513426
		 0.20951182 -0.65509367 0.21634704 -3.15160346 -0.19297625 -3.14668465 -0.21207243
		 -3.16175151 -0.21490496 -3.12320256 0.1650703 -3.13030815 0.18723047;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "20BAA783-43A9-EA98-7A22-5AA16AE0981C";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 4.8863239288330078 4.8863239288330078 4.8863239288330078 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "051F6369-4412-3614-372D-81BFB44609D3";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk[0:35]" -type "float2" -2.69950533 0 -2.69950533
		 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533
		 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533
		 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533
		 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533
		 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533
		 0 -2.69950533 0 -2.69950533 0 -2.69950533 0 -2.69950533 0;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "E78B741F-4C58-94A5-3F18-4AB8F0D757A6";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 4.8863239288330078 4.8863239288330078 4.8863239288330078 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "341E57E9-4A8B-9E9E-13FB-7A91A2203945";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk[0:35]" -type "float2" -1.68647146 0 -1.68647122
		 0 -1.68647134 0 -1.68647134 0 -1.68647122 0 -1.68647134 0 -1.68647122 0 -1.68647134
		 0 -1.68647134 0 -1.68647122 0 -1.68647146 0 -1.68647134 0 -1.68647134 0 -1.68647122
		 0 -1.68647134 0 -1.68647122 0 -1.68647134 0 -1.68647122 0 -1.68647122 0 -1.68647146
		 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134
		 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134
		 0 -1.68647134 0 -1.68647134 0 -1.68647134 0 -1.68647134 0;
createNode createUVSet -n "createUVSet1";
	rename -uid "BC32C5AE-475C-3E20-42E8-5EA7FB7871CB";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyCopyUV -n "polyCopyUV1";
	rename -uid "3B543C9B-4EDD-5F62-93DD-C0BE885035E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "uvSet";
	setAttr ".uvi" -type "string" "map1";
createNode polyCopyUV -n "polyCopyUV2";
	rename -uid "2A17199A-450D-48BA-45CD-8BB03669E734";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset2";
	setAttr ".uvi" -type "string" "uvSet";
createNode polyCopyUV -n "polyCopyUV3";
	rename -uid "94BC2DCA-43F0-FC39-2155-3385C9CD3023";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset21";
	setAttr ".uvi" -type "string" "UVset2";
createNode polyCopyUV -n "polyCopyUV4";
	rename -uid "D446AB44-4A85-5995-F875-07AF27EF8BD0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset22";
	setAttr ".uvi" -type "string" "UVset21";
createNode polyCopyUV -n "polyCopyUV5";
	rename -uid "C22AC013-4FC5-F28E-11FD-2B8108D37A0F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset23";
	setAttr ".uvi" -type "string" "UVset22";
createNode polyCopyUV -n "polyCopyUV6";
	rename -uid "C8430B8D-44A5-4FD3-3291-4B9E9DA84C80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset24";
	setAttr ".uvi" -type "string" "UVset23";
createNode polyCopyUV -n "polyCopyUV7";
	rename -uid "9D0B2AFB-426B-E5F4-277D-D5A682BAEA26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset25";
	setAttr ".uvi" -type "string" "UVset24";
createNode polyCopyUV -n "polyCopyUV8";
	rename -uid "6018050A-4721-C8C4-C319-51B6D881C1B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset26";
	setAttr ".uvi" -type "string" "UVset25";
createNode polyCopyUV -n "polyCopyUV9";
	rename -uid "4D364D08-4470-FC4C-F425-1EA3DDACB6A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset27";
	setAttr ".uvi" -type "string" "UVset26";
createNode polyCopyUV -n "polyCopyUV10";
	rename -uid "6F63EBD6-455B-B1E5-F59C-B8B165166FB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "UVset21";
	setAttr ".uvi" -type "string" "UVset27";
createNode polyCopyUV -n "polyCopyUV11";
	rename -uid "0A1CCC48-4854-917F-1BCD-F0BB191E6A2A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "ASET";
	setAttr ".uvi" -type "string" "map1";
createNode createUVSet -n "createUVSet2";
	rename -uid "6A8D1E92-477B-B3A1-3694-31BF07A94054";
	setAttr ".uvs" -type "string" "AUVSET";
createNode polyCopyUV -n "polyCopyUV12";
	rename -uid "CAF94792-4F72-3ADA-4C65-AD9BBA76A77B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvi" -type "string" "ASET";
createNode polyCopyUV -n "polyCopyUV13";
	rename -uid "4C2D9A95-4176-9637-3CB3-DD9943E1A194";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvs" -type "string" "ASET";
	setAttr ".uvi" -type "string" "map1";
createNode polyTweak -n "polyTweak1";
	rename -uid "FFB58F88-43A6-EF82-BA52-94B8701509CD";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  -0.032957651 0 0 -0.032957651
		 0 0 -0.032957651 0 0 -0.032957651 0 0 -0.032957651 0 0 -0.032957651 0 0 -0.032957651
		 0 0 -0.032957651 0 0 -0.032957651 0 0 -0.032957651 0 0 -0.032957651 0 2.9802322e-08
		 -0.032957651 0 2.9802322e-08 -0.032957651 0 2.9802322e-08 -0.032957651 0 2.9802322e-08
		 -0.032957651 0 2.9802322e-08 -0.032957651 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08
		 0 0 2.9802322e-08 0 0 2.9802322e-08;
createNode polyCopyUV -n "polyCopyUV14";
	rename -uid "7B5D9724-4382-C198-413B-9EA52A86200D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".uvi" -type "string" "UVset22";
createNode polyCopyUV -n "polyCopyUV15";
	rename -uid "14D45D27-4D9A-DDB3-4040-A8AF05B69F14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:200]" "f[202:261]";
	setAttr ".uvs" -type "string" "ASET1";
	setAttr ".uvi" -type "string" "map1";
createNode createUVSet -n "createUVSet3";
	rename -uid "C14BF5F4-4A68-5668-5C46-6DBD7E5D7701";
	setAttr ".uvs" -type "string" "AUVSET";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "3CF3EF2E-44D2-C377-8A35-6D9CEA3BF70F";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk[0:35]" -type "float2" 1.52046466 0.081661105 1.50298715
		 -0.070418358 1.68086064 -0.070509613 1.66403604 0.081748128 1.4990536 0.080243289
		 1.59437084 0.5228588 1.56183875 0.44319236 1.99879599 -0.43550271 1.99188948 -0.28447556
		 1.92973256 -0.29105803 1.92406082 -0.43547845 2.055745363 0.49731988 2.074104548
		 0.34606436 2.21769452 0.34630558 2.23478055 0.49952647 2.051182508 0.35378334 2.11711311
		 -0.015455306 2.14998007 -0.09493731 1.68574584 0.079306185 1.62621582 0.44280571
		 0.92869455 0.04363665 0.93568259 0.19466013 0.86008084 0.19471113 0.86785173 0.043653548
		 2.23940849 0.34898213 2.18149805 -0.014707506 1.96105289 0.077232301 1.36081958 0.40267205
		 1.28608429 0.40267205 1.28521216 0.22261113 1.36081946 0.223809 0.89817047 -0.31809643
		 1.78926635 -0.82867765 1.80501521 -0.83447504 1.81190169 -0.82752025 1.79615283 -0.82172257;
	setAttr ".uvs" -type "string" "UVset22";
createNode createUVSet -n "createUVSet4";
	rename -uid "ADF462CA-4741-07B7-7DE8-FAB6D76FD70E";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet5";
	rename -uid "064B01F0-47E9-E772-D2BD-3F991E04C8DD";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet6";
	rename -uid "28BABD1C-4387-E979-7555-D981ABC827C1";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet7";
	rename -uid "9C5232DE-49DF-88F8-227C-F7A446C14B58";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet8";
	rename -uid "1F845AF9-47F6-D7E0-F296-4FBADB8F8FDD";
	setAttr ".uvs" -type "string" "Set4Real";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "1134475C-4449-4F48-2ACF-37A74D89521B";
	setAttr ".uopa" yes;
	setAttr -s 349 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 1.47590733 0.79791284 1.47256625 0.78763008
		 1.51328039 0.77441263 1.51661468 0.78467482 2.37323046 0.45489216 2.373312 0.50040972
		 2.34591532 0.50068331 2.34363103 0.45567593 2.39337444 0.45453674 2.35353208 -0.42197627
		 2.37367511 -0.42233151 2.39553833 0.49957362 2.42297029 0.45377287 2.42298961 0.49930644
		 1.48833287 0.81857377 1.4819777 0.80982667 1.52295709 0.7934044 2.32348275 0.45605689
		 2.32377815 0.5015167 2.29653001 0.50183493 2.29387426 0.45690563 2.30378509 -0.42089397
		 2.32393241 -0.42122805 1.50653481 0.83438373 1.49778771 0.82802862 1.53168666 0.79974675
		 2.27371621 0.45735943 2.27460241 0.50269008 2.247715 0.50319946 2.24408674 0.45837325
		 2.25401926 -0.41994655 2.27417588 -0.42021853 1.52873135 0.84379524 1.51844859 0.84045416
		 1.5419488 0.80308115 2.22390938 0.45899552 2.22623014 0.50422943 2.20017338 0.50547892
		 2.19423676 0.46034953 2.20421243 -0.4193241 2.22438979 -0.41944951 1.55274999 0.84588695
		 1.54193807 0.84588695 1.55273914 0.80308115 3.16928744 0.43895671 3.16375589 0.4853265
		 3.13816071 0.4841885 3.13959932 0.43886381 2.17402458 0.46127978 2.15432882 -0.41933149
		 2.1745472 -0.41918242 1.57623935 0.8404541 1.56595659 0.84379524 1.56300139 0.79974675
		 3.11940575 0.4388701 3.11700702 0.48419243 3.090453386 0.48417166 3.08976078 0.43921664
		 3.099691391 -0.43958944 3.11988044 -0.44034052 1.59690022 0.82802862 1.58815324 0.83438379
		 1.57173085 0.7934044 3.069595098 0.43942952 3.068669319 0.4847911 3.041610718 0.48501772
		 3.039976597 0.44003329 3.049882174 -0.43792582 3.07004714 -0.43844181 1.61271024
		 0.80982667 1.60635519 0.81857377 1.57807326 0.78467482 3.01982522 0.44034377 3.019532681
		 0.48581126 2.99222589 0.48608881 2.99022126 0.44106427 3.00011587143 -0.43661278
		 3.020267248 -0.43701822 1.62212169 0.78763002 1.61878061 0.79791284 1.58140767 0.77441269
		 2.97007608 0.44141239 2.97002101 0.48693034 2.94260645 0.4872157 2.94047832 0.44217616
		 2.95036864 -0.4354462 2.97051406 -0.4358086 1.62421358 0.7636115 1.62421358 0.77442348
		 1.58140767 0.76362234 2.92033577 0.44253528 2.92035341 0.48806781 2.89289856 0.48835233
		 2.89074016 0.44331098 2.90062952 -0.43432772 2.92077231 -0.43467748 1.61878061 0.74012214
		 1.62212169 0.75040495 1.57807326 0.75336015 2.87059832 0.44367144 2.87063026 0.48920491
		 2.84316325 0.48948762 2.84100389 0.44444793 2.85089326 -0.43321919 2.8710351 -0.4335674
		 1.60635519 0.71946126 1.61271036 0.7282083 1.57173085 0.74463058 2.82086205 0.44480714
		 2.8208921 0.4903385 2.79342246 0.49061942 2.79126763 0.44558167 2.80115747 -0.43210906
		 2.82129908 -0.43245864 1.58815324 0.70365125 1.59690034 0.71000636 1.56300139 0.73828816
		 2.77112579 0.4459393 2.77115154 0.49146858 2.74368262 0.49174818 2.74153137 0.4467116
		 2.75142193 -0.43099469 2.77156329 -0.43134594 1.56595659 0.69423974 1.57623947 0.69758081
		 1.55273914 0.73495382 2.72138929 0.44706777 2.72141218 0.49259606 2.69394374 0.49287441
		 2.69179487 0.44783813 2.70168591 -0.42987663 2.72182751 -0.43022937 1.54193807 0.69214809
		 1.55275011 0.69214809 1.5419488 0.73495382 2.67165303 0.44819322 2.67167401 0.49372107
		 2.64420581 0.49399832 2.64205837 0.44896185 2.65195012 -0.42875546 2.67209172 -0.42910939
		 1.51844859 0.69758087 1.52873147 0.69423974 1.53168666 0.73828822 2.62191653 0.44931579
		 2.62193561 0.49484396 2.59446669 0.4951199 2.59232211 0.4500826 2.60221434 -0.4276315
		 2.62235594 -0.42798638 1.49778771 0.71000636 1.50653481 0.70365125 1.52295709 0.74463058
		 2.57218003 0.45043528 2.57219625 0.49596462 2.54472685 0.49623892 2.54258561 0.45120004
		 2.55247855 -0.42650449 2.57262015 -0.42686081 1.48197782 0.7282083 1.48833299 0.7194612
		 1.51661468 0.75336009 2.52244401 0.45155117 2.52245569 0.49708277 2.49498558 0.49735466
		 2.49284935 0.45231351 2.50274301 -0.42537373 2.52288437 -0.42573172 1.47256637 0.75040489
		 1.47590733 0.74012214 1.51328027 0.76362234 2.47270727 0.45266297 2.47271633 0.4981972
		 2.44524908 0.49846631 2.44311261 0.45342368 2.45300722 -0.4242394 2.47314882 -0.42459881
		 1.4704746 0.77442348 1.4704746 0.7636115 2.40327072 -0.42310321 2.4234128 -0.42346305
		 2.58179379 -0.74135095 2.56406164 -0.73985291 2.53154635 -0.86410743 2.56253529 -0.868662
		 2.37368035 -0.46786034 2.40112066 -0.46814495 2.35144496 -0.46701187 2.3240726 -0.46672952
		 2.54240417 -0.73509777 2.52389526 -0.73394495 2.5005734 -0.85982955 2.30191731 -0.46590519
		 2.27471328 -0.46564543 2.5004971 -0.7296716 2.48046851 -0.72914994 2.46971679 -0.85541189
		 2.25275707 -0.46491575 2.22592211 -0.4647761 2.45395541 -0.72616553 2.43126631 -0.72732425
		 2.43913317 -0.85022271 2.20441365 -0.46438372 2.17831254 -0.46479678 2.39964628 -0.72820199
		 2.37297058 -0.73388785 2.40912056 -0.84329844 3.14179254 -0.48775178 3.14958215 -0.44193161
		 3.11640429 -0.4856807 3.10637045 -1.049501181 3.092940092 -1.024281144 2.96362686
		 -1.040879726 2.98406744 -1.073496461 3.095247984 -0.4844138 3.068653107 -0.48369163
		 3.079252958 -0.99589765 3.064078569 -0.97740114 2.93907595 -1.020367742 3.046890259
		 -0.48279774 3.019770622 -0.48242629 3.048603058 -0.95539963 3.03264308 -0.9409467
		 2.91363907 -1.0009483099 2.99770975 -0.48159134 2.97036457 -0.48130745 3.016130447
		 -0.92283159 2.99978399 -0.91093564 2.88732934 -0.9828341 2.94816923 -0.48047411 2.92073584
		 -0.48020726 2.98256636 -0.89533448 2.96596932 -0.88521266 2.86022329 -0.96611267
		 2.89848733 -0.4793694 2.87102485 -0.47910249 2.94819736 -0.87139189 2.9314003 -0.86263156
		 2.83239269 -0.95079863 2.8487587 -0.47826153 2.8212893 -0.47799152 2.91316366 -0.85020787
		 2.89620447 -0.84258413 2.80392694 -0.93687415 2.79901886 -0.47714889 2.77154899 -0.47687632
		 2.87757254 -0.83134967 2.8604877 -0.82472944 2.77491856 -0.9243058 2.74927855 -0.4760325;
	setAttr ".uvtk[250:348]" 2.72180963 -0.47575802 2.84152269 -0.81456196 2.82434845
		 -0.80885625 2.7454524 -0.91303861 2.69953966 -0.4749133 2.67207146 -0.47463733 2.80511355
		 -0.79967159 2.78789139 -0.79480702 2.71559286 -0.90300989 2.64980221 -0.47379172
		 2.62233424 -0.4735145 2.76844287 -0.78653008 2.75120807 -0.7824347 2.68540072 -0.8941493
		 2.60006428 -0.47266787 2.57259583 -0.47238946 2.7315836 -0.77498901 2.71435571 -0.77158958
		 2.65495014 -0.88638783 2.55032587 -0.47154152 2.52285647 -0.47126192 2.69457197 -0.76489305
		 2.67735147 -0.7621094 2.62429285 -0.87963599 2.50058532 -0.47041243 2.4731164 -0.47013146
		 2.6573875 -0.75606215 2.64013863 -0.75379956 2.59346771 -0.87376964 2.45084667 -0.46928012
		 2.42338347 -0.4689973 2.61990118 -0.74828696 2.6025219 -0.7464478 3.11731219 -1.087196708
		 2.17960978 0.50744462 2.15778828 -0.46562564 2.53154778 -0.86411095 2.56253672 -0.86866498
		 2.5005753 -0.859833 2.4697175 -0.85541546 2.43913269 -0.85022461 2.40912127 -0.84330106
		 2.96362495 -1.040877938 2.98406816 -1.073496938 2.9390738 -1.020366549 2.91363668
		 -1.00095057487 2.88733077 -0.98283696 2.86022162 -0.96611595 2.83239031 -0.95080036
		 2.80392599 -0.93687755 2.77491975 -0.92430925 2.74545193 -0.91304219 2.71559048 -0.90301061
		 2.6854012 -0.894153 2.65495276 -0.88638949 2.62428832 -0.87963653 2.59346581 -0.87377048
		 2.53154874 -0.86411452 2.56253552 -0.86866724 2.5005765 -0.8598367 2.46971631 -0.85541791
		 2.43913388 -0.85022819 2.40912318 -0.84330249 2.96362519 -1.040879011 2.98406744
		 -1.073495626 2.93907332 -1.020366549 2.91363645 -1.00095403194 2.88733053 -0.98284054
		 2.86021948 -0.9661172 2.83238864 -0.9508031 2.80392647 -0.93688118 2.77491975 -0.92431283
		 2.74544978 -0.91304421 2.71558952 -0.90301359 2.68540382 -0.89415514 2.65495253 -0.88639295
		 2.62428975 -0.87963855 2.59346485 -0.87377435 2.50087595 -2.79928756 2.53297091 -2.79539728
		 2.46872401 -2.80207324 2.43656731 -2.8037653 2.40446925 -2.80437446 2.39778209 -2.76638389
		 2.9465816 -2.60722399 2.97021151 -2.5821197 2.92158103 -2.63047886 2.89541292 -2.65195918
		 2.86824727 -2.67174149 2.84022737 -2.68989921 2.8114748 -2.70650411 2.78209233 -2.72162247
		 2.75216866 -2.73531747 2.72178006 -2.74764585 2.69099379 -2.75865865 2.65986776 -2.76840138
		 2.62845564 -2.7769146 2.5968051 -2.78423333 2.56496239 -2.79038548;
	setAttr ".uvs" -type "string" "ASET1";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "815E6F1C-47F1-D4ED-FD1A-CB9EBA56F8DA";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk[0:35]" -type "float2" 3.080307722 0.06991493 3.062774181
		 -0.08213491 3.2406702 -0.082283802 3.22387362 0.070019476 3.06070137 0.069602124
		 3.15408111 0.5111137 3.12338352 0.43254441 3.025907278 0.17674424 3.019010067 0.32872602
		 2.9568634 0.32204702 2.95117188 0.17667778 3.038327694 -0.0015857059 3.056463242
		 -0.15286149 3.20004749 -0.15288547 3.21736312 0.00031959778 3.035181046 -0.14623523
		 3.10024095 -0.51558435 3.13134742 -0.59398222 3.24558306 0.067582361 3.1859479 0.43107373
		 1.99202836 0.064246073 1.99901652 0.21526961 1.92341471 0.21532063 1.93118548 0.064262941
		 3.22176027 -0.15027341 3.1630342 -0.51384854 2.98759937 0.69038832 2.74451137 0.38634649
		 2.6697762 0.38634649 2.66890407 0.20628542 2.74451137 0.2074835 1.96150446 -0.29748726
		 2.64925671 -0.82867736 2.66535997 -0.83266968 2.67189217 -0.82751995 2.65614319 -0.82172203;
	setAttr ".uvs" -type "string" "ASET";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "9A02B9BE-4E75-6105-04D7-EA8BC30750C3";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr -s 4 ".sol";
connectAttr "createUVSet8.og" "HammerShape.i";
connectAttr "polyTweakUV8.uvtk[0]" "HammerShape.uvst[0].uvtw";
connectAttr "createUVSet6.og" "CenterShape.i";
connectAttr "polyTweakUV7.uvtk[0]" "CenterShape.uvst[0].uvtw";
connectAttr "polyTweakUV15.out" "SpikeShape1.i";
connectAttr "polyTweakUV11.uvtk[0]" "SpikeShape1.uvst[0].uvtw";
connectAttr "polyTweakUV15.uvtk[0]" "SpikeShape1.uvst[1].uvtw";
connectAttr "createUVSet4.og" "SpikeShape2.i";
connectAttr "polyTweakUV12.uvtk[0]" "SpikeShape2.uvst[0].uvtw";
connectAttr "polyTweakUV13.uvtk[0]" "SpikeShape2.uvst[4].uvtw";
connectAttr "polyTweakUV14.out" "Handle__ShaftShape.i";
connectAttr "polyTweakUV10.uvtk[0]" "Handle__ShaftShape.uvst[0].uvtw";
connectAttr "polyTweakUV14.uvtk[0]" "Handle__ShaftShape.uvst[1].uvtw";
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
connectAttr "polyCylinder1.out" "polyBevel1.ip";
connectAttr "Handle__ShaftShape.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyExtrudeFace1.ip";
connectAttr "Handle__ShaftShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "Handle__ShaftShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "Handle__ShaftShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyCube2.out" "polyBevel2.ip";
connectAttr "HammerShape.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polySmoothFace1.ip";
connectAttr "|Hammer2|Top|Spikes|Spike1|polySurfaceShape1.o" "polyMergeVert1.ip"
		;
connectAttr "SpikeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyBevel3.ip";
connectAttr "SpikeShape1.wm" "polyBevel3.mp";
connectAttr "polySurfaceShape2.o" "polyBevel4.ip";
connectAttr "SpikeShape2.wm" "polyBevel4.mp";
connectAttr "polyCube1.out" "polyBevel5.ip";
connectAttr "CenterShape.wm" "polyBevel5.mp";
connectAttr "polyExtrudeFace3.out" "transformGeometry1.ig";
connectAttr "polyBevel3.out" "transformGeometry2.ig";
connectAttr "polyBevel4.out" "transformGeometry3.ig";
connectAttr "polySmoothFace1.out" "transformGeometry4.ig";
connectAttr "polyBevel5.out" "transformGeometry5.ig";
connectAttr "transformGeometry1.og" "polyTweakUV1.ip";
connectAttr "transformGeometry5.og" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj1.ip";
connectAttr "CenterShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV3.ip";
connectAttr "transformGeometry3.og" "polyTweakUV4.ip";
connectAttr "transformGeometry2.og" "polyTweakUV5.ip";
connectAttr "transformGeometry4.og" "polyTweakUV6.ip";
connectAttr "polyTweakUV3.out" "polyCylProj1.ip";
connectAttr "CenterShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV6.out" "polyAutoProj1.ip";
connectAttr "HammerShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyAutoProj2.ip";
connectAttr "HammerShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV1.out" "polyCylProj2.ip";
connectAttr "Handle__ShaftShape.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyCylProj3.ip";
connectAttr "Handle__ShaftShape.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV5.out" "polyAutoProj3.ip";
connectAttr "SpikeShape1.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV4.out" "polyAutoProj4.ip";
connectAttr "SpikeShape2.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "createUVSet1.ig";
connectAttr "createUVSet1.og" "polyCopyUV1.ip";
connectAttr "polyCopyUV1.out" "polyCopyUV2.ip";
connectAttr "polyCopyUV2.out" "polyCopyUV3.ip";
connectAttr "polyCopyUV3.out" "polyCopyUV4.ip";
connectAttr "polyCopyUV4.out" "polyCopyUV5.ip";
connectAttr "polyCopyUV5.out" "polyCopyUV6.ip";
connectAttr "polyCopyUV6.out" "polyCopyUV7.ip";
connectAttr "polyCopyUV7.out" "polyCopyUV8.ip";
connectAttr "polyCopyUV8.out" "polyCopyUV9.ip";
connectAttr "polyCopyUV9.out" "polyCopyUV10.ip";
connectAttr "polyTweakUV11.out" "polyCopyUV11.ip";
connectAttr "polyCopyUV10.out" "createUVSet2.ig";
connectAttr "polyCopyUV11.out" "polyCopyUV12.ip";
connectAttr "polyTweak1.out" "polyCopyUV13.ip";
connectAttr "polyCopyUV12.out" "polyTweak1.ip";
connectAttr "polyTweakUV10.out" "polyCopyUV15.ip";
connectAttr "polyCopyUV15.out" "createUVSet3.ig";
connectAttr "createUVSet2.og" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "createUVSet4.ig";
connectAttr "polyCopyUV13.out" "createUVSet5.ig";
connectAttr "polyTweakUV7.out" "createUVSet6.ig";
connectAttr "createUVSet3.og" "createUVSet7.ig";
connectAttr "polyTweakUV8.out" "createUVSet8.ig";
connectAttr "createUVSet7.og" "polyTweakUV14.ip";
connectAttr "createUVSet5.og" "polyTweakUV15.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Handle__ShaftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CenterShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HammerShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SpikeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SpikeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of Hammer2UV.ma
