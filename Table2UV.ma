//Maya ASCII 2024 scene
//Name: Table2UV.ma
//Last modified: Sat, Feb 10, 2024 10:47:22 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "FA7944A1-4A88-E867-C0D0-29A831E15ABE";
createNode transform -s -n "persp";
	rename -uid "464FA42A-45F0-C41C-766C-48ADFC95645B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -30.822813523179811 6.3399953752620446 6.0543425457420321 ;
	setAttr ".r" -type "double3" -6.6451290672394308 -76.804929122408936 3.831706313330606e-13 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 1.7763568394002505e-15 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 1.4749784462719397e-14 1.5280354310497607e-14 -1.5330416624071663e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "80C35ABE-4D72-825E-6529-1E9133CBD53D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 26.702449950018476;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -4.9999999999999751 3.2499999999999356 -7.9936057773011271e-15 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "877F16AE-4194-9EB6-1D31-A2808A47F2BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9892667C-4775-01AF-5866-3EBAFB476E51";
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
	rename -uid "B045D46C-40F3-FEE2-296D-B0922492B320";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "99F737AB-463A-1381-DE93-71AEC075EB28";
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
	rename -uid "B3AA6604-4D73-C6EF-C964-EB82AFED773D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D7E08C10-459D-9660-F820-F7923C619E5E";
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
createNode transform -n "pCube1";
	rename -uid "A2A0A75D-47A9-276C-3AA7-50B7E6B20762";
	setAttr ".rp" -type "double3" -5 6 0 ;
	setAttr ".sp" -type "double3" -5 6 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "95DE0864-41C8-75DB-C018-3FB8F81911B5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.17988025009777187 0.37208608834771439 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	rename -uid "2542F757-4D01-D036-3CB0-859C6FF5B356";
	setAttr ".rp" -type "double3" -1 3 9 ;
	setAttr ".sp" -type "double3" -1 3 9 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "BD7DC30F-4D22-644B-C038-46BF132D138A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.16971194744110107 0.87101539969444275 ;
	setAttr -s 3 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "SET4REAL";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "SET4REAL";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "10A5A4F7-4925-2541-4EFE-B886FE4B4071";
	setAttr ".rp" -type "double3" -9 3 9 ;
	setAttr ".sp" -type "double3" -9 3 9 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "235FD81A-4719-467D-FBD9-70ABF8DE9E80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56970525375871173 0.88709741264302377 ;
	setAttr -s 3 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".uvst[2].uvsn" -type "string" "Set4Real1";
	setAttr ".cuvs" -type "string" "Set4Real";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pCylinder2";
	rename -uid "BB8117A3-4339-368C-E90E-75B6C217C78B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "FC76419F-4D5D-69AE-4E88-57898E1FD7C9";
	setAttr ".rp" -type "double3" -9 3 -9 ;
	setAttr ".sp" -type "double3" -9 3 -9 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "0C21866E-4AB7-6332-0D51-BAA375A52D8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49501989223062992 0.49222352908691391 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCylinder3";
	rename -uid "FAEEAB28-40E8-2C17-B99E-F592D319C743";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "40D0FA8D-44C7-E555-7305-B48D6B41885A";
	setAttr ".rp" -type "double3" -1 3 -9 ;
	setAttr ".sp" -type "double3" -1 3 -9 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "E6102489-4CB2-729C-6788-E3858BD6AC46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49501989223062992 0.49222352908691391 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "Set4Real";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCylinder4";
	rename -uid "52466802-4254-1946-05EB-DE8936CEA29E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D66F082B-4EA7-D19E-4D43-7D8CE9BE0160";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "884D152C-4BCF-D006-3C40-54B4E2EDBD02";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E7D4D44B-493E-1882-66C8-2594448D2A55";
createNode displayLayerManager -n "layerManager";
	rename -uid "9182B2A1-4829-2100-756B-5C9FFD73C875";
createNode displayLayer -n "defaultLayer";
	rename -uid "B12A79AD-4E41-CE06-BDB8-45AFB63A363C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "384B73DB-4205-BDBA-A2B8-C4A5858BABA1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "09E23C9C-41B4-A4EB-BE7C-A0839CD37917";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "2AD5E621-409B-B7A7-8100-1BA27D8DB20A";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "9EE0EC42-4A23-4483-D803-A78DD8AD2BA9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "234253BD-4040-7B74-930D-11B72845BEBF";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "05C9168D-467D-5162-C247-CDAE9087BE0D";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyCube -n "polyCube1";
	rename -uid "0576F42C-4698-9257-338C-08ACF675A525";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "38DD73FB-4DFE-D571-35AC-30B3CD0AB6B6";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "DE79E9A4-48AC-3E36-6CD6-D2932FBFBA7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 1 0 0 0 0 0.5 0 -1 1 -9 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "018FE2FB-4D34-BF71-27A7-9F8697FA5B4F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 1 0 0 0 0 0.5 0 -9 1 -9 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "009FE2CC-4CB9-68E9-217F-3AA51AD114D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 1 0 0 0 0 0.5 0 -9 1 9 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "CD70AD94-481A-5D4E-51D6-74BB96234FE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 1 0 0 0 0 0.5 0 -1 1 9 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "D6C5C515-46B4-0D62-ED95-91A0CF91AE60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 10 0 0 0 0 1 0 0 0 0 20 0 -5 10 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "117305F9-4FEB-56BB-C7DB-E3BDDB760786";
	setAttr ".txf" -type "matrix" 0.5 0 0 0 0 3 0 0 0 0 0.5 0 -9 3 -9 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "F0992570-4EA5-28A4-0FF9-D5BA9E44B18D";
	setAttr ".txf" -type "matrix" 0.5 0 0 0 0 3 0 0 0 0 0.5 0 -1 3 -9 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "CAA8B971-4B19-5396-3818-978E81B3D8FA";
	setAttr ".txf" -type "matrix" 10 0 0 0 0 1 0 0 0 0 20 0 -5 6 0 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "713DF804-4947-61B0-E6A7-2F8FB356E771";
	setAttr ".txf" -type "matrix" 0.5 0 0 0 0 3 0 0 0 0 0.5 0 -9 3 9 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "2D99FD07-4269-5216-8917-3E98858194AD";
	setAttr ".txf" -type "matrix" 0.5 0 0 0 0 3 0 0 0 0 0.5 0 -1 3 9 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "30C61AA2-44B5-6228-1F02-7DA004ECD684";
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 729\\n    -height 776\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 729\\n    -height 776\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7417F195-4B28-A8AC-9932-FE8F3B9A1BC1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "75255211-43B7-921F-55B2-7CBB81576953";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -9 3 9 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".r" 0.99002265930175781;
createNode createUVSet -n "createUVSet1";
	rename -uid "8BF6DAE0-4848-F86F-E63B-39A6CD8C1E0B";
	setAttr ".uvs" -type "string" "Set4Real";
