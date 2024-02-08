//Maya ASCII 2024 scene
//Name: Chair2UV.ma
//Last modified: Wed, Feb 07, 2024 10:23:42 PM
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
fileInfo "UUID" "F71C3D3B-40C8-5F05-7686-758186CE0D76";
createNode transform -s -n "persp";
	rename -uid "A8A4DC0C-46C5-CC5C-290D-95B677E50977";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.141507820166602 14.269948171316987 -27.531648420940368 ;
	setAttr ".r" -type "double3" 168.92478488793463 -52.990842206700435 179.99999999999997 ;
	setAttr ".rp" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" -7.1505086235767929e-15 1.5683958958392506e-14 -2.9453538007439663e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "917711F2-4898-DC5E-C769-84A8DC270A4F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 34.947463116638311;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.2456726081773422 7.556629168067694 -6.8870637936164023 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A97B5E1B-4D56-7AFE-112F-79A53D56D9E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FF6A4FCE-493F-F2F5-95F1-FCA9AB3AAD4E";
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
	rename -uid "79E235F4-48F3-5B24-2AE9-12A80BC225EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "493B7DBB-401A-34FB-BD25-0DBD79FDA4C2";
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
	rename -uid "4E5AA55D-4B26-0227-F2B7-C389FD58C10A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D0D55DC6-42C8-8192-E36A-3597B75F7CC6";
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
createNode transform -n "Chair2";
	rename -uid "45578787-4052-8667-4259-30BBD879DD0D";
createNode transform -n "Cushions" -p "Chair2";
	rename -uid "DD9BBC3B-48CF-6BB2-B1E5-7BAE046E02C8";
createNode transform -n "Back" -p "Cushions";
	rename -uid "FC4EA959-4B36-56B7-4533-DE985993B2F3";
	setAttr ".t" -type "double3" 3.4 13 -4 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 4 0.5 7 ;
createNode mesh -n "BackShape" -p "Back";
	rename -uid "4EC34EF8-48B6-E3BE-5697-4BBF8B178C00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.71886492733655616 0.55958838730930804 ;
	setAttr -s 9 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".uvst[3].uvsn" -type "string" "Set4Real2";
	setAttr ".uvst[4].uvsn" -type "string" "Set4Real3";
	setAttr ".uvst[5].uvsn" -type "string" "Set4Real4";
	setAttr ".uvst[6].uvsn" -type "string" "Set4Real5";
	setAttr ".uvst[7].uvsn" -type "string" "Set4Real6";
	setAttr ".uvst[8].uvsn" -type "string" "Set4Real7";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "Back";
	rename -uid "A18AF3C5-449C-BC68-AC87-DEB0F7BD49DB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]" "f[26:31]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.38020781 0.99553615
		 0.375 0.99553615 0.375 0.75446385 0.38020781 0 0.38020781 0.062493801 0.625 0.99553615
		 0.61979216 0.99553615 0.625 0.75446385 0.62946385 0.062493801 0.375 0.25446385 0.375
		 0.49553615 0.38020781 0.1875062 0.61979222 0.1875062 0.625 0.25446385 0.375 0.5624938
		 0.375 0.6875062 0.38020781 0.49553615 0.61979216 0.49553615 0.625 0.5624938 0.625
		 0.6875062 0.38020781 0.6875062 0.61979222 0.6875062 0.61979222 0.75446385 0.61979216
		 0.062493801 0.38020784 0.25446385 0.61979222 0.25446385 0.38020781 0.5624938 0.61979216
		 0.5624938 0.38020784 0.75446385 0.87053615 0.062493801 0.87053615 0.1875062 0.12946384
		 0.062493801 0.37053615 0.062493801 0.37053618 0.1875062 0.12946384 0.1875062 0.61979222
		 0 0.62946385 0.1875062 0.625 0.49553615 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.38020784
		 0.25446385 0.61979222 0.25446385 0.61979216 0.49553615 0.38020781 0.49553615;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -0.47916874 -0.5 0.48214471 -0.47916874 -0.2500248 0.5
		 -0.5 -0.2500248 0.48214471 0.50000012 -0.2500248 0.48214471 0.47916874 -0.2500248 0.5
		 0.47916874 -0.5 0.48214471 -0.5 0.2500248 0.48214471 -0.47916874 0.2500248 0.5 -0.47916874 0.5 0.48214471
		 0.47916874 0.5 0.48214471 0.47916874 0.2500248 0.5 0.50000012 0.2500248 0.48214471
		 -0.5 0.2500248 -0.48214465 -0.47916874 0.5 -0.48214465 -0.47916874 0.2500248 -0.50000006
		 0.47916874 0.2500248 -0.50000006 0.47916874 0.5 -0.48214465 0.50000012 0.2500248 -0.48214465
		 -0.5 -0.2500248 -0.48214465 -0.47916874 -0.2500248 -0.50000006 -0.47916874 -0.5 -0.48214465
		 0.47916874 -0.5 -0.48214465 0.47916874 -0.2500248 -0.50000006 0.50000012 -0.2500248 -0.48214465
		 -0.47916874 0.5 0.48214471 -0.47916874 0.5 -0.48214465 -0.5 0.2500248 -0.48214465
		 -0.5 0.2500248 0.48214471 0.47916874 1.39999962 0.48214471 -0.47916874 1.39999962 0.48214471
		 0.47916874 1.39999962 -0.48214465 -0.47916874 1.39999962 -0.48214465;
	setAttr -s 62 ".ed[0:61]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0 8 24 0 13 25 0 24 25 0 12 26 0 6 27 0 26 27 0
		 9 28 0 8 29 0 28 29 0 16 30 0 30 28 0 13 31 0 31 30 0 29 31 0;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -57 -59 -61 -62
		mu 0 4 46 47 48 49
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19
		f 4 21 49 -51 -49
		mu 0 4 38 39 40 41
		f 4 23 52 -54 -52
		mu 0 4 42 43 44 45
		f 4 -28 54 56 -56
		mu 0 4 24 25 47 46
		f 4 -32 57 58 -55
		mu 0 4 25 17 48 47
		f 4 -38 59 60 -58
		mu 0 4 17 16 49 48
		f 4 -22 55 61 -60
		mu 0 4 16 24 46 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Seat" -p "Cushions";
	rename -uid "1FC78446-47A0-5386-D116-4D996FA8DFB5";
	setAttr ".t" -type "double3" 0.5 6.3 -4 ;
	setAttr ".s" -type "double3" 6 0.5 7 ;