createNode polyCopyUV -n "polyCopyUV1";
	rename -uid "5B554863-4B69-2C18-B570-649C9175077C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:201]";
	setAttr ".uvs" -type "string" "Set4Real";
	setAttr ".uvi" -type "string" "map1";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "68649352-4463-84EC-CB3A-418562CBC2B7";
	setAttr ".uopa" yes;
	setAttr -s 224 ".uvtk[0:223]" -type "float2" -0.67121625 0.87032336 -0.6255374
		 0.87185013 -0.60505474 0.88198012 -0.70598894 0.8814519 -0.6647597 0.84345651 -0.72790813
		 0.86853498 -0.72588933 0.84081316 -0.62342602 0.84535635 -0.44636315 -0.12367281
		 -0.4058392 -0.12125954 -0.56257623 0.84805429 -0.56908977 0.87381613 -0.77379787
		 0.86718303 -0.80737072 0.88190269 -0.76737458 0.83892357 -0.83075267 0.86560905 -0.82874084
		 0.83631253 -0.5464502 -0.12958345 -0.50597328 -0.12716278 -0.87685716 0.86444455
		 -0.90906656 0.88360476 -0.87033665 0.83440125 -0.93407744 0.86306977 -0.9318012 0.83171833
		 -0.64638788 -0.13551554 -0.60598284 -0.13308522 -0.98042613 0.86208612 -1.010902166
		 0.88688707 -0.97336912 0.82968831 -1.037958145 0.86087525 -1.034583807 0.82668138
		 -0.74614733 -0.14147779 -0.705818 -0.13903388 -1.084703922 0.86014223 -1.11264324
		 0.89215654 0.92584419 0.91986167 0.91639346 0.93160713 0.8631326 0.92915839 0.8670128
		 0.91641688 -1.075765491 0.8243444 -0.84581405 -0.14749441 -0.80548829 -0.14502212
		 0.81981915 0.92726362 0.88529706 0.90493965 0.78745031 0.90125656 0.82727915 0.91417122
		 0.76606572 0.92509913 0.76908648 0.9111203 1.05691123 -0.035410605 1.097655177 -0.032965504
		 0.7226882 0.92358691 0.68928874 0.90396148 0.72955155 0.90907073 0.66885251 0.92168349
		 0.67155749 0.90626264 0.95634764 -0.041366421 0.99704367 -0.038940273 0.62536168
		 0.92024642 0.59127975 0.90496969 0.63203657 0.90431321 0.57138389 0.91836649 0.5740037
		 0.90160537 0.85593998 -0.047288381 0.89656544 -0.0448732 0.52776289 0.91689283 0.49321929
		 0.90480679 0.5344069 0.8996948 0.47362506 0.91495484 0.47622532 0.89700949 0.75566649
		 -0.053187925 0.79623538 -0.050780259 0.42986557 0.91340661 0.39501643 0.90380526
		 0.43651429 0.89510894 0.37555727 0.91138798 0.37813479 0.89241123 0.65548646 -0.0590721
		 0.6960184 -0.056669433 0.33165663 0.90975976 0.29660997 0.90219706 0.33829609 0.89050639
		 0.27717116 0.9076606 0.27969909 0.88778353 0.55535913 -0.064946145 0.59587061 -0.062546819
		 0.23312467 0.90595853 0.19795477 0.90015441 0.2397269 0.88586867 0.17845649 0.90378803
		 0.18090743 0.88311791 0.45525199 -0.07081458 0.49575627 -0.068417162 0.13425797 0.90202302
		 0.099008024 0.89780986 0.14079762 0.88119042 0.07939668 0.89979422 0.081751034 0.87841403
		 0.35514534 -0.076680273 0.39565086 -0.074283332 0.035037115 0.89797896 -0.00027099252
		 0.89527488 0.04150115 0.8764745 -0.02002871 0.89570791 -0.017774254 0.87367678 0.25502199
		 -0.082545251 0.29553539 -0.080148071 -0.06456238 0.89385849 -0.09992075 0.89265126
		 -0.058168203 0.87172782 -0.11984831 0.89156568 -0.11767948 0.86891627 0.15487459
		 -0.088411063 0.19539931 -0.086013049 -0.16456902 0.8897019 -0.19998276 0.8900376
		 -0.15822095 0.86696219 -0.22009219 0.88741201 -0.21797808 0.86414635 0.054699391
		 -0.094277948 0.095235705 -0.091879085 -0.26501441 0.88555855 -0.30049336 0.88753885
		 -0.25867191 0.86219263 -0.3207888 0.88330275 -0.31868508 0.85938466 -0.045504555
		 -0.1001471 -0.0049568191 -0.097747058 -0.36592215 0.88148773 -0.40148917 0.88526911
		 -0.3595373 0.85743785 -0.42195666 0.8793 -0.41982222 0.85465252 -0.14572845 -0.10601887
		 -0.10517345 -0.10361727 -0.46729743 0.87755376 -0.50300395 0.88336056 -0.46083549
		 0.85271847 -0.52357483 0.87546766 -0.52140099 0.84997106 -0.24596286 -0.11189505
		 -0.2054058 -0.10949096 -0.34618562 -0.11777851 -0.30563641 -0.11537084 -0.39849424
		 -0.14243957 -0.443183 -0.14492258 -0.46150309 -0.14357194 -0.36138314 -0.13893089
		 -0.34307915 -0.13936886 -0.4985249 -0.14796695 -0.54314065 -0.15041527 -0.56146932
		 -0.14784226 -0.59834218 -0.15342721 -0.64281487 -0.15583012 -0.66117185 -0.15162107
		 -0.69775105 -0.15879199 -0.74193639 -0.16111824 -0.76005518 -0.15494534 -0.79635835
		 -0.16394636 -0.83998966 -0.1660547 -0.85862768 -0.15692636 1.16315651 -0.055939395
		 1.15755033 -0.029392801 1.10656595 -0.058598958 1.061072111 -0.060887069 1.042029619
		 -0.069623321 1.14330661 -0.067039818 1.0050503016 -0.063753575 0.95992738 -0.066156834
		 0.94124073 -0.073042363 0.90419167 -0.069108933 0.85926473 -0.07156691 0.84076536
		 -0.077049822 0.80368143 -0.074568242 0.75886428 -0.077060312 0.74047893 -0.081490725
		 0.70336616 -0.08009848 0.65861028 -0.082616538 0.64030027 -0.086260527 0.6031577
		 -0.085685343 0.55843586 -0.08822462 0.54017293 -0.091281846 0.50300461 -0.091319755
		 0.45829725 -0.093876451 0.44006336 -0.096489996 0.4028731 -0.096992463 0.35816914
		 -0.0995619 0.33994901 -0.10183139 0.30274081 -0.10269327 0.25803298 -0.10527155 0.23981601
		 -0.1072565 0.2025959 -0.10841188 0.15787897 -0.11099347 0.13965836 -0.11271808 0.10243028
		 -0.11413631 0.057703763 -0.11671564 0.039471895 -0.1181713 0.0022438988 -0.11985514
		 -0.042491898 -0.12242612 -0.060738191 -0.12356982 -0.097957835 -0.1255556 -0.14269863
		 -0.12811264 -0.16096276 -0.12886509 -0.19816411 -0.13122675 -0.24290252 -0.13376352
		 -0.26118439 -0.13400516 -0.29835391 -0.13685712 -2.35888577 -0.14472565 -2.46031713
		 -0.14662859 -2.56106615 -0.14887246 -2.66104174 -0.15198895 -0.9566561 -0.15826473
		 -1.0543437 -0.15892121 -1.1519177 -0.15882406 -1.24961686 -0.15797493 -1.34766603
		 -0.15644881 -1.44625974 -0.15438768 -1.54553568 -0.15198526 -1.64556527 -0.14946899
		 -1.7463479 -0.14707777 -1.84780633 -0.14503762 -1.94980109 -0.14354107 -2.052137375
		 -0.14272639 -2.15458703 -0.14266631 -2.25691223 -0.14335808;
	setAttr ".uvs" -type "string" "Set4Real";
createNode polyCopyUV -n "polyCopyUV2";
	rename -uid "10E3C467-4225-325B-F9F8-84BF13356851";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:200]";
	setAttr ".uvs" -type "string" "SET4REAL";
	setAttr ".uvi" -type "string" "map1";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "C51C376F-4811-20B0-DBBA-F89DF2F4F369";
	setAttr ".uopa" yes;
	setAttr -s 322 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 2.2351742e-08 0 0 0 0 -5.9604645e-08
		 1.4901161e-08 0.022914797 -0.026367933 0.023215473 -0.02789551 0.022516191 -0.027658671
		 0.022014856 -0.026104271 0.02103588 -0.025265157 0.0062879026 0.017982066 0.0041757524
		 0.016378582 -0.0073356628 -0.018885911 -0.0078127384 -0.017326742 -0.0069128871 -0.017593414
		 -0.0065754056 -0.019111812 5.9604645e-08 -5.9604645e-08 0 -7.4505806e-09 -5.9604645e-08
		 2.2351742e-08 0.021347791 -0.025988311 0.021902978 -0.027556241 0.021169305 -0.027212977
		 0.020453662 -0.025666952 0.0047160685 0.018500447 0.005386591 0.018246472 0 -4.4703484e-08
		 0 2.6077032e-08 5.9604645e-08 -7.4505806e-09 0.019785047 -0.025520355 0.020340025
		 -0.027088046 0.019606382 -0.026744783 0.018890828 -0.025198787 0.0031532347 0.018933475
		 0.0038258731 0.018710136 5.9604645e-08 2.7939677e-08 -5.9604645e-08 1.2107193e-07
		 0 -7.4505806e-09 0.018222094 -0.0250521 0.018777043 -0.026619494 0.01804322 -0.026276201
		 0.017327666 -0.024730295 0.0015901625 0.019366443 0.0022628307 0.019143105 0 -1.1175871e-08
		 5.9604645e-08 -7.4505806e-09 2.9802322e-08 4.4703484e-08 0.016658872 -0.024583429
		 0.017213732 -0.026150554 0.01647982 -0.025807232 0.015764326 -0.024261385 2.6911497e-05
		 0.019799173 0.00069969893 0.019575953 0 1.3038516e-08 2.9802322e-08 1.4901161e-08
		 0 0 0.015095443 -0.024114341 0.015650332 -0.025681168 0.01491639 -0.025337785 0.014200777
		 -0.023791969 -0.0015364289 0.020231724 -0.0008636713 0.020008683 -2.9802322e-08 -4.0978193e-08
		 0 -9.3132257e-08 2.9802322e-08 2.9802322e-08 0.013531864 -0.023644716 0.014085561
		 -0.025213152 0.013350397 -0.024873734 0.012636185 -0.023323417 -0.0031000376 0.020663977
		 -0.0024271905 0.020440996 0 -1.4901161e-08 2.9802322e-08 4.4703484e-08 2.9802322e-08
		 1.4901161e-08 0.011966884 -0.023177743 0.012521267 -0.024754494 0.011787176 -0.024410993
		 0.011071473 -0.022856146 -0.0046645105 0.021098018 -0.003991425 0.020874083 0 -1.4901161e-08
		 0 2.9802322e-08 -2.9802322e-08 -1.4901161e-08 0.010402232 -0.022710234 0.010956913
		 -0.024289101 0.010222167 -0.023950279 0.0095067024 -0.022395641 -0.0062283278 0.021529853
		 -0.0055556297 0.021307409 -2.9802322e-08 4.4703484e-08 -2.9802322e-08 -4.4703484e-08
		 -2.9802322e-08 0 0.0088374317 -0.022249222 0.0093921125 -0.023822814 0.0086576641
		 -0.023479164 0.0079417229 -0.021933943 -0.007794559 0.021965563 -0.0071208477 0.021740854
		 0 -1.4901161e-08 0 2.9802322e-08 0 2.9802322e-08 0.0072723627 -0.021785945 0.0078219771
		 -0.023340762 0.0070869327 -0.023005366 0.0063738227 -0.021475285 -0.009365648 0.022417307
		 -0.008689642 0.022192299 -2.9802322e-08 2.9802322e-08 8.9406967e-08 -1.4901161e-08
		 0 1.4901161e-08 0.0057028532 -0.021329761 0.0062656999 -0.022879958 0.0055190921
		 -0.022537589 0.0048008561 -0.021011919 -0.010936856 0.022853196 -0.01026082 0.022628367
		 -5.9604645e-08 0 0 5.9604645e-08 0 -4.4703484e-08 0.0041269064 -0.02086395 0.00469172
		 -0.022415161 0.0039485097 -0.02207005 0.0032249689 -0.020544052 -0.012507856 0.023288488
		 -0.011831999 0.023063898 -2.9802322e-08 -5.9604645e-08 -2.9802322e-08 5.9604645e-08
		 -2.9802322e-08 -5.9604645e-08 0.002550602 -0.020394385 0.0031076074 -0.021948457
		 0.0023652911 -0.021605521 0.0016484261 -0.020076454 -0.014078796 0.023723185 -0.013402998
		 0.023498893 0 2.9802322e-08 -5.9604645e-08 8.9406967e-08 0 1.4901161e-08 0.00097423792
		 -0.019927919 0.0015309453 -0.021481901 0.00078862906 -0.021139055 7.1942806e-05 -0.019610077
		 -0.015649557 0.024157226 -0.014973819 0.023933172 5.9604645e-08 -5.9604645e-08 0
		 -2.9802322e-08 -5.9604645e-08 -4.4703484e-08 -0.00060230494 -0.019461542 -4.5716763e-05
		 -0.021015465 -0.00078809261 -0.020672679 -0.0015046 -0.01914373 -0.017220974 0.02460593
		 -0.016545296 0.024380982 0 -5.9604645e-08 -5.9604645e-08 -2.9802322e-08 0 -1.4901161e-08
		 -0.002178967 -0.018995225 -0.001622498 -0.020548999 -0.0023649335 -0.020206273 -0.0030813217
		 -0.018677384 -0.018791497 0.025041401 -0.018115878 0.024816811 0 2.9802322e-08 0
		 -7.4505806e-08 -5.9604645e-08 0 -0.0037574768 -0.018527538 -0.003202498 -0.020081788
		 -0.0039440393 -0.019738793 -0.004660368 -0.018207699 -0.0203619 0.025476217 -0.019686401
		 0.025251985 5.9604645e-08 0 -5.9604645e-08 5.9604645e-08 0 0 -0.0053350925 -0.018060476
		 -0.0047803521 -0.019614607 -0.0055219531 -0.019271672 -0.0062381625 -0.017740637
		 -0.0219329 0.02592504 -0.02125746 0.025700569 5.9604645e-08 0 5.9604645e-08 -1.4901161e-08
		 -0.023503304 0.026361167 -0.022827864 0.026137471 5.9604645e-08 -5.9604645e-08 0
		 -5.9604645e-08 5.9604645e-08 -5.9604645e-08 0 -5.9604645e-08 -0.024400353 0.026627541
		 -0.024739504 0.028149128 -0.023982227 0.027923167 0.0057853758 0.019534469 0.0050848126
		 0.019771874 0 0 1.1920929e-07 5.9604645e-08 0 -1.1920929e-07 0.0044640899 0.020111859
		 0.0037240684 0.020228565 5.9604645e-08 -5.9604645e-08 5.9604645e-08 5.9604645e-08
		 5.9604645e-08 0 0.0029011071 0.020544708 0.002161026 0.020661414 5.9604645e-08 -1.1920929e-07
		 5.9604645e-08 0 5.9604645e-08 5.9604645e-08 0.0013380051 0.020977437 0.00059783459
		 0.021094203 5.9604645e-08 0 2.9802322e-08 5.9604645e-08 2.9802322e-08 0 -0.00022521615
		 0.021410108 -0.00096541643 0.021526754 2.9802322e-08 5.9604645e-08 0 5.9604645e-08
		 0 0 -0.0017887056 0.02184236 -0.0025289953 0.021959066 0 1.1920929e-07 -2.9802322e-08
		 5.9604645e-08 5.9604645e-08 -5.9604645e-08 -0.0033527315 0.022272408 -0.0040935874
		 0.022390425 5.9604645e-08 0 2.9802322e-08 0 2.9802322e-08 0 -0.0049173832 0.022707462
		 -0.0056578517 0.022824705 0 -5.9604645e-08 0 0 -2.9802322e-08 0 -0.0064839423 0.023136556
		 -0.0072259903 0.023256838 0 5.9604645e-08 -2.9802322e-08 -5.9604645e-08 -5.9604645e-08
		 0 -0.0080632269 0.023579836 -0.008803159 0.023710012 0 0 0 5.9604645e-08 0 0 -0.0096330047
		 0.024023831 -0.010374397 0.024146199 8.9406967e-08 0 -2.9802322e-08 0 0 0 -0.011204123
		 0.0244596 -0.011945426 0.024581969 2.9802322e-08 -5.9604645e-08 -5.9604645e-08 0
		 0 5.9604645e-08 -0.012775123 0.024894834 -0.013516307 0.025017083;
	setAttr ".uvtk[250:321]" -2.9802322e-08 0 -2.9802322e-08 1.1920929e-07 -2.9802322e-08
		 5.9604645e-08 -0.014345884 0.025329411 -0.015087068 0.025451422 -8.9406967e-08 -5.9604645e-08
		 -5.9604645e-08 5.9604645e-08 -5.9604645e-08 0 -0.015938878 0.025765836 -0.01667738
		 0.025902152 -5.9604645e-08 5.9604645e-08 -5.9604645e-08 5.9604645e-08 -5.9604645e-08
		 0 -0.017504394 0.026207864 -0.018243492 0.026339591 -1.7881393e-07 0 -1.1920929e-07
		 5.9604645e-08 -5.9604645e-08 -5.9604645e-08 -0.019061446 0.026645064 -0.019799471
		 0.026767373 -1.1920929e-07 5.9604645e-08 -5.9604645e-08 -5.9604645e-08 -1.1920929e-07
		 -5.9604645e-08 -0.020649016 0.027082622 -0.021388769 0.02721858 -1.1920929e-07 -5.9604645e-08
		 0 -5.9604645e-08 0 -5.9604645e-08 -0.022200227 0.027527809 -0.022939086 0.027649581
		 5.9604645e-08 -5.9604645e-08 5.9604645e-08 -5.9604645e-08 0.02188307 -0.028251916
		 0.023876458 -0.027660936 0.022512138 -0.027134567 0.020949125 -0.026666403 0.019385993
		 -0.026197821 0.017822564 -0.025728822 0.016259074 -0.025259316 0.014693648 -0.024802834
		 0.013129771 -0.024332464 0.011564642 -0.02387172 0.01000005 -0.023400486 0.0084255338
		 -0.022922486 0.0068515539 -0.022457749 0.0052835345 -0.021988451 0.0037010908 -0.021526217
		 0.0021243691 -0.021059841 0.00054764748 -0.020593524 -0.0010321736 -0.020126671 -0.0026076436
		 -0.019659936 -0.0041855574 -0.019192874 0.0044260323 0.019536257 0.0064162612 0.020128727
		 0.0050458014 0.02051574 0.0034827292 0.020948648 0.0019194782 0.021381378 0.00035616755
		 0.021813929 -0.0012074113 0.022246242 -0.002771467 0.022679806 -0.0043365359 0.023112178
		 -0.0059047937 0.023549139 -0.0074827969 0.024002135 -0.0090539455 0.024438322 -0.010625005
		 0.024873972 -0.012195826 0.025309026 -0.013766468 0.025743365 -0.015351534 0.026199937
		 -0.016918242 0.02663523 -0.018479884 0.027059257 -0.020063818 0.027515888 -0.021620452
		 0.027940273;
	setAttr ".uvs" -type "string" "SET4REAL";