createNode mesh -n "SeatShape" -p "Seat";
	rename -uid "D8A8B29F-4CCF-FC21-65F8-01AC9502C0A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49231612682342529 0.43176376819610596 ;
	setAttr -s 5 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".uvst[3].uvsn" -type "string" "Set4Real2";
	setAttr ".uvst[4].uvsn" -type "string" "Set4Real3";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Legs" -p "Chair2";
	rename -uid "4F65674E-41DD-BC0B-0910-B18DB32938E2";
createNode transform -n "FLeg1" -p "Legs";
	rename -uid "2B30FCC9-4862-316F-AFD9-1191F4225AF0";
	setAttr ".t" -type "double3" -2 3 -1 ;
	setAttr ".s" -type "double3" 0.75 6 0.75 ;
createNode mesh -n "FLegShape1" -p "FLeg1";
	rename -uid "00843E53-4A78-EDC3-7E04-A7B5CA620345";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -1.1547584858340301 0.5 ;
	setAttr -s 4 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".uvst[3].uvsn" -type "string" "Set4Real2";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "FLeg1";
	rename -uid "CAB51270-4340-0803-A235-15ACA4A2D411";
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
createNode transform -n "BLeg2" -p "Legs";
	rename -uid "75781F86-4C5F-1AF8-09AB-E981D4FF9BF4";
	setAttr ".t" -type "double3" 3.9 7.5 -7 ;
	setAttr ".s" -type "double3" 0.75 15 0.75 ;
createNode mesh -n "BLegShape2" -p "BLeg2";
	rename -uid "17812309-49A0-34F2-0996-E3B90CCD4539";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.072308681905269623 0.38456082157790661 ;
	setAttr -s 4 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".uvst[3].uvsn" -type "string" "Set4Real2";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  1.7881393e-07 0 0 1.7881393e-07 
		0 0 1.7881393e-07 0 0 1.7881393e-07 0 0;
createNode mesh -n "polySurfaceShape3" -p "BLeg2";
	rename -uid "FC5287A5-43CC-EB25-B294-78A194E095F2";
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
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  1.7881393e-07 0 0 1.7881393e-07 
		0 0 1.7881393e-07 0 0 1.7881393e-07 0 0;
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
createNode transform -n "FLeg2" -p "Legs";
	rename -uid "90AC7E22-4F14-3117-829F-919F3048C0FA";
	setAttr ".t" -type "double3" -2 3 -7 ;
	setAttr ".s" -type "double3" 0.75 6 0.75 ;
createNode mesh -n "FLegShape2" -p "FLeg2";
	rename -uid "42485F94-4B92-8067-4A23-48BC1AB4EF42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.61321173276953544 0.5 ;
	setAttr -s 4 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".uvst[3].uvsn" -type "string" "Set4Real2";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  1.7881393e-07 0 0 1.7881393e-07 
		0 0 1.7881393e-07 0 0 1.7881393e-07 0 0;
createNode mesh -n "polySurfaceShape4" -p "FLeg2";
	rename -uid "657D9F3D-4B1D-B0B0-5C61-5FB9AF205B70";
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
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  1.7881393e-07 0 0 1.7881393e-07 
		0 0 1.7881393e-07 0 0 1.7881393e-07 0 0;
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
createNode transform -n "BLeg1" -p "Legs";
	rename -uid "2C8EDF1C-4341-0D7D-4E51-F183D968451B";
	setAttr ".t" -type "double3" 3.9 7.5 -1 ;
	setAttr ".s" -type "double3" 0.75 15 0.75 ;
createNode mesh -n "BLegShape1" -p "BLeg1";
	rename -uid "1056F202-4639-07D5-3989-46AD2101B4E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.37877808654466394 0.5 ;
	setAttr -s 5 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".uvst[3].uvsn" -type "string" "Set4Real2";
	setAttr ".uvst[4].uvsn" -type "string" "Set4Real3";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "BLeg1";
	rename -uid "68510B63-44E5-D46D-30A2-648CF80A2313";
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "697F40E7-45CB-1955-0045-C18B12A735C9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3C198151-4A1F-B132-DD26-94A23A653C1B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "94AB0991-448E-88C8-E343-1586FDFB6623";
createNode displayLayerManager -n "layerManager";
	rename -uid "92C7A049-464A-89A1-D2F5-D98B298BE681";