createNode polyCylProj -n "polyCylProj2";
	rename -uid "62BB7091-4574-CCF8-77E9-7CB95EAC5589";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.0000000298023224 3 9 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".uvs" -type "string" "SET4REAL";
	setAttr ".r" 0.99002265930175781;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "73AD4305-4A08-D39C-17E1-E09418B0735C";
	setAttr ".uopa" yes;
	setAttr -s 206 ".uvtk[0:205]" -type "float2" -1.065797448 0.84931791 -1.020216465
		 0.85089809 -1.00021278858 0.86068702 -1.10110164 0.86010909 -1.059125185 0.82266563
		 -1.12237298 0.8474558 -1.12008858 0.81993675 -1.017910719 0.82461208 -0.84126955
		 -0.13379675 -0.8009212 -0.13136303 -0.95722532 0.82738131 -0.96389323 0.85292894
		 -1.16817331 0.8460412 -1.20248592 0.86048919 -1.16145253 0.81799364 -1.22502232 0.84438151
		 -1.22265375 0.8152864 -0.94083369 -0.13973546 -0.90053761 -0.13730568 -1.27104628
		 0.84314454 -1.30424905 0.86210692 -1.26412773 0.81331789 -1.32817066 0.84167182 -1.32542181
		 0.81053692 -1.040229797 -0.14565849 -1.000002503395 -0.14323395 -1.37444949 0.84060472
		 -1.36686242 0.80845416 -1.42788887 0.80536664 -1.13945878 -0.15157098 -1.099296212
		 -0.14914781 0.51888835 0.91004896 0.48908171 0.88320732 0.52780598 0.89865261 0.46572933
		 0.90770602 0.4691284 0.8952589 0.75853598 -0.038471639 -1.19849455 -0.15507257 0.42249465
		 0.90588325 0.39139885 0.87962282 0.42949 0.89305872 0.36882991 0.90380031 0.37142879
		 0.89008498 0.65809649 -0.044483364 0.698735 -0.042037368 0.32551244 0.90235686 0.29308498
		 0.8824268 0.33197695 0.8880865 0.27175203 0.9005301 0.27410147 0.88536078 0.55762321
		 -0.050444961 0.5982424 -0.048012197 0.22831689 0.89915502 0.19500616 0.88353884 0.23465793
		 0.88345993 0.17441347 0.89734262 0.17673969 0.8808288 0.45728984 -0.056394517 0.49784929
		 -0.053964913 0.13085052 0.8959226 0.096933268 0.88347471 0.13721868 0.87896132 0.076790623
		 0.89404219 0.079150967 0.87634188 0.35711047 -0.062342227 0.39761364 -0.059913099
		 0.033093892 0.89253962 -0.0012397021 0.88256258 0.039516501 0.87447679 -0.021130651
		 0.89056826 -0.018746644 0.87183309 0.25705999 -0.068289995 0.2975184 -0.065860748
		 -0.064962789 0.88897753 -0.099583812 0.88103229 -0.058507442 0.86995673 -0.11935783
		 0.88691586 -0.11698329 0.86727583 0.15710253 -0.07423842 0.19752982 -0.071808696
		 -0.16332996 0.8852433 -0.19815192 0.87905347 -0.15687382 0.86538213 -0.2179013 0.88310075
		 -0.21556771 0.86266136 0.057204276 -0.080188096 0.097614378 -0.077757537 -0.26201907
		 0.88135689 -0.29699266 0.87675726 -0.25559202 0.86074817 -0.3167766 0.8791461 -0.31450689
		 0.85798979 -0.042660624 -0.086139679 -0.0022592843 -0.083708048 -0.36105037 0.87734389
		 -0.39615196 0.87425363 -0.35466695 0.85605752 -0.41600651 0.8750807 -0.41380578 0.85326648
		 -0.14251378 -0.092093587 -0.10211283 -0.089660645 -0.46044898 0.87323576 -0.49567366
		 0.87164193 -0.45410526 0.85131764 -0.51561987 0.87093949 -0.5134744 0.84850091 -0.24236807
		 -0.098049879 -0.20196283 -0.095615625 -0.56024587 0.86907113 -0.59560198 0.86901999
		 -0.55391741 0.84653974 -0.61564964 0.86676627 -0.61352664 0.84370679 -0.34223008
		 -0.1040085 -0.30181897 -0.10157305 -0.66047388 0.86489803 -0.69598013 0.86648995
		 -0.65411842 0.84173852 -0.71612656 0.86261421 -0.71397972 0.83890098 -0.44209731
		 -0.10996878 -0.40168199 -0.10753232 -0.76116103 0.86077392 -0.79684979 0.86416501
		 -0.75472629 0.83693194 -0.81707299 0.85854524 -0.8148548 0.83410394 -0.54195833 -0.11592984
		 -0.501544 -0.11349285 -0.86231577 0.85676324 -0.89825195 0.86217558 -0.85575831 0.83214009
		 -0.91847259 0.85462403 -0.91616488 0.82933599 -0.64179438 -0.12189001 -0.60138857
		 -0.11945301 -0.74157667 -0.12784672 -0.70119214 -0.1254108 -0.7936691 -0.1522339
		 -0.83820897 -0.15474159 -0.85645717 -0.15303612 -0.75663549 -0.14833665 -0.7384516
		 -0.14912677 -0.89334345 -0.15781426 -0.93780142 -0.16027993 -0.95612264 -0.15735513
		 -0.99279189 -0.16330749 -1.037105322 -0.16571689 -1.055532455 -0.16117227 -1.091846585
		 -0.16867578 -1.13590431 -0.17099398 -1.19018435 -0.17381209 0.76352906 -0.06436795
		 0.74433774 -0.075019777 0.70714128 -0.067170262 0.66177225 -0.069541395 0.64320523
		 -0.077736855 0.60588229 -0.072484136 0.56085515 -0.074935257 0.54256213 -0.081260681
		 0.50524038 -0.077938378 0.46040532 -0.080431879 0.44225627 -0.085356474 0.40495214
		 -0.083476186 0.36023301 -0.086000502 0.34217027 -0.089878261 0.304878 -0.089079261
		 0.26022834 -0.091628969 0.24222127 -0.094727695 0.20493114 -0.094738007 0.16032258
		 -0.09730947 0.1423482 -0.0998317 0.10505641 -0.1004445 0.060468078 -0.10303414 0.042511523
		 -0.10512966 0.0052152574 -0.10619062 -0.03936553 -0.10879421 -0.057317436 -0.11056793
		 -0.094617784 -0.11196679 -0.13920051 -0.11457968 -0.15715748 -0.11609626 -0.19445959
		 -0.11776191 -0.23904949 -0.12037843 -0.25701955 -0.12166584 -0.29431933 -0.12356371
		 -0.33891919 -0.12617749 -0.35690963 -0.12722778 -0.39420098 -0.12935847 -0.43881029
		 -0.13196266 -0.45684028 -0.1327312 -0.49409831 -0.13513482 -0.53871179 -0.13772482
		 -0.55678701 -0.13812089 -0.59399593 -0.14088136 -0.63860279 -0.14345032 -0.65672982
		 -0.14334238 -0.69386578 -0.14658511 -1.43189585 0.83928132 -1.40623474 0.86530179
		 -1.50823355 0.87049288 -1.46892798 0.80300266 -1.23376012 -0.17592818 -1.2530421
		 -0.1663996 -1.15455532 -0.16429597 -1.47858691 0.83844453 -1.23866975 -0.15751964;
	setAttr ".uvs" -type "string" "SET4REAL";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "ED9A6B05-4813-9836-F48C-8EB77C498F6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5 6 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 20 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "607014A4-46C1-4CFB-63F6-89BD2F5065B3";
	setAttr ".uopa" yes;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "5954077B-4BC9-AC22-5ABD-309AEA3B1762";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 20 20 20 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "92058C78-4C74-9ADB-5CE5-678646D56433";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" 0.32000089 -0.14145616 0.3211621
		 -9.9478289e-05 0.3176024 -0.000152166 0.31644118 -0.14150885 0.31801826 -0.13985416
		 0.31925422 -0.0018287199 0.31887329 -0.0012769871 0.32003963 -0.001760009 0.31834894
		 -0.13977972 0.31958491 -0.0017541349 0.31873 -0.14033142 0.31756365 -0.13984832 0.7291947
		 -0.14147469 0.73546898 -9.1478229e-05 0.73190922 -1.2557022e-05 0.72563493 -0.1413959
		 0.73357379 -0.0019127037 0.72720093 -0.13996544 0.73443693 -0.0017597572 0.73326659
		 -0.0011281129 0.73390287 -0.0015219394 0.72753 -0.13957456 0.72666699 -0.13972768
		 0.72783732 -0.14035925 -0.16269094 0.00064946245 -0.23128712 0.00024686567 -0.23046076
		 -0.14055529 -0.16186458 -0.14015272 -0.16270596 -0.0013566109 -0.23130208 -0.0017591831
		 -0.16184962 -0.13814655 -0.2304458 -0.13854918 -0.048227578 0.00064960308 -0.11682372
		 0.00024700537 -0.11599733 -0.14055523 -0.047401194 -0.1401526 -0.048242562 -0.0013565262
		 -0.11683871 -0.0017591235 -0.047386214 -0.13814655 -0.11598234 -0.13854906 -0.030385375
		 -0.070354998 -0.030385375 -0.0017591418 -0.033995986 -0.0017591418 -0.033995986 -0.070354998
		 -0.013573408 -0.49261239 -0.013573408 -0.42401654 -0.017184019 -0.42401654 -0.017184019
		 -0.49261239;
createNode polyCylProj -n "polyCylProj3";
	rename -uid "C6555ED8-45DB-664D-7679-C0BE0C91D3C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -9 3 -9 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".r" 0.99002265930175781;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "BADCE5D7-430F-C02A-9A0A-2FBC14BBD046";
	setAttr ".uopa" yes;
	setAttr -s 224 ".uvtk[0:223]" -type "float2" -0.18252666 0.41459355 -0.13935705
		 0.41552502 -0.12221032 0.40893319 -0.22164671 0.40805101 -0.17578109 0.39642435 -0.23604037
		 0.41328999 -0.23260696 0.39496601 -0.13718583 0.39725545 -0.15858503 -0.34121627
		 -0.12050556 -0.34112456 -0.080395505 0.39847884 -0.086028382 0.41660213 -0.27939856
		 0.41217691 -0.32212472 0.40676746 -0.27120328 0.39400923 -0.33314323 0.41064438 -0.32803857
		 0.39235011 -0.25266796 -0.34129825 -0.21459036 -0.34124801 -0.37670672 0.40934587
		 -0.42389959 0.40524164 -0.36660522 0.39130396 -0.43068665 0.40756628 -0.42336011
		 0.38956532 -0.34674454 -0.34124777 -0.30867052 -0.34125146 -0.47447413 0.40601808
		 -0.46181166 0.38854787 -0.51827264 0.38703293 -0.4408111 -0.34106776 -0.4027437 -0.34111995
		 1.35581958 0.40481338 1.35460436 0.40056974 1.34691131 0.39051813 1.30284214 0.40683222
		 1.29085481 0.39104229 1.34693193 -0.33490977 -0.49679238 -0.34092313 1.2599802 0.4081305
		 1.25832105 0.40253672 1.25262403 0.39159894 1.2067939 0.40952262 1.19623923 0.39268422
		 1.2528851 -0.33564845 1.29096127 -0.33533922 1.16359568 0.41070589 1.15564013 0.40437672
		 1.15783978 0.3934215 1.11019897 0.41198736 1.10124505 0.39469236 1.15878439 -0.33642277
		 1.1968739 -0.33612654 1.066957474 0.41305178 1.054623961 0.40629274 1.062750936 0.39545107
		 1.013566732 0.4141959 1.0060561895 0.39669922 1.064674735 -0.33708581 1.10276592
		 -0.33683732 0.97037876 0.41513646 0.95478255 0.40811142 0.96751827 0.39739811 0.91706109
		 0.41612977 0.91078991 0.39852193 0.97056478 -0.33762279 1.0086556673 -0.33742097
		 0.87395179 0.41694221 0.85579491 0.409758 0.87223417 0.39912534 0.82071888 0.41777629
		 0.81550205 0.40007919 0.87645817 -0.33805606 0.9145484 -0.33789 0.77768874 0.41845807
		 0.75742704 0.41118824 0.77694309 0.40057179 0.72453392 0.41912743 0.72021979 0.40133637
		 0.78235495 -0.33841524 0.82044351 -0.33827391 0.68157327 0.41967553 0.65950674 0.41236743
		 0.68166429 0.4017106 0.62848532 0.42017457 0.62495601 0.40227723 0.68825293 -0.33872804
		 0.72634059 -0.33860049 0.58558333 0.42058307 0.56189662 0.41326287 0.58640563 0.40252826
		 0.53254652 0.42090371 0.52971029 0.40289184 0.59415448 -0.33901742 0.63224065 -0.33889481
		 0.48969066 0.42116353 0.4644798 0.41384181 0.49116588 0.40301549 0.43668926 0.42129475
		 0.43448198 0.40317118 0.50005656 -0.33930045 0.53814232 -0.33917746 0.39386302 0.42139378
		 0.36715102 0.41407159 0.39594048 0.40316343 0.34087598 0.42132205 0.33926088 0.4031055
		 0.40596074 -0.33958822 0.44404626 -0.3394604 0.29806048 0.42124674 0.26980221 0.41391975
		 0.30071962 0.40296251 0.24506138 0.42095798 0.24403523 0.40268385 0.31186664 -0.33988529
		 0.34995109 -0.33975154 0.20223062 0.42069596 0.17232411 0.41335493 0.20548938 0.40240219
		 0.14918946 0.42017895 0.14879225 0.40189466 0.21777241 -0.34018978 0.25585651 -0.34005147
		 0.10631354 0.41972381 0.074594095 0.41234857 0.11023577 0.40147209 0.053194709 0.41897711
		 0.053513892 0.40072769 0.12368067 -0.34049377 0.16176356 -0.34035453 0.010243721
		 0.41833794 -0.023528151 0.41087717 0.014943605 0.4001644 -0.042980842 0.41738489
		 -0.041810207 0.39917862 0.029589301 -0.34078214 0.067671783 -0.34064835 -0.064499706
		 -0.34103304 -0.026417904 -0.34091395 -0.1194914 -0.35824153 -0.16169728 -0.35828385
		 -0.19051166 -0.34889206 -0.095166326 -0.34867629 -0.067269012 -0.3580651 -0.2139452
		 -0.35838601 -0.25618464 -0.35835424 -0.28622556 -0.34894553 -0.30846155 -0.35831615
		 -0.35074353 -0.35813931 -0.38242728 -0.34872475 -0.40306592 -0.35783276 -0.44541842
		 -0.35736659 -0.49786413 -0.35654178 1.34913313 -0.35008767 1.33278346 -0.34248808
		 1.2964741 -0.35143581 1.25405574 -0.3522819 1.23534977 -0.34382239 1.20161533 -0.35306302
		 1.15932059 -0.35353884 1.13876438 -0.34468457 1.10697258 -0.35403493 1.064736485
		 -0.35431567 1.042775989 -0.34524408 1.012440324 -0.35465947 0.97024089 -0.35483071
		 0.94722664 -0.34562263 0.91798413 -0.35509029 0.87581146 -0.35519996 0.85201085 -0.3459014
		 0.82358658 -0.35541436 0.78143644 -0.35549101 0.75704676 -0.34613195 0.72923768 -0.35568371
		 0.687105 -0.35574564 0.66227132 -0.34634957 0.63492793 -0.35593328 0.5928086 -0.35599211
		 0.56762922 -0.34657422 0.54064602 -0.35618261 0.49853551 -0.35624644 0.47307032 -0.34681919
		 0.44638222 -0.35644677 0.4042744 -0.35651878 0.37854916 -0.34709045 0.35212368 -0.35673079
		 0.31001371 -0.3568128 0.28401756 -0.34739003 0.25785869 -0.35703567 0.21574001 -0.35712644
		 0.1894307 -0.34771213 0.16357575 -0.35735586 0.12144275 -0.35745099 0.094740227 -0.34804645
		 0.069262333 -0.35767934 0.027109688 -0.35777238 -0.00010632724 -0.3483744 -0.025090747
		 -0.35798624 -0.52871233 0.40385816 -0.52726603 0.40364584 -0.6325925 0.40218833 -0.55644912
		 0.38634938 -0.54042435 -0.3555145 -0.47906834 -0.34767291 -0.57285333 0.40180808
		 -0.53483742 -0.34089273 -0.57705003 -0.34628198 -0.67566657 -0.34433046 -0.7749601
		 -0.34202316 -0.87500775 -0.33958641 -0.97581291 -0.33725968 -1.077303052 -0.33527145
		 -1.17934299 -0.33381739 -1.28173947 -0.3330408 -1.38426495 -0.33301875 -1.48668134
		 -0.33375433 -1.58875787 -0.33517674 -1.69030118 -0.33714762 -1.79116726 -0.33947507
		 -1.89127827 -0.34193233 -1.99063182 -0.34427974 -2.08929944 -0.3462896 -2.18741941
		 -0.34776494 -2.28518343 -0.34856263 -2.38205528 -0.34860191;