createNode displayLayer -n "defaultLayer";
	rename -uid "0D3F442C-44DB-EB11-4F1F-C585400B3ABF";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C67EB4C6-46DC-2AFA-3E16-8B8B1F451344";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9E1E2FDB-4EF6-D37E-2BFA-E7971FD8F338";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4EEF5F5A-47A2-22F6-B982-DDA54D18F01F";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B1A40D91-4143-AB08-3863-72B5F5BFAF5C";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B0E151E4-42CD-4A39-9923-B482BC76C74D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "01631EF5-4613-3845-A885-57BFE824F97A";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyCube -n "polyCube1";
	rename -uid "E2663656-48D7-AEF2-2FEB-61BD26D5E5F4";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "B1BAF05F-4B2F-C4D7-B817-109613F50C7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 6 0 0 0 0 0.75 0 -2 3 -1 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "C512CB20-463F-B77B-C966-2C80C8444A47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 6 0 0 0 0 0.75 0 4 3 -1 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "99B8453D-4D16-B132-4EFE-BFB7E1AA6542";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 6 0 0 0 0 0.75 0 4 3 -7 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "CE31B26C-483D-1AA5-3A45-1698A9AF4435";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 6 0 0 0 0 0.75 0 -2 3 -7 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "47D1B30E-42E4-953D-975C-9D955BBF7C8B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0 6.2999999999999998 -4 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "34086C9B-4C68-A92B-0C04-1D839B7653C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[21]" "e[23]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0.5 6.2999999999999998 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4375062 6.4875064 -4 ;
	setAttr ".rs" 56672;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5 6.4250123977661131 -7.3750125765800476 ;
	setAttr ".cbx" -type "double3" -2.3750124573707581 6.55 -0.62498721480369568 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "A821CADC-4E7A-0AD4-277B-92820626C6D5";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0.5 6.2999999999999998 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 6.5500002 -3.9999998 ;
	setAttr ".rs" 55716;
	setAttr ".lt" -type "double3" 0 0 0.45000000000000018 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3750124573707581 6.55 -7.3750125765800476 ;
	setAttr ".cbx" -type "double3" 3.3750124573707581 6.55 -0.62498700618743896 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "E8F39EB6-4260-BA47-C635-5C8D512BA35E";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7000003 13 -3.9999998 ;
	setAttr ".rs" 50312;
	setAttr ".ls" -type "double3" 1 1 0.72992414134555972 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7000001907348632 11.083325028419495 -7.3750125765800476 ;
	setAttr ".cbx" -type "double3" 2.7000001907348632 14.916674971580505 -0.62498700618743896 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4544DDFE-4F1B-618F-2714-568504DA5E30";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7000003 13 -3.9999998 ;
	setAttr ".rs" 57134;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7000001907348632 11.083325386047363 -7.3750125765800476 ;
	setAttr ".cbx" -type "double3" 2.7000001907348632 14.916674613952637 -0.62498700618743896 ;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "87240C85-4265-BE86-C2EA-E8B6A7304507";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[72]" "e[74]" "e[76:77]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel7";
	rename -uid "236AD387-4B92-6493-379F-F5987C71D067";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[56]" "e[58]" "e[60:61]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0.5 6.2999999999999998 -4 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "0AD56981-430E-C035-E87B-F08E4D12C9DA";
	setAttr ".ics" -type "componentList" 1 "f[39]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7000003 13 -3.9999995 ;
	setAttr ".rs" 59975;
	setAttr ".lt" -type "double3" 8.8817841970012523e-16 -1.7763568394002505e-15 0.11028629842765669 ;
	setAttr ".ls" -type "double3" 1 1 1.6536218247488139 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7000001907348632 12.041566848754883 -6.4167709350585938 ;
	setAttr ".cbx" -type "double3" 2.7000001907348632 13.958433151245117 -1.5832282304763794 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "8DDEEAFA-47F3-4A5D-7E48-DD97B9CF854A";
	setAttr ".ics" -type "componentList" 1 "f[39]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5897141 13 -3.9999995 ;
	setAttr ".rs" 36885;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.589713954925537 12.041566848754883 -6.4167709350585938 ;
	setAttr ".cbx" -type "double3" 2.589713954925537 13.958433151245117 -1.5832280218601227 ;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "E8AAB374-40C9-DCF8-5ECE-C1BDC8D36CCA";
	setAttr ".ics" -type "componentList" 6 "f[0]" "f[3]" "f[7:8]" "f[10:11]" "f[14:16]" "f[22:24]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace2";
	rename -uid "946C0CB4-4FAF-FCA4-8C31-A7AF4F78951E";
	setAttr ".ics" -type "componentList" 7 "f[0]" "f[3]" "f[7:8]" "f[10:11]" "f[14:16]" "f[22:24]" "f[36:68]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3490C40C-4AF8-3559-17F9-EEA75FD5B0EE";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 729\n            -height 776\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 729\\n    -height 776\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 729\\n    -height 776\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B92A84E0-4556-A851-E3CE-92BFF4542CC2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "A3A22B3F-4E3F-E8B8-0A48-B0B0B809EDD2";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:203]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0.5 6.2999999999999998 -4 1;
	setAttr ".s" -type "double3" 7.0000004172325134 7.0000004172325134 7.0000004172325134 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "25CB50C5-4F8F-1D94-400D-B7B243D7135E";
	setAttr ".uopa" yes;
	setAttr -s 305 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965597 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965597
		 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965597 0 -0.98965597 0 -0.98965609
		 0 -0.98965609 0 -0.98965597 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965597 0 -0.98965597 0 -0.98965597
		 0 -0.98965597 0 -0.98965597 0 -0.98965597 0 -0.98965597 0 -0.98965597 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0;
	setAttr ".uvtk[250:304]" -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965597 0 -0.98965597
		 0 -0.98965597 0 -0.98965597 0 -0.98965609 0 -0.98965597 0 -0.98965597 0 -0.98965597
		 0 -0.98965597 0 -0.98965597 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965597
		 0 -0.98965609 0 -0.98965609 0 -0.98965597 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609 0 -0.98965609
		 0 -0.98965609 0 -0.98965609 0 -0.98965597 0;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "B89EB68F-4CC4-C136-1226-4BACE19B1CBF";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[0:18]" "f[20]" "f[22:24]" "f[27:47]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".s" -type "double3" 7.0000004172325134 7.0000004172325134 7.0000004172325134 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "6DD63A79-4A45-B838-B8A9-6BBD4EB6452B";
	setAttr ".uopa" yes;
	setAttr -s 114 ".uvtk[0:113]" -type "float2" -1.030248404 0 -0.61170995
		 0 -1.030248404 0 -0.61170995 0 -1.030248404 0 -0.61170995 0 -1.030248404 0.99805319
		 -1.030248404 0.99805319 -1.030248404 0.99805307 -1.030248404 0.99805307 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 -0.078188509 -1.030248404 -0.078188509 -1.030248404 0 -1.030248404 0 -1.030248404
		 -0.078188494 -1.030248404 -0.078188494 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404
		 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0 -1.030248404 0;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "1468CC4C-4969-3FE8-D8B9-82AD46E21477";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 15 0 0 0 0 0.75 0 3.8999999999999999 7.5 -7 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.9000000953674316 7.5 -7.0000014305114746 ;
	setAttr ".ps" -type "double2" 180 15 ;
	setAttr ".r" 0.75;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "263CBE8F-4833-741A-D045-ABA14EFF1CA0";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" -0.20224014 0.0099524586
		 -0.11612783 0.0061088465 0.16069919 0.0063180067 0.27189261 0.0091541708 -0.30812839
		 0.0059387572 -0.6838783 0.019434445 -0.58535653 0.0055933781 -0.19495051 -0.24809933
		 -0.0030113608 -0.24555266 -0.77739984 0.0043260194 -1.054901481 -4.9743801e-05 -0.66365665
		 -0.25328344 -0.47184873 -0.25145364 -0.090570852 -0.25535101 0.38764119 -0.24884129
		 0.27415168 -0.24078864 -0.56499428 -0.25960118 -0.94037533 -0.25549942 0.46628374
		 -0.23698717 0.35237157 0.0062505268 -1.52001476 -0.25913751 -1.039818764 -0.26220274
		 -1.52713907 -0.014660707 -1.2475965 -0.0045955647 -1.16827404 0.012438936 -2.024338722
		 -0.24055892 -2.54315519 -0.24413443 -1.4087472 -0.2570489 -1.13208437 -0.25654441
		 -1.66925979 6.00942e-05;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "E15067F9-488A-C81D-16F2-E29CA6925F30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 15 0 0 0 0 0.75 0 3.8999999999999999 7.5 -1 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.9000000953674316 7.5 -1 ;
	setAttr ".ps" -type "double2" 180 15 ;
	setAttr ".r" 0.75;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "70ED09B8-4792-F6DA-C39C-638E6C61BAE7";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" -0.067256063 0.0099524343
		 0.018856183 0.0061088428 0.29568321 0.0063180067 0.40687686 0.0091541735 -0.17314492
		 0.0059387535 -0.54889566 0.019434446 -0.45037311 0.0055933744 -0.05996722 -0.24809933
		 0.1319724 -0.24555266 -0.64241695 0.0043260157 -0.91991878 -4.9738213e-05 -0.52867389
		 -0.25328338 -0.33686543 -0.25145364 0.044413 -0.25535101 0.52262521 -0.24884129 0.40913567
		 -0.24078858 -0.43001169 -0.25960112 -0.80539274 -0.25549942 0.60126692 -0.23698711
		 0.48735499 0.006250497 -1.38503063 -0.25913751 -0.90483642 -0.26220268 -1.39215565
		 -0.014660681 -1.1126132 -0.004595561 -1.033291578 0.012438936 -1.88935471 -0.24055892
		 -2.40817261 -0.24413443 -1.27376401 -0.25704885 -0.99710119 -0.25654435 -1.53427553
		 6.0095485e-05;
createNode polyCylProj -n "polyCylProj3";
	rename -uid "46596926-4507-A480-0377-249029F30FFF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 6 0 0 0 0 0.75 0 -2 3 -7 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.9999998807907104 3 -7.0000014305114746 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".r" 0.7500002384185791;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "9165807C-4047-1020-A2D1-E1BF0A94042B";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" 0.16258973 0.59413141 0.25128871
		 0.57722867 0.52799988 0.57710278 0.63177681 0.59442037 0.05864495 0.5783155 -0.31647503
		 0.6037308 -0.22002283 0.58114278 0.093531221 -0.081001043 0.28530285 -0.079211056
		 -0.41296226 0.58113098 -0.69152534 0.57741714 -0.37434301 -0.085150838 -0.18278161
		 -0.083754718 0.19286916 -0.099302411 0.6674 -0.093982935 0.56199348 -0.075061619
		 -0.27699015 -0.10310996 -0.65051901 -0.087469757 0.75387418 -0.071023226 0.71952665
		 0.57630897 -1.22683024 -0.10289407 -0.74751675 -0.10655826 -1.16765285 0.55923855
		 -0.88493216 0.57305384 -0.79703581 0.59781522 -1.73237062 -0.08395946 -2.25162983
		 -0.088398874 -1.11859226 -0.08744961 -0.84200495 -0.088272274 -1.29825878 0.58506584;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "7784CE5E-4F3B-86DD-E02D-61B0F22E99DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:203]";
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "36D2EBEA-4942-9F1A-4A6E-25969BFA8CE5";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:203]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0.5 6.2999999999999998 -4 1;
	setAttr ".s" -type "double3" 7.0000004172325134 7.0000004172325134 7.0000004172325134 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "999FBB4B-475E-9A44-CC69-C08132FBCEA0";
	setAttr ".uopa" yes;
	setAttr -s 294 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -1.64041197 0 -1.64041185 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041209 0 -1.64041197 0 -1.64041209 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041185
		 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041209
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041209 0 -1.64041185
		 0 -1.64041185 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041209 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041197
		 0 -1.64041185 0 -1.64041185 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041209 0 -1.64041197 0 -1.64041197
		 0 -1.64041209 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041209
		 0 -1.64041209 0 -1.64041197 0 -1.64041185 0 -1.64041185 0 -1.64041185 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041209 0 -1.64041197
		 0 -1.64041185 0 -1.64041185 0 -1.64041197 0 -1.64041185 0 -1.64041185 0 -1.64041197
		 0 -1.64041197 0 -1.64041209 0 -1.64041185 0 -1.64041209 0 -1.64041185 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041209 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041185
		 0 -1.64041197 0 -1.64041209 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041209 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0;
	setAttr ".uvtk[250:293]" -1.64041209 0 -1.64041209 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041209 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041209 0 -1.64041209 0 -1.64041209 0 -1.64041209 0 -1.64041197 0 -1.64041185
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041185 0 -1.64041197 0 -1.64041197
		 0 -1.64041209 0 -1.64041209 0 -1.64041185 0 -1.64041197 0 -1.64041185 0 -1.64041197
		 0 -1.64041197 0 -1.64041197 0 -1.64041197 0 -1.64041197 0;
createNode polyNormal -n "polyNormal1";
	rename -uid "8F7A0B36-40D4-3BEB-3D0B-12837FD4DE72";
	setAttr ".ics" -type "componentList" 1 "f[0:203]";
	setAttr ".nm" 2;
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "D0C7197C-4BE1-A43A-4E91-D48AB1DC0AD6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[21]" "e[23]" "e[129]" "e[388]" "e[394]";
createNode polySplitVert -n "polySplitVert1";
	rename -uid "4E977584-4397-C74D-8CE9-EEAE7A7C0A2F";
	setAttr ".ics" -type "componentList" 6 "vtx[6]" "vtx[8]" "vtx[12:13]" "vtx[72]" "vtx[211]" "vtx[214]";