createNode polyCylProj -n "polyCylProj4";
	rename -uid "6CCE1D1D-41DB-348C-B96F-679F15F7573F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.0000000298023224 3 -9 ;
	setAttr ".ps" -type "double2" 180 6 ;
	setAttr ".r" 0.99002265930175781;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "4689C97F-468F-A9AD-A7DC-31846D77928D";
	setAttr ".uopa" yes;
	setAttr -s 224 ".uvtk[0:223]" -type "float2" -0.19844559 0.73205835 -0.15527585
		 0.73298979 -0.13812903 0.72639799 -0.23756534 0.72551578 -0.19170049 0.71388906 -0.25195917
		 0.73075479 -0.24852571 0.71243078 -0.15310457 0.71472019 -0.17450383 -0.023751713
		 -0.13642433 -0.023659682 -0.096314229 0.71594363 -0.10194705 0.7340669 -0.29531738
		 0.72964174 -0.33804318 0.72423226 -0.2871221 0.711474 -0.34906229 0.72810918 -0.34395751
		 0.70981485 -0.26858661 -0.02383361 -0.23050843 -0.023783006 -0.39262542 0.72681063
		 -0.43981823 0.72270644 -0.38252434 0.70876867 -0.44660529 0.72503108 -0.43927869
		 0.70703012 -0.3626636 -0.023783185 -0.32458922 -0.023786403 -0.49039307 0.72348291
		 -0.47773048 0.70601255 -0.53419161 0.70449775 -0.45672971 -0.0236027 -0.41866228
		 -0.023654854 1.33990097 0.72227818 1.33868527 0.71803457 1.33099258 0.70798284 1.28692341
		 0.72429699 1.27493584 0.70850712 1.33101344 -0.017444773 -0.51271123 -0.023458099
		 1.24406135 0.7255953 1.24240208 0.72000152 1.23670506 0.70906371 1.19087505 0.72698742
		 1.18032074 0.71014899 1.23696613 -0.018183453 1.27504241 -0.017874105 1.14767718
		 0.72817063 1.13972092 0.72184151 1.1419208 0.7108863 1.094280481 0.72945213 1.085326195
		 0.71215707 1.14286578 -0.018957777 1.18095565 -0.018661542 1.051038623 0.73051661
		 1.038705111 0.72375751 1.046831608 0.71291584 0.99764806 0.73166066 0.99013758 0.71416396
		 1.048756003 -0.019620938 1.086847305 -0.019372327 0.95446014 0.73260123 0.93886387
		 0.72557622 0.95159972 0.71486288 0.90114236 0.73359454 0.89487118 0.71598667 0.95464599
		 -0.020157976 0.99273759 -0.019955738 0.858033 0.73440701 0.83987606 0.7272228 0.85631543
		 0.71659011 0.80480003 0.73524106 0.79958338 0.71754402 0.86053938 -0.020591242 0.89862961
		 -0.020425363 0.76176995 0.73592287 0.74150836 0.72865301 0.7610237 0.71803659 0.70861518
		 0.73659223 0.70430112 0.71880108 0.76643604 -0.020950412 0.80452466 -0.02080868 0.66565448
		 0.73714036 0.64358824 0.72983223 0.66574538 0.71917528 0.61256623 0.73763931 0.60903698
		 0.719742 0.67233425 -0.021263218 0.7104224 -0.021135246 0.56966454 0.73804784 0.54597819
		 0.73072761 0.57048655 0.71999305 0.51662797 0.73836851 0.51379174 0.72035664 0.57823545
		 -0.021552598 0.61632192 -0.02143017 0.47377178 0.73862833 0.44856128 0.73130661 0.47524711
		 0.72048026 0.42077026 0.73875952 0.41856292 0.72063595 0.48413792 -0.021835482 0.52222383
		 -0.021712398 0.37794432 0.73885858 0.35123184 0.73153639 0.38002178 0.7206282 0.32495728
		 0.73878682 0.32334194 0.72057027 0.39004216 -0.022123253 0.42812744 -0.021995341
		 0.2821416 0.73871154 0.25388339 0.73138452 0.28480062 0.72042722 0.22914258 0.73842275
		 0.22811672 0.72014862 0.29594776 -0.022420323 0.33403233 -0.022286749 0.18631217
		 0.73816073 0.15640515 0.7308197 0.18957064 0.71986693 0.13327083 0.73764372 0.13287339
		 0.71935946 0.20185402 -0.022724962 0.23993811 -0.022586441 0.090394907 0.73718858
		 0.058675159 0.7298134 0.094316415 0.71893686 0.037276022 0.73644191 0.037595205 0.7181924
		 0.10776208 -0.023028946 0.14584504 -0.022889411 -0.0056749061 0.73580271 -0.03944679
		 0.72834194 -0.00097513944 0.71762913 -0.058899548 0.73484969 -0.057728969 0.71664339
		 0.013670495 -0.023317313 0.051753577 -0.0231835 -0.08041849 -0.02356801 -0.042336721
		 -0.023448979 -0.13541034 -0.040776934 -0.17761615 -0.040819254 -0.20643038 -0.031427231
		 -0.11108508 -0.031211283 -0.083187722 -0.040600147 -0.22986391 -0.040921416 -0.27210352
		 -0.04088923 -0.30214402 -0.031481173 -0.32438061 -0.040851083 -0.36666223 -0.040674414
		 -0.39834592 -0.031260397 -0.4189845 -0.040367808 -0.46133742 -0.039901573 -0.51378304
		 -0.039076764 1.33321452 -0.032622661 1.31686449 -0.025023438 1.28055549 -0.033971038
		 1.23813677 -0.034817126 1.21943092 -0.026357919 1.18569648 -0.035598304 1.1434021
		 -0.036073882 1.12284529 -0.027220041 1.091053963 -0.036570508 1.048817754 -0.03685065
		 1.026857138 -0.027779255 0.99652165 -0.037194688 0.95432228 -0.037365872 0.93130791
		 -0.028158043 0.90206534 -0.03762551 0.85989267 -0.037734944 0.83609205 -0.028436575
		 0.80766767 -0.037949521 0.76551765 -0.038026173 0.74112809 -0.028667543 0.71331894
		 -0.038219292 0.67118615 -0.038281281 0.64635277 -0.028884564 0.61900884 -0.03846832
		 0.57688981 -0.03852709 0.55171078 -0.029109392 0.5247274 -0.038718183 0.48261651
		 -0.038781602 0.45715186 -0.029354189 0.43046317 -0.038981993 0.3883557 -0.039053995
		 0.36262992 -0.029626045 0.33620492 -0.039266068 0.29409486 -0.039347727 0.26809856
		 -0.02992532 0.24194005 -0.039570767 0.19982156 -0.039661366 0.17351171 -0.030247126
		 0.14765702 -0.039890964 0.10552416 -0.039986577 0.078821287 -0.030581567 0.05334365
		 -0.040214267 0.011191001 -0.040307608 -0.016024958 -0.030909393 -0.041009564 -0.04052135
		 -0.54463118 0.72132295 -0.54318434 0.72111064 -0.64851147 0.71965313 -0.57236785
		 0.70381409 -0.55634302 -0.038049657 -0.49498677 -0.030208025 -0.588772 0.71927285
		 -0.55075598 -0.023427641 -0.59296906 -0.02881721 -0.69158548 -0.02686587 -0.79087925
		 -0.024558581 -0.89092666 -0.022121882 -0.9917317 -0.019795043 -1.093222141 -0.017806752
		 -1.19526172 -0.016352696 -1.29765773 -0.015575986 -1.40018356 -0.015554052 -1.50259984
		 -0.016289813 -1.6046772 -0.017712159 -1.70622015 -0.019683046 -1.80708623 -0.022010541
		 -1.90719724 -0.024467744 -2.0065507889 -0.026815206 -2.10521817 -0.028824661 -2.20333838
		 -0.030300174 -2.30110168 -0.031097855 -2.39797401 -0.031137493;