createNode polyChipOff -n "polyChipOff1";
	rename -uid "E6F5BB00-4E65-E14C-D675-1FB907C2A4C3";
	setAttr ".ics" -type "componentList" 4 "f[2]" "f[6]" "f[12]" "f[19]";
	setAttr ".ix" -type "matrix" 6 0 0 0 0 0.5 0 0 0 0 7 0 0.5 6.2999999999999998 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 6.3000002 -4 ;
	setAttr ".rs" 40220;
	setAttr ".kft" no;
	setAttr ".dup" no;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "EE725209-4F7C-C57B-E0C8-2DB355D2002A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[33:34]" "e[64]" "e[434]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "AE64859A-4989-5E9B-C3F8-02916868A1C4";
	setAttr ".uopa" yes;
	setAttr -s 322 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 1.93226099 0.86250579 1.93231773 0.84255713
		 1.91394067 0.84672952 1.91388059 0.86602134 1.94831848 0.83982629 1.9482646 0.85975033
		 1.93238306 0.81822211 1.91401458 0.82163429 1.89521718 0.85577434 1.89495468 0.8701269
		 1.91378474 0.87956864 1.93214679 0.87526405 1.94837713 0.81589746 1.94816756 0.8718698
		 1.96065044 0.85744011 1.96068907 0.83806086 1.93245292 0.79171938 1.91409326 0.79370397
		 1.89539242 0.82589102 1.89192557 0.85477829 1.89419365 0.91304636 1.89444685 0.89876556
		 1.89470506 0.8844555 1.93189001 0.87683892 1.91361141 0.88687128 1.96072865 0.81447077
		 1.94843817 0.78997833 1.94793582 0.87097198 1.96065974 0.86873746 1.96807289 0.83673137
		 1.96802425 0.85522723 1.93252277 0.76521683 1.91416979 0.76577365 1.89555836 0.79600203
		 1.89572406 0.76610833 1.89590502 0.73620874 1.89206696 0.73745346 1.91335702 0.87503004
		 1.9681015 0.81367612 1.96076846 0.7887857 1.94849849 0.76405978 1.96074343 0.86660504
		 1.96832037 0.86524284 1.97188711 0.85353321 1.97177792 0.83664697 1.93258858 0.74088252
		 1.91423655 0.74068105 1.89517689 0.67897391 1.89568615 0.72186297 1.89549446 0.70754063
		 1.89533019 0.69324279 1.97179079 0.81376958 1.9681294 0.78834653 1.96080804 0.76310098
		 1.94855452 0.74013239 1.96925592 0.86109835 1.97154927 0.85914159 1.97373152 0.83831143
		 1.97456861 0.8502177 1.9326489 0.72093511 1.91429567 0.72139376 1.91435242 0.70560527
		 1.91440773 0.69083285 1.91446304 0.67656791 1.97329831 0.81526625 1.97185349 0.78814936
		 1.96815348 0.76301801 1.96084309 0.73951203 1.94860291 0.72021049 1.97372842 0.85584509
		 1.93285871 0.70402098 1.93337226 0.68870461 1.93403745 0.6741963 1.95357752 0.67183077
		 1.97278619 0.6694904 1.97313523 0.56214309 1.89554977 0.57163382 1.9745183 0.84703046
		 1.97406745 0.8173604 1.9735117 0.78802186 1.9719038 0.76253259 1.96817136 0.73996669
		 1.96086979 0.72013479 1.94925499 0.70297945 1.95111966 0.68707037 1.96454573 0.68837059
		 1.89858007 0.4685992 1.97099447 0.45974135 1.97450852 0.78792101 1.97358274 0.76078683
		 1.97191072 0.73951256 1.9681778 0.72148252 1.96179771 0.70357043 1.97309875 0.68437046
		 1.97062564 0.69479871 1.97452641 0.75842547 1.97350812 0.73663509 1.97187257 0.7216931
		 1.96878624 0.70672309 1.97259927 0.70528102 1.97343445 0.69926935 1.97426987 0.72890067
		 1.97332406 0.71866614 1.97121596 0.71109229 1.97386956 0.71417916 0.76423395 -0.3719753
		 0.86637872 0.12139037 0.87621427 0.082351476 0.76423395 -0.33305547 0.80298889 0.026756689
		 0.85766727 0.12306264 0.85965258 0.12287447 0.86185175 0.12259039 0.86429799 0.12241682
		 0.90548313 0.083642706 0.89720809 0.084423199 0.8157385 0.084385917 0.84536344 0.083112642
		 0.87520415 0.082904026 0.88844347 0.12170914 0.89011598 0.12098566 0.89334929 0.12034479
		 0.89719379 0.11659852 0.9032011 0.10441115 0.96602744 0.088901266 0.92079842 0.084998026
		 0.93586856 0.086227044 0.95079613 0.087410316 0.84411305 0.030265436 0.87344128 0.032982156
		 0.90177578 0.035431787 0.92676777 0.037496909 0.91831475 0.1203635 0.91913968 0.11953023
		 0.92271185 0.11835095 0.92774928 0.11233178 0.90342021 0.079767585 0.93204629 0.099263102
		 0.94592559 0.039185241 0.95915073 0.041936174 0.96559256 0.047248974 0.95430678 0.034440026
		 0.88510895 0.047416434 0.91327655 0.048518345 0.94029307 0.049914822 0.9645617 0.051291987
		 0.9478879 0.11857072 0.94687378 0.11811313 0.94932884 0.11694756 0.95438385 0.11062166
		 0.93065417 0.076915741 0.95845962 0.097500771 0.98442388 0.052464113 0.99689287 0.055010363
		 0.99749428 0.060473666 0.95675564 0.076226294 0.98033929 0.076504946 0.97723728 0.11797294
		 0.96938419 0.11709341 0.97191644 0.1159716 0.97717237 0.11005178 0.9817189 0.097286016
		 0.99994761 0.076761305 1.011272311 0.077496231 1.0083848238 0.079507709 0.98861027
		 0.11490026 0.98106217 0.11455324 0.99547046 0.10947177 1.00080680847 0.097101301
		 1.011328459 0.096803099 1.0070796013 0.096506089 0.98916364 0.11124656 0.99504721
		 0.11197338 1.0048025846 0.1084235 0.99870026 0.10630038 1.12598455 0.15686262 1.022226095
		 0.16079688 0.99483472 0.23223266 1.096636891 0.23340032 1.80456233 -0.4759123 1.80445886
		 -0.47875643 1.82276344 -0.47803316 1.82285094 -0.47552863 1.78857279 -0.47883207
		 1.7886852 -0.47587875 1.80427456 -0.48367107 1.82256508 -0.48329508 1.78839064 -0.48362809
		 1.77640891 -0.47568586 1.77628708 -0.47862816 1.80404782 -0.48962528 1.82231188 -0.48994488
		 1.84205985 -0.48270869 1.84235024 -0.47513357 1.77609742 -0.48341745 1.78817177 -0.4893474
		 1.76877952 -0.47850591 1.76892412 -0.47558013 1.80381846 -0.49557939 1.82205606 -0.49659452
		 1.84177089 -0.4902854 1.76857257 -0.48328835 1.77587628 -0.48913234 1.78795254 -0.49506679
		 1.76504076 -0.47528544 1.76484466 -0.47808719 1.80362678 -0.50049406 1.82185149 -0.50185639
		 1.84147978 -0.49786183 1.7646054 -0.48298532 1.76834512 -0.48900068 1.77565956 -0.49484727
		 1.78776765 -0.49986291 1.80351353 -0.50333822 1.82174873 -0.50436091 1.8411901 -0.50543708
		 1.76436281 -0.4889316 1.76813495 -0.49471334 1.7754823 -0.4996368 1.78765476 -0.50281662
		 1.76415014 -0.49487826 1.76797557 -0.49949667 1.77537942 -0.50257999 1.76401448 -0.499778
		 1.76789641 -0.50242394 1.76399612 -0.50258309 2.0067412853 -0.48908633 2.034479618
		 -0.47911465 2.0226264 -0.40669078 1.99488819 -0.41666251 1.670928 0.90710419 1.67153525
		 0.96419168 1.6789372 0.96913064 1.68633974 0.97406965 1.69374216 0.97900856 1.70114446
		 0.98394758 1.7005372 0.92686003 2.1784656 0.536066 2.20113254 0.47085312 2.20368457
		 0.36323789 2.18101764 0.42845073 2.20640588 0.25956076 2.18551302 0.3196705 1.34106374
		 0.6474148 1.14148927 0.71352512 1.37148714 0.71137959 1.37143421 0.69711256 1.37138104
		 0.68284506 1.37132812 0.66857809 1.37127519 0.65431064;
	setAttr ".uvtk[250:321]" 1.14098859 0.82085311 1.17099905 0.80805945 1.37120032
		 0.62449986 1.37112522 0.59468871 1.37105036 0.56487769 1.37097549 0.53506684 1.36342227
		 0.5333429 1.35586917 0.53161895 1.34831667 0.52989501 1.34076405 0.528171 1.34083891
		 0.55798179 1.34091389 0.58779293 1.34098887 0.61760408 1.16911697 0.91129476 1.1414547
		 0.9230873 1.36766934 0.52259433 1.36243844 0.51954806 1.35581625 0.51769459 1.34919441
		 0.51652491 1.34395695 0.51718265 1.3664732 0.51506406 1.36158502 0.5115487 1.35565054
		 0.50945085 1.34971583 0.50884306 1.34482551 0.51012981 1.36926603 0.52011257 1.3701129
		 0.5275687 1.34202027 0.51390362 1.34148216 0.52103788 1.40141988 -0.760481 1.3901453
		 -0.76157415 1.39052331 -0.76129657 1.38552761 -0.76056349 1.4798696 -0.76990765 1.468701
		 -0.75990665 1.47955024 -0.76197398 1.46606469 -0.76417857 0.78616989 0.08545132 1.23334455
		 0.15588427 0.70716786 -0.3719753 0.87391961 0.11782995 0.76423395 -0.29413554 0.86647767
		 0.12397721 1.34127569 0.70448369 0.79808801 0.13270494 0.70716786 -0.29413554 1.2039969
		 0.23242196 0.85634494 0.048741505 0.85187358 0.044460937 0.76423395 -0.35251534 0.81433773
		 0.032003805 0.76423395 -0.31359547 0.87391508 0.084843487 0.91194993 -0.46680298
		 0.91194993 -0.47078657 0.79270929 -0.47078657 0.79270929 -0.46680298 0.82251942 -0.46680298
		 0.85232961 -0.46680298 0.88213974 -0.46680298 1.86530411 0.6391564 1.86627603 0.6962772
		 1.89480138 0.72789448 1.89382935 0.67077368 2.16493177 0.75768083 2.1885047 0.81895018
		 2.18584061 0.69941711 2.16226768 0.63814777 0.76802719 -0.46767879 0.76423395 -0.47078958
		 0.70714581 -0.47486728 1.17149973 0.70073146;
createNode polyMapDel -n "polyMapDel2";
	rename -uid "C7861E95-4515-23AF-7574-2DAC9B3AB3D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "C52536CE-426B-046E-B7E4-19AF5B980364";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".s" -type "double3" 7.0000004172325134 7.0000004172325134 7.0000004172325134 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyNormal -n "polyNormal2";
	rename -uid "E40ECD43-490B-FD39-9126-CEA53EC5AC3D";
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".nm" 2;
createNode polySplitEdge -n "polySplitEdge2";
	rename -uid "7A09186D-4DB8-B802-3000-DEA2DD12E26E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[21]" "e[23]";
createNode polySplitVert -n "polySplitVert2";
	rename -uid "72E5B46B-489D-91CC-87DF-FB889ABB50B5";
	setAttr ".ics" -type "componentList" 3 "vtx[6]" "vtx[8]" "vtx[12:13]";
createNode polyChipOff -n "polyChipOff2";
	rename -uid "FDF21C10-455E-E658-5EDE-0CBD17209F0C";
	setAttr ".ics" -type "componentList" 6 "f[2]" "f[6]" "f[8:9]" "f[12:13]" "f[19]" "f[21]";
	setAttr ".ix" -type "matrix" 0 4 0 0 -0.5 0 0 0 0 0 7 0 3.3999999999999999 13 -4 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.4000001 13 -4 ;
	setAttr ".rs" 40219;
	setAttr ".kft" no;
	setAttr ".dup" no;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "BEFD5EDE-4B61-F7DD-B751-B8A63B018A3C";
	setAttr ".uopa" yes;
	setAttr -s 108 ".uvtk[0:107]" -type "float2" 0.33314687 -0.16831571 0.2723707
		 -0.16773659 0.24387157 -0.08654511 0.297571 -0.08781153 0.27441853 -0.17013422 0.23733622
		 -0.084896863 -0.21089545 0.80939984 -0.21233708 0.86671197 -0.13211274 0.82476866
		 -0.13171625 0.76756549 -0.21344556 0.80988705 -0.12908709 0.76625073 -0.13013893
		 0.65059048 -0.20931736 0.69242442 -0.21194661 0.69373924 -0.12758866 0.65010321 -0.20892037
		 0.63522112 -0.12869781 0.59327877 -0.12590796 0.38278335 -0.20612891 0.42472506 0.79187167
		 -0.43222624 0.58025295 -0.42481175 0.46903533 -0.36160892 0.47786266 -0.69154549
		 0.44399279 -0.74813479 0.39238775 -0.74890763 0.42625749 -0.69231832 0.42352369 -0.69231898
		 0.4573935 -0.74890751 0.40578836 -0.74813473 0.37191862 -0.69154626 0.25329474 -0.11346062
		 0.19236854 -0.088515952 0.14844432 -0.0090201646 0.20937049 -0.033964828 0.59378022
		 -0.73406655 0.57559729 -0.74890929 0.59852755 -0.66728437 0.61020029 -0.67561674
		 0.62364155 -0.72755474 0.63531429 -0.73588711 0.65824479 -0.65426207 0.64006168 -0.66910505
		 0.62358886 -0.41384256 0.59333587 -0.40308195 0.5662021 -0.34561992 0.59645516 -0.35638052
		 0.63920033 0.77896464 0.63931465 0.83484459 0.58003241 0.83732277 0.57991815 0.78144276
		 0.092956662 0.54587764 0.08603543 0.33442804 0.15477325 0.27546945 -0.017239654 0.46969461
		 -0.088505983 0.52781945 -0.012944994 0.6806069 -0.081682719 0.73956561 0.060320973
		 0.37580574 0.12061453 0.39544809 0.12152022 0.33952135 0.061226726 0.31987923 0.34890094
		 -0.76821709 0.36639538 -0.73694092 0.31475136 -0.73593438 0.29725692 -0.76721054
		 -0.37097263 -0.74891615 -0.35347816 -0.7801922 -0.30183411 -0.77918565 -0.31932864
		 -0.74790967 0.14213282 -0.49520779 0.15545934 -0.16668096 0.16169442 0.48691893 0.084901154
		 -0.49435627 0.12696016 -0.085489511 0.1038689 -0.41500396 0.046637177 -0.41415244
		 0.68065411 -0.36902338 -0.47430092 -0.49372965 -0.47245699 -0.49626037 -0.58971274
		 -0.4931913 -0.59155661 -0.49066052 0.11157855 0.54682636 0.11248427 0.6027528 0.052190185
		 0.62239492 0.051284492 0.56646854 -0.70494282 -0.74990481 -0.70309877 -0.74737406
		 -0.58584309 -0.74430496 -0.58768702 -0.74683571 0.15840989 0.083071746 0.15931559
		 0.13899845 0.099021554 0.15864062 0.098115861 0.10271404 0.6380105 0.74095529 0.57469118
		 0.70210302 0.57722527 0.58497268 0.64054459 0.62382495 0.10842371 0.056196347 0.048844174
		 0.045333754 0.049552634 -0.071552247 0.10913223 -0.060689714 -0.79391664 -0.49460205
		 -0.79782039 -0.49624938 -0.85372156 -0.50024229 -0.80471516 -0.74991852 -0.86452019
		 -0.74427831 -0.80861908 -0.74827123;