createNode createUVSet -n "createUVSet2";
	rename -uid "A9C0002C-4153-AF45-0ABB-54A785CEAA38";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet3";
	rename -uid "0F54756D-401C-4AEB-E7FC-6A9DF3FBE4BF";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet4";
	rename -uid "8E857129-4310-DAFB-C29A-FD9ABFCA11D6";
	setAttr ".uvs" -type "string" "Set4Real";
createNode createUVSet -n "createUVSet5";
	rename -uid "05B04E8B-42B3-4F4F-280F-22ACA87B85E4";
	setAttr ".uvs" -type "string" "Set4Real1";
createNode createUVSet -n "createUVSet6";
	rename -uid "C3E33058-4283-5EA0-E3E6-BA8F3F0AC4A9";
	setAttr ".uvs" -type "string" "Set4Real";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "67C24DB7-484B-BF49-EAEC-8D9E620AB84E";
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
connectAttr "createUVSet4.og" "pCubeShape1.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "createUVSet6.og" "pCylinderShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCylinderShape1.uvst[1].uvtw";
connectAttr "createUVSet5.og" "pCylinderShape2.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCylinderShape2.uvst[1].uvtw";
connectAttr "createUVSet2.og" "pCylinderShape3.i";
connectAttr "polyTweakUV6.uvtk[0]" "pCylinderShape3.uvst[0].uvtw";
connectAttr "createUVSet3.og" "pCylinderShape4.i";
connectAttr "polyTweakUV7.uvtk[0]" "pCylinderShape4.uvst[0].uvtw";
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
connectAttr "pCylinderShape4.wm" "polyBevel1.mp";
connectAttr "polySurfaceShape2.o" "polyBevel2.ip";
connectAttr "pCylinderShape3.wm" "polyBevel2.mp";
connectAttr "polySurfaceShape3.o" "polyBevel3.ip";
connectAttr "pCylinderShape2.wm" "polyBevel3.mp";
connectAttr "polyCylinder1.out" "polyBevel4.ip";
connectAttr "pCylinderShape1.wm" "polyBevel4.mp";
connectAttr "polyCube1.out" "polyBevel5.ip";
connectAttr "pCubeShape1.wm" "polyBevel5.mp";
connectAttr "polyBevel2.out" "transformGeometry1.ig";
connectAttr "polyBevel1.out" "transformGeometry2.ig";
connectAttr "polyBevel5.out" "transformGeometry3.ig";
connectAttr "polyBevel3.out" "transformGeometry4.ig";
connectAttr "polyBevel4.out" "transformGeometry5.ig";
connectAttr "transformGeometry4.og" "polyCylProj1.ip";
connectAttr "pCylinderShape2.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "createUVSet1.ig";
connectAttr "createUVSet1.og" "polyCopyUV1.ip";
connectAttr "polyCopyUV1.out" "polyTweakUV1.ip";
connectAttr "transformGeometry5.og" "polyCopyUV2.ip";
connectAttr "polyCopyUV2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyCylProj2.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyTweakUV3.ip";
connectAttr "transformGeometry3.og" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyAutoProj1.ip";
connectAttr "pCubeShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV5.ip";
connectAttr "transformGeometry1.og" "polyCylProj3.ip";
connectAttr "pCylinderShape3.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyTweakUV6.ip";
connectAttr "transformGeometry2.og" "polyCylProj4.ip";
connectAttr "pCylinderShape4.wm" "polyCylProj4.mp";
connectAttr "polyCylProj4.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV6.out" "createUVSet2.ig";
connectAttr "polyTweakUV7.out" "createUVSet3.ig";
connectAttr "polyTweakUV5.out" "createUVSet4.ig";
connectAttr "polyTweakUV1.out" "createUVSet5.ig";
connectAttr "polyTweakUV3.out" "createUVSet6.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
// End of Table2UV.ma