createNode polyCylProj -n "polyCylProj4";
	rename -uid "7C9392FB-4540-A131-2EFD-9292EE2B75E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 6 0 0 0 0 0.75 0 -2 3 -1 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2 3 -1 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".r" 0.75;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "7CDCCB50-466F-ECA6-EB47-7FBBFFCFB36A";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" 0.60533613 0.5897491 0.69403499
		 0.57284635 0.97074628 0.57272047 1.074523568 0.59003806 0.50139081 0.57393318 0.12627
		 0.59934849 0.22272295 0.57676047 0.53627694 -0.085383296 0.72804904 -0.08359313 0.02978307
		 0.57674867 -0.24878013 0.57303482 0.06840229 -0.089533031 0.25996405 -0.088136971
		 0.63561541 -0.10368454 1.11014676 -0.098365128 1.0047399998 -0.079443693 0.1657548
		 -0.10749203 -0.20777398 -0.09185195 1.19661999 -0.075405419 1.16227233 0.57192653
		 -0.78408366 -0.1072762 -0.30477166 -0.11094034 -0.72490716 0.55485624 -0.44218624
		 0.56867152 -0.3542906 0.5934329 -1.28962421 -0.088341653 -1.8088851 -0.092780948
		 -0.6758467 -0.091831863 -0.39925897 -0.092654467 -0.85551196 0.58068353;
createNode createUVSet -n "createUVSet1";
	rename -uid "8704B0E8-4E70-7589-A11F-5080647B1BBA";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet2";
	rename -uid "6F844C0B-45CE-CD46-B532-8AA3B83AEBA6";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet3";
	rename -uid "DE9F3EB5-4F46-1DD4-44C1-8BAAFDC64AA4";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet4";
	rename -uid "5C2828F9-4003-7E4C-1897-BB85C4F3F1F9";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet5";
	rename -uid "BA207D34-475C-D946-7C92-61B163DAEB51";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet6";
	rename -uid "133F8C1A-4C42-5EF8-8CE3-54B5B90264BC";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet7";
	rename -uid "781E5E95-4250-3D3A-9231-1DB9393B5BFC";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet8";
	rename -uid "AA42B9A8-411B-5A02-D2CB-43A57BA007B0";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet9";
	rename -uid "1A46F48C-4DC2-9325-91E5-BABEA3A2FD5C";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet10";
	rename -uid "5A3DA37E-4963-ACC1-BBFB-F4980EC1A9D0";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet11";
	rename -uid "74BA1D1E-49CE-0304-1FFB-1A8D5D9CC262";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet12";
	rename -uid "9410A9FE-48F1-8B43-7949-FEB55A879218";
	setAttr ".uvs" -type "string" "Set4Real2";
createNode createUVSet -n "createUVSet13";
	rename -uid "FE994139-495F-646B-A9B6-4288C0ADB488";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet14";
	rename -uid "20D1C108-4027-8847-CDAE-92B48E51A7DC";
	setAttr ".uvs" -type "string" "Set4Real2";
createNode createUVSet -n "createUVSet15";
	rename -uid "FAF24BAA-440D-6984-69CB-87B3F420B4D2";
	setAttr ".uvs" -type "string" "Set4Real2";
createNode createUVSet -n "createUVSet16";
	rename -uid "56442155-4B2B-BC51-03EB-9184A853DF80";
	setAttr ".uvs" -type "string" "Set4Real3";
createNode createUVSet -n "createUVSet17";
	rename -uid "772E29F9-437E-2B8F-13A7-3B87D3C0198C";
	setAttr ".uvs" -type "string" "Set4Real2";
createNode createUVSet -n "createUVSet18";
	rename -uid "81DFFC06-49D5-4470-3928-44A551F8A42B";
	setAttr ".uvs" -type "string" "Set4Real3";
createNode createUVSet -n "createUVSet19";
	rename -uid "C42FA6F3-4587-F013-36E7-D68514AC348C";
	setAttr ".uvs" -type "string" "Set4Real2";
createNode createUVSet -n "createUVSet20";
	rename -uid "6056644E-4D86-650C-8FBA-DBA63FDE12E4";
	setAttr ".uvs" -type "string" "Set4Real2";
createNode createUVSet -n "createUVSet21";
	rename -uid "4AAC6A07-412D-BAF4-5C12-4F83860D52F6";
	setAttr ".uvs" -type "string" "Set4Real3";
createNode createUVSet -n "createUVSet22";
	rename -uid "436DDCC1-4C92-4825-FF7D-F4B7635C9824";
	setAttr ".uvs" -type "string" "Set4Real4";
createNode createUVSet -n "createUVSet23";
	rename -uid "90548377-4BEF-BE17-A8DA-E694387AA00D";
	setAttr ".uvs" -type "string" "Set4Real5";
createNode createUVSet -n "createUVSet24";
	rename -uid "FE877B06-435C-133E-887C-8C94704B0E6D";
	setAttr ".uvs" -type "string" "Set4Real6";
createNode createUVSet -n "createUVSet25";
	rename -uid "D9223C5E-47A7-663E-D76F-B2AD4FF6FFEE";
	setAttr ".uvs" -type "string" "Set4Real7";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "7C928DE2-4803-2AF8-64C7-9E8705AB6941";
	setAttr ".sst" -type "string" "";
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
	setAttr -s 6 ".dsm";
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
connectAttr "createUVSet25.og" "BackShape.i";
connectAttr "polyTweakUV8.uvtk[0]" "BackShape.uvst[0].uvtw";
connectAttr "createUVSet18.og" "SeatShape.i";
connectAttr "polyTweakUV7.uvtk[0]" "SeatShape.uvst[0].uvtw";
connectAttr "createUVSet19.og" "FLegShape1.i";
connectAttr "polyTweakUV9.uvtk[0]" "FLegShape1.uvst[0].uvtw";
connectAttr "createUVSet17.og" "BLegShape2.i";
connectAttr "polyTweakUV3.uvtk[0]" "BLegShape2.uvst[0].uvtw";
connectAttr "createUVSet20.og" "FLegShape2.i";
connectAttr "polyTweakUV5.uvtk[0]" "FLegShape2.uvst[0].uvtw";
connectAttr "createUVSet16.og" "BLegShape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "BLegShape1.uvst[0].uvtw";
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
connectAttr "polySurfaceShape1.o" "polyBevel1.ip";
connectAttr "FLegShape1.wm" "polyBevel1.mp";
connectAttr "polySurfaceShape2.o" "polyBevel2.ip";
connectAttr "BLegShape1.wm" "polyBevel2.mp";
connectAttr "polySurfaceShape3.o" "polyBevel3.ip";
connectAttr "BLegShape2.wm" "polyBevel3.mp";
connectAttr "polySurfaceShape4.o" "polyBevel4.ip";
connectAttr "FLegShape2.wm" "polyBevel4.mp";
connectAttr "polyCube1.out" "polyBevel5.ip";
connectAttr "SeatShape.wm" "polyBevel5.mp";
connectAttr "polyBevel5.out" "polyExtrudeEdge1.ip";
connectAttr "SeatShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeFace1.ip";
connectAttr "SeatShape.wm" "polyExtrudeFace1.mp";
connectAttr "polySurfaceShape5.o" "polyExtrudeFace2.ip";
connectAttr "BackShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "BackShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyBevel6.ip";
connectAttr "BackShape.wm" "polyBevel6.mp";
connectAttr "polyExtrudeFace1.out" "polyBevel7.ip";
connectAttr "SeatShape.wm" "polyBevel7.mp";
connectAttr "polyBevel6.out" "polyExtrudeFace4.ip";
connectAttr "BackShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "BackShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyBevel7.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polySmoothFace2.ip";
connectAttr "polySmoothFace2.out" "polyAutoProj1.ip";
connectAttr "SeatShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyExtrudeFace5.out" "polyAutoProj2.ip";
connectAttr "BackShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV2.ip";
connectAttr "polyBevel3.out" "polyCylProj1.ip";
connectAttr "BLegShape2.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyTweakUV3.ip";
connectAttr "polyBevel2.out" "polyCylProj2.ip";
connectAttr "BLegShape1.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyTweakUV4.ip";
connectAttr "polyBevel4.out" "polyCylProj3.ip";
connectAttr "FLegShape2.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV1.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyAutoProj3.ip";
connectAttr "SeatShape.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplitEdge1.ip";
connectAttr "polySplitEdge1.out" "polySplitVert1.ip";
connectAttr "polySplitVert1.out" "polyChipOff1.ip";
connectAttr "SeatShape.wm" "polyChipOff1.mp";
connectAttr "polyChipOff1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV2.out" "polyMapDel2.ip";
connectAttr "polyMapDel2.out" "polyAutoProj4.ip";
connectAttr "BackShape.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polySplitEdge2.ip";
connectAttr "polySplitEdge2.out" "polySplitVert2.ip";
connectAttr "polySplitVert2.out" "polyChipOff2.ip";
connectAttr "BackShape.wm" "polyChipOff2.mp";
connectAttr "polyChipOff2.out" "polyTweakUV8.ip";
connectAttr "polyBevel1.out" "polyCylProj4.ip";
connectAttr "FLegShape1.wm" "polyCylProj4.mp";
connectAttr "polyCylProj4.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "createUVSet1.ig";
connectAttr "polyTweakUV5.out" "createUVSet2.ig";
connectAttr "polyTweakUV3.out" "createUVSet3.ig";
connectAttr "polyTweakUV4.out" "createUVSet4.ig";
connectAttr "polyTweakUV8.out" "createUVSet5.ig";
connectAttr "polyTweakUV7.out" "createUVSet6.ig";
connectAttr "createUVSet5.og" "createUVSet7.ig";
connectAttr "createUVSet4.og" "createUVSet8.ig";
connectAttr "createUVSet6.og" "createUVSet9.ig";
connectAttr "createUVSet2.og" "createUVSet10.ig";
connectAttr "createUVSet1.og" "createUVSet11.ig";
connectAttr "createUVSet9.og" "createUVSet12.ig";
connectAttr "createUVSet3.og" "createUVSet13.ig";
connectAttr "createUVSet8.og" "createUVSet14.ig";
connectAttr "createUVSet7.og" "createUVSet15.ig";
connectAttr "createUVSet14.og" "createUVSet16.ig";
connectAttr "createUVSet13.og" "createUVSet17.ig";
connectAttr "createUVSet12.og" "createUVSet18.ig";
connectAttr "createUVSet11.og" "createUVSet19.ig";
connectAttr "createUVSet10.og" "createUVSet20.ig";
connectAttr "createUVSet15.og" "createUVSet21.ig";
connectAttr "createUVSet21.og" "createUVSet22.ig";
connectAttr "createUVSet22.og" "createUVSet23.ig";
connectAttr "createUVSet23.og" "createUVSet24.ig";
connectAttr "createUVSet24.og" "createUVSet25.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "FLegShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BLegShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BLegShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "FLegShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SeatShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BackShape.iog" ":initialShadingGroup.dsm" -na;
// End of Chair2UV.ma
