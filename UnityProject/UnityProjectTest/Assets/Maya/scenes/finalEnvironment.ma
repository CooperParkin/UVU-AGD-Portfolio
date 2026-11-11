//Maya ASCII 2027 scene
//Name: finalEnvironment.ma
//Last modified: Tue, Nov 10, 2026 06:11:33 PM
//Codeset: 1252
requires maya "2027";
requires "stereoCamera" "10.0";
requires -nodeType "aiStandardSurface" "mtoa" "5.6.2";
requires -nodeType "UsdDefaultSettings" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.37.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2027";
fileInfo "version" "2027";
fileInfo "cutIdentifier" "202607171511-52c21617ee";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26300)";
fileInfo "UUID" "E5B3D121-4E7E-6E08-F867-5F9288E6FDB8";
createNode transform -s -n "persp";
	rename -uid "E5D05D66-40FB-E41E-C445-0BAC7D9DC665";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.999078905280761 172.30767835958932 71.345621798808594 ;
	setAttr ".r" -type "double3" -5.4000000000003121 -15.200000000000278 0 ;
	setAttr ".rpt" -type "double3" 2.29763403455788e-16 6.1579151492883135e-17 -2.7615525999198774e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C9D905A0-4143-885C-86AB-9BB9878A1065";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 110.05157046763452;
	setAttr ".ow" 72.133697202102326;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.2673174084792138 145.77058382749794 -34.716827392578125 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "492F20CF-45E9-85FA-6959-93A80894846A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AC6D52F1-458B-6427-5CEA-D7B236F3C0B9";
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
	rename -uid "F2686978-4216-6784-5478-54B2A26507BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "83D3DC1A-413D-BF84-F4A7-0C8F37055FBB";
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
	rename -uid "48BC121A-4BAF-698C-A75C-318469ECF2BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EF2B5A3A-424B-E5CF-521D-D09C67D6FC23";
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
createNode transform -n "pPlane1";
	rename -uid "657096CB-4419-76E7-EDCA-C6A08404A6EE";
	setAttr ".s" -type "double3" 29.067933598968221 29.453501776077914 48.000368354279779 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "6063C70E-4296-5AF2-FB75-1B851F543A9D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[0:1]" -type "float3"  0 0 0.5945102 0 0 0.5945102;
createNode transform -n "pCube1";
	rename -uid "FECE892F-4D1E-FFBC-042A-29977DAB0D38";
	setAttr ".t" -type "double3" 0 5.1226882934570321 -23.536179419116692 ;
	setAttr ".s" -type "double3" 7.9711050372313812 16.752828750138121 0.74021247500008702 ;
	setAttr ".rp" -type "double3" 0 -5.1226882934570304 0.37010657365770783 ;
	setAttr ".sp" -type "double3" 0 -0.49999999786294363 0.50000045413671845 ;
	setAttr ".spt" -type "double3" 0 -4.6226882955940782 -0.12989388047901046 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "E7E6C234-4134-91D2-C7C6-8184AB285E14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "97B62551-4835-67B4-226F-BF8C2A7E5212";
	setAttr ".t" -type "double3" -7.9711050987243652 5.1226882934570339 -23.536179419116692 ;
	setAttr ".r" -type "double3" 0 35 0 ;
	setAttr ".s" -type "double3" 7.9711050372313812 16.752828750138121 0.74021247500008702 ;
	setAttr ".rp" -type "double3" 3.9855525493621831 -5.1226882934570339 0.37010657365770738 ;
	setAttr ".rpt" -type "double3" 3.3306690738754696e-16 0 -3.1086244689504383e-15 ;
	setAttr ".sp" -type "double3" 0.50000000385724341 -0.49999999786294386 0.50000045413671046 ;
	setAttr ".spt" -type "double3" 3.4855525455049396 -4.6226882955940898 -0.12989388047900305 ;
createNode mesh -n "polySurfaceShape1" -p "pCube2";
	rename -uid "DAB89AF2-479B-FCB5-130A-14A6E83C9EAF";
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
createNode transform -n "pCube3" -p "pCube2";
	rename -uid "EE3007C5-46AC-C9A3-6023-DF9DCA07D010";
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "FB7C4438-4E58-FEC6-6B22-E29DB9B268DF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "pCube2";
	rename -uid "ECE39643-4158-D22D-D206-D693E42D8805";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	rename -uid "C3EE1525-4BEE-A701-BD92-3A8F6B611EFB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	rename -uid "AD878312-4803-9018-F86F-DEB0044FCAE6";
	setAttr ".t" -type "double3" -7.4626104773820972 8.3764143392673258 -21.183227373722499 ;
	setAttr ".r" -type "double3" 0 35 0 ;
	setAttr ".s" -type "double3" 7.9711050372313812 16.752828750138121 0.74021247500008702 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "E1DA4D8B-4CC6-6261-09D1-A791B0AF6466";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	rename -uid "0C0366EB-4262-99EE-0ADD-87ACBE68F709";
	setAttr ".t" -type "double3" -14.500652074813846 5.1226882934570339 -18.96414293428554 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 38.401460108825248 16.752828750138121 0.74021247500008702 ;
	setAttr ".rp" -type "double3" 3.9855525493621831 -5.1226882934570339 0.37010683199061661 ;
	setAttr ".rpt" -type "double3" 3.5527136788005009e-15 0 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 0.50000000385724341 -0.49999999786294386 0.50000080313503403 ;
	setAttr ".spt" -type "double3" 3.4855525455049396 -4.6226882955940898 -0.12989397114441742 ;
createNode mesh -n "polySurfaceShape2" -p "pCube5";
	rename -uid "B551FAF7-466C-9C60-F1C3-5AA200B81E5E";
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
createNode transform -n "pCube6" -p "pCube5";
	rename -uid "2A39BDC8-4E30-B666-446D-A48D4A808F54";
	setAttr ".s" -type "double3" 1.8615086386698001 1 1 ;
	setAttr ".rp" -type "double3" 0.50000000385724341 -0.49999999786294397 0.50000080313503226 ;
	setAttr ".sp" -type "double3" 0.50000000385724341 -0.49999999786294397 0.50000080313503226 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "9BCCD4F2-432F-911A-6561-52AC490BE307";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "pCube5";
	rename -uid "DBBC1104-4474-4F08-57D2-CD81F60A7AF9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform2";
	rename -uid "522C1763-4E7C-B2E5-E092-098AB0C2F085";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7";
	rename -uid "A6D268B5-4A51-237A-6631-9087F98C8FE9";
	setAttr ".t" -type "double3" -10.885206357442275 8.3764143392673258 0.60669410024148007 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 71.484649730111968 16.752828750138121 0.74021247500008702 ;
	setAttr ".rp" -type "double3" 19.200730202536398 -8.3764143392673276 21.400304929219622 ;
	setAttr ".rpt" -type "double3" 2.199574726683224 0 -40.601035131756021 ;
	setAttr ".sp" -type "double3" 0.5000000038572433 -0.49999999786294397 28.911029808322397 ;
	setAttr ".spt" -type "double3" 18.700730198679157 -7.8764143414043835 -7.5107248791027752 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "FFE0D09C-44B6-9611-43F4-9C86C886ADEB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube8";
	rename -uid "B6406EC5-423E-0CA8-34ED-11A33D403180";
	setAttr ".t" -type "double3" -8.0595214366912842 0.5 0 ;
	setAttr ".s" -type "double3" 7.8799698979531065 7.7465878820620295 1.0931499266640547 ;
	setAttr ".rp" -type "double3" -2.455578088760376 -0.5 -0.60333168506622314 ;
	setAttr ".sp" -type "double3" -0.49999999636994796 -0.5 -0.50000000488953011 ;
	setAttr ".spt" -type "double3" -1.955578092390428 0 -0.103331680176693 ;
createNode transform -n "pCube12" -p "pCube8";
	rename -uid "1E87E8BC-41CF-1AC0-2173-A4841FCE089F";
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "BB2BB045-4980-6033-3D6C-46817ADC0A73";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform4" -p "pCube8";
	rename -uid "0D5284A1-4629-8364-CACE-3E9F7052CC40";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform4";
	rename -uid "8B0E4C26-4386-C616-3B7E-D29002164125";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube9";
	rename -uid "C7A376C7-44D5-3C18-31CC-009F6E9347A1";
	setAttr ".t" -type "double3" -8.0595214366912842 0.5 17.642876656104274 ;
	setAttr ".s" -type "double3" 7.8799698979531065 7.7465878820620295 1.0931499266640547 ;
	setAttr ".rp" -type "double3" -2.455578088760376 -0.5 -0.60333168506622314 ;
	setAttr ".sp" -type "double3" -0.49999999636994796 -0.5 -0.50000000488953011 ;
	setAttr ".spt" -type "double3" -1.955578092390428 0 -0.103331680176693 ;
createNode mesh -n "polySurfaceShape3" -p "pCube9";
	rename -uid "4929B4E2-45E2-5DF5-DD0E-8AA4CA33E845";
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
createNode transform -n "pCube10" -p "pCube9";
	rename -uid "2D95D786-4BA8-0CE5-BA60-DBA28EEF1918";
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "43144F5D-4380-6D81-00C4-9EA8E25B19DB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3" -p "pCube9";
	rename -uid "F0F07239-4B84-5C5A-79E7-B7AADF8F1FAE";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform3";
	rename -uid "79269DA3-452E-0209-A39E-5FA49B4C27E8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube11";
	rename -uid "D72DA708-46FB-6630-40E9-0790A61BDA63";
	setAttr ".t" -type "double3" -6.5751146050798077 3.8732939410310148 17.586119939715068 ;
	setAttr ".s" -type "double3" 7.8799698979531065 7.7465878820620295 1.0931499266640547 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "6E061F52-4551-5EC6-4CB7-108858EFC955";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13";
	rename -uid "4AE17400-41AD-CFB7-CE2F-F291A78032F8";
	setAttr ".t" -type "double3" -6.5751146050798077 3.8732939410310148 -0.056756716389206319 ;
	setAttr ".s" -type "double3" 7.8799698979531065 7.7465878820620295 1.0931499266640547 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "521D130C-4CB3-0383-09CC-5FB1BE1EAEF4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube14";
	rename -uid "AC08B996-4C3D-07F8-94CC-25BE9AC521AD";
	setAttr ".t" -type "double3" -7.0907042549825912 0.5 30.837918743915573 ;
	setAttr ".s" -type "double3" 5.6409658257471795 2.2424493545693087 5.6409658257471795 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "pCube15" -p "pCube14";
	rename -uid "EF34BC02-4C6A-ABF9-6077-6590098F7A57";
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "97D4C2DB-4965-5F42-8FFB-84B8C64980E5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform5" -p "pCube14";
	rename -uid "068FB181-4F12-C742-BA01-E09C7082EC6A";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform5";
	rename -uid "526067FB-4667-8968-9233-0D8E90D85758";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16";
	rename -uid "AF9D5086-40DC-5B6C-BC54-ECBC0FBD95E5";
	setAttr ".t" -type "double3" -7.0907042549825912 1.1212246772846544 30.837918743915573 ;
	setAttr ".s" -type "double3" 5.6409658257471795 2.2424493545693087 5.6409658257471795 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "0B098352-4578-B59B-ACE5-998E207B3BE2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "book1";
	rename -uid "04CDA061-42CB-04E8-16EF-52AFA12F737A";
	setAttr ".t" -type "double3" 0.44547280845212178 0 -2.8522804899672707 ;
	setAttr ".rp" -type "double3" -5.1145813465118586 2.2424492835998535 31.571323394775327 ;
	setAttr ".sp" -type "double3" -5.1145813465118586 2.2424492835998535 31.571323394775327 ;
createNode transform -n "bookPages" -p "book1";
	rename -uid "35EFA6E1-454F-8624-E5E0-D7B2D3E78EF4";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr ".sp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bookPagesShape" -p "|book1|bookPages";
	rename -uid "7C9EA3A1-450A-31FB-4A00-4A879811B76B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 38 ".pt[0:37]" -type "float3"  -5.5071759 2.2048347 30.765808 
		-5.4579015 2.1654382 30.775795 -5.4149384 2.1261139 30.779467 -5.3793192 2.0868776 
		30.775795 -5.3500118 2.0477135 30.765808 -5.3500118 2.993253 31.722153 -5.3793192 
		3.0324171 31.73214 -5.4149384 3.0716553 31.735811 -5.4579015 3.1109776 31.73214 -5.5071759 
		3.1503742 31.722153 -5.1256771 2.1227493 31.068787 -5.1256771 3.0682907 32.025131 
		-5.559958 2.2442713 30.752316 -5.559958 3.1898127 31.70866 -4.7796831 2.9477949 32.2533 
		-5.3242121 2.9541311 31.70866 -5.3242121 2.0085897 30.752316 -4.8088756 2.155062 
		31.422094 -4.8604169 2.1881263 31.403406 -4.9155955 2.2145336 31.374296 -4.9690089 
		2.2316952 31.337616 -5.015429 2.2379351 31.296955 -4.7796831 2.0022535 31.296955 
		-4.7447996 2.0075474 31.337616 -4.7248683 2.0238585 31.374296 -4.721839 2.0495865 
		31.403406 -4.7360096 2.082216 31.422094 -4.7660036 2.1185646 31.428535 -4.9690089 
		3.1772366 32.293961 -4.9155955 3.1600749 32.330639 -4.8604169 3.1336677 32.359749 
		-4.8088756 3.1006033 32.378441 -4.7660036 3.064106 32.38488 -4.7360096 3.0277574 
		32.378441 -4.721839 2.9951279 32.359749 -4.7248683 2.9693999 32.330639 -4.7447996 
		2.9530888 32.293961 -5.015429 3.1834764 32.2533;
	setAttr -s 38 ".vt[0:37]"  0.31401232 0.065046072 0.47267306 0.30402896 0.10432637 0.47267306
		 0.30035749 0.14360663 0.47267309 0.30402896 0.18288693 0.47267306 0.31401232 0.22216719 0.47267309
		 0.31401232 0.22216719 -0.47267306 0.30402896 0.18288693 -0.47267306 0.30035749 0.14360663 -0.47267309
		 0.30402896 0.10432635 -0.47267306 0.31401232 0.065046072 -0.47267309 0.011095927 0.14360663 0.47267306
		 0.011095921 0.14360663 -0.472673 0.32750389 0.025765806 0.47267309 0.32750389 0.025765806 -0.47267309
		 -0.2170254 0.26144749 -0.47267309 0.32750389 0.26144749 -0.47267309 0.32750389 0.26144749 0.47267309
		 -0.34213889 0.10718367 0.47267309 -0.32345331 0.074336678 0.47267309 -0.29434979 0.048269153 0.47267309
		 -0.25767723 0.031532794 0.47267309 -0.2170254 0.025765806 0.47267309 -0.2170254 0.26144749 0.47267309
		 -0.25767723 0.2556805 0.47267309 -0.29434979 0.23894414 0.47267309 -0.32345331 0.21287659 0.47267309
		 -0.34213889 0.18002957 0.47267309 -0.34857753 0.14360663 0.47267309 -0.25767723 0.031532794 -0.47267309
		 -0.29434979 0.048269153 -0.47267309 -0.32345331 0.074336678 -0.47267309 -0.34213889 0.10718367 -0.47267309
		 -0.34857753 0.14360663 -0.47267309 -0.34213889 0.18002957 -0.47267309 -0.32345331 0.21287659 -0.47267309
		 -0.29434979 0.23894414 -0.47267309 -0.25767723 0.2556805 -0.47267309 -0.2170254 0.025765806 -0.47267309;
	setAttr -s 79 ".ed[0:78]"  12 13 0 13 9 0 9 0 0 0 12 0 4 10 0 10 3 0
		 3 4 0 15 11 0 11 14 0 14 15 0 4 5 0 5 15 0 15 16 0 16 4 0 3 6 0 6 5 0 2 7 0 7 6 0
		 3 2 0 1 8 0 8 7 0 2 1 0 9 8 0 1 0 0 17 18 0 18 10 0 10 17 0 18 19 0 19 10 0 19 20 0
		 20 10 0 20 21 0 21 10 0 21 12 0 12 10 0 0 10 0 1 10 0 2 10 0 16 10 0 22 10 0 16 22 0
		 23 10 0 22 23 0 24 10 0 23 24 0 25 10 0 24 25 0 26 10 0 25 26 0 27 10 0 26 27 0 27 17 0
		 28 29 0 29 11 0 11 28 0 29 30 0 30 11 0 30 31 0 31 11 0 31 32 0 32 11 0 32 33 0 33 11 0
		 33 34 0 34 11 0 34 35 0 35 11 0 35 36 0 36 11 0 36 14 0 5 11 0 6 11 0 7 11 0 8 11 0
		 9 11 0 13 11 0 37 11 0 13 37 0 37 28 0;
	setAttr -s 132 ".n[0:131]" -type "float3"  0.32475418 0.010996963 -0.94544572
		 0.32475418 0.010996964 -0.94544578 0.28622663 0.011140804 -0.95781207 0.28622669
		 0.011140806 -0.95781219 -2.4000119e-07 -0.9996593 -0.011627437 -2.6300115e-10 -0.9996593
		 -0.011627549 -1.4365403e-07 -0.9996593 -0.011627353 -7.5850198e-07 0.9996593 0.011627448
		 2.6301231e-10 0.9996593 0.011627548 -7.037608e-07 0.9996593 0.011627549 -0.2862266
		 0.011140804 -0.95781213 -0.28622663 0.011140804 -0.95781213 -0.32475415 0.010996965
		 -0.94544584 -0.32475412 0.010996964 -0.94544578 -0.17119826 0.011455793 -0.98489279
		 -0.17119826 0.011455794 -0.98489285 -0.28622663 0.011140804 -0.95781213 -0.2862266
		 0.011140804 -0.95781213 0 0.011627549 -0.9996593 0 0.011627549 -0.9996593 -0.17119826
		 0.011455794 -0.98489285 -0.17119826 0.011455793 -0.98489279 0.17119834 0.011455793
		 -0.98489273 0.17119835 0.011455794 -0.98489279 0 0.011627549 -0.9996593 0 0.011627549
		 -0.9996593 0.28622669 0.011140806 -0.95781219 0.28622663 0.011140804 -0.95781207
		 0.17119835 0.011455794 -0.98489279 0.17119834 0.011455793 -0.98489273 2.6840306e-08
		 -0.9996593 -0.011627721 5.6042548e-08 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593
		 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 5.6042548e-08 -0.9996593 -0.011627549
		 9.079811e-08 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 9.079811e-08
		 -0.9996593 -0.011627549 1.3699071e-07 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593
		 -0.011627549 1.3699071e-07 -0.9996593 -0.011627549 2.3458713e-07 -0.9996593 -0.011627549
		 -2.6300115e-10 -0.9996593 -0.011627549 2.3458713e-07 -0.9996593 -0.011627549 4.2392068e-07
		 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 4.2392068e-07 -0.9996593
		 -0.011627549 5.5210899e-07 -0.9996593 -0.011627437 -2.6300115e-10 -0.9996593 -0.011627549
		 5.5210899e-07 -0.9996593 -0.011627437 -3.1726668e-07 -0.9996593 -0.011627353 -2.6300115e-10
		 -0.9996593 -0.011627549 -3.1726668e-07 -0.9996593 -0.011627353 -2.1133777e-13 -0.9996593
		 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 -2.1133777e-13 -0.9996593 -0.011627549
		 -1.4365403e-07 -0.9996593 -0.011627353 -1.6729078e-07 -0.9996593 -0.011627549 -2.6300115e-10
		 -0.9996593 -0.011627549 -2.4000119e-07 -0.9996593 -0.011627437 -2.3458716e-07 -0.9996593
		 -0.011627626 -2.6300115e-10 -0.9996593 -0.011627549 -1.6729078e-07 -0.9996593 -0.011627549
		 -1.3699061e-07 -0.9996593 -0.011627767 -2.6300115e-10 -0.9996593 -0.011627549 -2.3458716e-07
		 -0.9996593 -0.011627626 -9.0798004e-08 -0.9996593 -0.011627732 -2.6300115e-10 -0.9996593
		 -0.011627549 -1.3699061e-07 -0.9996593 -0.011627767 -5.6042516e-08 -0.9996593 -0.011627708
		 -2.6300115e-10 -0.9996593 -0.011627549 -9.0798004e-08 -0.9996593 -0.011627732 -2.6840322e-08
		 -0.9996593 -0.01162761 -2.6300115e-10 -0.9996593 -0.011627549 -5.6042516e-08 -0.9996593
		 -0.011627708 0 -0.9996593 -0.011627692 -2.6300115e-10 -0.9996593 -0.011627549 -2.6840322e-08
		 -0.9996593 -0.01162761 2.6840306e-08 -0.9996593 -0.011627721 -2.6300115e-10 -0.9996593
		 -0.011627549 0 -0.9996593 -0.011627692 4.1097229e-07 0.9996593 0.011627517 2.7239429e-07
		 0.99965924 0.011627548 2.6301231e-10 0.9996593 0.011627548 2.6301231e-10 0.9996593
		 0.011627548 2.7239429e-07 0.99965924 0.011627548 1.6812768e-07 0.9996593 0.011627549
		 2.6301231e-10 0.9996593 0.011627548 1.6812768e-07 0.9996593 0.011627549 8.0520969e-08
		 0.9996593 0.011627378 2.6301231e-10 0.9996593 0.011627548 8.0520969e-08 0.9996593
		 0.011627378 0 0.9996593 0.011627407 2.6301231e-10 0.9996593 0.011627548 0 0.9996593
		 0.011627407 -8.0521019e-08 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548
		 -8.0521019e-08 0.9996593 0.011627549 -1.6812757e-07 0.9996593 0.011627549 2.6301231e-10
		 0.9996593 0.011627548 -1.6812757e-07 0.9996593 0.011627549 -2.7239406e-07 0.9996593
		 0.011627549 2.6301231e-10 0.9996593 0.011627548 -2.7239406e-07 0.9996593 0.011627549
		 -4.1097215e-07 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548 -4.1097215e-07
		 0.9996593 0.011627549 -7.037608e-07 0.9996593 0.011627549 -4.8489341e-07 0.9996593
		 0.011627435 2.6301231e-10 0.9996593 0.011627548 -7.5850198e-07 0.9996593 0.011627448
		 3.566366e-07 0.9996593 0.011627746 2.6301231e-10 0.9996593 0.011627548 -4.8489341e-07
		 0.9996593 0.011627435 1.4089181e-13 0.9996593 0.011627549 2.6301231e-10 0.9996593
		 0.011627548 3.566366e-07 0.9996593 0.011627746 1.0428413e-07 0.9996593 0.011627549
		 2.6301231e-10 0.9996593 0.011627548 1.4089181e-13 0.9996593 0.011627549 1.7278569e-07
		 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548 1.0428413e-07 0.9996593
		 0.011627549 5.0187265e-07 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548
		 1.7278569e-07 0.9996593 0.011627549 7.0376154e-07 0.99965924 0.011627472 2.6301231e-10
		 0.9996593 0.011627548 5.0187265e-07 0.9996593 0.011627549 4.1097229e-07 0.9996593
		 0.011627517 2.6301231e-10 0.9996593 0.011627548 7.0376154e-07 0.99965924 0.011627472;
	setAttr -s 42 -ch 132 ".fc[0:41]" -type "polyFaces" 
		f 4 0 1 2 3
		f 3 4 5 6
		f 3 7 8 9
		f 4 10 11 12 13
		f 4 14 15 -11 -7
		f 4 16 17 -15 18
		f 4 19 20 -17 21
		f 4 -3 22 -20 23
		f 3 24 25 26
		f 3 -26 27 28
		f 3 -29 29 30
		f 3 -31 31 32
		f 3 -33 33 34
		f 3 -35 -4 35
		f 3 -36 -24 36
		f 3 -37 -22 37
		f 3 -38 -19 -6
		f 3 38 -5 -14
		f 3 39 -39 40
		f 3 41 -40 42
		f 3 43 -42 44
		f 3 45 -44 46
		f 3 47 -46 48
		f 3 49 -48 50
		f 3 -27 -50 51
		f 3 52 53 54
		f 3 -54 55 56
		f 3 -57 57 58
		f 3 -59 59 60
		f 3 -61 61 62
		f 3 -63 63 64
		f 3 -65 65 66
		f 3 -67 67 68
		f 3 -69 69 -9
		f 3 70 -8 -12
		f 3 71 -71 -16
		f 3 72 -72 -18
		f 3 73 -73 -21
		f 3 74 -74 -23
		f 3 75 -75 -2
		f 3 76 -76 77
		f 3 -55 -77 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bookCover" -p "book1";
	rename -uid "E27486FB-472D-15AE-2BD7-64B674A8C7F0";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr ".sp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bookCoverShape" -p "|book1|bookCover";
	rename -uid "9D7F57A2-4A6A-7C05-691C-25B847F51263";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:102]" "f[104:107]" "f[119:285]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[103]" "f[108:118]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0.009100318 0.010936439
		 0.29160202 0.010935247 0.010070264 0.17064947 0.15035158 0.094224155 0.012740791
		 0.17464638 0.29063332 0.17064822 0.28796279 0.17464507 0.28396595 0.17731565 0.27909338
		 0.17828482 0.021610498 0.17828608 0.016737998 0.1773169 0.0091011524 0.16577685 0.29160261
		 0.16577554;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 284 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -5.559958 3.1898127 31.70866 -5.5599585 
		2.2442713 30.752314 -5.3242121 2.9541311 31.70866 -5.3242126 2.0085897 30.752314 
		-4.8604169 2.1881263 31.403406 -4.8088756 2.155062 31.422094 -4.9155955 2.2145336 
		31.374296 -4.9690089 2.2316952 31.337616 -5.015429 2.2379351 31.296955 -4.7796831 
		2.0022535 31.296955 -4.7447996 2.0075474 31.337616 -4.7248683 2.0238585 31.374296 
		-4.721839 2.0495865 31.403406 -4.7360096 2.082216 31.422094 -4.7660036 2.1185646 
		31.428535 -4.9155955 3.1600749 32.330639 -4.9690084 3.1772366 32.293961 -4.8604169 
		3.1336677 32.359749 -4.8088756 3.1006033 32.378441 -4.7660036 3.064106 32.38488 -4.7360096 
		3.0277574 32.378441 -4.721839 2.9951279 32.359749 -4.7248683 2.9693999 32.330639 
		-4.7447991 2.9530888 32.293961 -4.7796831 2.9477949 32.2533 -5.015429 3.1834764 32.2533 
		-5.5626559 3.1925783 31.708729 -5.5626559 2.2415667 30.746849 -5.32691 2.9568968 
		31.708729 -5.32691 2.0058851 30.746849 -5.025557 2.4524188 31.503426 -5.312849 2.7396321 
		31.503426 -4.7401104 1.9545503 31.288736 -4.7358232 1.9522185 31.290714 -4.7340469 
		1.9545455 31.294863 -5.2821655 1.960856 30.746571 -5.2780285 1.958528 30.748398 -5.275991 
		1.9608512 30.752808 -4.7401104 2.9547563 32.300369 -4.7358232 2.9491324 32.299019 
		-4.7340469 2.9435096 32.295128 -5.2821655 2.961062 31.758204 -5.2780285 2.95544 31.756701 
		-5.275991 2.9498153 31.753073 -5.0161595 2.2305236 31.288736 -5.0198221 2.2361398 
		31.290714 -5.0213389 2.2417588 31.294863 -5.5582147 2.2368293 30.746571 -5.5620275 
		2.2424493 30.748398 -5.563283 2.2480645 30.752808 -5.0161595 3.2307296 32.300369 
		-5.0198221 3.2330537 32.299019 -5.0213389 3.2307229 32.295128 -5.5582147 3.2370353 
		31.758204 -5.5620275 3.2393613 31.756701 -5.563283 3.2370286 31.753073 -4.6967297 
		2.0521784 31.431458 -4.6988297 2.0487356 31.42585 -4.7038999 2.0483768 31.420359 
		-4.7341003 2.0964813 31.438484 -4.7357669 2.0925274 31.432798 -4.7397904 2.0909271 
		31.427109 -4.7341003 3.0854454 32.438747 -4.7357669 3.0894394 32.441101 -4.7397904 
		3.0911331 32.438744 -4.6967297 3.0411425 32.431721 -4.6988297 3.0456495 32.434155 
		-4.7038999 3.0485828 32.431992 -4.6770859 2.0123861 31.411057 -4.6794138 2.0094059 
		31.405687 -4.6850343 2.0101628 31.400766 -4.6770859 3.0013502 32.41132 -4.6794138 
		3.0063198 32.41399 -4.6850338 3.0103688 32.412399 -4.6770763 1.9809887 31.379284 
		-4.6794052 1.9783735 31.374283 -4.6850262 1.9800093 31.370251 -4.6770763 2.9699528 
		32.379547 -4.6794052 2.9752855 32.382587 -4.6850262 2.9802153 32.381886 -4.6967044 
		1.9610584 31.339247 -4.6988049 1.9586742 31.334709 -4.703876 1.9608681 31.3318 -4.6967044 
		2.9500225 32.339508 -4.6988049 2.9555862 32.343014 -4.703876 2.9610741 32.343433 
		-4.9699364 2.234216 31.339247 -4.9688659 2.2286618 31.334709 -4.9662819 2.2232025 
		31.3318 -4.9699364 3.2231801 32.339508 -4.9688659 3.2255738 32.343014 -4.9662819 
		3.2234085 32.343433 -4.9095063 2.2133548 31.379284 -4.9091372 2.2080431 31.374283 
		-4.9082465 2.2031686 31.370251 -4.9095063 3.2023189 32.379547 -4.9091372 3.2049551 
		32.382587 -4.9082465 3.2033746 32.381886 -4.8459635 2.1812177 31.411057 -4.8463321 
		2.1762784 31.405687 -4.8472214 2.1723056 31.400766 -4.8459635 3.1701818 32.41132 
		-4.8463321 3.1731923 32.41399 -4.8472209 3.1725116 32.412399 -4.7855277 2.1409521 
		31.431458 -4.7865977 2.1364794 31.42585 -4.7891803 2.1336341 31.420359 -4.7855277 
		3.1299162 32.431721 -4.7865977 3.1333933 32.434155 -4.7891803 3.1338401 32.431992 
		-4.859561 2.1643176 31.380194 -4.8601661 2.1634738 31.378725 -4.8604169 2.166415 
		31.381445 -4.8054457 2.1296034 31.399817 -4.8078709 2.1299253 31.397688 -4.8088756 
		2.1333506 31.400135 -4.9172421 2.1919222 31.349764 -4.9160771 2.1902292 31.349228 
		-4.9155955 2.1928222 31.352337 -4.9728661 2.2097957 31.311565 -4.9701381 2.2076013 
		31.312103 -4.9690089 2.2099857 31.315657 -5.0206537 2.2162189 31.269709 -5.0169592 
		2.2138948 31.271093 -5.015429 2.2162256 31.274998 -5.5375099 2.2222986 30.752808 
		-5.5395474 2.2199755 30.748398 -5.5436845 2.2223034 30.746571 -4.773665 1.9692974 
		31.269709 -4.7779202 1.9749212 31.271093 -4.7796831 1.9805441 31.274998 -5.2966957 
		1.9753819 30.746571 -5.3005085 1.9810019 30.748398 -5.301764 1.9866171 30.752808 
		-4.7377543 1.9747479 31.311565 -4.7427359 1.9802611 31.312103 -4.7447996 1.9858379 
		31.315657 -4.7169976 1.9917326 31.349764 -4.7225628 1.9967673 31.349228 -4.7248683 
		2.0021472 31.352337 -4.7138314 2.0186276 31.380194 -4.7194939 2.0228398 31.378725 
		-4.721839 2.0278752 31.381445 -4.7287097 2.0528882 31.399817 -4.7338715 2.0559461 
		31.397688 -4.7360096 2.0605047 31.400135 -4.7602963 2.0911655 31.406599 -4.7643323 
		2.0928593 31.404226 -4.7660036 2.0968552 31.406576 -4.9172416 3.1921282 32.361397 
		-4.9160771 3.1871431 32.357533 -4.9155955 3.1817863 32.3526 -4.9728661 3.2100017 
		32.3232 -4.9701385 3.2045133 32.320408 -4.9690089 3.1989498 32.315922 -4.859561 3.1645236 
		32.391827 -4.8601661 3.1603858 32.387028 -4.8604169 3.1553791 32.38171 -4.8054457 
		3.1298075 32.411449 -4.8078713 3.1268373 32.405991 -4.8088756 3.1223147 32.400398 
		-4.7602963 3.0913715 32.418232 -4.7643323 3.0897713 32.412529 -4.7660036 3.0858154 
		32.406837 -4.7287097 3.0530922 32.411449 -4.7338719 3.0528581 32.405991;
	setAttr ".pt[166:283]" -4.7360096 3.0494688 32.400398 -4.7138314 3.0188336 
		32.391827 -4.7194939 3.0197518 32.387028 -4.721839 3.0168393 32.38171 -4.7169971 
		2.9919386 32.361397 -4.7225628 2.9936812 32.357533 -4.7248683 2.9911113 32.3526 -4.7377543 
		2.9749539 32.3232 -4.7427363 2.9771731 32.320408 -4.7447996 2.974802 32.315922 -4.773665 
		2.9695034 32.281342 -4.7779202 2.9718332 32.279396 -4.7796831 2.9695082 32.275261 
		-5.301764 2.9755812 31.753073 -5.3005085 2.9779139 31.756701 -5.2966957 2.9755878 
		31.758204 -5.0206537 3.2164249 32.281342 -5.0169592 3.2108068 32.279396 -5.015429 
		3.2051897 32.275261 -5.5436845 3.2225094 31.758204 -5.5395474 3.2168875 31.756701 
		-5.5375099 3.2112627 31.753073 -5.6070642 3.188745 31.659927 -5.6093931 3.1925378 
		31.661409 -5.6070657 3.1937432 31.664986 -5.6070642 2.2862582 30.747128 -5.6093931 
		2.2903752 30.748938 -5.6070657 2.2923646 30.753307 -5.5812902 3.1679964 31.665009 
		-5.5869122 3.1700699 31.661415 -5.592535 3.1742201 31.659927 -5.5925341 2.2717323 
		30.747128 -5.5869131 2.2679014 30.748938 -5.5812926 2.2665987 30.753307 -5.3310151 
		2.9127717 31.659927 -5.3253942 2.9086165 31.661409 -5.3197737 2.9065299 31.664986 
		-5.3310151 2.0102849 30.747128 -5.3253942 2.006454 30.748938 -5.3197737 2.0051513 
		30.753307 -5.3455453 2.9272976 31.659927 -5.3478742 2.9310904 31.661409 -5.3455467 
		2.9322958 31.664986 -5.3455443 2.0309019 30.753296 -5.3478737 2.0289237 30.748934 
		-5.3455443 2.0248101 30.747128 -5.6033459 3.2073989 31.682556 -5.6057701 3.2107129 
		31.683458 -5.6036735 3.2107644 31.685633 -5.5888157 3.192873 31.682556 -5.5832901 
		3.1882391 31.683458 -5.5779004 3.1849985 31.685633 -5.5927563 3.2231269 31.709181 
		-5.5955448 3.2258992 31.709166 -5.594326 3.2246461 31.709133 -5.5782261 3.208601 
		31.709181 -5.5730648 3.2034254 31.709166 -5.568553 3.1988802 31.709133 -5.5769086 
		3.2335334 31.735743 -5.5802412 3.2359509 31.734819 -5.5803375 3.2338338 31.732582 
		-5.5623784 3.2190075 31.735743 -5.5577612 3.2134771 31.734819 -5.5545645 3.2080679 
		31.732582 -5.5769086 2.240766 30.731632 -5.5802412 2.246285 30.733845 -5.580337 2.2516561 
		30.739182 -5.5623784 2.2262402 30.731632 -5.5577612 2.2238111 30.733845 -5.554564 
		2.2258902 30.739182 -5.5927563 2.2515426 30.726494 -5.5955448 2.2566876 30.728882 
		-5.5943265 2.261168 30.734646 -5.5782261 2.2370167 30.726494 -5.5730648 2.2342138 
		30.728882 -5.5685534 2.2354021 30.734646 -5.6033459 2.2675166 30.731936 -5.6057701 
		2.2721143 30.734137 -5.6036735 2.275269 30.739449 -5.5888157 2.2529907 30.731936 
		-5.5832901 2.2496405 30.734137 -5.5779004 2.2495031 30.739449 -5.3008595 2.9575601 
		31.735743 -5.2962422 2.9520297 31.734819 -5.2930455 2.9466205 31.732582 -5.3153896 
		2.972086 31.735743 -5.3187222 2.9745035 31.734819 -5.3188186 2.9723864 31.732582 
		-5.3167071 2.9471536 31.709181 -5.3115458 2.941978 31.709166 -5.307034 2.9374328 
		31.709133 -5.3312373 2.9616795 31.709181 -5.3340259 2.9644518 31.709166 -5.3328071 
		2.9631987 31.709133 -5.3272967 2.9314256 31.682556 -5.3217711 2.9267917 31.683458 
		-5.3163815 2.9235511 31.685633 -5.3418269 2.9459515 31.682556 -5.3442512 2.9492655 
		31.683458 -5.3421545 2.949317 31.685633 -5.3272967 1.9915433 30.731936 -5.3217711 
		1.988193 30.734137 -5.3163815 1.9880557 30.739449 -5.3418269 2.0060692 30.731936 
		-5.3442512 2.0106668 30.734137 -5.3421545 2.0138216 30.739449 -5.3167071 1.9755692 
		30.726494 -5.3115458 1.9727664 30.728882 -5.3070345 1.9739547 30.734646 -5.3312373 
		1.9900951 30.726494 -5.3340259 1.9952402 30.728882 -5.3328075 1.9997206 30.734646 
		-5.3008595 1.9647927 30.731632 -5.2962422 1.9623637 30.733845 -5.293045 1.9644427 
		30.739182 -5.3153896 1.9793186 30.731632 -5.3187222 1.9848375 30.733845 -5.3188181 
		1.9902086 30.739182;
	setAttr -s 284 ".vt";
	setAttr ".vt[0:165]"  0.32750392 0.025765806 -0.47267294 0.32750392 0.025765806 0.47267294
		 0.32750392 0.26144749 -0.47267294 0.32750392 0.26144749 0.47267294 -0.32345343 0.074336678 0.47267294
		 -0.34213877 0.10718367 0.47267294 -0.29434967 0.048269153 0.47267294 -0.25767732 0.031532794 0.47267294
		 -0.21702528 0.025765806 0.47267294 -0.21702528 0.26144749 0.47267294 -0.25767732 0.2556805 0.47267294
		 -0.29434967 0.23894414 0.47267294 -0.32345343 0.21287659 0.47267294 -0.34213877 0.18002957 0.47267294
		 -0.3485775 0.14360663 0.47267294 -0.29434967 0.048269153 -0.47267294 -0.25767732 0.031532794 -0.47267294
		 -0.32345343 0.074336678 -0.47267294 -0.34213877 0.10718367 -0.47267294 -0.3485775 0.14360663 -0.47267294
		 -0.34213877 0.18002957 -0.47267294 -0.32345343 0.21287659 -0.47267294 -0.29434967 0.23894414 -0.47267294
		 -0.25767732 0.2556805 -0.47267294 -0.21702528 0.26144749 -0.47267294 -0.21702528 0.025765806 -0.47267294
		 0.33020163 0.025765806 -0.47540808 0.33020163 0.025765806 0.47540808 0.33020163 0.26144749 -0.47540808
		 0.33020163 0.26144749 0.47540808 0.054621935 0.28721327 0 0.054621935 0 0 -0.23644614 0.28159335 0.5
		 -0.23675871 0.28556722 0.49835396 -0.23688841 0.28721327 0.49438 0.30560875 0.28159335 0.5
		 0.30544662 0.28556722 0.49835396 0.30505538 0.28721327 0.49438 -0.23644614 0.28159335 -0.5
		 -0.23675871 0.28556722 -0.49835396 -0.23688841 0.28721327 -0.49438 0.30560875 0.28159335 -0.5
		 0.30544662 0.28556722 -0.49835396 0.30505538 0.28721327 -0.49438 -0.23644614 0.0056199208 0.5
		 -0.23675871 0.0016460367 0.49835396 -0.23688841 0 0.49438 0.30560875 0.0056199208 0.5
		 0.30544662 0.0016460367 0.49835396 0.30505538 0 0.49438 -0.23644614 0.0056199208 -0.5
		 -0.23675871 0.0016460367 -0.49835396 -0.23688841 0 -0.49438 0.30560875 0.0056199208 -0.5
		 0.30544662 0.0016460367 -0.49835396 0.30505538 0 -0.49438 -0.37345266 0.18799347 0.49438
		 -0.37186766 0.18747851 0.49835396 -0.36804128 0.18623529 0.5 -0.38048065 0.14360663 0.49438
		 -0.3788141 0.14360663 0.49835396 -0.37479067 0.14360663 0.5 -0.38048065 0.14360663 -0.49438
		 -0.3788141 0.14360663 -0.49835396 -0.37479067 0.14360663 -0.5 -0.37345266 0.18799347 -0.49438
		 -0.37186766 0.18747851 -0.49835396 -0.36804128 0.18623529 -0.5 -0.35305691 0.22802246 0.49438
		 -0.35170865 0.22704288 0.49835396 -0.34845376 0.22467798 0.5 -0.35305691 0.22802246 -0.49438
		 -0.35170865 0.22704288 -0.49835396 -0.34845376 0.22467798 -0.5 -0.32128978 0.25978965 0.49438
		 -0.32031012 0.25844136 0.49835396 -0.31794524 0.25518635 0.5 -0.32128978 0.25978965 -0.49438
		 -0.32031012 0.25844136 -0.49835396 -0.31794524 0.25518635 -0.5 -0.28126097 0.2801854 0.49438
		 -0.28074598 0.27860042 0.49835396 -0.27950263 0.27477393 0.5 -0.28126097 0.2801854 -0.49438
		 -0.28074598 0.27860042 -0.49835396 -0.27950263 0.27477393 -0.5 -0.28126097 0.0070279241 0.49438
		 -0.28074598 0.0086129112 0.49835396 -0.27950263 0.01243941 0.5 -0.28126097 0.0070279241 -0.49438
		 -0.28074598 0.0086129112 -0.49835396 -0.27950263 0.01243941 -0.5 -0.32128978 0.02742368 0.49438
		 -0.32031012 0.028771952 0.49835396 -0.31794524 0.032026965 0.5 -0.32128978 0.02742368 -0.49438
		 -0.32031012 0.028771952 -0.49835396 -0.31794524 0.032026965 -0.5 -0.35305691 0.059190869 0.49438
		 -0.35170865 0.060170446 0.49835396 -0.34845376 0.062535353 0.5 -0.35305691 0.059190869 -0.49438
		 -0.35170865 0.060170446 -0.49835396 -0.34845376 0.062535353 -0.5 -0.37345266 0.099219829 0.49438
		 -0.37186766 0.099734783 0.49835396 -0.36804128 0.10097799 0.5 -0.37345266 0.099219829 -0.49438
		 -0.37186766 0.099734783 -0.49835396 -0.36804128 0.10097799 -0.5 -0.32788515 0.070761621 0.5
		 -0.32475138 0.073289566 0.49835396 -0.32345343 0.074336678 0.49438 -0.3475039 0.105249 0.5
		 -0.34371018 0.10661702 0.49835396 -0.34213877 0.10718367 0.49438 -0.29746175 0.043511856 0.5
		 -0.29526138 0.046875771 0.49835396 -0.29434967 0.048269153 0.49438 -0.25927114 0.02608273 0.5
		 -0.25814414 0.029936507 0.49835396 -0.25767732 0.031532794 0.49438 -0.21742201 0.020145886 0.5
		 -0.21714163 0.02411977 0.49835396 -0.21702528 0.025765806 0.49438 0.30505538 0.025765806 0.49438
		 0.30544662 0.02411977 0.49835396 0.30560875 0.020145886 0.5 -0.21742201 0.2670674 0.5
		 -0.21714163 0.26309353 0.49835396 -0.21702528 0.26144749 0.49438 0.30560875 0.2670674 0.5
		 0.30544662 0.26309353 0.49835396 0.30505538 0.26144749 0.49438 -0.25927114 0.26113057 0.5
		 -0.25814414 0.2572768 0.49835396 -0.25767732 0.2556805 0.49438 -0.29746175 0.24370144 0.5
		 -0.29526138 0.24033752 0.49835396 -0.29434967 0.23894414 0.49438 -0.32788515 0.21645164 0.5
		 -0.32475138 0.21392369 0.49835396 -0.32345343 0.21287659 0.49438 -0.3475039 0.18196423 0.5
		 -0.34371018 0.18059622 0.49835396 -0.34213877 0.18002957 0.49438 -0.35428452 0.14360663 0.5
		 -0.35024905 0.14360663 0.49835396 -0.3485775 0.14360663 0.49438 -0.29746175 0.043511856 -0.5
		 -0.29526138 0.046875771 -0.49835396 -0.29434967 0.048269153 -0.49438 -0.25927114 0.02608273 -0.5
		 -0.25814414 0.029936507 -0.49835396 -0.25767732 0.031532794 -0.49438 -0.32788515 0.070761621 -0.5
		 -0.32475138 0.073289566 -0.49835396 -0.32345343 0.074336678 -0.49438 -0.3475039 0.105249 -0.5
		 -0.34371018 0.10661702 -0.49835396 -0.34213877 0.10718367 -0.49438 -0.35428452 0.14360663 -0.5
		 -0.35024905 0.14360663 -0.49835396 -0.3485775 0.14360663 -0.49438 -0.3475039 0.18196423 -0.5
		 -0.34371018 0.18059622 -0.49835396;
	setAttr ".vt[166:283]" -0.34213877 0.18002957 -0.49438 -0.32788515 0.21645164 -0.5
		 -0.32475138 0.21392369 -0.49835396 -0.32345343 0.21287659 -0.49438 -0.29746175 0.24370144 -0.5
		 -0.29526138 0.24033752 -0.49835396 -0.29434967 0.23894414 -0.49438 -0.25927114 0.26113057 -0.5
		 -0.25814414 0.2572768 -0.49835396 -0.25767732 0.2556805 -0.49438 -0.21742201 0.2670674 -0.5
		 -0.21714163 0.26309353 -0.49835396 -0.21702528 0.26144749 -0.49438 0.30505538 0.26144749 -0.49438
		 0.30544662 0.26309353 -0.49835396 0.30560875 0.2670674 -0.5 -0.21742201 0.020145886 -0.5
		 -0.21714163 0.02411977 -0.49835396 -0.21702528 0.025765806 -0.49438 0.30560875 0.020145886 -0.5
		 0.30544662 0.02411977 -0.49835396 0.30505538 0.025765806 -0.49438 0.35445833 0.0056199208 -0.45115042
		 0.35281229 0.0016460367 -0.45098829 0.34883833 0 -0.45059681 0.35445833 0.0056199208 0.45115042
		 0.35281229 0.0016460367 0.45098829 0.34883833 0 0.45059681 0.34883595 0.025765806 -0.45061398
		 0.35281157 0.024119522 -0.45099354 0.35445833 0.020145044 -0.45115042 0.35445833 0.020145886 0.45115042
		 0.35281229 0.02411977 0.45098829 0.34883833 0.025765806 0.45059681 0.35445833 0.28159335 -0.45115042
		 0.35281229 0.28556722 -0.45098829 0.34883833 0.28721327 -0.45059681 0.35445833 0.28159335 0.45115042
		 0.35281229 0.28556722 0.45098829 0.34883833 0.28721327 0.45059681 0.35445833 0.2670674 -0.45115042
		 0.35281229 0.26309353 -0.45098829 0.34883833 0.26144749 -0.45059681 0.34883595 0.26144749 0.45061398
		 0.35281157 0.26309377 0.45099354 0.35445833 0.26706824 0.45115042 0.35073996 0.0056199208 -0.46984434
		 0.34918928 0.0016460367 -0.46920204 0.34544611 0 -0.46765137 0.35073996 0.020145886 -0.46984434
		 0.34918928 0.02411977 -0.46920204 0.34544611 0.025765806 -0.46765137 0.34015059 0.0056199208 -0.4856925
		 0.33896399 0.0016460367 -0.48450565 0.33609891 0 -0.48164082 0.34015059 0.020145886 -0.4856925
		 0.33896399 0.02411977 -0.48450565 0.33609891 0.025765806 -0.48164082 0.32430267 0.0056199208 -0.49628162
		 0.32366037 0.0016460367 -0.49473095 0.32210994 0 -0.49098778 0.32430267 0.020145886 -0.49628162
		 0.32366037 0.02411977 -0.49473095 0.32210994 0.025765806 -0.49098778 0.32430267 0.0056199208 0.49628162
		 0.32366037 0.0016460367 0.49473095 0.32210994 0 0.49098778 0.32430267 0.020145886 0.49628162
		 0.32366037 0.02411977 0.49473095 0.32210994 0.025765806 0.49098778 0.34015059 0.0056199208 0.4856925
		 0.33896399 0.0016460367 0.48450565 0.33609891 0 0.48164082 0.34015059 0.020145886 0.4856925
		 0.33896399 0.02411977 0.48450565 0.33609891 0.025765806 0.48164082 0.35073996 0.0056199208 0.46984434
		 0.34918928 0.0016460367 0.46920204 0.34544611 0 0.46765137 0.35073996 0.020145886 0.46984434
		 0.34918928 0.02411977 0.46920204 0.34544611 0.025765806 0.46765137 0.32430267 0.28159335 -0.49628162
		 0.32366037 0.28556722 -0.49473095 0.32210994 0.28721327 -0.49098778 0.32430267 0.2670674 -0.49628162
		 0.32366037 0.26309353 -0.49473095 0.32210994 0.26144749 -0.49098778 0.34015059 0.28159335 -0.4856925
		 0.33896399 0.28556722 -0.48450565 0.33609891 0.28721327 -0.48164082 0.34015059 0.2670674 -0.4856925
		 0.33896399 0.26309353 -0.48450565 0.33609891 0.26144749 -0.48164082 0.35073996 0.28159335 -0.46984434
		 0.34918928 0.28556722 -0.46920204 0.34544611 0.28721327 -0.46765137 0.35073996 0.2670674 -0.46984434
		 0.34918928 0.26309353 -0.46920204 0.34544611 0.26144749 -0.46765137 0.35073996 0.28159335 0.46984434
		 0.34918928 0.28556722 0.46920204 0.34544611 0.28721327 0.46765137 0.35073996 0.2670674 0.46984434
		 0.34918928 0.26309353 0.46920204 0.34544611 0.26144749 0.46765137 0.34015059 0.28159335 0.4856925
		 0.33896399 0.28556722 0.48450565 0.33609891 0.28721327 0.48164082 0.34015059 0.2670674 0.4856925
		 0.33896399 0.26309353 0.48450565 0.33609891 0.26144749 0.48164082 0.32430267 0.28159335 0.49628162
		 0.32366037 0.28556722 0.49473095 0.32210994 0.28721327 0.49098778 0.32430267 0.2670674 0.49628162
		 0.32366037 0.26309353 0.49473095 0.32210994 0.26144749 0.49098778;
	setAttr -s 569 ".ed";
	setAttr ".ed[0:165]"  40 39 0 39 84 0 84 83 0 83 40 0 39 38 0 38 85 0 85 84 0
		 46 45 0 45 87 0 87 86 0 86 46 0 45 44 0 44 88 0 88 87 0 124 123 0 123 126 0 126 125 0
		 125 124 0 123 122 0 122 127 0 127 126 0 178 177 0 177 180 0 180 179 0 179 178 0 177 176 0
		 176 181 0 181 180 0 196 195 0 195 198 0 198 197 0 197 196 0 195 194 0 194 199 0 199 198 0
		 208 207 0 207 210 0 210 209 0 209 208 0 207 206 0 206 211 0 211 210 0 59 56 0 56 65 0
		 65 62 0 62 59 0 56 68 0 68 71 0 71 65 0 68 74 0 74 77 0 77 71 0 74 80 0 80 83 0 83 77 0
		 80 34 0 34 40 0 86 89 0 89 52 0 52 46 0 86 92 0 92 95 0 95 89 0 92 98 0 98 101 0
		 101 95 0 98 104 0 104 107 0 107 101 0 104 59 0 62 107 0 197 191 0 191 188 0 188 196 0
		 206 200 0 200 203 0 203 211 0 106 100 0 100 110 0 110 113 0 113 106 0 100 94 0 94 116 0
		 116 110 0 94 88 0 88 119 0 119 116 0 44 122 0 122 119 0 44 47 0 47 127 0 131 35 0
		 35 32 0 32 128 0 128 131 0 32 82 0 82 134 0 134 128 0 82 76 0 76 137 0 137 134 0
		 76 70 0 70 140 0 140 137 0 70 58 0 58 143 0 143 140 0 58 61 0 61 146 0 146 143 0
		 61 106 0 113 146 0 91 97 0 97 149 0 149 152 0 152 91 0 97 103 0 103 155 0 155 149 0
		 103 109 0 109 158 0 158 155 0 109 64 0 64 161 0 161 158 0 64 67 0 67 164 0 164 161 0
		 67 73 0 73 167 0 167 164 0 73 79 0 79 170 0 170 167 0 79 85 0 85 173 0 173 170 0
		 38 176 0 176 173 0 38 41 0 41 181 0 185 53 0 53 50 0 50 182 0 182 185 0 50 91 0 152 182 0
		 115 112 0 112 4 0 4 5 0 5 115 0 112 118 0 118 6 0 6 4 0 118 121 0 121 7 0 7 6 0 121 124 0
		 124 8 0 8 7 0 125 27 0 27 1 0 1 8 0 130 136 0 136 10 0 10 9 0;
	setAttr ".ed[166:331]" 9 130 0 136 139 0 139 11 0 11 10 0 139 142 0 142 12 0
		 12 11 0 142 145 0 145 13 0 13 12 0 145 148 0 148 14 0 14 13 0 148 115 0 5 14 0 154 151 0
		 151 15 0 15 16 0 16 154 0 151 157 0 157 17 0 17 15 0 157 160 0 160 18 0 18 17 0 160 163 0
		 163 19 0 19 18 0 163 166 0 166 20 0 20 19 0 166 169 0 169 21 0 21 20 0 169 172 0
		 172 22 0 22 21 0 172 175 0 175 23 0 23 22 0 175 178 0 178 24 0 24 23 0 179 28 0 28 2 0
		 2 24 0 184 154 0 16 25 0 25 184 0 26 187 0 187 184 0 25 0 0 0 26 0 27 199 0 194 26 0
		 0 1 0 28 208 0 209 29 0 29 3 0 3 2 0 29 133 0 133 130 0 9 3 0 188 212 0 212 215 0
		 215 196 0 212 218 0 218 221 0 221 215 0 218 224 0 224 227 0 227 221 0 224 53 0 185 227 0
		 47 230 0 230 233 0 233 127 0 230 236 0 236 239 0 239 233 0 236 242 0 242 245 0 245 239 0
		 242 191 0 197 245 0 41 248 0 248 251 0 251 181 0 248 254 0 254 257 0 257 251 0 254 260 0
		 260 263 0 263 257 0 260 200 0 206 263 0 203 266 0 266 269 0 269 211 0 266 272 0 272 275 0
		 275 269 0 272 278 0 278 281 0 281 275 0 278 35 0 131 281 0 194 217 0 217 26 0 217 223 0
		 223 26 0 223 229 0 229 26 0 229 187 0 226 31 0 31 55 0 55 226 0 125 235 0 235 27 0
		 235 241 0 241 27 0 241 247 0 247 27 0 247 199 0 179 253 0 253 28 0 253 259 0 259 28 0
		 259 265 0 265 28 0 265 208 0 250 30 0 30 256 0 256 250 0 209 271 0 271 29 0 271 277 0
		 277 29 0 277 283 0 283 29 0 283 133 0 280 274 0 274 30 0 30 280 0 274 268 0 268 30 0
		 268 205 0 205 30 0 205 202 0 202 30 0 202 262 0 262 30 0 262 256 0 43 30 0 250 43 0
		 40 30 0 43 40 0 34 30 0 37 30 0 34 37 0 37 280 0 244 238 0 238 31 0 31 244 0 238 232 0
		 232 31 0;
	setAttr ".ed[332:497]" 232 49 0 49 31 0 49 46 0 46 31 0 52 31 0 52 55 0 220 31 0
		 226 220 0 214 31 0 220 214 0 190 31 0 214 190 0 193 31 0 190 193 0 193 244 0 34 33 0
		 33 36 0 36 37 0 33 32 0 35 36 0 39 42 0 42 41 0 43 42 0 42 249 0 249 248 0 250 249 0
		 45 48 0 48 47 0 49 48 0 48 231 0 231 230 0 232 231 0 52 51 0 51 54 0 54 55 0 51 50 0
		 53 54 0 56 57 0 57 69 0 69 68 0 57 58 0 70 69 0 57 60 0 60 61 0 59 60 0 62 63 0 63 108 0
		 108 107 0 63 64 0 109 108 0 63 66 0 66 67 0 65 66 0 69 75 0 75 74 0 76 75 0 66 72 0
		 72 73 0 71 72 0 75 81 0 81 80 0 82 81 0 72 78 0 78 79 0 77 78 0 33 81 0 78 84 0 87 93 0
		 93 92 0 94 93 0 51 90 0 90 91 0 89 90 0 93 99 0 99 98 0 100 99 0 90 96 0 96 97 0
		 95 96 0 99 105 0 105 104 0 106 105 0 96 102 0 102 103 0 101 102 0 60 105 0 102 108 0
		 110 111 0 111 114 0 114 113 0 111 112 0 115 114 0 114 147 0 147 146 0 148 147 0 111 117 0
		 117 118 0 116 117 0 117 120 0 120 121 0 119 120 0 120 123 0 128 129 0 129 132 0 132 131 0
		 129 130 0 133 132 0 132 282 0 282 281 0 283 282 0 129 135 0 135 136 0 134 135 0 135 138 0
		 138 139 0 137 138 0 138 141 0 141 142 0 140 141 0 141 144 0 144 145 0 143 144 0 144 147 0
		 149 150 0 150 153 0 153 152 0 150 151 0 154 153 0 153 183 0 183 182 0 184 183 0 150 156 0
		 156 157 0 155 156 0 156 159 0 159 160 0 158 159 0 159 162 0 162 163 0 161 162 0 162 165 0
		 165 166 0 164 165 0 165 168 0 168 169 0 167 168 0 168 171 0 171 172 0 170 171 0 171 174 0
		 174 175 0 173 174 0 174 177 0 183 186 0 186 185 0 187 186 0 186 228 0 228 227 0 229 228 0
		 188 189 0 189 213 0 213 212 0 189 190 0 214 213 0 189 192 0 192 193 0;
	setAttr ".ed[498:568]" 191 192 0 198 246 0 246 245 0 247 246 0 200 201 0 201 204 0
		 204 203 0 201 202 0 205 204 0 204 267 0 267 266 0 268 267 0 207 264 0 264 263 0 265 264 0
		 213 219 0 219 218 0 220 219 0 195 216 0 216 217 0 215 216 0 219 225 0 225 224 0 226 225 0
		 216 222 0 222 223 0 221 222 0 54 225 0 222 228 0 231 237 0 237 236 0 238 237 0 126 234 0
		 234 235 0 233 234 0 237 243 0 243 242 0 244 243 0 234 240 0 240 241 0 239 240 0 192 243 0
		 240 246 0 249 255 0 255 254 0 256 255 0 180 252 0 252 253 0 251 252 0 255 261 0 261 260 0
		 262 261 0 252 258 0 258 259 0 257 258 0 201 261 0 258 264 0 267 273 0 273 272 0 274 273 0
		 210 270 0 270 271 0 269 270 0 273 279 0 279 278 0 280 279 0 270 276 0 276 277 0 275 276 0
		 36 279 0 276 282 0;
	setAttr -s 1112 ".n";
	setAttr ".n[0:165]" -type "float3"  0.9989925 0.0047137877 0.038022619 0.92344767
		 0.38269961 0.015473634 0.87684643 0.38329786 0.28926975 0.95079589 -0.0019874745
		 0.30892906 0.38227558 0.92362708 0.015242501 0.14832743 0.98857343 0.013244566 0.079420008
		 0.99586737 0.037343919 0.3600831 0.92386526 0.12754244 -0.9989925 -0.0055969507 0.037903011
		 -0.9234466 -0.3829585 0.0065679653 -0.87684751 -0.38992122 0.2802746 -0.95079565
		 -0.0051987143 0.30889225 -0.38227391 -0.92373246 -0.0062449072 -0.1483269 -0.98861414
		 -0.0097530419 -0.079419978 -0.99646652 0.014170629 -0.36008248 -0.92658204 0.10601982
		 0.99764979 -0.063507438 -0.010759151 0.92349005 -0.38265595 -0.013949576 0.92371339
		 -0.38230816 -0.0069306884 0.99870634 -0.045155361 -0.00081862672 0.38233694 -0.92361003
		 -0.014725656 0.060125936 -0.99784225 -0.012232696 0.085755259 -0.99587387 -0.018310122
		 0.38279095 -0.92338294 -0.017003763 -0.99764973 0.063740693 -0.0092790797 -0.92348975
		 0.38287765 -0.0050453595 -0.92371321 0.38236639 0.0019636068 -0.99870634 0.045162305
		 0.00023190133 -0.38233775 0.92370236 0.0067614657 -0.060125917 0.99785674 0.010980316
		 -0.085755266 0.99603027 0.0048587327 -0.38279191 0.92352825 0.004478584 0.087011784
		 0.015592212 -0.9958111 0.38275108 0.01442931 -0.92344326 0.38275215 0.0070601739
		 -0.92352855 0.086960226 0.0075733424 -0.99590898 0.92369717 0.0059014428 -0.38236436
		 0.99870938 0.00069710042 -0.045088723 0.9987067 0.00035299757 -0.045153618 0.92369783
		 0.0029894011 -0.38239685 -0.99870664 0.00069736992 -0.045149732 -0.92369777 0.0059059463
		 -0.38236308 -0.92369717 0.0029939287 -0.3823984 -0.99870944 0.00035184895 -0.045092866
		 -0.3827531 0.014422853 -0.92344242 -0.086960375 0.015593417 -0.99581558 -0.087011933
		 0.0075744563 -0.99590433 -0.38275203 0.0070537673 -0.92352855 1.0773699e-09 -0.013231969
		 0.99963939 0.30888507 -0.012663046 0.95072794 0.30888507 -0.0094541963 0.95076525
		 -5.2554624e-11 -0.010023101 0.9996767 0.30888507 -0.012663046 0.95072794 0.58762342
		 -0.011011317 0.80872214 0.58762342 -0.0078024422 0.80875945 0.30888507 -0.0094541963
		 0.95076525 0.58762342 -0.011011317 0.80872214 0.80879432 -0.0084389485 0.58756667
		 0.80879432 -0.0052300664 0.58760399 0.58762342 -0.0078024422 0.80875945 0.80879432
		 -0.0084389485 0.58756667 0.95079589 -0.0051987153 0.30889168 0.95079589 -0.0019874745
		 0.30892906 0.80879432 -0.0052300664 0.58760399 0.95079589 -0.0051987153 0.30889168
		 0.9989925 -0.0055969129 0.037902687 0.9989925 0.0047137877 0.038022619 0.95079589
		 -0.0019874745 0.30892906 -0.9989925 -0.0055969507 0.037903011 -0.95079565 -0.0051987143
		 0.30889225 -0.95079565 -0.0019874903 0.30892965 -0.99899244 0.0047138166 0.038022935
		 -0.95079565 -0.0051987143 0.30889225 -0.80879432 -0.0084389476 0.58756667 -0.80879432
		 -0.005230064 0.58760399 -0.95079565 -0.0019874903 0.30892965 -0.80879432 -0.0084389476
		 0.58756667 -0.58762354 -0.011011312 0.80872208 -0.58762354 -0.0078024417 0.80875939
		 -0.80879432 -0.005230064 0.58760399 -0.58762354 -0.011011312 0.80872208 -0.30888528
		 -0.012663039 0.95072794 -0.30888528 -0.0094542 0.95076525 -0.58762354 -0.0078024417
		 0.80875939 -0.30888528 -0.012663039 0.95072794 1.0773699e-09 -0.013231969 0.99963939
		 -5.2554624e-11 -0.010023101 0.9996767 -0.30888528 -0.0094542 0.95076525 0.086960226
		 0.0075733424 -0.99590898 -0.086942881 0.007573158 -0.99591041 -0.086942926 0.015593557
		 -0.99581712 0.087011784 0.015592212 -0.9958111 -0.086960375 0.015593417 -0.99581558
		 0.086942978 0.015593644 -0.99581707 0.086943023 0.0075732525 -0.99591041 -0.087011933
		 0.0075744563 -0.99590433 -0.024888502 -0.99729997 0.065017037 -0.046351321 -0.99728662
		 0.052200787 0.032757793 -0.99783546 -0.052012742 0.017565772 -0.99776632 -0.060065463
		 -0.046351321 -0.99728662 0.052200787 -0.063780308 -0.99708515 0.034744687 0.045908619
		 -0.99780983 -0.041495141 0.032757793 -0.99783546 -0.052012742 -0.063780308 -0.99708515
		 0.034744687 -0.079419978 -0.99646652 0.014170629 0.060380585 -0.99747419 -0.029211221
		 0.045908619 -0.99780983 -0.041495141 -0.079419978 -0.99646652 0.014170629 -0.1483269
		 -0.98861414 -0.0097530419 0.060125936 -0.99784225 -0.012232696 0.060380585 -0.99747419
		 -0.029211221 -0.1483269 -0.98861414 -0.0097530419 -0.088142194 -0.99566638 -0.018256808
		 0.085755259 -0.99587387 -0.018310122 0.060125936 -0.99784225 -0.012232696 -0.085755311
		 -0.99587393 -0.01831013 0.088142477 -0.99566633 -0.018256815 0.14832745 -0.98861408
		 -0.0097530792 -0.060125932 -0.99784225 -0.012232665 0.14832745 -0.98861408 -0.0097530792
		 0.079420015 -0.99646658 0.0141702 -0.060380563 -0.99747419 -0.029211169 -0.060125932
		 -0.99784225 -0.012232665 0.079420015 -0.99646658 0.0141702 0.063780248 -0.99708509
		 0.034744468 -0.04590854 -0.99780983 -0.041495372 -0.060380563 -0.99747419 -0.029211169
		 0.063780248 -0.99708509 0.034744468 0.046351198 -0.99728656 0.052201662 -0.032757763
		 -0.99783546 -0.052012693 -0.04590854 -0.99780983 -0.041495372 0.046351198 -0.99728656
		 0.052201662 0.024888437 -0.99730003 0.065018013 -0.01756577 -0.99776632 -0.060065433
		 -0.032757763 -0.99783546 -0.052012693 0.024888437 -0.99730003 0.065018013 8.4928145e-09
		 -0.9972809 0.069891803 3.7607926e-09 -0.99772602 -0.063218534 -0.01756577 -0.99776632
		 -0.060065433 8.4928145e-09 -0.9972809 0.069891803 -0.024888502 -0.99729997 0.065017037
		 0.017565772 -0.99776632 -0.060065463 3.7607926e-09 -0.99772602 -0.063218534 -0.079419985
		 0.99586737 0.037344486 -0.063780315 0.99600726 0.05792737 0.045908637 0.99850506
		 -0.018274993 0.060380593 0.9978838 -0.0060021896 -0.063780315 0.99600726 0.05792737
		 -0.046351325 0.99580252 0.075383432 0.032757811 0.9987753 -0.028789163 0.045908637
		 0.99850506 -0.018274993 -0.046351325 0.99580252 0.075383432 -0.024888506 0.99551791
		 0.088196531 0.017565774 0.99889338 -0.036841299 0.032757811 0.9987753 -0.028789163
		 -0.024888506 0.99551791 0.088196531 0 0.99538529 0.093069471 -7.5215851e-09 0.99892658
		 -0.039994501 0.017565774 0.99889338 -0.036841299 0 0.99538529 0.093069471 0.024888419
		 0.99551785 0.08819744 -0.017565794 0.99889338 -0.03684134 -7.5215851e-09 0.99892658
		 -0.039994501 0.024888419 0.99551785 0.08819744 0.046351302 0.99580258 0.075384393;
	setAttr ".n[166:331]" -type "float3"  -0.032757793 0.9987753 -0.028789137 -0.017565794
		 0.99889338 -0.03684134 0.046351302 0.99580258 0.075384393 0.06378036 0.99600726 0.057927266
		 -0.045908596 0.99850506 -0.018275242 -0.032757793 0.9987753 -0.028789137 0.06378036
		 0.99600726 0.057927266 0.079420008 0.99586737 0.037343919 -0.060380679 0.9978838
		 -0.0060022734 -0.045908596 0.99850506 -0.018275242 0.079420008 0.99586737 0.037343919
		 0.14832743 0.98857343 0.013244566 -0.060125917 0.99785674 0.010980316 -0.060380679
		 0.9978838 -0.0060022734 0.14832743 0.98857343 0.013244566 0.088142425 0.99582165
		 0.0049072048 -0.085755266 0.99603027 0.0048587327 -0.060125917 0.99785674 0.010980316
		 0.085755251 0.99603027 0.0048587355 -0.088142216 0.99582171 0.0049072122 -0.14832692
		 0.98857349 0.01324464 0.060125936 0.99785674 0.010980302 -0.14832692 0.98857349 0.01324464
		 -0.079419985 0.99586737 0.037344486 0.060380593 0.9978838 -0.0060021896 0.060125936
		 0.99785674 0.010980302 0.34008509 -0.056683384 -0.93839395 0.62835687 -0.058311552
		 -0.7753846 0.62979329 0.0090302248 -0.77635866 0.3408708 0.010930785 -0.93975616
		 0.62835687 -0.058311552 -0.7753846 0.8360371 -0.060710113 -0.5448029 0.83792675 0.0063420273
		 -0.54524529 0.62979329 0.0090302248 -0.77635866 0.8360371 -0.060710113 -0.5448029
		 0.95775223 -0.063554704 -0.27950937 0.95990312 0.0032491181 -0.27933756 0.83792675
		 0.0063420273 -0.54524529 0.95775223 -0.063554704 -0.27950937 0.99764979 -0.063507438
		 -0.010759151 0.99967694 0.00011633984 -0.0099957306 0.95990312 0.0032491181 -0.27933756
		 0.99764979 -0.063507438 -0.010759151 0.99870634 -0.045155361 -0.00081862672 0.99972695
		 2.8278276e-08 3.2891911e-10 0.99972695 2.8565887e-08 3.3226447e-10 0.99967694 0.00011633984
		 -0.0099957306 -0.99764979 -0.063507169 -0.010759164 -0.95775211 -0.063555211 -0.27950948
		 -0.95990312 0.0032491181 -0.27933756 -0.99967694 0.00011680461 -0.009995725 -0.95775211
		 -0.063555211 -0.27950948 -0.83603692 -0.060709901 -0.5448032 -0.83792657 0.0063420315
		 -0.54524565 -0.95990312 0.0032491181 -0.27933756 -0.83603692 -0.060709901 -0.5448032
		 -0.62835652 -0.058311455 -0.77538502 -0.62979329 0.0090302248 -0.77635866 -0.83792657
		 0.0063420315 -0.54524565 -0.62835652 -0.058311455 -0.77538502 -0.34008497 -0.056683369
		 -0.93839395 -0.34087101 0.010930784 -0.9397561 -0.62979329 0.0090302248 -0.77635866
		 -0.34008497 -0.056683369 -0.93839395 -3.67541e-09 -0.056100048 -0.99815166 0 0.011627549
		 -0.9996593 -0.34087101 0.010930784 -0.9397561 -3.67541e-09 -0.056100048 -0.99815166
		 0.34008509 -0.056683384 -0.93839395 0.3408708 0.010930785 -0.93975616 0 0.011627549
		 -0.9996593 0.95775229 0.0700389 -0.2779555 0.83603692 0.073365644 -0.54324371 0.83792675
		 0.0063420273 -0.54524529 0.95990312 0.0032491181 -0.27933756 0.83603692 0.073365644
		 -0.54324371 0.62835664 0.07633099 -0.77381885 0.62979329 0.0090302248 -0.77635866
		 0.83792675 0.0063420273 -0.54524529 0.62835664 0.07633099 -0.77381885 0.34008509
		 0.078494951 -0.93682158 0.3408708 0.010930785 -0.93975616 0.62979329 0.0090302248
		 -0.77635866 0.34008509 0.078494951 -0.93682158 -3.3078678e-08 0.079301789 -0.99657667
		 0 0.011627549 -0.9996593 0.3408708 0.010930785 -0.93975616 -3.3078678e-08 0.079301789
		 -0.99657667 -0.34008503 0.07849507 -0.93682164 -0.34087101 0.010930784 -0.9397561
		 0 0.011627549 -0.9996593 -0.34008503 0.07849507 -0.93682164 -0.6283564 0.076331094
		 -0.77381903 -0.62979329 0.0090302248 -0.77635866 -0.34087101 0.010930784 -0.9397561
		 -0.6283564 0.076331094 -0.77381903 -0.83603692 0.073365569 -0.54324365 -0.83792657
		 0.0063420315 -0.54524565 -0.62979329 0.0090302248 -0.77635866 -0.83603692 0.073365569
		 -0.54324365 -0.95775217 0.070039429 -0.27795559 -0.95990312 0.0032491181 -0.27933756
		 -0.83792657 0.0063420315 -0.54524565 -0.95775217 0.070039429 -0.27795559 -0.99764973
		 0.063740693 -0.0092790797 -0.99967694 0.00011626547 -0.0099957315 -0.95990312 0.0032491181
		 -0.27933756 -0.99764973 0.063740693 -0.0092790797 -0.99870634 0.045162305 0.00023190133
		 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.99972695 0 0 -0.99967694 0.00011626547
		 -0.0099957315 0.99764973 0.063740529 -0.0092790648 0.95775229 0.0700389 -0.2779555
		 0.95990312 0.0032491181 -0.27933756 0.99967694 0.00011621086 -0.0099957325 0.99972695
		 -2.2651411e-08 -2.6347016e-10 0.99870634 0.045162205 0.00023190308 0.99764973 0.063740529
		 -0.0092790648 0.99967694 0.00011621086 -0.0099957325 0.99972695 -2.2585944e-08 -2.6270866e-10
		 0.99972695 2.8278276e-08 3.2891911e-10 0.9987067 0.00035299757 -0.045153618 0.99870938
		 0.00069710042 -0.045088723 0.99972695 -2.2651411e-08 -2.6347016e-10 0.99972695 -2.2585944e-08
		 -2.6270866e-10 0.99972695 2.8565887e-08 3.3226447e-10 -0.99972695 -5.4759912e-09
		 -6.3694064e-11 -0.99870664 0.00069736992 -0.045149732 -0.99870944 0.00035184895 -0.045092866
		 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99972695 2.1382385e-07 2.4870948e-09 -0.99972695
		 0 0 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99870634 -0.045154974 -0.00081862515
		 -0.99764979 -0.063507169 -0.010759164 -0.99967694 0.00011680461 -0.009995725 -0.99972695
		 2.1382385e-07 2.4870948e-09 -0.086942926 0.015593557 -0.99581712 -0.085857131 0.39176112
		 -0.91575402 0.085848674 0.39176387 -0.91575372 0.087011784 0.015592212 -0.9958111
		 -0.085857131 0.39176112 -0.91575402 -0.085707299 0.71245569 -0.69607121 0.085707307
		 0.71245569 -0.69607121 0.085848674 0.39176387 -0.91575372 -0.085707299 0.71245569
		 -0.69607121 -0.085857764 0.92462069 -0.37034982 0.085857652 0.92462075 -0.37034985
		 0.085707307 0.71245569 -0.69607121 -0.085857764 0.92462069 -0.37034982 -0.088142216
		 0.99582171 0.0049072122 0.085755251 0.99603027 0.0048587355 0.085857652 0.92462075
		 -0.37034985 -0.088142194 -0.99566638 -0.018256808 -0.085857615 -0.91575634 -0.39175615
		 0.085857749 -0.91575629 -0.39175615 0.085755259 -0.99587387 -0.018310122 -0.085857615
		 -0.91575634 -0.39175615 -0.08570727 -0.6960724 -0.7124545 0.08570727 -0.6960724 -0.7124545
		 0.085857749 -0.91575629 -0.39175615 -0.08570727 -0.6960724 -0.7124545 -0.085856169
		 -0.37035275 -0.92461962 0.085856132 -0.37035266 -0.92461956 0.08570727 -0.6960724
		 -0.7124545;
	setAttr ".n[332:497]" -type "float3"  -0.085856169 -0.37035275 -0.92461962
		 -0.086942881 0.007573158 -0.99591041 0.086960226 0.0075733424 -0.99590898 0.085856132
		 -0.37035266 -0.92461956 0.088142425 0.99582165 0.0049072048 0.085857794 0.92462045
		 -0.37035 -0.085857838 0.92462045 -0.37035 -0.085755266 0.99603027 0.0048587327 0.085857794
		 0.92462045 -0.37035 0.085707456 0.71245557 -0.69607133 -0.085707314 0.71245581 -0.69607103
		 -0.085857838 0.92462045 -0.37035 0.085707456 0.71245557 -0.69607133 0.085856251 0.39175913
		 -0.91575509 -0.085856259 0.39175898 -0.91575515 -0.085707314 0.71245581 -0.69607103
		 0.085856251 0.39175913 -0.91575509 0.086942978 0.015593644 -0.99581707 -0.086960375
		 0.015593417 -0.99581558 -0.085856259 0.39175898 -0.91575515 0.086943023 0.0075732525
		 -0.99591041 0.08585725 -0.37035483 -0.9246186 -0.085848793 -0.37035754 -0.92461842
		 -0.087011933 0.0075744563 -0.99590433 0.08585725 -0.37035483 -0.9246186 0.085707381
		 -0.69607222 -0.71245462 -0.085707374 -0.69607258 -0.71245426 -0.085848793 -0.37035754
		 -0.92461842 0.085707381 -0.69607222 -0.71245462 0.085857891 -0.91575617 -0.39175639
		 -0.085857749 -0.91575617 -0.39175642 -0.085707374 -0.69607258 -0.71245426 0.085857891
		 -0.91575617 -0.39175639 0.088142477 -0.99566633 -0.018256815 -0.085755311 -0.99587393
		 -0.01831013 -0.085857749 -0.91575617 -0.39175642 0.99972695 -2.2651411e-08 -2.6347016e-10
		 0.99870938 0.00069710042 -0.045088723 0.98309106 0.071118951 -0.16711697 0.99972695
		 -2.2651411e-08 -2.6347016e-10 0.98309106 0.071118951 -0.16711697 0.97501057 0.15802498
		 -0.15439041 0.99972695 -2.2651411e-08 -2.6347016e-10 0.97501057 0.15802498 -0.15439041
		 0.9834494 0.16691816 -0.066480488 0.99972695 -2.2651411e-08 -2.6347016e-10 0.9834494
		 0.16691816 -0.066480488 0.99870634 0.045162205 0.00023190308 -0.99969721 0.0071568051
		 -0.0028504191 -0.99972695 0 0 -0.99968112 0.0095720934 5.1344847e-05 0.99972695 2.8278276e-08
		 3.2891911e-10 0.99870634 -0.045155361 -0.00081862672 0.9834494 -0.16532661 -0.070344843
		 0.99972695 2.8278276e-08 3.2891911e-10 0.9834494 -0.16532661 -0.070344843 0.97501057
		 -0.15439101 -0.15802419 0.99972695 2.8278276e-08 3.2891911e-10 0.97501057 -0.15439101
		 -0.15802419 0.98310292 -0.067177221 -0.1686707 0.99972695 2.8278276e-08 3.2891911e-10
		 0.98310292 -0.067177221 -0.1686707 0.9987067 0.00035299757 -0.045153618 -0.99972695
		 -5.4759912e-09 -6.3694064e-11 -0.99870634 0.045162305 0.00023190133 -0.98344934 0.16691834
		 -0.066480517 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.98344934 0.16691834 -0.066480517
		 -0.97501057 0.15802446 -0.1543908 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.97501057
		 0.15802446 -0.1543908 -0.98310268 0.071082883 -0.16706324 -0.99972695 -5.4759912e-09
		 -6.3694064e-11 -0.98310268 0.071082883 -0.16706324 -0.99870664 0.00069736992 -0.045149732
		 0.99969733 0.0071564629 -0.0028504434 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99969572
		 0.0056558605 -0.0055255215 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99870944 0.00035184895
		 -0.045092866 -0.98309106 -0.067212798 -0.16872638 -0.99972695 2.2440248e-07 2.6101403e-09
		 -0.98309106 -0.067212798 -0.16872638 -0.97501069 -0.15439014 -0.15802479 -0.99972695
		 2.2440248e-07 2.6101403e-09 -0.97501069 -0.15439014 -0.15802479 -0.98344922 -0.16532782
		 -0.070345186 -0.99972695 2.2440248e-07 2.6101403e-09 -0.98344922 -0.16532782 -0.070345186
		 -0.99870634 -0.045154974 -0.00081862515 0.99969733 -0.0070885187 -0.0030161249 0.99969566
		 -0.0055261827 -0.0056555765 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99972689 -1.1770301e-10
		 -1.3690642e-12 0.99969566 -0.0055261827 -0.0056555765 0.99968606 -0.0033467452 -0.0083996961
		 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99968606 -0.0033467452 -0.0083996961 0.99934143
		 0.00021694523 -0.027759138 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99934143 0.00021694523
		 -0.027759138 0.99934143 0.00042878656 -0.027756676 0.99972689 -1.1770301e-10 -1.3690642e-12
		 0.99934143 0.00042878656 -0.027756676 0.99968606 0.0035411692 -0.0083195791 0.99972689
		 -1.1770301e-10 -1.3690642e-12 0.99968606 0.0035411692 -0.0083195791 0.99969572 0.0056558605
		 -0.0055255215 0.99968112 0.0095720161 5.1343399e-05 0.99972689 -1.1770301e-10 -1.3690642e-12
		 0.99969733 0.0071564629 -0.0028504434 0.9989925 0.0047137877 0.038022619 0.99972689
		 -1.1770301e-10 -1.3690642e-12 0.99968112 0.0095720161 5.1343399e-05 0.9989925 -0.0055969129
		 0.037902687 0.99972689 -1.1770301e-10 -1.3690642e-12 0.9989925 0.0047137877 0.038022619
		 0.99968112 -0.009570621 -0.00017131443 0.99972689 -1.1770301e-10 -1.3690642e-12 0.9989925
		 -0.0055969129 0.037902687 0.99969733 -0.0070885187 -0.0030161249 0.99972689 -1.1770301e-10
		 -1.3690642e-12 0.99968112 -0.009570621 -0.00017131443 -0.99968606 -0.0033453656 -0.0083996449
		 -0.99969566 -0.0055255466 -0.0056555751 -0.99972695 0 0 -0.99972695 0 0 -0.99969566
		 -0.0055255466 -0.0056555751 -0.99969733 -0.0070885937 -0.0030161308 -0.99972695 0
		 0 -0.99969733 -0.0070885937 -0.0030161308 -0.99968112 -0.0095706983 -0.00017131478
		 -0.99972695 0 0 -0.99968112 -0.0095706983 -0.00017131478 -0.9989925 -0.0055969507
		 0.037903011 -0.99972695 0 0 -0.9989925 -0.0055969507 0.037903011 -0.99899244 0.0047138166
		 0.038022935 -0.99972695 0 0 -0.99899244 0.0047138166 0.038022935 -0.99968112 0.0095720934
		 5.1344847e-05 -0.99969566 0.0056555751 -0.005525507 -0.99972695 0 0 -0.99969721 0.0071568051
		 -0.0028504191 -0.99968606 0.003539837 -0.0083195632 -0.99972695 0 0 -0.99969566 0.0056555751
		 -0.005525507 -0.99934143 0.00042878321 -0.027756592 -0.99972695 0 0 -0.99968606 0.003539837
		 -0.0083195632 -0.99934143 0.00021694772 -0.027759055 -0.99972695 0 0 -0.99934143
		 0.00042878321 -0.027756592 -0.99968606 -0.0033453656 -0.0083996449 -0.99972695 0
		 0 -0.99934143 0.00021694772 -0.027759055 0.9989925 -0.0055969129 0.037902687 0.92344767
		 -0.38295594 0.0065678991 0.9237116 -0.38231391 -0.0068432223 0.99968112 -0.009570621
		 -0.00017131443 0.38227564 -0.92373174 -0.006244984 0.14832745 -0.98861408 -0.0097530792
		 0.088142477 -0.99566633 -0.018256815 0.3827858 -0.9233889 -0.016788017 0.14832743
		 0.98857343 0.013244566 0.38227558 0.92362708 0.015242501;
	setAttr ".n[498:663]" -type "float3"  0.38278577 0.92352957 0.0046944339 0.088142425
		 0.99582165 0.0049072048 0.92344767 0.38269961 0.015473634 0.9989925 0.0047137877
		 0.038022619 0.99968112 0.0095720161 5.1343399e-05 0.9237116 0.38236964 0.0020512037
		 0.088142425 0.99582165 0.0049072048 0.38278577 0.92352957 0.0046944339 0.3889665
		 0.85504496 -0.34213594 0.085857794 0.92462045 -0.37035 0.9237116 0.38236964 0.0020512037
		 0.99968112 0.0095720161 5.1343399e-05 0.99969733 0.0071564629 -0.0028504434 0.92620701
		 0.34958392 -0.13923192 -0.1483269 -0.98861414 -0.0097530419 -0.38227391 -0.92373246
		 -0.0062449072 -0.38278395 -0.92338967 -0.016788006 -0.088142194 -0.99566638 -0.018256808
		 -0.9234466 -0.3829585 0.0065679653 -0.9989925 -0.0055969507 0.037903011 -0.99968112
		 -0.0095706983 -0.00017131478 -0.92371041 -0.38231677 -0.0068432325 -0.088142194 -0.99566638
		 -0.018256808 -0.38278395 -0.92338967 -0.016788006 -0.38896573 -0.84685564 -0.36193249
		 -0.085857615 -0.91575634 -0.39175615 -0.92371041 -0.38231677 -0.0068432325 -0.99968112
		 -0.0095706983 -0.00017131478 -0.99969733 -0.0070885937 -0.0030161308 -0.92620796
		 -0.34624851 -0.14732529 -0.99899244 0.0047138166 0.038022935 -0.9234466 0.38270214
		 0.015473756 -0.92371041 0.3823725 0.0020512596 -0.99968112 0.0095720934 5.1344847e-05
		 -0.38227397 0.92362779 0.015242686 -0.14832692 0.98857349 0.01324464 -0.088142216
		 0.99582171 0.0049072122 -0.38278401 0.92353034 0.0046944702 0.30888507 -0.012663046
		 0.95072794 0.28485149 -0.39680633 0.87227196 0.54190344 -0.39528492 0.74131262 0.58762342
		 -0.011011317 0.80872214 0.11696181 -0.92940801 0.34924883 0.024888437 -0.99730003
		 0.065018013 0.046351198 -0.99728656 0.052201662 0.22251031 -0.92878252 0.29547635
		 0.024888437 -0.99730003 0.065018013 0.11696181 -0.92940801 0.34924883 4.4102542e-08
		 -0.92962277 0.36777094 8.4928145e-09 -0.9972809 0.069891803 0.28485149 -0.39680633
		 0.87227196 0.30888507 -0.012663046 0.95072794 1.0773699e-09 -0.013231969 0.99963939
		 2.5792522e-07 -0.39732343 0.91738099 -5.2554624e-11 -0.010023101 0.9996767 -1.7585844e-08
		 0.37587816 0.92637444 -0.28485063 0.37640756 0.88126695 -0.30888528 -0.0094542 0.95076525
		 3.3925054e-09 0.9208169 0.38929436 0 0.99538529 0.093069471 -0.024888506 0.99551791
		 0.088196531 -0.11696196 0.92103469 0.3707681 0 0.99538529 0.093069471 3.3925054e-09
		 0.9208169 0.38929436 0.11696181 0.92103297 0.37077224 0.024888419 0.99551785 0.08819744
		 -1.7585844e-08 0.37587816 0.92637444 -5.2554624e-11 -0.010023101 0.9996767 0.30888507
		 -0.0094541963 0.95076525 0.28485176 0.37641034 0.88126534 0.58762342 -0.011011317
		 0.80872214 0.54190344 -0.39528492 0.74131262 0.74586219 -0.39291227 0.53736711 0.80879432
		 -0.0084389485 0.58756667 0.22251031 -0.92878252 0.29547635 0.046351198 -0.99728656
		 0.052201662 0.063780248 -0.99708509 0.034744468 0.3062548 -0.92781067 0.2117292 0.024888419
		 0.99551785 0.08819744 0.11696181 0.92103297 0.37077224 0.22251067 0.92165822 0.31699997
		 0.046351302 0.99580258 0.075384393 0.28485176 0.37641034 0.88126534 0.30888507 -0.0094541963
		 0.95076525 0.58762342 -0.0078024422 0.80875945 0.54190326 0.37793517 0.75030649 0.80879432
		 -0.0084389485 0.58756667 0.74586219 -0.39291227 0.53736711 0.87684649 -0.38992256
		 0.280276 0.95079589 -0.0051987153 0.30889168 0.3062548 -0.92781067 0.2117292 0.063780248
		 -0.99708509 0.034744468 0.079420015 -0.99646658 0.0141702 0.36008307 -0.92658186
		 0.10601955 0.046351302 0.99580258 0.075384393 0.22251067 0.92165822 0.31699997 0.30625504
		 0.92263466 0.23325303 0.06378036 0.99600726 0.057927266 0.54190326 0.37793517 0.75030649
		 0.58762342 -0.0078024422 0.80875945 0.80879432 -0.0052300664 0.58760399 0.74586236
		 0.38030693 0.54636067 0.14832745 -0.98861408 -0.0097530792 0.38227564 -0.92373174
		 -0.006244984 0.36008307 -0.92658186 0.10601955 0.079420015 -0.99646658 0.0141702
		 0.92344767 -0.38295594 0.0065678991 0.9989925 -0.0055969129 0.037902687 0.95079589
		 -0.0051987153 0.30889168 0.87684649 -0.38992256 0.280276 0.06378036 0.99600726 0.057927266
		 0.30625504 0.92263466 0.23325303 0.3600831 0.92386526 0.12754244 0.079420008 0.99586737
		 0.037343919 0.74586236 0.38030693 0.54636067 0.80879432 -0.0052300664 0.58760399
		 0.95079589 -0.0019874745 0.30892906 0.87684643 0.38329786 0.28926975 -0.95079565
		 -0.0051987143 0.30889225 -0.87684751 -0.38992122 0.2802746 -0.74586338 -0.39291307
		 0.53736484 -0.80879432 -0.0084389476 0.58756667 -0.36008248 -0.92658204 0.10601982
		 -0.079419978 -0.99646652 0.014170629 -0.063780308 -0.99708515 0.034744687 -0.30625418
		 -0.92781097 0.21172889 -0.14832692 0.98857349 0.01324464 -0.38227397 0.92362779 0.015242686
		 -0.36008248 0.92386538 0.12754332 -0.079419985 0.99586737 0.037344486 -0.9234466
		 0.38270214 0.015473756 -0.99899244 0.0047138166 0.038022935 -0.95079565 -0.0019874903
		 0.30892965 -0.87684685 0.38329625 0.28927037 -0.80879432 -0.0084389476 0.58756667
		 -0.74586338 -0.39291307 0.53736484 -0.54190129 -0.39528307 0.74131519 -0.58762354
		 -0.011011312 0.80872208 -0.30625418 -0.92781097 0.21172889 -0.063780308 -0.99708515
		 0.034744687 -0.046351321 -0.99728662 0.052200787 -0.22251076 -0.92878377 0.29547188
		 -0.079419985 0.99586737 0.037344486 -0.36008248 0.92386538 0.12754332 -0.30625418
		 0.92263514 0.23325236 -0.063780315 0.99600726 0.05792737 -0.87684685 0.38329625 0.28927037
		 -0.95079565 -0.0019874903 0.30892965 -0.80879432 -0.005230064 0.58760399 -0.74586314
		 0.3803077 0.54635894 -0.58762354 -0.011011312 0.80872208 -0.54190129 -0.39528307
		 0.74131519 -0.28485066 -0.3968038 0.87227339 -0.30888528 -0.012663039 0.95072794
		 -0.22251076 -0.92878377 0.29547188 -0.046351321 -0.99728662 0.052200787 -0.024888502
		 -0.99729997 0.065017037 -0.11696196 -0.9294095 0.34924462 -0.063780315 0.99600726
		 0.05792737 -0.30625418 0.92263514 0.23325236 -0.22251076 0.92165983 0.31699535 -0.046351325
		 0.99580252 0.075383432 -0.74586314 0.3803077 0.54635894 -0.80879432 -0.005230064
		 0.58760399 -0.58762354 -0.0078024417 0.80875939 -0.54190242 0.37793392 0.75030768;
	setAttr ".n[664:829]" -type "float3"  8.4928145e-09 -0.9972809 0.069891803
		 4.4102542e-08 -0.92962277 0.36777094 -0.11696196 -0.9294095 0.34924462 -0.024888502
		 -0.99729997 0.065017037 2.5792522e-07 -0.39732343 0.91738099 1.0773699e-09 -0.013231969
		 0.99963939 -0.30888528 -0.012663039 0.95072794 -0.28485066 -0.3968038 0.87227339
		 -0.046351325 0.99580252 0.075383432 -0.22251076 0.92165983 0.31699535 -0.11696196
		 0.92103469 0.3707681 -0.024888506 0.99551791 0.088196531 -0.54190242 0.37793392 0.75030768
		 -0.58762354 -0.0078024417 0.80875939 -0.30888528 -0.0094542 0.95076525 -0.28485063
		 0.37640756 0.88126695 0.032757793 -0.99783546 -0.052012742 0.23825736 -0.92189956
		 -0.3046121 0.12875399 -0.92140079 -0.36591932 0.017565772 -0.99776632 -0.060065463
		 0.58069026 -0.37851754 -0.72040075 0.62835687 -0.058311552 -0.7753846 0.34008509
		 -0.056683384 -0.93839395 0.31420559 -0.3772921 -0.87084991 0.017565772 -0.99776632
		 -0.060065463 0.12875399 -0.92140079 -0.36591932 1.9176056e-08 -0.92123204 -0.38831103
		 3.7607926e-09 -0.99772602 -0.063218534 0.31420559 -0.3772921 -0.87084991 0.34008509
		 -0.056683384 -0.93839395 -3.67541e-09 -0.056100048 -0.99815166 -2.2933056e-08 -0.37687662
		 -0.92596871 0.62835687 -0.058311552 -0.7753846 0.58069026 -0.37851754 -0.72040075
		 0.772807 -0.38046089 -0.50741786 0.8360371 -0.060710113 -0.5448029 0.23825736 -0.92189956
		 -0.3046121 0.032757793 -0.99783546 -0.052012742 0.045908619 -0.99780983 -0.041495141
		 0.31749782 -0.92269528 -0.21744543 0.8360371 -0.060710113 -0.5448029 0.772807 -0.38046089
		 -0.50741786 0.88544881 -0.38294163 -0.26227871 0.95775223 -0.063554704 -0.27950937
		 0.31749782 -0.92269528 -0.21744543 0.045908619 -0.99780983 -0.041495141 0.060380585
		 -0.99747419 -0.029211221 0.3640494 -0.92371672 -0.11691625 0.95775223 -0.063554704
		 -0.27950937 0.88544881 -0.38294163 -0.26227871 0.92349005 -0.38265595 -0.013949576
		 0.99764979 -0.063507438 -0.010759151 0.3640494 -0.92371672 -0.11691625 0.060380585
		 -0.99747419 -0.029211221 0.060125936 -0.99784225 -0.012232696 0.38233694 -0.92361003
		 -0.014725656 -0.060125932 -0.99784225 -0.012232665 -0.38233778 -0.92360979 -0.014725462
		 -0.38279185 -0.92338258 -0.017003786 -0.085755311 -0.99587393 -0.01831013 -0.92348975
		 -0.38265666 -0.013949674 -0.99764979 -0.063507169 -0.010759164 -0.99870634 -0.045154974
		 -0.00081862515 -0.92371321 -0.38230863 -0.0069307191 -0.085755311 -0.99587393 -0.01831013
		 -0.38279185 -0.92338258 -0.017003786 -0.38896656 -0.84685576 -0.36193162 -0.085857749
		 -0.91575617 -0.39175642 -0.92371321 -0.38230863 -0.0069307191 -0.99870634 -0.045154974
		 -0.00081862515 -0.98344922 -0.16532782 -0.070345186 -0.92620724 -0.34625036 -0.14732532
		 -0.99764979 -0.063507169 -0.010759164 -0.92348975 -0.38265666 -0.013949674 -0.88544756
		 -0.38294411 -0.26227906 -0.95775211 -0.063555211 -0.27950948 -0.38233778 -0.92360979
		 -0.014725462 -0.060125932 -0.99784225 -0.012232665 -0.060380563 -0.99747419 -0.029211169
		 -0.36404964 -0.92371672 -0.11691508 -0.95775211 -0.063555211 -0.27950948 -0.88544756
		 -0.38294411 -0.26227906 -0.77280724 -0.38045999 -0.50741798 -0.83603692 -0.060709901
		 -0.5448032 -0.36404964 -0.92371672 -0.11691508 -0.060380563 -0.99747419 -0.029211169
		 -0.04590854 -0.99780983 -0.041495372 -0.31749758 -0.92269534 -0.21744533 -0.83603692
		 -0.060709901 -0.5448032 -0.77280724 -0.38045999 -0.50741798 -0.58068782 -0.37851596
		 -0.72040343 -0.62835652 -0.058311455 -0.77538502 -0.31749758 -0.92269534 -0.21744533
		 -0.04590854 -0.99780983 -0.041495372 -0.032757763 -0.99783546 -0.052012693 -0.23825727
		 -0.92189962 -0.30461216 -0.62835652 -0.058311455 -0.77538502 -0.58068782 -0.37851596
		 -0.72040343 -0.31420374 -0.37729022 -0.87085134 -0.34008497 -0.056683369 -0.93839395
		 -0.23825727 -0.92189962 -0.30461216 -0.032757763 -0.99783546 -0.052012693 -0.01756577
		 -0.99776632 -0.060065433 -0.12875411 -0.92140067 -0.36591953 -0.34008497 -0.056683369
		 -0.93839395 -0.31420374 -0.37729022 -0.87085134 -2.2933056e-08 -0.37687662 -0.92596871
		 -3.67541e-09 -0.056100048 -0.99815166 -0.12875411 -0.92140067 -0.36591953 -0.01756577
		 -0.99776632 -0.060065433 3.7607926e-09 -0.99772602 -0.063218534 1.9176056e-08 -0.92123204
		 -0.38831103 0.045908637 0.99850506 -0.018274993 0.31749779 0.92750335 -0.19592483
		 0.36404946 0.92618626 -0.095399082 0.060380593 0.9978838 -0.0060021896 0.77280611
		 0.39215988 -0.49843282 0.83603692 0.073365644 -0.54324371 0.95775229 0.0700389 -0.2779555
		 0.88544875 0.38893855 -0.25330064 0.060380593 0.9978838 -0.0060021896 0.36404946
		 0.92618626 -0.095399082 0.38233697 0.92370266 0.0067613819 0.060125936 0.99785674
		 0.010980302 0.88544875 0.38893855 -0.25330064 0.95775229 0.0700389 -0.2779555 0.99764973
		 0.063740529 -0.0092790648 0.92349005 0.3828769 -0.0050452715 0.83603692 0.073365644
		 -0.54324371 0.77280611 0.39215988 -0.49843282 0.58068889 0.39517078 -0.71140319 0.62835664
		 0.07633099 -0.77381885 0.31749779 0.92750335 -0.19592483 0.045908637 0.99850506 -0.018274993
		 0.032757811 0.9987753 -0.028789163 0.23825738 0.92873544 -0.28308642 0.62835664 0.07633099
		 -0.77381885 0.58068889 0.39517078 -0.71140319 0.31420559 0.39744565 -0.86183852 0.34008509
		 0.078494951 -0.93682158 0.23825738 0.92873544 -0.28308642 0.032757811 0.9987753 -0.028789163
		 0.017565774 0.99889338 -0.036841299 0.12875398 0.9296627 -0.34438863 0.34008509 0.078494951
		 -0.93682158 0.31420559 0.39744565 -0.86183852 -1.7581988e-07 0.39831245 -0.91695201
		 -3.3078678e-08 0.079301789 -0.99657667 0.12875398 0.9296627 -0.34438863 0.017565774
		 0.99889338 -0.036841299 -7.5215851e-09 0.99892658 -0.039994501 -6.3920147e-08 0.93001485
		 -0.36677843 -3.3078678e-08 0.079301789 -0.99657667 -1.7581988e-07 0.39831245 -0.91695201
		 -0.3142041 0.39744341 -0.86184007 -0.34008503 0.07849507 -0.93682164 -6.3920147e-08
		 0.93001485 -0.36677843 -7.5215851e-09 0.99892658 -0.039994501 -0.017565794 0.99889338
		 -0.03684134 -0.12875405 0.92966259 -0.34438872 -0.34008503 0.07849507 -0.93682164
		 -0.3142041 0.39744341 -0.86184007 -0.58068758 0.39516944 -0.71140486 -0.6283564 0.076331094
		 -0.77381903 -0.12875405 0.92966259 -0.34438872 -0.017565794 0.99889338 -0.03684134;
	setAttr ".n[830:995]" -type "float3"  -0.032757793 0.9987753 -0.028789137 -0.23825708
		 0.92873544 -0.28308633 -0.6283564 0.076331094 -0.77381903 -0.58068758 0.39516944
		 -0.71140486 -0.77280736 0.39215961 -0.49843127 -0.83603692 0.073365569 -0.54324365
		 -0.23825708 0.92873544 -0.28308633 -0.032757793 0.9987753 -0.028789137 -0.045908596
		 0.99850506 -0.018275242 -0.31749758 0.92750341 -0.19592467 -0.83603692 0.073365569
		 -0.54324365 -0.77280736 0.39215961 -0.49843127 -0.88544768 0.38894111 -0.25330088
		 -0.95775217 0.070039429 -0.27795559 -0.31749758 0.92750341 -0.19592467 -0.045908596
		 0.99850506 -0.018275242 -0.060380679 0.9978838 -0.0060022734 -0.36404967 0.9261862
		 -0.095398553 -0.95775217 0.070039429 -0.27795559 -0.88544768 0.38894111 -0.25330088
		 -0.92348975 0.38287765 -0.0050453595 -0.99764973 0.063740693 -0.0092790797 -0.36404967
		 0.9261862 -0.095398553 -0.060380679 0.9978838 -0.0060022734 -0.060125917 0.99785674
		 0.010980316 -0.38233775 0.92370236 0.0067614657 0.060125936 0.99785674 0.010980302
		 0.38233697 0.92370266 0.0067613819 0.38279089 0.92352861 0.0044786059 0.085755251
		 0.99603027 0.0048587355 0.92349005 0.3828769 -0.0050452715 0.99764973 0.063740529
		 -0.0092790648 0.99870634 0.045162205 0.00023190308 0.92371339 0.38236591 0.0019636273
		 0.085755251 0.99603027 0.0048587355 0.38279089 0.92352861 0.0044786059 0.38896579
		 0.85504502 -0.34213689 0.085857652 0.92462075 -0.37034985 0.92371339 0.38236591 0.0019636273
		 0.99870634 0.045162205 0.00023190308 0.9834494 0.16691816 -0.066480488 0.92620832
		 0.349581 -0.13923152 -0.086942926 0.015593557 -0.99581712 -0.38270637 0.014424055
		 -0.92346168 -0.38896132 0.36193475 -0.84685665 -0.085857131 0.39176112 -0.91575402
		 -0.92368066 0.0059074424 -0.38240409 -0.99934143 0.00042878321 -0.027756592 -0.99968606
		 0.003539837 -0.0083195632 -0.926211 0.14732485 -0.34624076 -0.99934143 0.00042878321
		 -0.027756592 -0.92368066 0.0059074424 -0.38240409 -0.92368066 0.0029888283 -0.38243806
		 -0.99934143 0.00021694772 -0.027759055 -0.38270637 0.014424055 -0.92346168 -0.086942926
		 0.015593557 -0.99581712 -0.086942881 0.007573158 -0.99591041 -0.38270637 0.0070594531
		 -0.92354739 0.086960226 0.0075733424 -0.99590898 0.38275215 0.0070601739 -0.92352855
		 0.38896108 -0.34213892 -0.85504633 0.085856132 -0.37035266 -0.92461956 0.92369783
		 0.0029894011 -0.38239685 0.9987067 0.00035299757 -0.045153618 0.98310292 -0.067177221
		 -0.1686707 0.92621094 -0.13923131 -0.34957382 0.086942978 0.015593644 -0.99581707
		 0.38270745 0.014424044 -0.92346126 0.38270745 0.0070594558 -0.92354697 0.086943023
		 0.0075732525 -0.99591041 0.92368031 0.0059074876 -0.38240516 0.99934143 0.00042878656
		 -0.027756676 0.99934143 0.00021694523 -0.027759138 0.92368031 0.0029887937 -0.38243914
		 0.086943023 0.0075732525 -0.99591041 0.38270745 0.0070594558 -0.92354697 0.38896218
		 -0.3421391 -0.85504568 0.08585725 -0.37035483 -0.9246186 0.92368031 0.0029887937
		 -0.38243914 0.99934143 0.00021694523 -0.027759138 0.99968606 -0.0033467452 -0.0083996961
		 0.92621028 -0.13923319 -0.34957507 -0.086960375 0.015593417 -0.99581558 -0.3827531
		 0.014422853 -0.92344242 -0.38896227 0.36193413 -0.84685647 -0.085856259 0.39175898
		 -0.91575515 -0.92369777 0.0059059463 -0.38236308 -0.99870664 0.00069736992 -0.045149732
		 -0.98310268 0.071082883 -0.16706324 -0.92621034 0.14732587 -0.34624201 -0.085857131
		 0.39176112 -0.91575402 -0.38896132 0.36193475 -0.84685665 -0.38896236 0.65874195
		 -0.64360029 -0.085707299 0.71245569 -0.69607121 -0.926211 0.14732485 -0.34624076
		 -0.99968606 0.003539837 -0.0083195632 -0.99969566 0.0056555751 -0.005525507 -0.92620981
		 0.26914713 -0.26296231 0.99870938 0.00069710042 -0.045088723 0.92369717 0.0059014428
		 -0.38236436 0.92620063 0.14735679 -0.34625486 0.98309106 0.071118951 -0.16711697
		 0.38275108 0.01442931 -0.92344326 0.087011784 0.015592212 -0.9958111 0.085848674
		 0.39176387 -0.91575372 0.38892981 0.36194485 -0.84686679 -0.085707299 0.71245569
		 -0.69607121 -0.38896236 0.65874195 -0.64360029 -0.38896638 0.85504478 -0.34213683
		 -0.085857764 0.92462069 -0.37034982 -0.92620981 0.26914713 -0.26296231 -0.99969566
		 0.0056555751 -0.005525507 -0.99969721 0.0071568051 -0.0028504191 -0.92620838 0.34958073
		 -0.1392311 0.98309106 0.071118951 -0.16711697 0.92620063 0.14735679 -0.34625486 0.92620975
		 0.26914749 -0.26296222 0.97501057 0.15802498 -0.15439041 0.38892981 0.36194485 -0.84686679
		 0.085848674 0.39176387 -0.91575372 0.085707307 0.71245569 -0.69607121 0.38896236
		 0.65874195 -0.64360023 -0.99968112 0.0095720934 5.1344847e-05 -0.92371041 0.3823725
		 0.0020512596 -0.92620838 0.34958073 -0.1392311 -0.99969721 0.0071568051 -0.0028504191
		 -0.38278401 0.92353034 0.0046944702 -0.088142216 0.99582171 0.0049072122 -0.085857764
		 0.92462069 -0.37034982 -0.38896638 0.85504478 -0.34213683 0.97501057 0.15802498 -0.15439041
		 0.92620975 0.26914749 -0.26296222 0.92620832 0.349581 -0.13923152 0.9834494 0.16691816
		 -0.066480488 0.38896236 0.65874195 -0.64360023 0.085707307 0.71245569 -0.69607121
		 0.085857652 0.92462075 -0.37034985 0.38896579 0.85504502 -0.34213689 -0.085857615
		 -0.91575634 -0.39175615 -0.38896573 -0.84685564 -0.36193249 -0.38896239 -0.64359373
		 -0.65874839 -0.08570727 -0.6960724 -0.7124545 -0.92620796 -0.34624851 -0.14732529
		 -0.99969733 -0.0070885937 -0.0030161308 -0.99969566 -0.0055255466 -0.0056555751 -0.92620939
		 -0.26295882 -0.26915208 0.99870634 -0.045155361 -0.00081862672 0.92371339 -0.38230816
		 -0.0069306884 0.9262082 -0.34624812 -0.14732489 0.9834494 -0.16532661 -0.070344843
		 0.38279095 -0.92338294 -0.017003763 0.085755259 -0.99587387 -0.018310122 0.085857749
		 -0.91575629 -0.39175615 0.38896635 -0.84685534 -0.36193246 -0.08570727 -0.6960724
		 -0.7124545 -0.38896239 -0.64359373 -0.65874839 -0.38896132 -0.34213904 -0.85504603
		 -0.085856169 -0.37035275 -0.92461962 -0.92620939 -0.26295882 -0.26915208 -0.99969566
		 -0.0055255466 -0.0056555751 -0.99968606 -0.0033453656 -0.0083996449 -0.92621094 -0.13923141
		 -0.34957382 0.9834494 -0.16532661 -0.070344843 0.9262082 -0.34624812 -0.14732489
		 0.92620969 -0.26295817 -0.26915145 0.97501057 -0.15439101 -0.15802419;
	setAttr ".n[996:1111]" -type "float3"  0.38896635 -0.84685534 -0.36193246 0.085857749
		 -0.91575629 -0.39175615 0.08570727 -0.6960724 -0.7124545 0.38896233 -0.64359373 -0.65874839
		 -0.99934143 0.00021694772 -0.027759055 -0.92368066 0.0029888283 -0.38243806 -0.92621094
		 -0.13923141 -0.34957382 -0.99968606 -0.0033453656 -0.0083996449 -0.38270637 0.0070594531
		 -0.92354739 -0.086942881 0.007573158 -0.99591041 -0.085856169 -0.37035275 -0.92461962
		 -0.38896132 -0.34213904 -0.85504603 0.97501057 -0.15439101 -0.15802419 0.92620969
		 -0.26295817 -0.26915145 0.92621094 -0.13923131 -0.34957382 0.98310292 -0.067177221
		 -0.1686707 0.38896233 -0.64359373 -0.65874839 0.08570727 -0.6960724 -0.7124545 0.085856132
		 -0.37035266 -0.92461956 0.38896108 -0.34213892 -0.85504633 0.085857794 0.92462045
		 -0.37035 0.3889665 0.85504496 -0.34213594 0.38896316 0.65874225 -0.64359939 0.085707456
		 0.71245557 -0.69607133 0.92620701 0.34958392 -0.13923192 0.99969733 0.0071564629
		 -0.0028504434 0.99969572 0.0056558605 -0.0055255215 0.92620903 0.26914933 -0.26296312
		 -0.99870634 0.045162305 0.00023190133 -0.92371321 0.38236639 0.0019636068 -0.92620736
		 0.34958354 -0.13923159 -0.98344934 0.16691834 -0.066480517 -0.38279191 0.92352825
		 0.004478584 -0.085755266 0.99603027 0.0048587327 -0.085857838 0.92462045 -0.37035
		 -0.38896716 0.85504478 -0.34213582 0.085707456 0.71245557 -0.69607133 0.38896316
		 0.65874225 -0.64359939 0.38896218 0.36193484 -0.8468563 0.085856251 0.39175913 -0.91575509
		 0.92620903 0.26914933 -0.26296312 0.99969572 0.0056558605 -0.0055255215 0.99968606
		 0.0035411692 -0.0083195791 0.92621052 0.14732473 -0.34624201 -0.98344934 0.16691834
		 -0.066480517 -0.92620736 0.34958354 -0.13923159 -0.92620957 0.2691474 -0.26296297
		 -0.97501057 0.15802446 -0.1543908 -0.38896716 0.85504478 -0.34213582 -0.085857838
		 0.92462045 -0.37035 -0.085707314 0.71245581 -0.69607103 -0.38896245 0.65874392 -0.64359826
		 0.99934143 0.00042878656 -0.027756676 0.92368031 0.0059074876 -0.38240516 0.92621052
		 0.14732473 -0.34624201 0.99968606 0.0035411692 -0.0083195791 0.38270745 0.014424044
		 -0.92346126 0.086942978 0.015593644 -0.99581707 0.085856251 0.39175913 -0.91575509
		 0.38896218 0.36193484 -0.8468563 -0.97501057 0.15802446 -0.1543908 -0.92620957 0.2691474
		 -0.26296297 -0.92621034 0.14732587 -0.34624201 -0.98310268 0.071082883 -0.16706324
		 -0.38896245 0.65874392 -0.64359826 -0.085707314 0.71245581 -0.69607103 -0.085856259
		 0.39175898 -0.91575515 -0.38896227 0.36193413 -0.84685647 0.08585725 -0.37035483
		 -0.9246186 0.38896218 -0.3421391 -0.85504568 0.38896313 -0.64359391 -0.65874761 0.085707381
		 -0.69607222 -0.71245462 0.92621028 -0.13923319 -0.34957507 0.99968606 -0.0033467452
		 -0.0083996961 0.99969566 -0.0055261827 -0.0056555765 0.92620969 -0.26295772 -0.26915178
		 -0.99870944 0.00035184895 -0.045092866 -0.92369717 0.0029939287 -0.3823984 -0.92620033
		 -0.13926366 -0.34958926 -0.98309106 -0.067212798 -0.16872638 -0.38275203 0.0070537673
		 -0.92352855 -0.087011933 0.0075744563 -0.99590433 -0.085848793 -0.37035754 -0.92461842
		 -0.38893071 -0.34214917 -0.85505605 0.085707381 -0.69607222 -0.71245462 0.38896313
		 -0.64359391 -0.65874761 0.38896716 -0.84685552 -0.36193144 0.085857891 -0.91575617
		 -0.39175639 0.92620969 -0.26295772 -0.26915178 0.99969566 -0.0055261827 -0.0056555765
		 0.99969733 -0.0070885187 -0.0030161249 0.9262085 -0.34624723 -0.1473251 -0.98309106
		 -0.067212798 -0.16872638 -0.92620033 -0.13926366 -0.34958926 -0.92620945 -0.2629582
		 -0.26915205 -0.97501069 -0.15439014 -0.15802479 -0.38893071 -0.34214917 -0.85505605
		 -0.085848793 -0.37035754 -0.92461842 -0.085707374 -0.69607258 -0.71245426 -0.38896242
		 -0.64359564 -0.6587463 0.99968112 -0.009570621 -0.00017131443 0.9237116 -0.38231391
		 -0.0068432223 0.9262085 -0.34624723 -0.1473251 0.99969733 -0.0070885187 -0.0030161249
		 0.3827858 -0.9233889 -0.016788017 0.088142477 -0.99566633 -0.018256815 0.085857891
		 -0.91575617 -0.39175639 0.38896716 -0.84685552 -0.36193144 -0.97501069 -0.15439014
		 -0.15802479 -0.92620945 -0.2629582 -0.26915205 -0.92620724 -0.34625036 -0.14732532
		 -0.98344922 -0.16532782 -0.070345186 -0.38896242 -0.64359564 -0.6587463 -0.085707374
		 -0.69607258 -0.71245426 -0.085857749 -0.91575617 -0.39175642 -0.38896656 -0.84685576
		 -0.36193162;
	setAttr -s 286 -ch 1112 ".fc[0:285]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 10
		f 4 11 12 13 -9
		f 4 14 15 16 17
		f 4 18 19 20 -16
		f 4 21 22 23 24
		f 4 25 26 27 -23
		f 4 28 29 30 31
		f 4 32 33 34 -30
		f 4 35 36 37 38
		f 4 39 40 41 -37
		f 4 42 43 44 45
		f 4 46 47 48 -44
		f 4 49 50 51 -48
		f 4 52 53 54 -51
		f 4 55 56 -4 -54
		f 4 -11 57 58 59
		f 4 60 61 62 -58
		f 4 63 64 65 -62
		f 4 66 67 68 -65
		f 4 69 -46 70 -68
		f 4 71 72 73 -32
		f 4 74 75 76 -41
		f 4 77 78 79 80
		f 4 81 82 83 -79
		f 4 84 85 86 -83
		f 4 -13 87 88 -86
		f 4 89 90 -20 -88
		f 4 91 92 93 94
		f 4 95 96 97 -94
		f 4 98 99 100 -97
		f 4 101 102 103 -100
		f 4 104 105 106 -103
		f 4 107 108 109 -106
		f 4 110 -81 111 -109
		f 4 112 113 114 115
		f 4 116 117 118 -114
		f 4 119 120 121 -118
		f 4 122 123 124 -121
		f 4 125 126 127 -124
		f 4 128 129 130 -127
		f 4 131 132 133 -130
		f 4 134 135 136 -133
		f 4 -6 137 138 -136
		f 4 139 140 -27 -138
		f 4 141 142 143 144
		f 4 145 -116 146 -144
		f 4 147 148 149 150
		f 4 151 152 153 -149
		f 4 154 155 156 -153
		f 4 157 158 159 -156
		f 5 -18 160 161 162 -159
		f 4 163 164 165 166
		f 4 167 168 169 -165
		f 4 170 171 172 -169
		f 4 173 174 175 -172
		f 4 176 177 178 -175
		f 4 179 -151 180 -178
		f 4 181 182 183 184
		f 4 185 186 187 -183
		f 4 188 189 190 -187
		f 4 191 192 193 -190
		f 4 194 195 196 -193
		f 4 197 198 199 -196
		f 4 200 201 202 -199
		f 4 203 204 205 -202
		f 4 206 207 208 -205
		f 5 -25 209 210 211 -208
		f 4 212 -185 213 214
		f 5 215 216 -215 217 218
		f 6 219 -34 220 -219 221 -162
		f 6 222 -39 223 224 225 -211
		f 5 226 227 -167 228 -225
		f 4 229 230 231 -74
		f 4 232 233 234 -231
		f 4 235 236 237 -234
		f 4 238 -142 239 -237
		f 4 240 241 242 -91
		f 4 243 244 245 -242
		f 4 246 247 248 -245
		f 4 249 -72 250 -248
		f 4 251 252 253 -141
		f 4 254 255 256 -253
		f 4 257 258 259 -256
		f 4 260 -75 261 -259
		f 4 262 263 264 -77
		f 4 265 266 267 -264
		f 4 268 269 270 -267
		f 4 271 -92 272 -270
		f 3 -221 273 274
		f 3 -275 275 276
		f 3 -277 277 278
		f 3 -279 279 -216
		f 3 280 281 282
		f 3 -161 283 284
		f 3 -285 285 286
		f 3 -287 287 288
		f 3 -289 289 -220
		f 3 -210 290 291
		f 3 -292 292 293
		f 3 -294 294 295
		f 3 -296 296 -223
		f 3 297 298 299
		mu 0 3 2 3 4
		f 3 -224 300 301
		f 3 -302 302 303
		f 3 -304 304 305
		f 3 -306 306 -227
		f 3 307 308 309
		mu 0 3 5 6 3
		f 3 -309 310 311
		mu 0 3 3 6 7
		f 3 -312 312 313
		mu 0 3 3 7 8
		f 3 -314 314 315
		mu 0 3 3 8 9
		f 3 -316 316 317
		mu 0 3 3 9 10
		f 3 -318 318 -299
		mu 0 3 3 10 4
		f 3 319 -298 320
		mu 0 3 11 3 2
		f 3 321 -320 322
		mu 0 3 0 3 11
		f 3 323 -322 -57
		mu 0 3 1 3 0
		f 3 324 -324 325
		mu 0 3 12 3 1
		f 3 -310 -325 326
		mu 0 3 5 3 12
		f 3 327 328 329
		f 3 -329 330 331
		f 3 -332 332 333
		f 3 -334 334 335
		f 3 -336 -60 336
		f 3 -337 337 -282
		f 3 338 -281 339
		f 3 340 -339 341
		f 3 342 -341 343
		f 3 344 -343 345
		f 3 -330 -345 346
		f 4 347 348 349 -326
		f 4 350 -93 351 -349
		f 4 -5 352 353 -140
		f 4 -1 -323 354 -353
		f 4 -354 355 356 -252
		f 4 -355 -321 357 -356
		f 4 -12 358 359 -90
		f 4 -8 -335 360 -359
		f 4 -360 361 362 -241
		f 4 -361 -333 363 -362
		f 4 364 365 366 -338
		f 4 367 -143 368 -366
		f 4 369 370 371 -47
		f 4 372 -105 373 -371
		f 4 -373 374 375 -108
		f 4 -370 -43 376 -375
		f 4 377 378 379 -71
		f 4 380 -123 381 -379
		f 4 -381 382 383 -126
		f 4 -378 -45 384 -383
		f 4 -372 385 386 -50
		f 4 -374 -102 387 -386
		f 4 -384 388 389 -129
		f 4 -385 -49 390 -389
		f 4 -387 391 392 -53
		f 4 -388 -99 393 -392
		f 4 -390 394 395 -132
		f 4 -391 -52 396 -395
		f 4 -351 397 -394 -96
		f 4 -348 -56 -393 -398
		f 4 -396 398 -7 -135
		f 4 -397 -55 -3 -399
		f 4 -10 399 400 -61
		f 4 -14 -85 401 -400
		f 4 -368 402 403 -146
		f 4 -365 -59 404 -403
		f 4 -401 405 406 -64
		f 4 -402 -82 407 -406
		f 4 -404 408 409 -113
		f 4 -405 -63 410 -409
		f 4 -407 411 412 -67
		f 4 -408 -78 413 -412
		f 4 -410 414 415 -117
		f 4 -411 -66 416 -415
		f 4 -376 417 -414 -111
		f 4 -377 -70 -413 -418
		f 4 -416 418 -382 -120
		f 4 -417 -69 -380 -419
		f 4 419 420 421 -80
		f 4 422 -148 423 -421
		f 4 -422 424 425 -112
		f 4 -424 -180 426 -425
		f 4 -423 427 428 -152
		f 4 -420 -84 429 -428
		f 4 -429 430 431 -155
		f 4 -430 -87 432 -431
		f 4 -432 433 -15 -158
		f 4 -433 -89 -19 -434
		f 4 434 435 436 -95
		f 4 437 -228 438 -436
		f 4 -437 439 440 -273
		f 4 -439 -307 441 -440
		f 4 -438 442 443 -164
		f 4 -435 -98 444 -443
		f 4 -444 445 446 -168
		f 4 -445 -101 447 -446
		f 4 -447 448 449 -171
		f 4 -448 -104 450 -449
		f 4 -450 451 452 -174
		f 4 -451 -107 453 -452
		f 4 -453 454 -427 -177
		f 4 -454 -110 -426 -455
		f 4 455 456 457 -115
		f 4 458 -182 459 -457
		f 4 -458 460 461 -147
		f 4 -460 -213 462 -461
		f 4 -459 463 464 -186
		f 4 -456 -119 465 -464
		f 4 -465 466 467 -189
		f 4 -466 -122 468 -467
		f 4 -468 469 470 -192
		f 4 -469 -125 471 -470
		f 4 -471 472 473 -195
		f 4 -472 -128 474 -473
		f 4 -474 475 476 -198
		f 4 -475 -131 477 -476
		f 4 -477 478 479 -201
		f 4 -478 -134 480 -479
		f 4 -480 481 482 -204
		f 4 -481 -137 483 -482
		f 4 -483 484 -22 -207
		f 4 -484 -139 -26 -485
		f 4 -462 485 486 -145
		f 4 -463 -217 487 -486
		f 4 -487 488 489 -240
		f 4 -488 -280 490 -489
		f 4 491 492 493 -230
		f 4 494 -344 495 -493
		f 4 -495 496 497 -346
		f 4 -492 -73 498 -497
		f 4 -31 499 500 -251
		f 4 -35 -290 501 -500
		f 4 502 503 504 -76
		f 4 505 -315 506 -504
		f 4 -505 507 508 -263
		f 4 -507 -313 509 -508
		f 4 -40 510 511 -262
		f 4 -36 -297 512 -511
		f 4 -494 513 514 -233
		f 4 -496 -342 515 -514
		f 4 -33 516 517 -274
		f 4 -29 -232 518 -517
		f 4 -515 519 520 -236
		f 4 -516 -340 521 -520
		f 4 -518 522 523 -276
		f 4 -519 -235 524 -523
		f 4 -367 525 -522 -283
		f 4 -369 -239 -521 -526
		f 4 -524 526 -491 -278
		f 4 -525 -238 -490 -527
		f 4 -363 527 528 -244
		f 4 -364 -331 529 -528
		f 4 -17 530 531 -284
		f 4 -21 -243 532 -531
		f 4 -529 533 534 -247
		f 4 -530 -328 535 -534
		f 4 -532 536 537 -286
		f 4 -533 -246 538 -537
		f 4 -498 539 -536 -347
		f 4 -499 -250 -535 -540
		f 4 -538 540 -502 -288
		f 4 -539 -249 -501 -541
		f 4 -357 541 542 -255
		f 4 -358 -300 543 -542
		f 4 -24 544 545 -291
		f 4 -28 -254 546 -545
		f 4 -543 547 548 -258
		f 4 -544 -319 549 -548
		f 4 -546 550 551 -293
		f 4 -547 -257 552 -551
		f 4 -506 553 -550 -317
		f 4 -503 -261 -549 -554
		f 4 -552 554 -513 -295
		f 4 -553 -260 -512 -555
		f 4 -509 555 556 -266
		f 4 -510 -311 557 -556
		f 4 -38 558 559 -301
		f 4 -42 -265 560 -559
		f 4 -557 561 562 -269
		f 4 -558 -308 563 -562
		f 4 -560 564 565 -303
		f 4 -561 -268 566 -565
		f 4 -350 567 -564 -327
		f 4 -352 -272 -563 -568
		f 4 -566 568 -442 -305
		f 4 -567 -271 -441 -569;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "book2";
	rename -uid "CEF4522C-49AC-BCE6-FA10-329734FD2640";
	setAttr ".t" -type "double3" 0.071646823958063877 0 -2.8522804899672707 ;
	setAttr ".rp" -type "double3" -5.1145813465118586 2.2424492835998535 31.571323394775327 ;
	setAttr ".sp" -type "double3" -5.1145813465118586 2.2424492835998535 31.571323394775327 ;
createNode transform -n "bookPages" -p "book2";
	rename -uid "B605225F-45FC-2C9E-AAD3-6899006A8DCA";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr ".sp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bookPagesShape" -p "|book2|bookPages";
	rename -uid "6A376B70-4740-5C85-9782-01BC51914ADE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 38 ".pt[0:37]" -type "float3"  -5.5071759 2.2048347 30.765808 
		-5.4579015 2.1654382 30.775795 -5.4149384 2.1261139 30.779467 -5.3793192 2.0868776 
		30.775795 -5.3500118 2.0477135 30.765808 -5.3500118 2.993253 31.722153 -5.3793192 
		3.0324171 31.73214 -5.4149384 3.0716553 31.735811 -5.4579015 3.1109776 31.73214 -5.5071759 
		3.1503742 31.722153 -5.1256771 2.1227493 31.068787 -5.1256771 3.0682907 32.025131 
		-5.559958 2.2442713 30.752316 -5.559958 3.1898127 31.70866 -4.7796831 2.9477949 32.2533 
		-5.3242121 2.9541311 31.70866 -5.3242121 2.0085897 30.752316 -4.8088756 2.155062 
		31.422094 -4.8604169 2.1881263 31.403406 -4.9155955 2.2145336 31.374296 -4.9690089 
		2.2316952 31.337616 -5.015429 2.2379351 31.296955 -4.7796831 2.0022535 31.296955 
		-4.7447996 2.0075474 31.337616 -4.7248683 2.0238585 31.374296 -4.721839 2.0495865 
		31.403406 -4.7360096 2.082216 31.422094 -4.7660036 2.1185646 31.428535 -4.9690089 
		3.1772366 32.293961 -4.9155955 3.1600749 32.330639 -4.8604169 3.1336677 32.359749 
		-4.8088756 3.1006033 32.378441 -4.7660036 3.064106 32.38488 -4.7360096 3.0277574 
		32.378441 -4.721839 2.9951279 32.359749 -4.7248683 2.9693999 32.330639 -4.7447996 
		2.9530888 32.293961 -5.015429 3.1834764 32.2533;
	setAttr -s 38 ".vt[0:37]"  0.31401232 0.065046072 0.47267306 0.30402896 0.10432637 0.47267306
		 0.30035749 0.14360663 0.47267309 0.30402896 0.18288693 0.47267306 0.31401232 0.22216719 0.47267309
		 0.31401232 0.22216719 -0.47267306 0.30402896 0.18288693 -0.47267306 0.30035749 0.14360663 -0.47267309
		 0.30402896 0.10432635 -0.47267306 0.31401232 0.065046072 -0.47267309 0.011095927 0.14360663 0.47267306
		 0.011095921 0.14360663 -0.472673 0.32750389 0.025765806 0.47267309 0.32750389 0.025765806 -0.47267309
		 -0.2170254 0.26144749 -0.47267309 0.32750389 0.26144749 -0.47267309 0.32750389 0.26144749 0.47267309
		 -0.34213889 0.10718367 0.47267309 -0.32345331 0.074336678 0.47267309 -0.29434979 0.048269153 0.47267309
		 -0.25767723 0.031532794 0.47267309 -0.2170254 0.025765806 0.47267309 -0.2170254 0.26144749 0.47267309
		 -0.25767723 0.2556805 0.47267309 -0.29434979 0.23894414 0.47267309 -0.32345331 0.21287659 0.47267309
		 -0.34213889 0.18002957 0.47267309 -0.34857753 0.14360663 0.47267309 -0.25767723 0.031532794 -0.47267309
		 -0.29434979 0.048269153 -0.47267309 -0.32345331 0.074336678 -0.47267309 -0.34213889 0.10718367 -0.47267309
		 -0.34857753 0.14360663 -0.47267309 -0.34213889 0.18002957 -0.47267309 -0.32345331 0.21287659 -0.47267309
		 -0.29434979 0.23894414 -0.47267309 -0.25767723 0.2556805 -0.47267309 -0.2170254 0.025765806 -0.47267309;
	setAttr -s 79 ".ed[0:78]"  12 13 0 13 9 0 9 0 0 0 12 0 4 10 0 10 3 0
		 3 4 0 15 11 0 11 14 0 14 15 0 4 5 0 5 15 0 15 16 0 16 4 0 3 6 0 6 5 0 2 7 0 7 6 0
		 3 2 0 1 8 0 8 7 0 2 1 0 9 8 0 1 0 0 17 18 0 18 10 0 10 17 0 18 19 0 19 10 0 19 20 0
		 20 10 0 20 21 0 21 10 0 21 12 0 12 10 0 0 10 0 1 10 0 2 10 0 16 10 0 22 10 0 16 22 0
		 23 10 0 22 23 0 24 10 0 23 24 0 25 10 0 24 25 0 26 10 0 25 26 0 27 10 0 26 27 0 27 17 0
		 28 29 0 29 11 0 11 28 0 29 30 0 30 11 0 30 31 0 31 11 0 31 32 0 32 11 0 32 33 0 33 11 0
		 33 34 0 34 11 0 34 35 0 35 11 0 35 36 0 36 11 0 36 14 0 5 11 0 6 11 0 7 11 0 8 11 0
		 9 11 0 13 11 0 37 11 0 13 37 0 37 28 0;
	setAttr -s 132 ".n[0:131]" -type "float3"  0.32475418 0.010996963 -0.94544572
		 0.32475418 0.010996964 -0.94544578 0.28622663 0.011140804 -0.95781207 0.28622669
		 0.011140806 -0.95781219 -2.4000119e-07 -0.9996593 -0.011627437 -2.6300115e-10 -0.9996593
		 -0.011627549 -1.4365403e-07 -0.9996593 -0.011627353 -7.5850198e-07 0.9996593 0.011627448
		 2.6301231e-10 0.9996593 0.011627548 -7.037608e-07 0.9996593 0.011627549 -0.2862266
		 0.011140804 -0.95781213 -0.28622663 0.011140804 -0.95781213 -0.32475415 0.010996965
		 -0.94544584 -0.32475412 0.010996964 -0.94544578 -0.17119826 0.011455793 -0.98489279
		 -0.17119826 0.011455794 -0.98489285 -0.28622663 0.011140804 -0.95781213 -0.2862266
		 0.011140804 -0.95781213 0 0.011627549 -0.9996593 0 0.011627549 -0.9996593 -0.17119826
		 0.011455794 -0.98489285 -0.17119826 0.011455793 -0.98489279 0.17119834 0.011455793
		 -0.98489273 0.17119835 0.011455794 -0.98489279 0 0.011627549 -0.9996593 0 0.011627549
		 -0.9996593 0.28622669 0.011140806 -0.95781219 0.28622663 0.011140804 -0.95781207
		 0.17119835 0.011455794 -0.98489279 0.17119834 0.011455793 -0.98489273 2.6840306e-08
		 -0.9996593 -0.011627721 5.6042548e-08 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593
		 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 5.6042548e-08 -0.9996593 -0.011627549
		 9.079811e-08 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 9.079811e-08
		 -0.9996593 -0.011627549 1.3699071e-07 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593
		 -0.011627549 1.3699071e-07 -0.9996593 -0.011627549 2.3458713e-07 -0.9996593 -0.011627549
		 -2.6300115e-10 -0.9996593 -0.011627549 2.3458713e-07 -0.9996593 -0.011627549 4.2392068e-07
		 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 4.2392068e-07 -0.9996593
		 -0.011627549 5.5210899e-07 -0.9996593 -0.011627437 -2.6300115e-10 -0.9996593 -0.011627549
		 5.5210899e-07 -0.9996593 -0.011627437 -3.1726668e-07 -0.9996593 -0.011627353 -2.6300115e-10
		 -0.9996593 -0.011627549 -3.1726668e-07 -0.9996593 -0.011627353 -2.1133777e-13 -0.9996593
		 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 -2.1133777e-13 -0.9996593 -0.011627549
		 -1.4365403e-07 -0.9996593 -0.011627353 -1.6729078e-07 -0.9996593 -0.011627549 -2.6300115e-10
		 -0.9996593 -0.011627549 -2.4000119e-07 -0.9996593 -0.011627437 -2.3458716e-07 -0.9996593
		 -0.011627626 -2.6300115e-10 -0.9996593 -0.011627549 -1.6729078e-07 -0.9996593 -0.011627549
		 -1.3699061e-07 -0.9996593 -0.011627767 -2.6300115e-10 -0.9996593 -0.011627549 -2.3458716e-07
		 -0.9996593 -0.011627626 -9.0798004e-08 -0.9996593 -0.011627732 -2.6300115e-10 -0.9996593
		 -0.011627549 -1.3699061e-07 -0.9996593 -0.011627767 -5.6042516e-08 -0.9996593 -0.011627708
		 -2.6300115e-10 -0.9996593 -0.011627549 -9.0798004e-08 -0.9996593 -0.011627732 -2.6840322e-08
		 -0.9996593 -0.01162761 -2.6300115e-10 -0.9996593 -0.011627549 -5.6042516e-08 -0.9996593
		 -0.011627708 0 -0.9996593 -0.011627692 -2.6300115e-10 -0.9996593 -0.011627549 -2.6840322e-08
		 -0.9996593 -0.01162761 2.6840306e-08 -0.9996593 -0.011627721 -2.6300115e-10 -0.9996593
		 -0.011627549 0 -0.9996593 -0.011627692 4.1097229e-07 0.9996593 0.011627517 2.7239429e-07
		 0.99965924 0.011627548 2.6301231e-10 0.9996593 0.011627548 2.6301231e-10 0.9996593
		 0.011627548 2.7239429e-07 0.99965924 0.011627548 1.6812768e-07 0.9996593 0.011627549
		 2.6301231e-10 0.9996593 0.011627548 1.6812768e-07 0.9996593 0.011627549 8.0520969e-08
		 0.9996593 0.011627378 2.6301231e-10 0.9996593 0.011627548 8.0520969e-08 0.9996593
		 0.011627378 0 0.9996593 0.011627407 2.6301231e-10 0.9996593 0.011627548 0 0.9996593
		 0.011627407 -8.0521019e-08 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548
		 -8.0521019e-08 0.9996593 0.011627549 -1.6812757e-07 0.9996593 0.011627549 2.6301231e-10
		 0.9996593 0.011627548 -1.6812757e-07 0.9996593 0.011627549 -2.7239406e-07 0.9996593
		 0.011627549 2.6301231e-10 0.9996593 0.011627548 -2.7239406e-07 0.9996593 0.011627549
		 -4.1097215e-07 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548 -4.1097215e-07
		 0.9996593 0.011627549 -7.037608e-07 0.9996593 0.011627549 -4.8489341e-07 0.9996593
		 0.011627435 2.6301231e-10 0.9996593 0.011627548 -7.5850198e-07 0.9996593 0.011627448
		 3.566366e-07 0.9996593 0.011627746 2.6301231e-10 0.9996593 0.011627548 -4.8489341e-07
		 0.9996593 0.011627435 1.4089181e-13 0.9996593 0.011627549 2.6301231e-10 0.9996593
		 0.011627548 3.566366e-07 0.9996593 0.011627746 1.0428413e-07 0.9996593 0.011627549
		 2.6301231e-10 0.9996593 0.011627548 1.4089181e-13 0.9996593 0.011627549 1.7278569e-07
		 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548 1.0428413e-07 0.9996593
		 0.011627549 5.0187265e-07 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548
		 1.7278569e-07 0.9996593 0.011627549 7.0376154e-07 0.99965924 0.011627472 2.6301231e-10
		 0.9996593 0.011627548 5.0187265e-07 0.9996593 0.011627549 4.1097229e-07 0.9996593
		 0.011627517 2.6301231e-10 0.9996593 0.011627548 7.0376154e-07 0.99965924 0.011627472;
	setAttr -s 42 -ch 132 ".fc[0:41]" -type "polyFaces" 
		f 4 0 1 2 3
		f 3 4 5 6
		f 3 7 8 9
		f 4 10 11 12 13
		f 4 14 15 -11 -7
		f 4 16 17 -15 18
		f 4 19 20 -17 21
		f 4 -3 22 -20 23
		f 3 24 25 26
		f 3 -26 27 28
		f 3 -29 29 30
		f 3 -31 31 32
		f 3 -33 33 34
		f 3 -35 -4 35
		f 3 -36 -24 36
		f 3 -37 -22 37
		f 3 -38 -19 -6
		f 3 38 -5 -14
		f 3 39 -39 40
		f 3 41 -40 42
		f 3 43 -42 44
		f 3 45 -44 46
		f 3 47 -46 48
		f 3 49 -48 50
		f 3 -27 -50 51
		f 3 52 53 54
		f 3 -54 55 56
		f 3 -57 57 58
		f 3 -59 59 60
		f 3 -61 61 62
		f 3 -63 63 64
		f 3 -65 65 66
		f 3 -67 67 68
		f 3 -69 69 -9
		f 3 70 -8 -12
		f 3 71 -71 -16
		f 3 72 -72 -18
		f 3 73 -73 -21
		f 3 74 -74 -23
		f 3 75 -75 -2
		f 3 76 -76 77
		f 3 -55 -77 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bookCover" -p "book2";
	rename -uid "EE421688-4DE0-17C1-F246-87A175AB11D0";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr ".sp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bookCoverShape" -p "|book2|bookCover";
	rename -uid "D40967DB-4EC8-3856-5946-3CA80C7F5FEB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:102]" "f[104:107]" "f[119:285]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[103]" "f[108:118]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0.009100318 0.010936439
		 0.29160202 0.010935247 0.010070264 0.17064947 0.15035158 0.094224155 0.012740791
		 0.17464638 0.29063332 0.17064822 0.28796279 0.17464507 0.28396595 0.17731565 0.27909338
		 0.17828482 0.021610498 0.17828608 0.016737998 0.1773169 0.0091011524 0.16577685 0.29160261
		 0.16577554;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 284 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -5.559958 3.1898127 31.70866 -5.5599585 
		2.2442713 30.752314 -5.3242121 2.9541311 31.70866 -5.3242126 2.0085897 30.752314 
		-4.8604169 2.1881263 31.403406 -4.8088756 2.155062 31.422094 -4.9155955 2.2145336 
		31.374296 -4.9690089 2.2316952 31.337616 -5.015429 2.2379351 31.296955 -4.7796831 
		2.0022535 31.296955 -4.7447996 2.0075474 31.337616 -4.7248683 2.0238585 31.374296 
		-4.721839 2.0495865 31.403406 -4.7360096 2.082216 31.422094 -4.7660036 2.1185646 
		31.428535 -4.9155955 3.1600749 32.330639 -4.9690084 3.1772366 32.293961 -4.8604169 
		3.1336677 32.359749 -4.8088756 3.1006033 32.378441 -4.7660036 3.064106 32.38488 -4.7360096 
		3.0277574 32.378441 -4.721839 2.9951279 32.359749 -4.7248683 2.9693999 32.330639 
		-4.7447991 2.9530888 32.293961 -4.7796831 2.9477949 32.2533 -5.015429 3.1834764 32.2533 
		-5.5626559 3.1925783 31.708729 -5.5626559 2.2415667 30.746849 -5.32691 2.9568968 
		31.708729 -5.32691 2.0058851 30.746849 -5.025557 2.4524188 31.503426 -5.312849 2.7396321 
		31.503426 -4.7401104 1.9545503 31.288736 -4.7358232 1.9522185 31.290714 -4.7340469 
		1.9545455 31.294863 -5.2821655 1.960856 30.746571 -5.2780285 1.958528 30.748398 -5.275991 
		1.9608512 30.752808 -4.7401104 2.9547563 32.300369 -4.7358232 2.9491324 32.299019 
		-4.7340469 2.9435096 32.295128 -5.2821655 2.961062 31.758204 -5.2780285 2.95544 31.756701 
		-5.275991 2.9498153 31.753073 -5.0161595 2.2305236 31.288736 -5.0198221 2.2361398 
		31.290714 -5.0213389 2.2417588 31.294863 -5.5582147 2.2368293 30.746571 -5.5620275 
		2.2424493 30.748398 -5.563283 2.2480645 30.752808 -5.0161595 3.2307296 32.300369 
		-5.0198221 3.2330537 32.299019 -5.0213389 3.2307229 32.295128 -5.5582147 3.2370353 
		31.758204 -5.5620275 3.2393613 31.756701 -5.563283 3.2370286 31.753073 -4.6967297 
		2.0521784 31.431458 -4.6988297 2.0487356 31.42585 -4.7038999 2.0483768 31.420359 
		-4.7341003 2.0964813 31.438484 -4.7357669 2.0925274 31.432798 -4.7397904 2.0909271 
		31.427109 -4.7341003 3.0854454 32.438747 -4.7357669 3.0894394 32.441101 -4.7397904 
		3.0911331 32.438744 -4.6967297 3.0411425 32.431721 -4.6988297 3.0456495 32.434155 
		-4.7038999 3.0485828 32.431992 -4.6770859 2.0123861 31.411057 -4.6794138 2.0094059 
		31.405687 -4.6850343 2.0101628 31.400766 -4.6770859 3.0013502 32.41132 -4.6794138 
		3.0063198 32.41399 -4.6850338 3.0103688 32.412399 -4.6770763 1.9809887 31.379284 
		-4.6794052 1.9783735 31.374283 -4.6850262 1.9800093 31.370251 -4.6770763 2.9699528 
		32.379547 -4.6794052 2.9752855 32.382587 -4.6850262 2.9802153 32.381886 -4.6967044 
		1.9610584 31.339247 -4.6988049 1.9586742 31.334709 -4.703876 1.9608681 31.3318 -4.6967044 
		2.9500225 32.339508 -4.6988049 2.9555862 32.343014 -4.703876 2.9610741 32.343433 
		-4.9699364 2.234216 31.339247 -4.9688659 2.2286618 31.334709 -4.9662819 2.2232025 
		31.3318 -4.9699364 3.2231801 32.339508 -4.9688659 3.2255738 32.343014 -4.9662819 
		3.2234085 32.343433 -4.9095063 2.2133548 31.379284 -4.9091372 2.2080431 31.374283 
		-4.9082465 2.2031686 31.370251 -4.9095063 3.2023189 32.379547 -4.9091372 3.2049551 
		32.382587 -4.9082465 3.2033746 32.381886 -4.8459635 2.1812177 31.411057 -4.8463321 
		2.1762784 31.405687 -4.8472214 2.1723056 31.400766 -4.8459635 3.1701818 32.41132 
		-4.8463321 3.1731923 32.41399 -4.8472209 3.1725116 32.412399 -4.7855277 2.1409521 
		31.431458 -4.7865977 2.1364794 31.42585 -4.7891803 2.1336341 31.420359 -4.7855277 
		3.1299162 32.431721 -4.7865977 3.1333933 32.434155 -4.7891803 3.1338401 32.431992 
		-4.859561 2.1643176 31.380194 -4.8601661 2.1634738 31.378725 -4.8604169 2.166415 
		31.381445 -4.8054457 2.1296034 31.399817 -4.8078709 2.1299253 31.397688 -4.8088756 
		2.1333506 31.400135 -4.9172421 2.1919222 31.349764 -4.9160771 2.1902292 31.349228 
		-4.9155955 2.1928222 31.352337 -4.9728661 2.2097957 31.311565 -4.9701381 2.2076013 
		31.312103 -4.9690089 2.2099857 31.315657 -5.0206537 2.2162189 31.269709 -5.0169592 
		2.2138948 31.271093 -5.015429 2.2162256 31.274998 -5.5375099 2.2222986 30.752808 
		-5.5395474 2.2199755 30.748398 -5.5436845 2.2223034 30.746571 -4.773665 1.9692974 
		31.269709 -4.7779202 1.9749212 31.271093 -4.7796831 1.9805441 31.274998 -5.2966957 
		1.9753819 30.746571 -5.3005085 1.9810019 30.748398 -5.301764 1.9866171 30.752808 
		-4.7377543 1.9747479 31.311565 -4.7427359 1.9802611 31.312103 -4.7447996 1.9858379 
		31.315657 -4.7169976 1.9917326 31.349764 -4.7225628 1.9967673 31.349228 -4.7248683 
		2.0021472 31.352337 -4.7138314 2.0186276 31.380194 -4.7194939 2.0228398 31.378725 
		-4.721839 2.0278752 31.381445 -4.7287097 2.0528882 31.399817 -4.7338715 2.0559461 
		31.397688 -4.7360096 2.0605047 31.400135 -4.7602963 2.0911655 31.406599 -4.7643323 
		2.0928593 31.404226 -4.7660036 2.0968552 31.406576 -4.9172416 3.1921282 32.361397 
		-4.9160771 3.1871431 32.357533 -4.9155955 3.1817863 32.3526 -4.9728661 3.2100017 
		32.3232 -4.9701385 3.2045133 32.320408 -4.9690089 3.1989498 32.315922 -4.859561 3.1645236 
		32.391827 -4.8601661 3.1603858 32.387028 -4.8604169 3.1553791 32.38171 -4.8054457 
		3.1298075 32.411449 -4.8078713 3.1268373 32.405991 -4.8088756 3.1223147 32.400398 
		-4.7602963 3.0913715 32.418232 -4.7643323 3.0897713 32.412529 -4.7660036 3.0858154 
		32.406837 -4.7287097 3.0530922 32.411449 -4.7338719 3.0528581 32.405991;
	setAttr ".pt[166:283]" -4.7360096 3.0494688 32.400398 -4.7138314 3.0188336 
		32.391827 -4.7194939 3.0197518 32.387028 -4.721839 3.0168393 32.38171 -4.7169971 
		2.9919386 32.361397 -4.7225628 2.9936812 32.357533 -4.7248683 2.9911113 32.3526 -4.7377543 
		2.9749539 32.3232 -4.7427363 2.9771731 32.320408 -4.7447996 2.974802 32.315922 -4.773665 
		2.9695034 32.281342 -4.7779202 2.9718332 32.279396 -4.7796831 2.9695082 32.275261 
		-5.301764 2.9755812 31.753073 -5.3005085 2.9779139 31.756701 -5.2966957 2.9755878 
		31.758204 -5.0206537 3.2164249 32.281342 -5.0169592 3.2108068 32.279396 -5.015429 
		3.2051897 32.275261 -5.5436845 3.2225094 31.758204 -5.5395474 3.2168875 31.756701 
		-5.5375099 3.2112627 31.753073 -5.6070642 3.188745 31.659927 -5.6093931 3.1925378 
		31.661409 -5.6070657 3.1937432 31.664986 -5.6070642 2.2862582 30.747128 -5.6093931 
		2.2903752 30.748938 -5.6070657 2.2923646 30.753307 -5.5812902 3.1679964 31.665009 
		-5.5869122 3.1700699 31.661415 -5.592535 3.1742201 31.659927 -5.5925341 2.2717323 
		30.747128 -5.5869131 2.2679014 30.748938 -5.5812926 2.2665987 30.753307 -5.3310151 
		2.9127717 31.659927 -5.3253942 2.9086165 31.661409 -5.3197737 2.9065299 31.664986 
		-5.3310151 2.0102849 30.747128 -5.3253942 2.006454 30.748938 -5.3197737 2.0051513 
		30.753307 -5.3455453 2.9272976 31.659927 -5.3478742 2.9310904 31.661409 -5.3455467 
		2.9322958 31.664986 -5.3455443 2.0309019 30.753296 -5.3478737 2.0289237 30.748934 
		-5.3455443 2.0248101 30.747128 -5.6033459 3.2073989 31.682556 -5.6057701 3.2107129 
		31.683458 -5.6036735 3.2107644 31.685633 -5.5888157 3.192873 31.682556 -5.5832901 
		3.1882391 31.683458 -5.5779004 3.1849985 31.685633 -5.5927563 3.2231269 31.709181 
		-5.5955448 3.2258992 31.709166 -5.594326 3.2246461 31.709133 -5.5782261 3.208601 
		31.709181 -5.5730648 3.2034254 31.709166 -5.568553 3.1988802 31.709133 -5.5769086 
		3.2335334 31.735743 -5.5802412 3.2359509 31.734819 -5.5803375 3.2338338 31.732582 
		-5.5623784 3.2190075 31.735743 -5.5577612 3.2134771 31.734819 -5.5545645 3.2080679 
		31.732582 -5.5769086 2.240766 30.731632 -5.5802412 2.246285 30.733845 -5.580337 2.2516561 
		30.739182 -5.5623784 2.2262402 30.731632 -5.5577612 2.2238111 30.733845 -5.554564 
		2.2258902 30.739182 -5.5927563 2.2515426 30.726494 -5.5955448 2.2566876 30.728882 
		-5.5943265 2.261168 30.734646 -5.5782261 2.2370167 30.726494 -5.5730648 2.2342138 
		30.728882 -5.5685534 2.2354021 30.734646 -5.6033459 2.2675166 30.731936 -5.6057701 
		2.2721143 30.734137 -5.6036735 2.275269 30.739449 -5.5888157 2.2529907 30.731936 
		-5.5832901 2.2496405 30.734137 -5.5779004 2.2495031 30.739449 -5.3008595 2.9575601 
		31.735743 -5.2962422 2.9520297 31.734819 -5.2930455 2.9466205 31.732582 -5.3153896 
		2.972086 31.735743 -5.3187222 2.9745035 31.734819 -5.3188186 2.9723864 31.732582 
		-5.3167071 2.9471536 31.709181 -5.3115458 2.941978 31.709166 -5.307034 2.9374328 
		31.709133 -5.3312373 2.9616795 31.709181 -5.3340259 2.9644518 31.709166 -5.3328071 
		2.9631987 31.709133 -5.3272967 2.9314256 31.682556 -5.3217711 2.9267917 31.683458 
		-5.3163815 2.9235511 31.685633 -5.3418269 2.9459515 31.682556 -5.3442512 2.9492655 
		31.683458 -5.3421545 2.949317 31.685633 -5.3272967 1.9915433 30.731936 -5.3217711 
		1.988193 30.734137 -5.3163815 1.9880557 30.739449 -5.3418269 2.0060692 30.731936 
		-5.3442512 2.0106668 30.734137 -5.3421545 2.0138216 30.739449 -5.3167071 1.9755692 
		30.726494 -5.3115458 1.9727664 30.728882 -5.3070345 1.9739547 30.734646 -5.3312373 
		1.9900951 30.726494 -5.3340259 1.9952402 30.728882 -5.3328075 1.9997206 30.734646 
		-5.3008595 1.9647927 30.731632 -5.2962422 1.9623637 30.733845 -5.293045 1.9644427 
		30.739182 -5.3153896 1.9793186 30.731632 -5.3187222 1.9848375 30.733845 -5.3188181 
		1.9902086 30.739182;
	setAttr -s 284 ".vt";
	setAttr ".vt[0:165]"  0.32750392 0.025765806 -0.47267294 0.32750392 0.025765806 0.47267294
		 0.32750392 0.26144749 -0.47267294 0.32750392 0.26144749 0.47267294 -0.32345343 0.074336678 0.47267294
		 -0.34213877 0.10718367 0.47267294 -0.29434967 0.048269153 0.47267294 -0.25767732 0.031532794 0.47267294
		 -0.21702528 0.025765806 0.47267294 -0.21702528 0.26144749 0.47267294 -0.25767732 0.2556805 0.47267294
		 -0.29434967 0.23894414 0.47267294 -0.32345343 0.21287659 0.47267294 -0.34213877 0.18002957 0.47267294
		 -0.3485775 0.14360663 0.47267294 -0.29434967 0.048269153 -0.47267294 -0.25767732 0.031532794 -0.47267294
		 -0.32345343 0.074336678 -0.47267294 -0.34213877 0.10718367 -0.47267294 -0.3485775 0.14360663 -0.47267294
		 -0.34213877 0.18002957 -0.47267294 -0.32345343 0.21287659 -0.47267294 -0.29434967 0.23894414 -0.47267294
		 -0.25767732 0.2556805 -0.47267294 -0.21702528 0.26144749 -0.47267294 -0.21702528 0.025765806 -0.47267294
		 0.33020163 0.025765806 -0.47540808 0.33020163 0.025765806 0.47540808 0.33020163 0.26144749 -0.47540808
		 0.33020163 0.26144749 0.47540808 0.054621935 0.28721327 0 0.054621935 0 0 -0.23644614 0.28159335 0.5
		 -0.23675871 0.28556722 0.49835396 -0.23688841 0.28721327 0.49438 0.30560875 0.28159335 0.5
		 0.30544662 0.28556722 0.49835396 0.30505538 0.28721327 0.49438 -0.23644614 0.28159335 -0.5
		 -0.23675871 0.28556722 -0.49835396 -0.23688841 0.28721327 -0.49438 0.30560875 0.28159335 -0.5
		 0.30544662 0.28556722 -0.49835396 0.30505538 0.28721327 -0.49438 -0.23644614 0.0056199208 0.5
		 -0.23675871 0.0016460367 0.49835396 -0.23688841 0 0.49438 0.30560875 0.0056199208 0.5
		 0.30544662 0.0016460367 0.49835396 0.30505538 0 0.49438 -0.23644614 0.0056199208 -0.5
		 -0.23675871 0.0016460367 -0.49835396 -0.23688841 0 -0.49438 0.30560875 0.0056199208 -0.5
		 0.30544662 0.0016460367 -0.49835396 0.30505538 0 -0.49438 -0.37345266 0.18799347 0.49438
		 -0.37186766 0.18747851 0.49835396 -0.36804128 0.18623529 0.5 -0.38048065 0.14360663 0.49438
		 -0.3788141 0.14360663 0.49835396 -0.37479067 0.14360663 0.5 -0.38048065 0.14360663 -0.49438
		 -0.3788141 0.14360663 -0.49835396 -0.37479067 0.14360663 -0.5 -0.37345266 0.18799347 -0.49438
		 -0.37186766 0.18747851 -0.49835396 -0.36804128 0.18623529 -0.5 -0.35305691 0.22802246 0.49438
		 -0.35170865 0.22704288 0.49835396 -0.34845376 0.22467798 0.5 -0.35305691 0.22802246 -0.49438
		 -0.35170865 0.22704288 -0.49835396 -0.34845376 0.22467798 -0.5 -0.32128978 0.25978965 0.49438
		 -0.32031012 0.25844136 0.49835396 -0.31794524 0.25518635 0.5 -0.32128978 0.25978965 -0.49438
		 -0.32031012 0.25844136 -0.49835396 -0.31794524 0.25518635 -0.5 -0.28126097 0.2801854 0.49438
		 -0.28074598 0.27860042 0.49835396 -0.27950263 0.27477393 0.5 -0.28126097 0.2801854 -0.49438
		 -0.28074598 0.27860042 -0.49835396 -0.27950263 0.27477393 -0.5 -0.28126097 0.0070279241 0.49438
		 -0.28074598 0.0086129112 0.49835396 -0.27950263 0.01243941 0.5 -0.28126097 0.0070279241 -0.49438
		 -0.28074598 0.0086129112 -0.49835396 -0.27950263 0.01243941 -0.5 -0.32128978 0.02742368 0.49438
		 -0.32031012 0.028771952 0.49835396 -0.31794524 0.032026965 0.5 -0.32128978 0.02742368 -0.49438
		 -0.32031012 0.028771952 -0.49835396 -0.31794524 0.032026965 -0.5 -0.35305691 0.059190869 0.49438
		 -0.35170865 0.060170446 0.49835396 -0.34845376 0.062535353 0.5 -0.35305691 0.059190869 -0.49438
		 -0.35170865 0.060170446 -0.49835396 -0.34845376 0.062535353 -0.5 -0.37345266 0.099219829 0.49438
		 -0.37186766 0.099734783 0.49835396 -0.36804128 0.10097799 0.5 -0.37345266 0.099219829 -0.49438
		 -0.37186766 0.099734783 -0.49835396 -0.36804128 0.10097799 -0.5 -0.32788515 0.070761621 0.5
		 -0.32475138 0.073289566 0.49835396 -0.32345343 0.074336678 0.49438 -0.3475039 0.105249 0.5
		 -0.34371018 0.10661702 0.49835396 -0.34213877 0.10718367 0.49438 -0.29746175 0.043511856 0.5
		 -0.29526138 0.046875771 0.49835396 -0.29434967 0.048269153 0.49438 -0.25927114 0.02608273 0.5
		 -0.25814414 0.029936507 0.49835396 -0.25767732 0.031532794 0.49438 -0.21742201 0.020145886 0.5
		 -0.21714163 0.02411977 0.49835396 -0.21702528 0.025765806 0.49438 0.30505538 0.025765806 0.49438
		 0.30544662 0.02411977 0.49835396 0.30560875 0.020145886 0.5 -0.21742201 0.2670674 0.5
		 -0.21714163 0.26309353 0.49835396 -0.21702528 0.26144749 0.49438 0.30560875 0.2670674 0.5
		 0.30544662 0.26309353 0.49835396 0.30505538 0.26144749 0.49438 -0.25927114 0.26113057 0.5
		 -0.25814414 0.2572768 0.49835396 -0.25767732 0.2556805 0.49438 -0.29746175 0.24370144 0.5
		 -0.29526138 0.24033752 0.49835396 -0.29434967 0.23894414 0.49438 -0.32788515 0.21645164 0.5
		 -0.32475138 0.21392369 0.49835396 -0.32345343 0.21287659 0.49438 -0.3475039 0.18196423 0.5
		 -0.34371018 0.18059622 0.49835396 -0.34213877 0.18002957 0.49438 -0.35428452 0.14360663 0.5
		 -0.35024905 0.14360663 0.49835396 -0.3485775 0.14360663 0.49438 -0.29746175 0.043511856 -0.5
		 -0.29526138 0.046875771 -0.49835396 -0.29434967 0.048269153 -0.49438 -0.25927114 0.02608273 -0.5
		 -0.25814414 0.029936507 -0.49835396 -0.25767732 0.031532794 -0.49438 -0.32788515 0.070761621 -0.5
		 -0.32475138 0.073289566 -0.49835396 -0.32345343 0.074336678 -0.49438 -0.3475039 0.105249 -0.5
		 -0.34371018 0.10661702 -0.49835396 -0.34213877 0.10718367 -0.49438 -0.35428452 0.14360663 -0.5
		 -0.35024905 0.14360663 -0.49835396 -0.3485775 0.14360663 -0.49438 -0.3475039 0.18196423 -0.5
		 -0.34371018 0.18059622 -0.49835396;
	setAttr ".vt[166:283]" -0.34213877 0.18002957 -0.49438 -0.32788515 0.21645164 -0.5
		 -0.32475138 0.21392369 -0.49835396 -0.32345343 0.21287659 -0.49438 -0.29746175 0.24370144 -0.5
		 -0.29526138 0.24033752 -0.49835396 -0.29434967 0.23894414 -0.49438 -0.25927114 0.26113057 -0.5
		 -0.25814414 0.2572768 -0.49835396 -0.25767732 0.2556805 -0.49438 -0.21742201 0.2670674 -0.5
		 -0.21714163 0.26309353 -0.49835396 -0.21702528 0.26144749 -0.49438 0.30505538 0.26144749 -0.49438
		 0.30544662 0.26309353 -0.49835396 0.30560875 0.2670674 -0.5 -0.21742201 0.020145886 -0.5
		 -0.21714163 0.02411977 -0.49835396 -0.21702528 0.025765806 -0.49438 0.30560875 0.020145886 -0.5
		 0.30544662 0.02411977 -0.49835396 0.30505538 0.025765806 -0.49438 0.35445833 0.0056199208 -0.45115042
		 0.35281229 0.0016460367 -0.45098829 0.34883833 0 -0.45059681 0.35445833 0.0056199208 0.45115042
		 0.35281229 0.0016460367 0.45098829 0.34883833 0 0.45059681 0.34883595 0.025765806 -0.45061398
		 0.35281157 0.024119522 -0.45099354 0.35445833 0.020145044 -0.45115042 0.35445833 0.020145886 0.45115042
		 0.35281229 0.02411977 0.45098829 0.34883833 0.025765806 0.45059681 0.35445833 0.28159335 -0.45115042
		 0.35281229 0.28556722 -0.45098829 0.34883833 0.28721327 -0.45059681 0.35445833 0.28159335 0.45115042
		 0.35281229 0.28556722 0.45098829 0.34883833 0.28721327 0.45059681 0.35445833 0.2670674 -0.45115042
		 0.35281229 0.26309353 -0.45098829 0.34883833 0.26144749 -0.45059681 0.34883595 0.26144749 0.45061398
		 0.35281157 0.26309377 0.45099354 0.35445833 0.26706824 0.45115042 0.35073996 0.0056199208 -0.46984434
		 0.34918928 0.0016460367 -0.46920204 0.34544611 0 -0.46765137 0.35073996 0.020145886 -0.46984434
		 0.34918928 0.02411977 -0.46920204 0.34544611 0.025765806 -0.46765137 0.34015059 0.0056199208 -0.4856925
		 0.33896399 0.0016460367 -0.48450565 0.33609891 0 -0.48164082 0.34015059 0.020145886 -0.4856925
		 0.33896399 0.02411977 -0.48450565 0.33609891 0.025765806 -0.48164082 0.32430267 0.0056199208 -0.49628162
		 0.32366037 0.0016460367 -0.49473095 0.32210994 0 -0.49098778 0.32430267 0.020145886 -0.49628162
		 0.32366037 0.02411977 -0.49473095 0.32210994 0.025765806 -0.49098778 0.32430267 0.0056199208 0.49628162
		 0.32366037 0.0016460367 0.49473095 0.32210994 0 0.49098778 0.32430267 0.020145886 0.49628162
		 0.32366037 0.02411977 0.49473095 0.32210994 0.025765806 0.49098778 0.34015059 0.0056199208 0.4856925
		 0.33896399 0.0016460367 0.48450565 0.33609891 0 0.48164082 0.34015059 0.020145886 0.4856925
		 0.33896399 0.02411977 0.48450565 0.33609891 0.025765806 0.48164082 0.35073996 0.0056199208 0.46984434
		 0.34918928 0.0016460367 0.46920204 0.34544611 0 0.46765137 0.35073996 0.020145886 0.46984434
		 0.34918928 0.02411977 0.46920204 0.34544611 0.025765806 0.46765137 0.32430267 0.28159335 -0.49628162
		 0.32366037 0.28556722 -0.49473095 0.32210994 0.28721327 -0.49098778 0.32430267 0.2670674 -0.49628162
		 0.32366037 0.26309353 -0.49473095 0.32210994 0.26144749 -0.49098778 0.34015059 0.28159335 -0.4856925
		 0.33896399 0.28556722 -0.48450565 0.33609891 0.28721327 -0.48164082 0.34015059 0.2670674 -0.4856925
		 0.33896399 0.26309353 -0.48450565 0.33609891 0.26144749 -0.48164082 0.35073996 0.28159335 -0.46984434
		 0.34918928 0.28556722 -0.46920204 0.34544611 0.28721327 -0.46765137 0.35073996 0.2670674 -0.46984434
		 0.34918928 0.26309353 -0.46920204 0.34544611 0.26144749 -0.46765137 0.35073996 0.28159335 0.46984434
		 0.34918928 0.28556722 0.46920204 0.34544611 0.28721327 0.46765137 0.35073996 0.2670674 0.46984434
		 0.34918928 0.26309353 0.46920204 0.34544611 0.26144749 0.46765137 0.34015059 0.28159335 0.4856925
		 0.33896399 0.28556722 0.48450565 0.33609891 0.28721327 0.48164082 0.34015059 0.2670674 0.4856925
		 0.33896399 0.26309353 0.48450565 0.33609891 0.26144749 0.48164082 0.32430267 0.28159335 0.49628162
		 0.32366037 0.28556722 0.49473095 0.32210994 0.28721327 0.49098778 0.32430267 0.2670674 0.49628162
		 0.32366037 0.26309353 0.49473095 0.32210994 0.26144749 0.49098778;
	setAttr -s 569 ".ed";
	setAttr ".ed[0:165]"  40 39 0 39 84 0 84 83 0 83 40 0 39 38 0 38 85 0 85 84 0
		 46 45 0 45 87 0 87 86 0 86 46 0 45 44 0 44 88 0 88 87 0 124 123 0 123 126 0 126 125 0
		 125 124 0 123 122 0 122 127 0 127 126 0 178 177 0 177 180 0 180 179 0 179 178 0 177 176 0
		 176 181 0 181 180 0 196 195 0 195 198 0 198 197 0 197 196 0 195 194 0 194 199 0 199 198 0
		 208 207 0 207 210 0 210 209 0 209 208 0 207 206 0 206 211 0 211 210 0 59 56 0 56 65 0
		 65 62 0 62 59 0 56 68 0 68 71 0 71 65 0 68 74 0 74 77 0 77 71 0 74 80 0 80 83 0 83 77 0
		 80 34 0 34 40 0 86 89 0 89 52 0 52 46 0 86 92 0 92 95 0 95 89 0 92 98 0 98 101 0
		 101 95 0 98 104 0 104 107 0 107 101 0 104 59 0 62 107 0 197 191 0 191 188 0 188 196 0
		 206 200 0 200 203 0 203 211 0 106 100 0 100 110 0 110 113 0 113 106 0 100 94 0 94 116 0
		 116 110 0 94 88 0 88 119 0 119 116 0 44 122 0 122 119 0 44 47 0 47 127 0 131 35 0
		 35 32 0 32 128 0 128 131 0 32 82 0 82 134 0 134 128 0 82 76 0 76 137 0 137 134 0
		 76 70 0 70 140 0 140 137 0 70 58 0 58 143 0 143 140 0 58 61 0 61 146 0 146 143 0
		 61 106 0 113 146 0 91 97 0 97 149 0 149 152 0 152 91 0 97 103 0 103 155 0 155 149 0
		 103 109 0 109 158 0 158 155 0 109 64 0 64 161 0 161 158 0 64 67 0 67 164 0 164 161 0
		 67 73 0 73 167 0 167 164 0 73 79 0 79 170 0 170 167 0 79 85 0 85 173 0 173 170 0
		 38 176 0 176 173 0 38 41 0 41 181 0 185 53 0 53 50 0 50 182 0 182 185 0 50 91 0 152 182 0
		 115 112 0 112 4 0 4 5 0 5 115 0 112 118 0 118 6 0 6 4 0 118 121 0 121 7 0 7 6 0 121 124 0
		 124 8 0 8 7 0 125 27 0 27 1 0 1 8 0 130 136 0 136 10 0 10 9 0;
	setAttr ".ed[166:331]" 9 130 0 136 139 0 139 11 0 11 10 0 139 142 0 142 12 0
		 12 11 0 142 145 0 145 13 0 13 12 0 145 148 0 148 14 0 14 13 0 148 115 0 5 14 0 154 151 0
		 151 15 0 15 16 0 16 154 0 151 157 0 157 17 0 17 15 0 157 160 0 160 18 0 18 17 0 160 163 0
		 163 19 0 19 18 0 163 166 0 166 20 0 20 19 0 166 169 0 169 21 0 21 20 0 169 172 0
		 172 22 0 22 21 0 172 175 0 175 23 0 23 22 0 175 178 0 178 24 0 24 23 0 179 28 0 28 2 0
		 2 24 0 184 154 0 16 25 0 25 184 0 26 187 0 187 184 0 25 0 0 0 26 0 27 199 0 194 26 0
		 0 1 0 28 208 0 209 29 0 29 3 0 3 2 0 29 133 0 133 130 0 9 3 0 188 212 0 212 215 0
		 215 196 0 212 218 0 218 221 0 221 215 0 218 224 0 224 227 0 227 221 0 224 53 0 185 227 0
		 47 230 0 230 233 0 233 127 0 230 236 0 236 239 0 239 233 0 236 242 0 242 245 0 245 239 0
		 242 191 0 197 245 0 41 248 0 248 251 0 251 181 0 248 254 0 254 257 0 257 251 0 254 260 0
		 260 263 0 263 257 0 260 200 0 206 263 0 203 266 0 266 269 0 269 211 0 266 272 0 272 275 0
		 275 269 0 272 278 0 278 281 0 281 275 0 278 35 0 131 281 0 194 217 0 217 26 0 217 223 0
		 223 26 0 223 229 0 229 26 0 229 187 0 226 31 0 31 55 0 55 226 0 125 235 0 235 27 0
		 235 241 0 241 27 0 241 247 0 247 27 0 247 199 0 179 253 0 253 28 0 253 259 0 259 28 0
		 259 265 0 265 28 0 265 208 0 250 30 0 30 256 0 256 250 0 209 271 0 271 29 0 271 277 0
		 277 29 0 277 283 0 283 29 0 283 133 0 280 274 0 274 30 0 30 280 0 274 268 0 268 30 0
		 268 205 0 205 30 0 205 202 0 202 30 0 202 262 0 262 30 0 262 256 0 43 30 0 250 43 0
		 40 30 0 43 40 0 34 30 0 37 30 0 34 37 0 37 280 0 244 238 0 238 31 0 31 244 0 238 232 0
		 232 31 0;
	setAttr ".ed[332:497]" 232 49 0 49 31 0 49 46 0 46 31 0 52 31 0 52 55 0 220 31 0
		 226 220 0 214 31 0 220 214 0 190 31 0 214 190 0 193 31 0 190 193 0 193 244 0 34 33 0
		 33 36 0 36 37 0 33 32 0 35 36 0 39 42 0 42 41 0 43 42 0 42 249 0 249 248 0 250 249 0
		 45 48 0 48 47 0 49 48 0 48 231 0 231 230 0 232 231 0 52 51 0 51 54 0 54 55 0 51 50 0
		 53 54 0 56 57 0 57 69 0 69 68 0 57 58 0 70 69 0 57 60 0 60 61 0 59 60 0 62 63 0 63 108 0
		 108 107 0 63 64 0 109 108 0 63 66 0 66 67 0 65 66 0 69 75 0 75 74 0 76 75 0 66 72 0
		 72 73 0 71 72 0 75 81 0 81 80 0 82 81 0 72 78 0 78 79 0 77 78 0 33 81 0 78 84 0 87 93 0
		 93 92 0 94 93 0 51 90 0 90 91 0 89 90 0 93 99 0 99 98 0 100 99 0 90 96 0 96 97 0
		 95 96 0 99 105 0 105 104 0 106 105 0 96 102 0 102 103 0 101 102 0 60 105 0 102 108 0
		 110 111 0 111 114 0 114 113 0 111 112 0 115 114 0 114 147 0 147 146 0 148 147 0 111 117 0
		 117 118 0 116 117 0 117 120 0 120 121 0 119 120 0 120 123 0 128 129 0 129 132 0 132 131 0
		 129 130 0 133 132 0 132 282 0 282 281 0 283 282 0 129 135 0 135 136 0 134 135 0 135 138 0
		 138 139 0 137 138 0 138 141 0 141 142 0 140 141 0 141 144 0 144 145 0 143 144 0 144 147 0
		 149 150 0 150 153 0 153 152 0 150 151 0 154 153 0 153 183 0 183 182 0 184 183 0 150 156 0
		 156 157 0 155 156 0 156 159 0 159 160 0 158 159 0 159 162 0 162 163 0 161 162 0 162 165 0
		 165 166 0 164 165 0 165 168 0 168 169 0 167 168 0 168 171 0 171 172 0 170 171 0 171 174 0
		 174 175 0 173 174 0 174 177 0 183 186 0 186 185 0 187 186 0 186 228 0 228 227 0 229 228 0
		 188 189 0 189 213 0 213 212 0 189 190 0 214 213 0 189 192 0 192 193 0;
	setAttr ".ed[498:568]" 191 192 0 198 246 0 246 245 0 247 246 0 200 201 0 201 204 0
		 204 203 0 201 202 0 205 204 0 204 267 0 267 266 0 268 267 0 207 264 0 264 263 0 265 264 0
		 213 219 0 219 218 0 220 219 0 195 216 0 216 217 0 215 216 0 219 225 0 225 224 0 226 225 0
		 216 222 0 222 223 0 221 222 0 54 225 0 222 228 0 231 237 0 237 236 0 238 237 0 126 234 0
		 234 235 0 233 234 0 237 243 0 243 242 0 244 243 0 234 240 0 240 241 0 239 240 0 192 243 0
		 240 246 0 249 255 0 255 254 0 256 255 0 180 252 0 252 253 0 251 252 0 255 261 0 261 260 0
		 262 261 0 252 258 0 258 259 0 257 258 0 201 261 0 258 264 0 267 273 0 273 272 0 274 273 0
		 210 270 0 270 271 0 269 270 0 273 279 0 279 278 0 280 279 0 270 276 0 276 277 0 275 276 0
		 36 279 0 276 282 0;
	setAttr -s 1112 ".n";
	setAttr ".n[0:165]" -type "float3"  0.9989925 0.0047137877 0.038022619 0.92344767
		 0.38269961 0.015473634 0.87684643 0.38329786 0.28926975 0.95079589 -0.0019874745
		 0.30892906 0.38227558 0.92362708 0.015242501 0.14832743 0.98857343 0.013244566 0.079420008
		 0.99586737 0.037343919 0.3600831 0.92386526 0.12754244 -0.9989925 -0.0055969507 0.037903011
		 -0.9234466 -0.3829585 0.0065679653 -0.87684751 -0.38992122 0.2802746 -0.95079565
		 -0.0051987143 0.30889225 -0.38227391 -0.92373246 -0.0062449072 -0.1483269 -0.98861414
		 -0.0097530419 -0.079419978 -0.99646652 0.014170629 -0.36008248 -0.92658204 0.10601982
		 0.99764979 -0.063507438 -0.010759151 0.92349005 -0.38265595 -0.013949576 0.92371339
		 -0.38230816 -0.0069306884 0.99870634 -0.045155361 -0.00081862672 0.38233694 -0.92361003
		 -0.014725656 0.060125936 -0.99784225 -0.012232696 0.085755259 -0.99587387 -0.018310122
		 0.38279095 -0.92338294 -0.017003763 -0.99764973 0.063740693 -0.0092790797 -0.92348975
		 0.38287765 -0.0050453595 -0.92371321 0.38236639 0.0019636068 -0.99870634 0.045162305
		 0.00023190133 -0.38233775 0.92370236 0.0067614657 -0.060125917 0.99785674 0.010980316
		 -0.085755266 0.99603027 0.0048587327 -0.38279191 0.92352825 0.004478584 0.087011784
		 0.015592212 -0.9958111 0.38275108 0.01442931 -0.92344326 0.38275215 0.0070601739
		 -0.92352855 0.086960226 0.0075733424 -0.99590898 0.92369717 0.0059014428 -0.38236436
		 0.99870938 0.00069710042 -0.045088723 0.9987067 0.00035299757 -0.045153618 0.92369783
		 0.0029894011 -0.38239685 -0.99870664 0.00069736992 -0.045149732 -0.92369777 0.0059059463
		 -0.38236308 -0.92369717 0.0029939287 -0.3823984 -0.99870944 0.00035184895 -0.045092866
		 -0.3827531 0.014422853 -0.92344242 -0.086960375 0.015593417 -0.99581558 -0.087011933
		 0.0075744563 -0.99590433 -0.38275203 0.0070537673 -0.92352855 1.0773699e-09 -0.013231969
		 0.99963939 0.30888507 -0.012663046 0.95072794 0.30888507 -0.0094541963 0.95076525
		 -5.2554624e-11 -0.010023101 0.9996767 0.30888507 -0.012663046 0.95072794 0.58762342
		 -0.011011317 0.80872214 0.58762342 -0.0078024422 0.80875945 0.30888507 -0.0094541963
		 0.95076525 0.58762342 -0.011011317 0.80872214 0.80879432 -0.0084389485 0.58756667
		 0.80879432 -0.0052300664 0.58760399 0.58762342 -0.0078024422 0.80875945 0.80879432
		 -0.0084389485 0.58756667 0.95079589 -0.0051987153 0.30889168 0.95079589 -0.0019874745
		 0.30892906 0.80879432 -0.0052300664 0.58760399 0.95079589 -0.0051987153 0.30889168
		 0.9989925 -0.0055969129 0.037902687 0.9989925 0.0047137877 0.038022619 0.95079589
		 -0.0019874745 0.30892906 -0.9989925 -0.0055969507 0.037903011 -0.95079565 -0.0051987143
		 0.30889225 -0.95079565 -0.0019874903 0.30892965 -0.99899244 0.0047138166 0.038022935
		 -0.95079565 -0.0051987143 0.30889225 -0.80879432 -0.0084389476 0.58756667 -0.80879432
		 -0.005230064 0.58760399 -0.95079565 -0.0019874903 0.30892965 -0.80879432 -0.0084389476
		 0.58756667 -0.58762354 -0.011011312 0.80872208 -0.58762354 -0.0078024417 0.80875939
		 -0.80879432 -0.005230064 0.58760399 -0.58762354 -0.011011312 0.80872208 -0.30888528
		 -0.012663039 0.95072794 -0.30888528 -0.0094542 0.95076525 -0.58762354 -0.0078024417
		 0.80875939 -0.30888528 -0.012663039 0.95072794 1.0773699e-09 -0.013231969 0.99963939
		 -5.2554624e-11 -0.010023101 0.9996767 -0.30888528 -0.0094542 0.95076525 0.086960226
		 0.0075733424 -0.99590898 -0.086942881 0.007573158 -0.99591041 -0.086942926 0.015593557
		 -0.99581712 0.087011784 0.015592212 -0.9958111 -0.086960375 0.015593417 -0.99581558
		 0.086942978 0.015593644 -0.99581707 0.086943023 0.0075732525 -0.99591041 -0.087011933
		 0.0075744563 -0.99590433 -0.024888502 -0.99729997 0.065017037 -0.046351321 -0.99728662
		 0.052200787 0.032757793 -0.99783546 -0.052012742 0.017565772 -0.99776632 -0.060065463
		 -0.046351321 -0.99728662 0.052200787 -0.063780308 -0.99708515 0.034744687 0.045908619
		 -0.99780983 -0.041495141 0.032757793 -0.99783546 -0.052012742 -0.063780308 -0.99708515
		 0.034744687 -0.079419978 -0.99646652 0.014170629 0.060380585 -0.99747419 -0.029211221
		 0.045908619 -0.99780983 -0.041495141 -0.079419978 -0.99646652 0.014170629 -0.1483269
		 -0.98861414 -0.0097530419 0.060125936 -0.99784225 -0.012232696 0.060380585 -0.99747419
		 -0.029211221 -0.1483269 -0.98861414 -0.0097530419 -0.088142194 -0.99566638 -0.018256808
		 0.085755259 -0.99587387 -0.018310122 0.060125936 -0.99784225 -0.012232696 -0.085755311
		 -0.99587393 -0.01831013 0.088142477 -0.99566633 -0.018256815 0.14832745 -0.98861408
		 -0.0097530792 -0.060125932 -0.99784225 -0.012232665 0.14832745 -0.98861408 -0.0097530792
		 0.079420015 -0.99646658 0.0141702 -0.060380563 -0.99747419 -0.029211169 -0.060125932
		 -0.99784225 -0.012232665 0.079420015 -0.99646658 0.0141702 0.063780248 -0.99708509
		 0.034744468 -0.04590854 -0.99780983 -0.041495372 -0.060380563 -0.99747419 -0.029211169
		 0.063780248 -0.99708509 0.034744468 0.046351198 -0.99728656 0.052201662 -0.032757763
		 -0.99783546 -0.052012693 -0.04590854 -0.99780983 -0.041495372 0.046351198 -0.99728656
		 0.052201662 0.024888437 -0.99730003 0.065018013 -0.01756577 -0.99776632 -0.060065433
		 -0.032757763 -0.99783546 -0.052012693 0.024888437 -0.99730003 0.065018013 8.4928145e-09
		 -0.9972809 0.069891803 3.7607926e-09 -0.99772602 -0.063218534 -0.01756577 -0.99776632
		 -0.060065433 8.4928145e-09 -0.9972809 0.069891803 -0.024888502 -0.99729997 0.065017037
		 0.017565772 -0.99776632 -0.060065463 3.7607926e-09 -0.99772602 -0.063218534 -0.079419985
		 0.99586737 0.037344486 -0.063780315 0.99600726 0.05792737 0.045908637 0.99850506
		 -0.018274993 0.060380593 0.9978838 -0.0060021896 -0.063780315 0.99600726 0.05792737
		 -0.046351325 0.99580252 0.075383432 0.032757811 0.9987753 -0.028789163 0.045908637
		 0.99850506 -0.018274993 -0.046351325 0.99580252 0.075383432 -0.024888506 0.99551791
		 0.088196531 0.017565774 0.99889338 -0.036841299 0.032757811 0.9987753 -0.028789163
		 -0.024888506 0.99551791 0.088196531 0 0.99538529 0.093069471 -7.5215851e-09 0.99892658
		 -0.039994501 0.017565774 0.99889338 -0.036841299 0 0.99538529 0.093069471 0.024888419
		 0.99551785 0.08819744 -0.017565794 0.99889338 -0.03684134 -7.5215851e-09 0.99892658
		 -0.039994501 0.024888419 0.99551785 0.08819744 0.046351302 0.99580258 0.075384393;
	setAttr ".n[166:331]" -type "float3"  -0.032757793 0.9987753 -0.028789137 -0.017565794
		 0.99889338 -0.03684134 0.046351302 0.99580258 0.075384393 0.06378036 0.99600726 0.057927266
		 -0.045908596 0.99850506 -0.018275242 -0.032757793 0.9987753 -0.028789137 0.06378036
		 0.99600726 0.057927266 0.079420008 0.99586737 0.037343919 -0.060380679 0.9978838
		 -0.0060022734 -0.045908596 0.99850506 -0.018275242 0.079420008 0.99586737 0.037343919
		 0.14832743 0.98857343 0.013244566 -0.060125917 0.99785674 0.010980316 -0.060380679
		 0.9978838 -0.0060022734 0.14832743 0.98857343 0.013244566 0.088142425 0.99582165
		 0.0049072048 -0.085755266 0.99603027 0.0048587327 -0.060125917 0.99785674 0.010980316
		 0.085755251 0.99603027 0.0048587355 -0.088142216 0.99582171 0.0049072122 -0.14832692
		 0.98857349 0.01324464 0.060125936 0.99785674 0.010980302 -0.14832692 0.98857349 0.01324464
		 -0.079419985 0.99586737 0.037344486 0.060380593 0.9978838 -0.0060021896 0.060125936
		 0.99785674 0.010980302 0.34008509 -0.056683384 -0.93839395 0.62835687 -0.058311552
		 -0.7753846 0.62979329 0.0090302248 -0.77635866 0.3408708 0.010930785 -0.93975616
		 0.62835687 -0.058311552 -0.7753846 0.8360371 -0.060710113 -0.5448029 0.83792675 0.0063420273
		 -0.54524529 0.62979329 0.0090302248 -0.77635866 0.8360371 -0.060710113 -0.5448029
		 0.95775223 -0.063554704 -0.27950937 0.95990312 0.0032491181 -0.27933756 0.83792675
		 0.0063420273 -0.54524529 0.95775223 -0.063554704 -0.27950937 0.99764979 -0.063507438
		 -0.010759151 0.99967694 0.00011633984 -0.0099957306 0.95990312 0.0032491181 -0.27933756
		 0.99764979 -0.063507438 -0.010759151 0.99870634 -0.045155361 -0.00081862672 0.99972695
		 2.8278276e-08 3.2891911e-10 0.99972695 2.8565887e-08 3.3226447e-10 0.99967694 0.00011633984
		 -0.0099957306 -0.99764979 -0.063507169 -0.010759164 -0.95775211 -0.063555211 -0.27950948
		 -0.95990312 0.0032491181 -0.27933756 -0.99967694 0.00011680461 -0.009995725 -0.95775211
		 -0.063555211 -0.27950948 -0.83603692 -0.060709901 -0.5448032 -0.83792657 0.0063420315
		 -0.54524565 -0.95990312 0.0032491181 -0.27933756 -0.83603692 -0.060709901 -0.5448032
		 -0.62835652 -0.058311455 -0.77538502 -0.62979329 0.0090302248 -0.77635866 -0.83792657
		 0.0063420315 -0.54524565 -0.62835652 -0.058311455 -0.77538502 -0.34008497 -0.056683369
		 -0.93839395 -0.34087101 0.010930784 -0.9397561 -0.62979329 0.0090302248 -0.77635866
		 -0.34008497 -0.056683369 -0.93839395 -3.67541e-09 -0.056100048 -0.99815166 0 0.011627549
		 -0.9996593 -0.34087101 0.010930784 -0.9397561 -3.67541e-09 -0.056100048 -0.99815166
		 0.34008509 -0.056683384 -0.93839395 0.3408708 0.010930785 -0.93975616 0 0.011627549
		 -0.9996593 0.95775229 0.0700389 -0.2779555 0.83603692 0.073365644 -0.54324371 0.83792675
		 0.0063420273 -0.54524529 0.95990312 0.0032491181 -0.27933756 0.83603692 0.073365644
		 -0.54324371 0.62835664 0.07633099 -0.77381885 0.62979329 0.0090302248 -0.77635866
		 0.83792675 0.0063420273 -0.54524529 0.62835664 0.07633099 -0.77381885 0.34008509
		 0.078494951 -0.93682158 0.3408708 0.010930785 -0.93975616 0.62979329 0.0090302248
		 -0.77635866 0.34008509 0.078494951 -0.93682158 -3.3078678e-08 0.079301789 -0.99657667
		 0 0.011627549 -0.9996593 0.3408708 0.010930785 -0.93975616 -3.3078678e-08 0.079301789
		 -0.99657667 -0.34008503 0.07849507 -0.93682164 -0.34087101 0.010930784 -0.9397561
		 0 0.011627549 -0.9996593 -0.34008503 0.07849507 -0.93682164 -0.6283564 0.076331094
		 -0.77381903 -0.62979329 0.0090302248 -0.77635866 -0.34087101 0.010930784 -0.9397561
		 -0.6283564 0.076331094 -0.77381903 -0.83603692 0.073365569 -0.54324365 -0.83792657
		 0.0063420315 -0.54524565 -0.62979329 0.0090302248 -0.77635866 -0.83603692 0.073365569
		 -0.54324365 -0.95775217 0.070039429 -0.27795559 -0.95990312 0.0032491181 -0.27933756
		 -0.83792657 0.0063420315 -0.54524565 -0.95775217 0.070039429 -0.27795559 -0.99764973
		 0.063740693 -0.0092790797 -0.99967694 0.00011626547 -0.0099957315 -0.95990312 0.0032491181
		 -0.27933756 -0.99764973 0.063740693 -0.0092790797 -0.99870634 0.045162305 0.00023190133
		 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.99972695 0 0 -0.99967694 0.00011626547
		 -0.0099957315 0.99764973 0.063740529 -0.0092790648 0.95775229 0.0700389 -0.2779555
		 0.95990312 0.0032491181 -0.27933756 0.99967694 0.00011621086 -0.0099957325 0.99972695
		 -2.2651411e-08 -2.6347016e-10 0.99870634 0.045162205 0.00023190308 0.99764973 0.063740529
		 -0.0092790648 0.99967694 0.00011621086 -0.0099957325 0.99972695 -2.2585944e-08 -2.6270866e-10
		 0.99972695 2.8278276e-08 3.2891911e-10 0.9987067 0.00035299757 -0.045153618 0.99870938
		 0.00069710042 -0.045088723 0.99972695 -2.2651411e-08 -2.6347016e-10 0.99972695 -2.2585944e-08
		 -2.6270866e-10 0.99972695 2.8565887e-08 3.3226447e-10 -0.99972695 -5.4759912e-09
		 -6.3694064e-11 -0.99870664 0.00069736992 -0.045149732 -0.99870944 0.00035184895 -0.045092866
		 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99972695 2.1382385e-07 2.4870948e-09 -0.99972695
		 0 0 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99870634 -0.045154974 -0.00081862515
		 -0.99764979 -0.063507169 -0.010759164 -0.99967694 0.00011680461 -0.009995725 -0.99972695
		 2.1382385e-07 2.4870948e-09 -0.086942926 0.015593557 -0.99581712 -0.085857131 0.39176112
		 -0.91575402 0.085848674 0.39176387 -0.91575372 0.087011784 0.015592212 -0.9958111
		 -0.085857131 0.39176112 -0.91575402 -0.085707299 0.71245569 -0.69607121 0.085707307
		 0.71245569 -0.69607121 0.085848674 0.39176387 -0.91575372 -0.085707299 0.71245569
		 -0.69607121 -0.085857764 0.92462069 -0.37034982 0.085857652 0.92462075 -0.37034985
		 0.085707307 0.71245569 -0.69607121 -0.085857764 0.92462069 -0.37034982 -0.088142216
		 0.99582171 0.0049072122 0.085755251 0.99603027 0.0048587355 0.085857652 0.92462075
		 -0.37034985 -0.088142194 -0.99566638 -0.018256808 -0.085857615 -0.91575634 -0.39175615
		 0.085857749 -0.91575629 -0.39175615 0.085755259 -0.99587387 -0.018310122 -0.085857615
		 -0.91575634 -0.39175615 -0.08570727 -0.6960724 -0.7124545 0.08570727 -0.6960724 -0.7124545
		 0.085857749 -0.91575629 -0.39175615 -0.08570727 -0.6960724 -0.7124545 -0.085856169
		 -0.37035275 -0.92461962 0.085856132 -0.37035266 -0.92461956 0.08570727 -0.6960724
		 -0.7124545;
	setAttr ".n[332:497]" -type "float3"  -0.085856169 -0.37035275 -0.92461962
		 -0.086942881 0.007573158 -0.99591041 0.086960226 0.0075733424 -0.99590898 0.085856132
		 -0.37035266 -0.92461956 0.088142425 0.99582165 0.0049072048 0.085857794 0.92462045
		 -0.37035 -0.085857838 0.92462045 -0.37035 -0.085755266 0.99603027 0.0048587327 0.085857794
		 0.92462045 -0.37035 0.085707456 0.71245557 -0.69607133 -0.085707314 0.71245581 -0.69607103
		 -0.085857838 0.92462045 -0.37035 0.085707456 0.71245557 -0.69607133 0.085856251 0.39175913
		 -0.91575509 -0.085856259 0.39175898 -0.91575515 -0.085707314 0.71245581 -0.69607103
		 0.085856251 0.39175913 -0.91575509 0.086942978 0.015593644 -0.99581707 -0.086960375
		 0.015593417 -0.99581558 -0.085856259 0.39175898 -0.91575515 0.086943023 0.0075732525
		 -0.99591041 0.08585725 -0.37035483 -0.9246186 -0.085848793 -0.37035754 -0.92461842
		 -0.087011933 0.0075744563 -0.99590433 0.08585725 -0.37035483 -0.9246186 0.085707381
		 -0.69607222 -0.71245462 -0.085707374 -0.69607258 -0.71245426 -0.085848793 -0.37035754
		 -0.92461842 0.085707381 -0.69607222 -0.71245462 0.085857891 -0.91575617 -0.39175639
		 -0.085857749 -0.91575617 -0.39175642 -0.085707374 -0.69607258 -0.71245426 0.085857891
		 -0.91575617 -0.39175639 0.088142477 -0.99566633 -0.018256815 -0.085755311 -0.99587393
		 -0.01831013 -0.085857749 -0.91575617 -0.39175642 0.99972695 -2.2651411e-08 -2.6347016e-10
		 0.99870938 0.00069710042 -0.045088723 0.98309106 0.071118951 -0.16711697 0.99972695
		 -2.2651411e-08 -2.6347016e-10 0.98309106 0.071118951 -0.16711697 0.97501057 0.15802498
		 -0.15439041 0.99972695 -2.2651411e-08 -2.6347016e-10 0.97501057 0.15802498 -0.15439041
		 0.9834494 0.16691816 -0.066480488 0.99972695 -2.2651411e-08 -2.6347016e-10 0.9834494
		 0.16691816 -0.066480488 0.99870634 0.045162205 0.00023190308 -0.99969721 0.0071568051
		 -0.0028504191 -0.99972695 0 0 -0.99968112 0.0095720934 5.1344847e-05 0.99972695 2.8278276e-08
		 3.2891911e-10 0.99870634 -0.045155361 -0.00081862672 0.9834494 -0.16532661 -0.070344843
		 0.99972695 2.8278276e-08 3.2891911e-10 0.9834494 -0.16532661 -0.070344843 0.97501057
		 -0.15439101 -0.15802419 0.99972695 2.8278276e-08 3.2891911e-10 0.97501057 -0.15439101
		 -0.15802419 0.98310292 -0.067177221 -0.1686707 0.99972695 2.8278276e-08 3.2891911e-10
		 0.98310292 -0.067177221 -0.1686707 0.9987067 0.00035299757 -0.045153618 -0.99972695
		 -5.4759912e-09 -6.3694064e-11 -0.99870634 0.045162305 0.00023190133 -0.98344934 0.16691834
		 -0.066480517 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.98344934 0.16691834 -0.066480517
		 -0.97501057 0.15802446 -0.1543908 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.97501057
		 0.15802446 -0.1543908 -0.98310268 0.071082883 -0.16706324 -0.99972695 -5.4759912e-09
		 -6.3694064e-11 -0.98310268 0.071082883 -0.16706324 -0.99870664 0.00069736992 -0.045149732
		 0.99969733 0.0071564629 -0.0028504434 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99969572
		 0.0056558605 -0.0055255215 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99870944 0.00035184895
		 -0.045092866 -0.98309106 -0.067212798 -0.16872638 -0.99972695 2.2440248e-07 2.6101403e-09
		 -0.98309106 -0.067212798 -0.16872638 -0.97501069 -0.15439014 -0.15802479 -0.99972695
		 2.2440248e-07 2.6101403e-09 -0.97501069 -0.15439014 -0.15802479 -0.98344922 -0.16532782
		 -0.070345186 -0.99972695 2.2440248e-07 2.6101403e-09 -0.98344922 -0.16532782 -0.070345186
		 -0.99870634 -0.045154974 -0.00081862515 0.99969733 -0.0070885187 -0.0030161249 0.99969566
		 -0.0055261827 -0.0056555765 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99972689 -1.1770301e-10
		 -1.3690642e-12 0.99969566 -0.0055261827 -0.0056555765 0.99968606 -0.0033467452 -0.0083996961
		 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99968606 -0.0033467452 -0.0083996961 0.99934143
		 0.00021694523 -0.027759138 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99934143 0.00021694523
		 -0.027759138 0.99934143 0.00042878656 -0.027756676 0.99972689 -1.1770301e-10 -1.3690642e-12
		 0.99934143 0.00042878656 -0.027756676 0.99968606 0.0035411692 -0.0083195791 0.99972689
		 -1.1770301e-10 -1.3690642e-12 0.99968606 0.0035411692 -0.0083195791 0.99969572 0.0056558605
		 -0.0055255215 0.99968112 0.0095720161 5.1343399e-05 0.99972689 -1.1770301e-10 -1.3690642e-12
		 0.99969733 0.0071564629 -0.0028504434 0.9989925 0.0047137877 0.038022619 0.99972689
		 -1.1770301e-10 -1.3690642e-12 0.99968112 0.0095720161 5.1343399e-05 0.9989925 -0.0055969129
		 0.037902687 0.99972689 -1.1770301e-10 -1.3690642e-12 0.9989925 0.0047137877 0.038022619
		 0.99968112 -0.009570621 -0.00017131443 0.99972689 -1.1770301e-10 -1.3690642e-12 0.9989925
		 -0.0055969129 0.037902687 0.99969733 -0.0070885187 -0.0030161249 0.99972689 -1.1770301e-10
		 -1.3690642e-12 0.99968112 -0.009570621 -0.00017131443 -0.99968606 -0.0033453656 -0.0083996449
		 -0.99969566 -0.0055255466 -0.0056555751 -0.99972695 0 0 -0.99972695 0 0 -0.99969566
		 -0.0055255466 -0.0056555751 -0.99969733 -0.0070885937 -0.0030161308 -0.99972695 0
		 0 -0.99969733 -0.0070885937 -0.0030161308 -0.99968112 -0.0095706983 -0.00017131478
		 -0.99972695 0 0 -0.99968112 -0.0095706983 -0.00017131478 -0.9989925 -0.0055969507
		 0.037903011 -0.99972695 0 0 -0.9989925 -0.0055969507 0.037903011 -0.99899244 0.0047138166
		 0.038022935 -0.99972695 0 0 -0.99899244 0.0047138166 0.038022935 -0.99968112 0.0095720934
		 5.1344847e-05 -0.99969566 0.0056555751 -0.005525507 -0.99972695 0 0 -0.99969721 0.0071568051
		 -0.0028504191 -0.99968606 0.003539837 -0.0083195632 -0.99972695 0 0 -0.99969566 0.0056555751
		 -0.005525507 -0.99934143 0.00042878321 -0.027756592 -0.99972695 0 0 -0.99968606 0.003539837
		 -0.0083195632 -0.99934143 0.00021694772 -0.027759055 -0.99972695 0 0 -0.99934143
		 0.00042878321 -0.027756592 -0.99968606 -0.0033453656 -0.0083996449 -0.99972695 0
		 0 -0.99934143 0.00021694772 -0.027759055 0.9989925 -0.0055969129 0.037902687 0.92344767
		 -0.38295594 0.0065678991 0.9237116 -0.38231391 -0.0068432223 0.99968112 -0.009570621
		 -0.00017131443 0.38227564 -0.92373174 -0.006244984 0.14832745 -0.98861408 -0.0097530792
		 0.088142477 -0.99566633 -0.018256815 0.3827858 -0.9233889 -0.016788017 0.14832743
		 0.98857343 0.013244566 0.38227558 0.92362708 0.015242501;
	setAttr ".n[498:663]" -type "float3"  0.38278577 0.92352957 0.0046944339 0.088142425
		 0.99582165 0.0049072048 0.92344767 0.38269961 0.015473634 0.9989925 0.0047137877
		 0.038022619 0.99968112 0.0095720161 5.1343399e-05 0.9237116 0.38236964 0.0020512037
		 0.088142425 0.99582165 0.0049072048 0.38278577 0.92352957 0.0046944339 0.3889665
		 0.85504496 -0.34213594 0.085857794 0.92462045 -0.37035 0.9237116 0.38236964 0.0020512037
		 0.99968112 0.0095720161 5.1343399e-05 0.99969733 0.0071564629 -0.0028504434 0.92620701
		 0.34958392 -0.13923192 -0.1483269 -0.98861414 -0.0097530419 -0.38227391 -0.92373246
		 -0.0062449072 -0.38278395 -0.92338967 -0.016788006 -0.088142194 -0.99566638 -0.018256808
		 -0.9234466 -0.3829585 0.0065679653 -0.9989925 -0.0055969507 0.037903011 -0.99968112
		 -0.0095706983 -0.00017131478 -0.92371041 -0.38231677 -0.0068432325 -0.088142194 -0.99566638
		 -0.018256808 -0.38278395 -0.92338967 -0.016788006 -0.38896573 -0.84685564 -0.36193249
		 -0.085857615 -0.91575634 -0.39175615 -0.92371041 -0.38231677 -0.0068432325 -0.99968112
		 -0.0095706983 -0.00017131478 -0.99969733 -0.0070885937 -0.0030161308 -0.92620796
		 -0.34624851 -0.14732529 -0.99899244 0.0047138166 0.038022935 -0.9234466 0.38270214
		 0.015473756 -0.92371041 0.3823725 0.0020512596 -0.99968112 0.0095720934 5.1344847e-05
		 -0.38227397 0.92362779 0.015242686 -0.14832692 0.98857349 0.01324464 -0.088142216
		 0.99582171 0.0049072122 -0.38278401 0.92353034 0.0046944702 0.30888507 -0.012663046
		 0.95072794 0.28485149 -0.39680633 0.87227196 0.54190344 -0.39528492 0.74131262 0.58762342
		 -0.011011317 0.80872214 0.11696181 -0.92940801 0.34924883 0.024888437 -0.99730003
		 0.065018013 0.046351198 -0.99728656 0.052201662 0.22251031 -0.92878252 0.29547635
		 0.024888437 -0.99730003 0.065018013 0.11696181 -0.92940801 0.34924883 4.4102542e-08
		 -0.92962277 0.36777094 8.4928145e-09 -0.9972809 0.069891803 0.28485149 -0.39680633
		 0.87227196 0.30888507 -0.012663046 0.95072794 1.0773699e-09 -0.013231969 0.99963939
		 2.5792522e-07 -0.39732343 0.91738099 -5.2554624e-11 -0.010023101 0.9996767 -1.7585844e-08
		 0.37587816 0.92637444 -0.28485063 0.37640756 0.88126695 -0.30888528 -0.0094542 0.95076525
		 3.3925054e-09 0.9208169 0.38929436 0 0.99538529 0.093069471 -0.024888506 0.99551791
		 0.088196531 -0.11696196 0.92103469 0.3707681 0 0.99538529 0.093069471 3.3925054e-09
		 0.9208169 0.38929436 0.11696181 0.92103297 0.37077224 0.024888419 0.99551785 0.08819744
		 -1.7585844e-08 0.37587816 0.92637444 -5.2554624e-11 -0.010023101 0.9996767 0.30888507
		 -0.0094541963 0.95076525 0.28485176 0.37641034 0.88126534 0.58762342 -0.011011317
		 0.80872214 0.54190344 -0.39528492 0.74131262 0.74586219 -0.39291227 0.53736711 0.80879432
		 -0.0084389485 0.58756667 0.22251031 -0.92878252 0.29547635 0.046351198 -0.99728656
		 0.052201662 0.063780248 -0.99708509 0.034744468 0.3062548 -0.92781067 0.2117292 0.024888419
		 0.99551785 0.08819744 0.11696181 0.92103297 0.37077224 0.22251067 0.92165822 0.31699997
		 0.046351302 0.99580258 0.075384393 0.28485176 0.37641034 0.88126534 0.30888507 -0.0094541963
		 0.95076525 0.58762342 -0.0078024422 0.80875945 0.54190326 0.37793517 0.75030649 0.80879432
		 -0.0084389485 0.58756667 0.74586219 -0.39291227 0.53736711 0.87684649 -0.38992256
		 0.280276 0.95079589 -0.0051987153 0.30889168 0.3062548 -0.92781067 0.2117292 0.063780248
		 -0.99708509 0.034744468 0.079420015 -0.99646658 0.0141702 0.36008307 -0.92658186
		 0.10601955 0.046351302 0.99580258 0.075384393 0.22251067 0.92165822 0.31699997 0.30625504
		 0.92263466 0.23325303 0.06378036 0.99600726 0.057927266 0.54190326 0.37793517 0.75030649
		 0.58762342 -0.0078024422 0.80875945 0.80879432 -0.0052300664 0.58760399 0.74586236
		 0.38030693 0.54636067 0.14832745 -0.98861408 -0.0097530792 0.38227564 -0.92373174
		 -0.006244984 0.36008307 -0.92658186 0.10601955 0.079420015 -0.99646658 0.0141702
		 0.92344767 -0.38295594 0.0065678991 0.9989925 -0.0055969129 0.037902687 0.95079589
		 -0.0051987153 0.30889168 0.87684649 -0.38992256 0.280276 0.06378036 0.99600726 0.057927266
		 0.30625504 0.92263466 0.23325303 0.3600831 0.92386526 0.12754244 0.079420008 0.99586737
		 0.037343919 0.74586236 0.38030693 0.54636067 0.80879432 -0.0052300664 0.58760399
		 0.95079589 -0.0019874745 0.30892906 0.87684643 0.38329786 0.28926975 -0.95079565
		 -0.0051987143 0.30889225 -0.87684751 -0.38992122 0.2802746 -0.74586338 -0.39291307
		 0.53736484 -0.80879432 -0.0084389476 0.58756667 -0.36008248 -0.92658204 0.10601982
		 -0.079419978 -0.99646652 0.014170629 -0.063780308 -0.99708515 0.034744687 -0.30625418
		 -0.92781097 0.21172889 -0.14832692 0.98857349 0.01324464 -0.38227397 0.92362779 0.015242686
		 -0.36008248 0.92386538 0.12754332 -0.079419985 0.99586737 0.037344486 -0.9234466
		 0.38270214 0.015473756 -0.99899244 0.0047138166 0.038022935 -0.95079565 -0.0019874903
		 0.30892965 -0.87684685 0.38329625 0.28927037 -0.80879432 -0.0084389476 0.58756667
		 -0.74586338 -0.39291307 0.53736484 -0.54190129 -0.39528307 0.74131519 -0.58762354
		 -0.011011312 0.80872208 -0.30625418 -0.92781097 0.21172889 -0.063780308 -0.99708515
		 0.034744687 -0.046351321 -0.99728662 0.052200787 -0.22251076 -0.92878377 0.29547188
		 -0.079419985 0.99586737 0.037344486 -0.36008248 0.92386538 0.12754332 -0.30625418
		 0.92263514 0.23325236 -0.063780315 0.99600726 0.05792737 -0.87684685 0.38329625 0.28927037
		 -0.95079565 -0.0019874903 0.30892965 -0.80879432 -0.005230064 0.58760399 -0.74586314
		 0.3803077 0.54635894 -0.58762354 -0.011011312 0.80872208 -0.54190129 -0.39528307
		 0.74131519 -0.28485066 -0.3968038 0.87227339 -0.30888528 -0.012663039 0.95072794
		 -0.22251076 -0.92878377 0.29547188 -0.046351321 -0.99728662 0.052200787 -0.024888502
		 -0.99729997 0.065017037 -0.11696196 -0.9294095 0.34924462 -0.063780315 0.99600726
		 0.05792737 -0.30625418 0.92263514 0.23325236 -0.22251076 0.92165983 0.31699535 -0.046351325
		 0.99580252 0.075383432 -0.74586314 0.3803077 0.54635894 -0.80879432 -0.005230064
		 0.58760399 -0.58762354 -0.0078024417 0.80875939 -0.54190242 0.37793392 0.75030768;
	setAttr ".n[664:829]" -type "float3"  8.4928145e-09 -0.9972809 0.069891803
		 4.4102542e-08 -0.92962277 0.36777094 -0.11696196 -0.9294095 0.34924462 -0.024888502
		 -0.99729997 0.065017037 2.5792522e-07 -0.39732343 0.91738099 1.0773699e-09 -0.013231969
		 0.99963939 -0.30888528 -0.012663039 0.95072794 -0.28485066 -0.3968038 0.87227339
		 -0.046351325 0.99580252 0.075383432 -0.22251076 0.92165983 0.31699535 -0.11696196
		 0.92103469 0.3707681 -0.024888506 0.99551791 0.088196531 -0.54190242 0.37793392 0.75030768
		 -0.58762354 -0.0078024417 0.80875939 -0.30888528 -0.0094542 0.95076525 -0.28485063
		 0.37640756 0.88126695 0.032757793 -0.99783546 -0.052012742 0.23825736 -0.92189956
		 -0.3046121 0.12875399 -0.92140079 -0.36591932 0.017565772 -0.99776632 -0.060065463
		 0.58069026 -0.37851754 -0.72040075 0.62835687 -0.058311552 -0.7753846 0.34008509
		 -0.056683384 -0.93839395 0.31420559 -0.3772921 -0.87084991 0.017565772 -0.99776632
		 -0.060065463 0.12875399 -0.92140079 -0.36591932 1.9176056e-08 -0.92123204 -0.38831103
		 3.7607926e-09 -0.99772602 -0.063218534 0.31420559 -0.3772921 -0.87084991 0.34008509
		 -0.056683384 -0.93839395 -3.67541e-09 -0.056100048 -0.99815166 -2.2933056e-08 -0.37687662
		 -0.92596871 0.62835687 -0.058311552 -0.7753846 0.58069026 -0.37851754 -0.72040075
		 0.772807 -0.38046089 -0.50741786 0.8360371 -0.060710113 -0.5448029 0.23825736 -0.92189956
		 -0.3046121 0.032757793 -0.99783546 -0.052012742 0.045908619 -0.99780983 -0.041495141
		 0.31749782 -0.92269528 -0.21744543 0.8360371 -0.060710113 -0.5448029 0.772807 -0.38046089
		 -0.50741786 0.88544881 -0.38294163 -0.26227871 0.95775223 -0.063554704 -0.27950937
		 0.31749782 -0.92269528 -0.21744543 0.045908619 -0.99780983 -0.041495141 0.060380585
		 -0.99747419 -0.029211221 0.3640494 -0.92371672 -0.11691625 0.95775223 -0.063554704
		 -0.27950937 0.88544881 -0.38294163 -0.26227871 0.92349005 -0.38265595 -0.013949576
		 0.99764979 -0.063507438 -0.010759151 0.3640494 -0.92371672 -0.11691625 0.060380585
		 -0.99747419 -0.029211221 0.060125936 -0.99784225 -0.012232696 0.38233694 -0.92361003
		 -0.014725656 -0.060125932 -0.99784225 -0.012232665 -0.38233778 -0.92360979 -0.014725462
		 -0.38279185 -0.92338258 -0.017003786 -0.085755311 -0.99587393 -0.01831013 -0.92348975
		 -0.38265666 -0.013949674 -0.99764979 -0.063507169 -0.010759164 -0.99870634 -0.045154974
		 -0.00081862515 -0.92371321 -0.38230863 -0.0069307191 -0.085755311 -0.99587393 -0.01831013
		 -0.38279185 -0.92338258 -0.017003786 -0.38896656 -0.84685576 -0.36193162 -0.085857749
		 -0.91575617 -0.39175642 -0.92371321 -0.38230863 -0.0069307191 -0.99870634 -0.045154974
		 -0.00081862515 -0.98344922 -0.16532782 -0.070345186 -0.92620724 -0.34625036 -0.14732532
		 -0.99764979 -0.063507169 -0.010759164 -0.92348975 -0.38265666 -0.013949674 -0.88544756
		 -0.38294411 -0.26227906 -0.95775211 -0.063555211 -0.27950948 -0.38233778 -0.92360979
		 -0.014725462 -0.060125932 -0.99784225 -0.012232665 -0.060380563 -0.99747419 -0.029211169
		 -0.36404964 -0.92371672 -0.11691508 -0.95775211 -0.063555211 -0.27950948 -0.88544756
		 -0.38294411 -0.26227906 -0.77280724 -0.38045999 -0.50741798 -0.83603692 -0.060709901
		 -0.5448032 -0.36404964 -0.92371672 -0.11691508 -0.060380563 -0.99747419 -0.029211169
		 -0.04590854 -0.99780983 -0.041495372 -0.31749758 -0.92269534 -0.21744533 -0.83603692
		 -0.060709901 -0.5448032 -0.77280724 -0.38045999 -0.50741798 -0.58068782 -0.37851596
		 -0.72040343 -0.62835652 -0.058311455 -0.77538502 -0.31749758 -0.92269534 -0.21744533
		 -0.04590854 -0.99780983 -0.041495372 -0.032757763 -0.99783546 -0.052012693 -0.23825727
		 -0.92189962 -0.30461216 -0.62835652 -0.058311455 -0.77538502 -0.58068782 -0.37851596
		 -0.72040343 -0.31420374 -0.37729022 -0.87085134 -0.34008497 -0.056683369 -0.93839395
		 -0.23825727 -0.92189962 -0.30461216 -0.032757763 -0.99783546 -0.052012693 -0.01756577
		 -0.99776632 -0.060065433 -0.12875411 -0.92140067 -0.36591953 -0.34008497 -0.056683369
		 -0.93839395 -0.31420374 -0.37729022 -0.87085134 -2.2933056e-08 -0.37687662 -0.92596871
		 -3.67541e-09 -0.056100048 -0.99815166 -0.12875411 -0.92140067 -0.36591953 -0.01756577
		 -0.99776632 -0.060065433 3.7607926e-09 -0.99772602 -0.063218534 1.9176056e-08 -0.92123204
		 -0.38831103 0.045908637 0.99850506 -0.018274993 0.31749779 0.92750335 -0.19592483
		 0.36404946 0.92618626 -0.095399082 0.060380593 0.9978838 -0.0060021896 0.77280611
		 0.39215988 -0.49843282 0.83603692 0.073365644 -0.54324371 0.95775229 0.0700389 -0.2779555
		 0.88544875 0.38893855 -0.25330064 0.060380593 0.9978838 -0.0060021896 0.36404946
		 0.92618626 -0.095399082 0.38233697 0.92370266 0.0067613819 0.060125936 0.99785674
		 0.010980302 0.88544875 0.38893855 -0.25330064 0.95775229 0.0700389 -0.2779555 0.99764973
		 0.063740529 -0.0092790648 0.92349005 0.3828769 -0.0050452715 0.83603692 0.073365644
		 -0.54324371 0.77280611 0.39215988 -0.49843282 0.58068889 0.39517078 -0.71140319 0.62835664
		 0.07633099 -0.77381885 0.31749779 0.92750335 -0.19592483 0.045908637 0.99850506 -0.018274993
		 0.032757811 0.9987753 -0.028789163 0.23825738 0.92873544 -0.28308642 0.62835664 0.07633099
		 -0.77381885 0.58068889 0.39517078 -0.71140319 0.31420559 0.39744565 -0.86183852 0.34008509
		 0.078494951 -0.93682158 0.23825738 0.92873544 -0.28308642 0.032757811 0.9987753 -0.028789163
		 0.017565774 0.99889338 -0.036841299 0.12875398 0.9296627 -0.34438863 0.34008509 0.078494951
		 -0.93682158 0.31420559 0.39744565 -0.86183852 -1.7581988e-07 0.39831245 -0.91695201
		 -3.3078678e-08 0.079301789 -0.99657667 0.12875398 0.9296627 -0.34438863 0.017565774
		 0.99889338 -0.036841299 -7.5215851e-09 0.99892658 -0.039994501 -6.3920147e-08 0.93001485
		 -0.36677843 -3.3078678e-08 0.079301789 -0.99657667 -1.7581988e-07 0.39831245 -0.91695201
		 -0.3142041 0.39744341 -0.86184007 -0.34008503 0.07849507 -0.93682164 -6.3920147e-08
		 0.93001485 -0.36677843 -7.5215851e-09 0.99892658 -0.039994501 -0.017565794 0.99889338
		 -0.03684134 -0.12875405 0.92966259 -0.34438872 -0.34008503 0.07849507 -0.93682164
		 -0.3142041 0.39744341 -0.86184007 -0.58068758 0.39516944 -0.71140486 -0.6283564 0.076331094
		 -0.77381903 -0.12875405 0.92966259 -0.34438872 -0.017565794 0.99889338 -0.03684134;
	setAttr ".n[830:995]" -type "float3"  -0.032757793 0.9987753 -0.028789137 -0.23825708
		 0.92873544 -0.28308633 -0.6283564 0.076331094 -0.77381903 -0.58068758 0.39516944
		 -0.71140486 -0.77280736 0.39215961 -0.49843127 -0.83603692 0.073365569 -0.54324365
		 -0.23825708 0.92873544 -0.28308633 -0.032757793 0.9987753 -0.028789137 -0.045908596
		 0.99850506 -0.018275242 -0.31749758 0.92750341 -0.19592467 -0.83603692 0.073365569
		 -0.54324365 -0.77280736 0.39215961 -0.49843127 -0.88544768 0.38894111 -0.25330088
		 -0.95775217 0.070039429 -0.27795559 -0.31749758 0.92750341 -0.19592467 -0.045908596
		 0.99850506 -0.018275242 -0.060380679 0.9978838 -0.0060022734 -0.36404967 0.9261862
		 -0.095398553 -0.95775217 0.070039429 -0.27795559 -0.88544768 0.38894111 -0.25330088
		 -0.92348975 0.38287765 -0.0050453595 -0.99764973 0.063740693 -0.0092790797 -0.36404967
		 0.9261862 -0.095398553 -0.060380679 0.9978838 -0.0060022734 -0.060125917 0.99785674
		 0.010980316 -0.38233775 0.92370236 0.0067614657 0.060125936 0.99785674 0.010980302
		 0.38233697 0.92370266 0.0067613819 0.38279089 0.92352861 0.0044786059 0.085755251
		 0.99603027 0.0048587355 0.92349005 0.3828769 -0.0050452715 0.99764973 0.063740529
		 -0.0092790648 0.99870634 0.045162205 0.00023190308 0.92371339 0.38236591 0.0019636273
		 0.085755251 0.99603027 0.0048587355 0.38279089 0.92352861 0.0044786059 0.38896579
		 0.85504502 -0.34213689 0.085857652 0.92462075 -0.37034985 0.92371339 0.38236591 0.0019636273
		 0.99870634 0.045162205 0.00023190308 0.9834494 0.16691816 -0.066480488 0.92620832
		 0.349581 -0.13923152 -0.086942926 0.015593557 -0.99581712 -0.38270637 0.014424055
		 -0.92346168 -0.38896132 0.36193475 -0.84685665 -0.085857131 0.39176112 -0.91575402
		 -0.92368066 0.0059074424 -0.38240409 -0.99934143 0.00042878321 -0.027756592 -0.99968606
		 0.003539837 -0.0083195632 -0.926211 0.14732485 -0.34624076 -0.99934143 0.00042878321
		 -0.027756592 -0.92368066 0.0059074424 -0.38240409 -0.92368066 0.0029888283 -0.38243806
		 -0.99934143 0.00021694772 -0.027759055 -0.38270637 0.014424055 -0.92346168 -0.086942926
		 0.015593557 -0.99581712 -0.086942881 0.007573158 -0.99591041 -0.38270637 0.0070594531
		 -0.92354739 0.086960226 0.0075733424 -0.99590898 0.38275215 0.0070601739 -0.92352855
		 0.38896108 -0.34213892 -0.85504633 0.085856132 -0.37035266 -0.92461956 0.92369783
		 0.0029894011 -0.38239685 0.9987067 0.00035299757 -0.045153618 0.98310292 -0.067177221
		 -0.1686707 0.92621094 -0.13923131 -0.34957382 0.086942978 0.015593644 -0.99581707
		 0.38270745 0.014424044 -0.92346126 0.38270745 0.0070594558 -0.92354697 0.086943023
		 0.0075732525 -0.99591041 0.92368031 0.0059074876 -0.38240516 0.99934143 0.00042878656
		 -0.027756676 0.99934143 0.00021694523 -0.027759138 0.92368031 0.0029887937 -0.38243914
		 0.086943023 0.0075732525 -0.99591041 0.38270745 0.0070594558 -0.92354697 0.38896218
		 -0.3421391 -0.85504568 0.08585725 -0.37035483 -0.9246186 0.92368031 0.0029887937
		 -0.38243914 0.99934143 0.00021694523 -0.027759138 0.99968606 -0.0033467452 -0.0083996961
		 0.92621028 -0.13923319 -0.34957507 -0.086960375 0.015593417 -0.99581558 -0.3827531
		 0.014422853 -0.92344242 -0.38896227 0.36193413 -0.84685647 -0.085856259 0.39175898
		 -0.91575515 -0.92369777 0.0059059463 -0.38236308 -0.99870664 0.00069736992 -0.045149732
		 -0.98310268 0.071082883 -0.16706324 -0.92621034 0.14732587 -0.34624201 -0.085857131
		 0.39176112 -0.91575402 -0.38896132 0.36193475 -0.84685665 -0.38896236 0.65874195
		 -0.64360029 -0.085707299 0.71245569 -0.69607121 -0.926211 0.14732485 -0.34624076
		 -0.99968606 0.003539837 -0.0083195632 -0.99969566 0.0056555751 -0.005525507 -0.92620981
		 0.26914713 -0.26296231 0.99870938 0.00069710042 -0.045088723 0.92369717 0.0059014428
		 -0.38236436 0.92620063 0.14735679 -0.34625486 0.98309106 0.071118951 -0.16711697
		 0.38275108 0.01442931 -0.92344326 0.087011784 0.015592212 -0.9958111 0.085848674
		 0.39176387 -0.91575372 0.38892981 0.36194485 -0.84686679 -0.085707299 0.71245569
		 -0.69607121 -0.38896236 0.65874195 -0.64360029 -0.38896638 0.85504478 -0.34213683
		 -0.085857764 0.92462069 -0.37034982 -0.92620981 0.26914713 -0.26296231 -0.99969566
		 0.0056555751 -0.005525507 -0.99969721 0.0071568051 -0.0028504191 -0.92620838 0.34958073
		 -0.1392311 0.98309106 0.071118951 -0.16711697 0.92620063 0.14735679 -0.34625486 0.92620975
		 0.26914749 -0.26296222 0.97501057 0.15802498 -0.15439041 0.38892981 0.36194485 -0.84686679
		 0.085848674 0.39176387 -0.91575372 0.085707307 0.71245569 -0.69607121 0.38896236
		 0.65874195 -0.64360023 -0.99968112 0.0095720934 5.1344847e-05 -0.92371041 0.3823725
		 0.0020512596 -0.92620838 0.34958073 -0.1392311 -0.99969721 0.0071568051 -0.0028504191
		 -0.38278401 0.92353034 0.0046944702 -0.088142216 0.99582171 0.0049072122 -0.085857764
		 0.92462069 -0.37034982 -0.38896638 0.85504478 -0.34213683 0.97501057 0.15802498 -0.15439041
		 0.92620975 0.26914749 -0.26296222 0.92620832 0.349581 -0.13923152 0.9834494 0.16691816
		 -0.066480488 0.38896236 0.65874195 -0.64360023 0.085707307 0.71245569 -0.69607121
		 0.085857652 0.92462075 -0.37034985 0.38896579 0.85504502 -0.34213689 -0.085857615
		 -0.91575634 -0.39175615 -0.38896573 -0.84685564 -0.36193249 -0.38896239 -0.64359373
		 -0.65874839 -0.08570727 -0.6960724 -0.7124545 -0.92620796 -0.34624851 -0.14732529
		 -0.99969733 -0.0070885937 -0.0030161308 -0.99969566 -0.0055255466 -0.0056555751 -0.92620939
		 -0.26295882 -0.26915208 0.99870634 -0.045155361 -0.00081862672 0.92371339 -0.38230816
		 -0.0069306884 0.9262082 -0.34624812 -0.14732489 0.9834494 -0.16532661 -0.070344843
		 0.38279095 -0.92338294 -0.017003763 0.085755259 -0.99587387 -0.018310122 0.085857749
		 -0.91575629 -0.39175615 0.38896635 -0.84685534 -0.36193246 -0.08570727 -0.6960724
		 -0.7124545 -0.38896239 -0.64359373 -0.65874839 -0.38896132 -0.34213904 -0.85504603
		 -0.085856169 -0.37035275 -0.92461962 -0.92620939 -0.26295882 -0.26915208 -0.99969566
		 -0.0055255466 -0.0056555751 -0.99968606 -0.0033453656 -0.0083996449 -0.92621094 -0.13923141
		 -0.34957382 0.9834494 -0.16532661 -0.070344843 0.9262082 -0.34624812 -0.14732489
		 0.92620969 -0.26295817 -0.26915145 0.97501057 -0.15439101 -0.15802419;
	setAttr ".n[996:1111]" -type "float3"  0.38896635 -0.84685534 -0.36193246 0.085857749
		 -0.91575629 -0.39175615 0.08570727 -0.6960724 -0.7124545 0.38896233 -0.64359373 -0.65874839
		 -0.99934143 0.00021694772 -0.027759055 -0.92368066 0.0029888283 -0.38243806 -0.92621094
		 -0.13923141 -0.34957382 -0.99968606 -0.0033453656 -0.0083996449 -0.38270637 0.0070594531
		 -0.92354739 -0.086942881 0.007573158 -0.99591041 -0.085856169 -0.37035275 -0.92461962
		 -0.38896132 -0.34213904 -0.85504603 0.97501057 -0.15439101 -0.15802419 0.92620969
		 -0.26295817 -0.26915145 0.92621094 -0.13923131 -0.34957382 0.98310292 -0.067177221
		 -0.1686707 0.38896233 -0.64359373 -0.65874839 0.08570727 -0.6960724 -0.7124545 0.085856132
		 -0.37035266 -0.92461956 0.38896108 -0.34213892 -0.85504633 0.085857794 0.92462045
		 -0.37035 0.3889665 0.85504496 -0.34213594 0.38896316 0.65874225 -0.64359939 0.085707456
		 0.71245557 -0.69607133 0.92620701 0.34958392 -0.13923192 0.99969733 0.0071564629
		 -0.0028504434 0.99969572 0.0056558605 -0.0055255215 0.92620903 0.26914933 -0.26296312
		 -0.99870634 0.045162305 0.00023190133 -0.92371321 0.38236639 0.0019636068 -0.92620736
		 0.34958354 -0.13923159 -0.98344934 0.16691834 -0.066480517 -0.38279191 0.92352825
		 0.004478584 -0.085755266 0.99603027 0.0048587327 -0.085857838 0.92462045 -0.37035
		 -0.38896716 0.85504478 -0.34213582 0.085707456 0.71245557 -0.69607133 0.38896316
		 0.65874225 -0.64359939 0.38896218 0.36193484 -0.8468563 0.085856251 0.39175913 -0.91575509
		 0.92620903 0.26914933 -0.26296312 0.99969572 0.0056558605 -0.0055255215 0.99968606
		 0.0035411692 -0.0083195791 0.92621052 0.14732473 -0.34624201 -0.98344934 0.16691834
		 -0.066480517 -0.92620736 0.34958354 -0.13923159 -0.92620957 0.2691474 -0.26296297
		 -0.97501057 0.15802446 -0.1543908 -0.38896716 0.85504478 -0.34213582 -0.085857838
		 0.92462045 -0.37035 -0.085707314 0.71245581 -0.69607103 -0.38896245 0.65874392 -0.64359826
		 0.99934143 0.00042878656 -0.027756676 0.92368031 0.0059074876 -0.38240516 0.92621052
		 0.14732473 -0.34624201 0.99968606 0.0035411692 -0.0083195791 0.38270745 0.014424044
		 -0.92346126 0.086942978 0.015593644 -0.99581707 0.085856251 0.39175913 -0.91575509
		 0.38896218 0.36193484 -0.8468563 -0.97501057 0.15802446 -0.1543908 -0.92620957 0.2691474
		 -0.26296297 -0.92621034 0.14732587 -0.34624201 -0.98310268 0.071082883 -0.16706324
		 -0.38896245 0.65874392 -0.64359826 -0.085707314 0.71245581 -0.69607103 -0.085856259
		 0.39175898 -0.91575515 -0.38896227 0.36193413 -0.84685647 0.08585725 -0.37035483
		 -0.9246186 0.38896218 -0.3421391 -0.85504568 0.38896313 -0.64359391 -0.65874761 0.085707381
		 -0.69607222 -0.71245462 0.92621028 -0.13923319 -0.34957507 0.99968606 -0.0033467452
		 -0.0083996961 0.99969566 -0.0055261827 -0.0056555765 0.92620969 -0.26295772 -0.26915178
		 -0.99870944 0.00035184895 -0.045092866 -0.92369717 0.0029939287 -0.3823984 -0.92620033
		 -0.13926366 -0.34958926 -0.98309106 -0.067212798 -0.16872638 -0.38275203 0.0070537673
		 -0.92352855 -0.087011933 0.0075744563 -0.99590433 -0.085848793 -0.37035754 -0.92461842
		 -0.38893071 -0.34214917 -0.85505605 0.085707381 -0.69607222 -0.71245462 0.38896313
		 -0.64359391 -0.65874761 0.38896716 -0.84685552 -0.36193144 0.085857891 -0.91575617
		 -0.39175639 0.92620969 -0.26295772 -0.26915178 0.99969566 -0.0055261827 -0.0056555765
		 0.99969733 -0.0070885187 -0.0030161249 0.9262085 -0.34624723 -0.1473251 -0.98309106
		 -0.067212798 -0.16872638 -0.92620033 -0.13926366 -0.34958926 -0.92620945 -0.2629582
		 -0.26915205 -0.97501069 -0.15439014 -0.15802479 -0.38893071 -0.34214917 -0.85505605
		 -0.085848793 -0.37035754 -0.92461842 -0.085707374 -0.69607258 -0.71245426 -0.38896242
		 -0.64359564 -0.6587463 0.99968112 -0.009570621 -0.00017131443 0.9237116 -0.38231391
		 -0.0068432223 0.9262085 -0.34624723 -0.1473251 0.99969733 -0.0070885187 -0.0030161249
		 0.3827858 -0.9233889 -0.016788017 0.088142477 -0.99566633 -0.018256815 0.085857891
		 -0.91575617 -0.39175639 0.38896716 -0.84685552 -0.36193144 -0.97501069 -0.15439014
		 -0.15802479 -0.92620945 -0.2629582 -0.26915205 -0.92620724 -0.34625036 -0.14732532
		 -0.98344922 -0.16532782 -0.070345186 -0.38896242 -0.64359564 -0.6587463 -0.085707374
		 -0.69607258 -0.71245426 -0.085857749 -0.91575617 -0.39175642 -0.38896656 -0.84685576
		 -0.36193162;
	setAttr -s 286 -ch 1112 ".fc[0:285]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 10
		f 4 11 12 13 -9
		f 4 14 15 16 17
		f 4 18 19 20 -16
		f 4 21 22 23 24
		f 4 25 26 27 -23
		f 4 28 29 30 31
		f 4 32 33 34 -30
		f 4 35 36 37 38
		f 4 39 40 41 -37
		f 4 42 43 44 45
		f 4 46 47 48 -44
		f 4 49 50 51 -48
		f 4 52 53 54 -51
		f 4 55 56 -4 -54
		f 4 -11 57 58 59
		f 4 60 61 62 -58
		f 4 63 64 65 -62
		f 4 66 67 68 -65
		f 4 69 -46 70 -68
		f 4 71 72 73 -32
		f 4 74 75 76 -41
		f 4 77 78 79 80
		f 4 81 82 83 -79
		f 4 84 85 86 -83
		f 4 -13 87 88 -86
		f 4 89 90 -20 -88
		f 4 91 92 93 94
		f 4 95 96 97 -94
		f 4 98 99 100 -97
		f 4 101 102 103 -100
		f 4 104 105 106 -103
		f 4 107 108 109 -106
		f 4 110 -81 111 -109
		f 4 112 113 114 115
		f 4 116 117 118 -114
		f 4 119 120 121 -118
		f 4 122 123 124 -121
		f 4 125 126 127 -124
		f 4 128 129 130 -127
		f 4 131 132 133 -130
		f 4 134 135 136 -133
		f 4 -6 137 138 -136
		f 4 139 140 -27 -138
		f 4 141 142 143 144
		f 4 145 -116 146 -144
		f 4 147 148 149 150
		f 4 151 152 153 -149
		f 4 154 155 156 -153
		f 4 157 158 159 -156
		f 5 -18 160 161 162 -159
		f 4 163 164 165 166
		f 4 167 168 169 -165
		f 4 170 171 172 -169
		f 4 173 174 175 -172
		f 4 176 177 178 -175
		f 4 179 -151 180 -178
		f 4 181 182 183 184
		f 4 185 186 187 -183
		f 4 188 189 190 -187
		f 4 191 192 193 -190
		f 4 194 195 196 -193
		f 4 197 198 199 -196
		f 4 200 201 202 -199
		f 4 203 204 205 -202
		f 4 206 207 208 -205
		f 5 -25 209 210 211 -208
		f 4 212 -185 213 214
		f 5 215 216 -215 217 218
		f 6 219 -34 220 -219 221 -162
		f 6 222 -39 223 224 225 -211
		f 5 226 227 -167 228 -225
		f 4 229 230 231 -74
		f 4 232 233 234 -231
		f 4 235 236 237 -234
		f 4 238 -142 239 -237
		f 4 240 241 242 -91
		f 4 243 244 245 -242
		f 4 246 247 248 -245
		f 4 249 -72 250 -248
		f 4 251 252 253 -141
		f 4 254 255 256 -253
		f 4 257 258 259 -256
		f 4 260 -75 261 -259
		f 4 262 263 264 -77
		f 4 265 266 267 -264
		f 4 268 269 270 -267
		f 4 271 -92 272 -270
		f 3 -221 273 274
		f 3 -275 275 276
		f 3 -277 277 278
		f 3 -279 279 -216
		f 3 280 281 282
		f 3 -161 283 284
		f 3 -285 285 286
		f 3 -287 287 288
		f 3 -289 289 -220
		f 3 -210 290 291
		f 3 -292 292 293
		f 3 -294 294 295
		f 3 -296 296 -223
		f 3 297 298 299
		mu 0 3 2 3 4
		f 3 -224 300 301
		f 3 -302 302 303
		f 3 -304 304 305
		f 3 -306 306 -227
		f 3 307 308 309
		mu 0 3 5 6 3
		f 3 -309 310 311
		mu 0 3 3 6 7
		f 3 -312 312 313
		mu 0 3 3 7 8
		f 3 -314 314 315
		mu 0 3 3 8 9
		f 3 -316 316 317
		mu 0 3 3 9 10
		f 3 -318 318 -299
		mu 0 3 3 10 4
		f 3 319 -298 320
		mu 0 3 11 3 2
		f 3 321 -320 322
		mu 0 3 0 3 11
		f 3 323 -322 -57
		mu 0 3 1 3 0
		f 3 324 -324 325
		mu 0 3 12 3 1
		f 3 -310 -325 326
		mu 0 3 5 3 12
		f 3 327 328 329
		f 3 -329 330 331
		f 3 -332 332 333
		f 3 -334 334 335
		f 3 -336 -60 336
		f 3 -337 337 -282
		f 3 338 -281 339
		f 3 340 -339 341
		f 3 342 -341 343
		f 3 344 -343 345
		f 3 -330 -345 346
		f 4 347 348 349 -326
		f 4 350 -93 351 -349
		f 4 -5 352 353 -140
		f 4 -1 -323 354 -353
		f 4 -354 355 356 -252
		f 4 -355 -321 357 -356
		f 4 -12 358 359 -90
		f 4 -8 -335 360 -359
		f 4 -360 361 362 -241
		f 4 -361 -333 363 -362
		f 4 364 365 366 -338
		f 4 367 -143 368 -366
		f 4 369 370 371 -47
		f 4 372 -105 373 -371
		f 4 -373 374 375 -108
		f 4 -370 -43 376 -375
		f 4 377 378 379 -71
		f 4 380 -123 381 -379
		f 4 -381 382 383 -126
		f 4 -378 -45 384 -383
		f 4 -372 385 386 -50
		f 4 -374 -102 387 -386
		f 4 -384 388 389 -129
		f 4 -385 -49 390 -389
		f 4 -387 391 392 -53
		f 4 -388 -99 393 -392
		f 4 -390 394 395 -132
		f 4 -391 -52 396 -395
		f 4 -351 397 -394 -96
		f 4 -348 -56 -393 -398
		f 4 -396 398 -7 -135
		f 4 -397 -55 -3 -399
		f 4 -10 399 400 -61
		f 4 -14 -85 401 -400
		f 4 -368 402 403 -146
		f 4 -365 -59 404 -403
		f 4 -401 405 406 -64
		f 4 -402 -82 407 -406
		f 4 -404 408 409 -113
		f 4 -405 -63 410 -409
		f 4 -407 411 412 -67
		f 4 -408 -78 413 -412
		f 4 -410 414 415 -117
		f 4 -411 -66 416 -415
		f 4 -376 417 -414 -111
		f 4 -377 -70 -413 -418
		f 4 -416 418 -382 -120
		f 4 -417 -69 -380 -419
		f 4 419 420 421 -80
		f 4 422 -148 423 -421
		f 4 -422 424 425 -112
		f 4 -424 -180 426 -425
		f 4 -423 427 428 -152
		f 4 -420 -84 429 -428
		f 4 -429 430 431 -155
		f 4 -430 -87 432 -431
		f 4 -432 433 -15 -158
		f 4 -433 -89 -19 -434
		f 4 434 435 436 -95
		f 4 437 -228 438 -436
		f 4 -437 439 440 -273
		f 4 -439 -307 441 -440
		f 4 -438 442 443 -164
		f 4 -435 -98 444 -443
		f 4 -444 445 446 -168
		f 4 -445 -101 447 -446
		f 4 -447 448 449 -171
		f 4 -448 -104 450 -449
		f 4 -450 451 452 -174
		f 4 -451 -107 453 -452
		f 4 -453 454 -427 -177
		f 4 -454 -110 -426 -455
		f 4 455 456 457 -115
		f 4 458 -182 459 -457
		f 4 -458 460 461 -147
		f 4 -460 -213 462 -461
		f 4 -459 463 464 -186
		f 4 -456 -119 465 -464
		f 4 -465 466 467 -189
		f 4 -466 -122 468 -467
		f 4 -468 469 470 -192
		f 4 -469 -125 471 -470
		f 4 -471 472 473 -195
		f 4 -472 -128 474 -473
		f 4 -474 475 476 -198
		f 4 -475 -131 477 -476
		f 4 -477 478 479 -201
		f 4 -478 -134 480 -479
		f 4 -480 481 482 -204
		f 4 -481 -137 483 -482
		f 4 -483 484 -22 -207
		f 4 -484 -139 -26 -485
		f 4 -462 485 486 -145
		f 4 -463 -217 487 -486
		f 4 -487 488 489 -240
		f 4 -488 -280 490 -489
		f 4 491 492 493 -230
		f 4 494 -344 495 -493
		f 4 -495 496 497 -346
		f 4 -492 -73 498 -497
		f 4 -31 499 500 -251
		f 4 -35 -290 501 -500
		f 4 502 503 504 -76
		f 4 505 -315 506 -504
		f 4 -505 507 508 -263
		f 4 -507 -313 509 -508
		f 4 -40 510 511 -262
		f 4 -36 -297 512 -511
		f 4 -494 513 514 -233
		f 4 -496 -342 515 -514
		f 4 -33 516 517 -274
		f 4 -29 -232 518 -517
		f 4 -515 519 520 -236
		f 4 -516 -340 521 -520
		f 4 -518 522 523 -276
		f 4 -519 -235 524 -523
		f 4 -367 525 -522 -283
		f 4 -369 -239 -521 -526
		f 4 -524 526 -491 -278
		f 4 -525 -238 -490 -527
		f 4 -363 527 528 -244
		f 4 -364 -331 529 -528
		f 4 -17 530 531 -284
		f 4 -21 -243 532 -531
		f 4 -529 533 534 -247
		f 4 -530 -328 535 -534
		f 4 -532 536 537 -286
		f 4 -533 -246 538 -537
		f 4 -498 539 -536 -347
		f 4 -499 -250 -535 -540
		f 4 -538 540 -502 -288
		f 4 -539 -249 -501 -541
		f 4 -357 541 542 -255
		f 4 -358 -300 543 -542
		f 4 -24 544 545 -291
		f 4 -28 -254 546 -545
		f 4 -543 547 548 -258
		f 4 -544 -319 549 -548
		f 4 -546 550 551 -293
		f 4 -547 -257 552 -551
		f 4 -506 553 -550 -317
		f 4 -503 -261 -549 -554
		f 4 -552 554 -513 -295
		f 4 -553 -260 -512 -555
		f 4 -509 555 556 -266
		f 4 -510 -311 557 -556
		f 4 -38 558 559 -301
		f 4 -42 -265 560 -559
		f 4 -557 561 562 -269
		f 4 -558 -308 563 -562
		f 4 -560 564 565 -303
		f 4 -561 -268 566 -565
		f 4 -350 567 -564 -327
		f 4 -352 -272 -563 -568
		f 4 -566 568 -442 -305
		f 4 -567 -271 -441 -569;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "book3";
	rename -uid "526B6A1D-4C5A-77DE-E71D-0AB81DFAB82C";
	setAttr ".t" -type "double3" -0.29396334523957623 0 -2.8522804899672707 ;
	setAttr ".rp" -type "double3" -5.1145813465118586 2.2424492835998535 31.571323394775327 ;
	setAttr ".sp" -type "double3" -5.1145813465118586 2.2424492835998535 31.571323394775327 ;
createNode transform -n "bookPages" -p "book3";
	rename -uid "C998B9ED-4654-68F0-CDBC-2D8FF0C78B49";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr ".sp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bookPagesShape" -p "|book3|bookPages";
	rename -uid "921DF69D-419E-0F0F-B390-028D2412B73C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 38 ".pt[0:37]" -type "float3"  -5.5071759 2.2048347 30.765808 
		-5.4579015 2.1654382 30.775795 -5.4149384 2.1261139 30.779467 -5.3793192 2.0868776 
		30.775795 -5.3500118 2.0477135 30.765808 -5.3500118 2.993253 31.722153 -5.3793192 
		3.0324171 31.73214 -5.4149384 3.0716553 31.735811 -5.4579015 3.1109776 31.73214 -5.5071759 
		3.1503742 31.722153 -5.1256771 2.1227493 31.068787 -5.1256771 3.0682907 32.025131 
		-5.559958 2.2442713 30.752316 -5.559958 3.1898127 31.70866 -4.7796831 2.9477949 32.2533 
		-5.3242121 2.9541311 31.70866 -5.3242121 2.0085897 30.752316 -4.8088756 2.155062 
		31.422094 -4.8604169 2.1881263 31.403406 -4.9155955 2.2145336 31.374296 -4.9690089 
		2.2316952 31.337616 -5.015429 2.2379351 31.296955 -4.7796831 2.0022535 31.296955 
		-4.7447996 2.0075474 31.337616 -4.7248683 2.0238585 31.374296 -4.721839 2.0495865 
		31.403406 -4.7360096 2.082216 31.422094 -4.7660036 2.1185646 31.428535 -4.9690089 
		3.1772366 32.293961 -4.9155955 3.1600749 32.330639 -4.8604169 3.1336677 32.359749 
		-4.8088756 3.1006033 32.378441 -4.7660036 3.064106 32.38488 -4.7360096 3.0277574 
		32.378441 -4.721839 2.9951279 32.359749 -4.7248683 2.9693999 32.330639 -4.7447996 
		2.9530888 32.293961 -5.015429 3.1834764 32.2533;
	setAttr -s 38 ".vt[0:37]"  0.31401232 0.065046072 0.47267306 0.30402896 0.10432637 0.47267306
		 0.30035749 0.14360663 0.47267309 0.30402896 0.18288693 0.47267306 0.31401232 0.22216719 0.47267309
		 0.31401232 0.22216719 -0.47267306 0.30402896 0.18288693 -0.47267306 0.30035749 0.14360663 -0.47267309
		 0.30402896 0.10432635 -0.47267306 0.31401232 0.065046072 -0.47267309 0.011095927 0.14360663 0.47267306
		 0.011095921 0.14360663 -0.472673 0.32750389 0.025765806 0.47267309 0.32750389 0.025765806 -0.47267309
		 -0.2170254 0.26144749 -0.47267309 0.32750389 0.26144749 -0.47267309 0.32750389 0.26144749 0.47267309
		 -0.34213889 0.10718367 0.47267309 -0.32345331 0.074336678 0.47267309 -0.29434979 0.048269153 0.47267309
		 -0.25767723 0.031532794 0.47267309 -0.2170254 0.025765806 0.47267309 -0.2170254 0.26144749 0.47267309
		 -0.25767723 0.2556805 0.47267309 -0.29434979 0.23894414 0.47267309 -0.32345331 0.21287659 0.47267309
		 -0.34213889 0.18002957 0.47267309 -0.34857753 0.14360663 0.47267309 -0.25767723 0.031532794 -0.47267309
		 -0.29434979 0.048269153 -0.47267309 -0.32345331 0.074336678 -0.47267309 -0.34213889 0.10718367 -0.47267309
		 -0.34857753 0.14360663 -0.47267309 -0.34213889 0.18002957 -0.47267309 -0.32345331 0.21287659 -0.47267309
		 -0.29434979 0.23894414 -0.47267309 -0.25767723 0.2556805 -0.47267309 -0.2170254 0.025765806 -0.47267309;
	setAttr -s 79 ".ed[0:78]"  12 13 0 13 9 0 9 0 0 0 12 0 4 10 0 10 3 0
		 3 4 0 15 11 0 11 14 0 14 15 0 4 5 0 5 15 0 15 16 0 16 4 0 3 6 0 6 5 0 2 7 0 7 6 0
		 3 2 0 1 8 0 8 7 0 2 1 0 9 8 0 1 0 0 17 18 0 18 10 0 10 17 0 18 19 0 19 10 0 19 20 0
		 20 10 0 20 21 0 21 10 0 21 12 0 12 10 0 0 10 0 1 10 0 2 10 0 16 10 0 22 10 0 16 22 0
		 23 10 0 22 23 0 24 10 0 23 24 0 25 10 0 24 25 0 26 10 0 25 26 0 27 10 0 26 27 0 27 17 0
		 28 29 0 29 11 0 11 28 0 29 30 0 30 11 0 30 31 0 31 11 0 31 32 0 32 11 0 32 33 0 33 11 0
		 33 34 0 34 11 0 34 35 0 35 11 0 35 36 0 36 11 0 36 14 0 5 11 0 6 11 0 7 11 0 8 11 0
		 9 11 0 13 11 0 37 11 0 13 37 0 37 28 0;
	setAttr -s 132 ".n[0:131]" -type "float3"  0.32475418 0.010996963 -0.94544572
		 0.32475418 0.010996964 -0.94544578 0.28622663 0.011140804 -0.95781207 0.28622669
		 0.011140806 -0.95781219 -2.4000119e-07 -0.9996593 -0.011627437 -2.6300115e-10 -0.9996593
		 -0.011627549 -1.4365403e-07 -0.9996593 -0.011627353 -7.5850198e-07 0.9996593 0.011627448
		 2.6301231e-10 0.9996593 0.011627548 -7.037608e-07 0.9996593 0.011627549 -0.2862266
		 0.011140804 -0.95781213 -0.28622663 0.011140804 -0.95781213 -0.32475415 0.010996965
		 -0.94544584 -0.32475412 0.010996964 -0.94544578 -0.17119826 0.011455793 -0.98489279
		 -0.17119826 0.011455794 -0.98489285 -0.28622663 0.011140804 -0.95781213 -0.2862266
		 0.011140804 -0.95781213 0 0.011627549 -0.9996593 0 0.011627549 -0.9996593 -0.17119826
		 0.011455794 -0.98489285 -0.17119826 0.011455793 -0.98489279 0.17119834 0.011455793
		 -0.98489273 0.17119835 0.011455794 -0.98489279 0 0.011627549 -0.9996593 0 0.011627549
		 -0.9996593 0.28622669 0.011140806 -0.95781219 0.28622663 0.011140804 -0.95781207
		 0.17119835 0.011455794 -0.98489279 0.17119834 0.011455793 -0.98489273 2.6840306e-08
		 -0.9996593 -0.011627721 5.6042548e-08 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593
		 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 5.6042548e-08 -0.9996593 -0.011627549
		 9.079811e-08 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 9.079811e-08
		 -0.9996593 -0.011627549 1.3699071e-07 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593
		 -0.011627549 1.3699071e-07 -0.9996593 -0.011627549 2.3458713e-07 -0.9996593 -0.011627549
		 -2.6300115e-10 -0.9996593 -0.011627549 2.3458713e-07 -0.9996593 -0.011627549 4.2392068e-07
		 -0.9996593 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 4.2392068e-07 -0.9996593
		 -0.011627549 5.5210899e-07 -0.9996593 -0.011627437 -2.6300115e-10 -0.9996593 -0.011627549
		 5.5210899e-07 -0.9996593 -0.011627437 -3.1726668e-07 -0.9996593 -0.011627353 -2.6300115e-10
		 -0.9996593 -0.011627549 -3.1726668e-07 -0.9996593 -0.011627353 -2.1133777e-13 -0.9996593
		 -0.011627549 -2.6300115e-10 -0.9996593 -0.011627549 -2.1133777e-13 -0.9996593 -0.011627549
		 -1.4365403e-07 -0.9996593 -0.011627353 -1.6729078e-07 -0.9996593 -0.011627549 -2.6300115e-10
		 -0.9996593 -0.011627549 -2.4000119e-07 -0.9996593 -0.011627437 -2.3458716e-07 -0.9996593
		 -0.011627626 -2.6300115e-10 -0.9996593 -0.011627549 -1.6729078e-07 -0.9996593 -0.011627549
		 -1.3699061e-07 -0.9996593 -0.011627767 -2.6300115e-10 -0.9996593 -0.011627549 -2.3458716e-07
		 -0.9996593 -0.011627626 -9.0798004e-08 -0.9996593 -0.011627732 -2.6300115e-10 -0.9996593
		 -0.011627549 -1.3699061e-07 -0.9996593 -0.011627767 -5.6042516e-08 -0.9996593 -0.011627708
		 -2.6300115e-10 -0.9996593 -0.011627549 -9.0798004e-08 -0.9996593 -0.011627732 -2.6840322e-08
		 -0.9996593 -0.01162761 -2.6300115e-10 -0.9996593 -0.011627549 -5.6042516e-08 -0.9996593
		 -0.011627708 0 -0.9996593 -0.011627692 -2.6300115e-10 -0.9996593 -0.011627549 -2.6840322e-08
		 -0.9996593 -0.01162761 2.6840306e-08 -0.9996593 -0.011627721 -2.6300115e-10 -0.9996593
		 -0.011627549 0 -0.9996593 -0.011627692 4.1097229e-07 0.9996593 0.011627517 2.7239429e-07
		 0.99965924 0.011627548 2.6301231e-10 0.9996593 0.011627548 2.6301231e-10 0.9996593
		 0.011627548 2.7239429e-07 0.99965924 0.011627548 1.6812768e-07 0.9996593 0.011627549
		 2.6301231e-10 0.9996593 0.011627548 1.6812768e-07 0.9996593 0.011627549 8.0520969e-08
		 0.9996593 0.011627378 2.6301231e-10 0.9996593 0.011627548 8.0520969e-08 0.9996593
		 0.011627378 0 0.9996593 0.011627407 2.6301231e-10 0.9996593 0.011627548 0 0.9996593
		 0.011627407 -8.0521019e-08 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548
		 -8.0521019e-08 0.9996593 0.011627549 -1.6812757e-07 0.9996593 0.011627549 2.6301231e-10
		 0.9996593 0.011627548 -1.6812757e-07 0.9996593 0.011627549 -2.7239406e-07 0.9996593
		 0.011627549 2.6301231e-10 0.9996593 0.011627548 -2.7239406e-07 0.9996593 0.011627549
		 -4.1097215e-07 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548 -4.1097215e-07
		 0.9996593 0.011627549 -7.037608e-07 0.9996593 0.011627549 -4.8489341e-07 0.9996593
		 0.011627435 2.6301231e-10 0.9996593 0.011627548 -7.5850198e-07 0.9996593 0.011627448
		 3.566366e-07 0.9996593 0.011627746 2.6301231e-10 0.9996593 0.011627548 -4.8489341e-07
		 0.9996593 0.011627435 1.4089181e-13 0.9996593 0.011627549 2.6301231e-10 0.9996593
		 0.011627548 3.566366e-07 0.9996593 0.011627746 1.0428413e-07 0.9996593 0.011627549
		 2.6301231e-10 0.9996593 0.011627548 1.4089181e-13 0.9996593 0.011627549 1.7278569e-07
		 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548 1.0428413e-07 0.9996593
		 0.011627549 5.0187265e-07 0.9996593 0.011627549 2.6301231e-10 0.9996593 0.011627548
		 1.7278569e-07 0.9996593 0.011627549 7.0376154e-07 0.99965924 0.011627472 2.6301231e-10
		 0.9996593 0.011627548 5.0187265e-07 0.9996593 0.011627549 4.1097229e-07 0.9996593
		 0.011627517 2.6301231e-10 0.9996593 0.011627548 7.0376154e-07 0.99965924 0.011627472;
	setAttr -s 42 -ch 132 ".fc[0:41]" -type "polyFaces" 
		f 4 0 1 2 3
		f 3 4 5 6
		f 3 7 8 9
		f 4 10 11 12 13
		f 4 14 15 -11 -7
		f 4 16 17 -15 18
		f 4 19 20 -17 21
		f 4 -3 22 -20 23
		f 3 24 25 26
		f 3 -26 27 28
		f 3 -29 29 30
		f 3 -31 31 32
		f 3 -33 33 34
		f 3 -35 -4 35
		f 3 -36 -24 36
		f 3 -37 -22 37
		f 3 -38 -19 -6
		f 3 38 -5 -14
		f 3 39 -39 40
		f 3 41 -40 42
		f 3 43 -42 44
		f 3 45 -44 46
		f 3 47 -46 48
		f 3 49 -48 50
		f 3 -27 -50 51
		f 3 52 53 54
		f 3 -54 55 56
		f 3 -57 57 58
		f 3 -59 59 60
		f 3 -61 61 62
		f 3 -63 63 64
		f 3 -65 65 66
		f 3 -67 67 68
		f 3 -69 69 -9
		f 3 70 -8 -12
		f 3 71 -71 -16
		f 3 72 -72 -18
		f 3 73 -73 -21
		f 3 74 -74 -23
		f 3 75 -75 -2
		f 3 76 -76 77
		f 3 -55 -77 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bookCover" -p "book3";
	rename -uid "564C8F9F-4419-FA29-E089-A49CDD7BC89B";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr ".sp" -type "double3" -5.1145813524091146 2.7389972178522974 31.55805818211774 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "bookCoverShape" -p "|book3|bookCover";
	rename -uid "24A6EF0A-4F15-3505-D80E-7B99FC9864B5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:102]" "f[104:107]" "f[119:285]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[103]" "f[108:118]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0.009100318 0.010936439
		 0.29160202 0.010935247 0.010070264 0.17064947 0.15035158 0.094224155 0.012740791
		 0.17464638 0.29063332 0.17064822 0.28796279 0.17464507 0.28396595 0.17731565 0.27909338
		 0.17828482 0.021610498 0.17828608 0.016737998 0.1773169 0.0091011524 0.16577685 0.29160261
		 0.16577554;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 284 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -5.559958 3.1898127 31.70866 -5.5599585 
		2.2442713 30.752314 -5.3242121 2.9541311 31.70866 -5.3242126 2.0085897 30.752314 
		-4.8604169 2.1881263 31.403406 -4.8088756 2.155062 31.422094 -4.9155955 2.2145336 
		31.374296 -4.9690089 2.2316952 31.337616 -5.015429 2.2379351 31.296955 -4.7796831 
		2.0022535 31.296955 -4.7447996 2.0075474 31.337616 -4.7248683 2.0238585 31.374296 
		-4.721839 2.0495865 31.403406 -4.7360096 2.082216 31.422094 -4.7660036 2.1185646 
		31.428535 -4.9155955 3.1600749 32.330639 -4.9690084 3.1772366 32.293961 -4.8604169 
		3.1336677 32.359749 -4.8088756 3.1006033 32.378441 -4.7660036 3.064106 32.38488 -4.7360096 
		3.0277574 32.378441 -4.721839 2.9951279 32.359749 -4.7248683 2.9693999 32.330639 
		-4.7447991 2.9530888 32.293961 -4.7796831 2.9477949 32.2533 -5.015429 3.1834764 32.2533 
		-5.5626559 3.1925783 31.708729 -5.5626559 2.2415667 30.746849 -5.32691 2.9568968 
		31.708729 -5.32691 2.0058851 30.746849 -5.025557 2.4524188 31.503426 -5.312849 2.7396321 
		31.503426 -4.7401104 1.9545503 31.288736 -4.7358232 1.9522185 31.290714 -4.7340469 
		1.9545455 31.294863 -5.2821655 1.960856 30.746571 -5.2780285 1.958528 30.748398 -5.275991 
		1.9608512 30.752808 -4.7401104 2.9547563 32.300369 -4.7358232 2.9491324 32.299019 
		-4.7340469 2.9435096 32.295128 -5.2821655 2.961062 31.758204 -5.2780285 2.95544 31.756701 
		-5.275991 2.9498153 31.753073 -5.0161595 2.2305236 31.288736 -5.0198221 2.2361398 
		31.290714 -5.0213389 2.2417588 31.294863 -5.5582147 2.2368293 30.746571 -5.5620275 
		2.2424493 30.748398 -5.563283 2.2480645 30.752808 -5.0161595 3.2307296 32.300369 
		-5.0198221 3.2330537 32.299019 -5.0213389 3.2307229 32.295128 -5.5582147 3.2370353 
		31.758204 -5.5620275 3.2393613 31.756701 -5.563283 3.2370286 31.753073 -4.6967297 
		2.0521784 31.431458 -4.6988297 2.0487356 31.42585 -4.7038999 2.0483768 31.420359 
		-4.7341003 2.0964813 31.438484 -4.7357669 2.0925274 31.432798 -4.7397904 2.0909271 
		31.427109 -4.7341003 3.0854454 32.438747 -4.7357669 3.0894394 32.441101 -4.7397904 
		3.0911331 32.438744 -4.6967297 3.0411425 32.431721 -4.6988297 3.0456495 32.434155 
		-4.7038999 3.0485828 32.431992 -4.6770859 2.0123861 31.411057 -4.6794138 2.0094059 
		31.405687 -4.6850343 2.0101628 31.400766 -4.6770859 3.0013502 32.41132 -4.6794138 
		3.0063198 32.41399 -4.6850338 3.0103688 32.412399 -4.6770763 1.9809887 31.379284 
		-4.6794052 1.9783735 31.374283 -4.6850262 1.9800093 31.370251 -4.6770763 2.9699528 
		32.379547 -4.6794052 2.9752855 32.382587 -4.6850262 2.9802153 32.381886 -4.6967044 
		1.9610584 31.339247 -4.6988049 1.9586742 31.334709 -4.703876 1.9608681 31.3318 -4.6967044 
		2.9500225 32.339508 -4.6988049 2.9555862 32.343014 -4.703876 2.9610741 32.343433 
		-4.9699364 2.234216 31.339247 -4.9688659 2.2286618 31.334709 -4.9662819 2.2232025 
		31.3318 -4.9699364 3.2231801 32.339508 -4.9688659 3.2255738 32.343014 -4.9662819 
		3.2234085 32.343433 -4.9095063 2.2133548 31.379284 -4.9091372 2.2080431 31.374283 
		-4.9082465 2.2031686 31.370251 -4.9095063 3.2023189 32.379547 -4.9091372 3.2049551 
		32.382587 -4.9082465 3.2033746 32.381886 -4.8459635 2.1812177 31.411057 -4.8463321 
		2.1762784 31.405687 -4.8472214 2.1723056 31.400766 -4.8459635 3.1701818 32.41132 
		-4.8463321 3.1731923 32.41399 -4.8472209 3.1725116 32.412399 -4.7855277 2.1409521 
		31.431458 -4.7865977 2.1364794 31.42585 -4.7891803 2.1336341 31.420359 -4.7855277 
		3.1299162 32.431721 -4.7865977 3.1333933 32.434155 -4.7891803 3.1338401 32.431992 
		-4.859561 2.1643176 31.380194 -4.8601661 2.1634738 31.378725 -4.8604169 2.166415 
		31.381445 -4.8054457 2.1296034 31.399817 -4.8078709 2.1299253 31.397688 -4.8088756 
		2.1333506 31.400135 -4.9172421 2.1919222 31.349764 -4.9160771 2.1902292 31.349228 
		-4.9155955 2.1928222 31.352337 -4.9728661 2.2097957 31.311565 -4.9701381 2.2076013 
		31.312103 -4.9690089 2.2099857 31.315657 -5.0206537 2.2162189 31.269709 -5.0169592 
		2.2138948 31.271093 -5.015429 2.2162256 31.274998 -5.5375099 2.2222986 30.752808 
		-5.5395474 2.2199755 30.748398 -5.5436845 2.2223034 30.746571 -4.773665 1.9692974 
		31.269709 -4.7779202 1.9749212 31.271093 -4.7796831 1.9805441 31.274998 -5.2966957 
		1.9753819 30.746571 -5.3005085 1.9810019 30.748398 -5.301764 1.9866171 30.752808 
		-4.7377543 1.9747479 31.311565 -4.7427359 1.9802611 31.312103 -4.7447996 1.9858379 
		31.315657 -4.7169976 1.9917326 31.349764 -4.7225628 1.9967673 31.349228 -4.7248683 
		2.0021472 31.352337 -4.7138314 2.0186276 31.380194 -4.7194939 2.0228398 31.378725 
		-4.721839 2.0278752 31.381445 -4.7287097 2.0528882 31.399817 -4.7338715 2.0559461 
		31.397688 -4.7360096 2.0605047 31.400135 -4.7602963 2.0911655 31.406599 -4.7643323 
		2.0928593 31.404226 -4.7660036 2.0968552 31.406576 -4.9172416 3.1921282 32.361397 
		-4.9160771 3.1871431 32.357533 -4.9155955 3.1817863 32.3526 -4.9728661 3.2100017 
		32.3232 -4.9701385 3.2045133 32.320408 -4.9690089 3.1989498 32.315922 -4.859561 3.1645236 
		32.391827 -4.8601661 3.1603858 32.387028 -4.8604169 3.1553791 32.38171 -4.8054457 
		3.1298075 32.411449 -4.8078713 3.1268373 32.405991 -4.8088756 3.1223147 32.400398 
		-4.7602963 3.0913715 32.418232 -4.7643323 3.0897713 32.412529 -4.7660036 3.0858154 
		32.406837 -4.7287097 3.0530922 32.411449 -4.7338719 3.0528581 32.405991;
	setAttr ".pt[166:283]" -4.7360096 3.0494688 32.400398 -4.7138314 3.0188336 
		32.391827 -4.7194939 3.0197518 32.387028 -4.721839 3.0168393 32.38171 -4.7169971 
		2.9919386 32.361397 -4.7225628 2.9936812 32.357533 -4.7248683 2.9911113 32.3526 -4.7377543 
		2.9749539 32.3232 -4.7427363 2.9771731 32.320408 -4.7447996 2.974802 32.315922 -4.773665 
		2.9695034 32.281342 -4.7779202 2.9718332 32.279396 -4.7796831 2.9695082 32.275261 
		-5.301764 2.9755812 31.753073 -5.3005085 2.9779139 31.756701 -5.2966957 2.9755878 
		31.758204 -5.0206537 3.2164249 32.281342 -5.0169592 3.2108068 32.279396 -5.015429 
		3.2051897 32.275261 -5.5436845 3.2225094 31.758204 -5.5395474 3.2168875 31.756701 
		-5.5375099 3.2112627 31.753073 -5.6070642 3.188745 31.659927 -5.6093931 3.1925378 
		31.661409 -5.6070657 3.1937432 31.664986 -5.6070642 2.2862582 30.747128 -5.6093931 
		2.2903752 30.748938 -5.6070657 2.2923646 30.753307 -5.5812902 3.1679964 31.665009 
		-5.5869122 3.1700699 31.661415 -5.592535 3.1742201 31.659927 -5.5925341 2.2717323 
		30.747128 -5.5869131 2.2679014 30.748938 -5.5812926 2.2665987 30.753307 -5.3310151 
		2.9127717 31.659927 -5.3253942 2.9086165 31.661409 -5.3197737 2.9065299 31.664986 
		-5.3310151 2.0102849 30.747128 -5.3253942 2.006454 30.748938 -5.3197737 2.0051513 
		30.753307 -5.3455453 2.9272976 31.659927 -5.3478742 2.9310904 31.661409 -5.3455467 
		2.9322958 31.664986 -5.3455443 2.0309019 30.753296 -5.3478737 2.0289237 30.748934 
		-5.3455443 2.0248101 30.747128 -5.6033459 3.2073989 31.682556 -5.6057701 3.2107129 
		31.683458 -5.6036735 3.2107644 31.685633 -5.5888157 3.192873 31.682556 -5.5832901 
		3.1882391 31.683458 -5.5779004 3.1849985 31.685633 -5.5927563 3.2231269 31.709181 
		-5.5955448 3.2258992 31.709166 -5.594326 3.2246461 31.709133 -5.5782261 3.208601 
		31.709181 -5.5730648 3.2034254 31.709166 -5.568553 3.1988802 31.709133 -5.5769086 
		3.2335334 31.735743 -5.5802412 3.2359509 31.734819 -5.5803375 3.2338338 31.732582 
		-5.5623784 3.2190075 31.735743 -5.5577612 3.2134771 31.734819 -5.5545645 3.2080679 
		31.732582 -5.5769086 2.240766 30.731632 -5.5802412 2.246285 30.733845 -5.580337 2.2516561 
		30.739182 -5.5623784 2.2262402 30.731632 -5.5577612 2.2238111 30.733845 -5.554564 
		2.2258902 30.739182 -5.5927563 2.2515426 30.726494 -5.5955448 2.2566876 30.728882 
		-5.5943265 2.261168 30.734646 -5.5782261 2.2370167 30.726494 -5.5730648 2.2342138 
		30.728882 -5.5685534 2.2354021 30.734646 -5.6033459 2.2675166 30.731936 -5.6057701 
		2.2721143 30.734137 -5.6036735 2.275269 30.739449 -5.5888157 2.2529907 30.731936 
		-5.5832901 2.2496405 30.734137 -5.5779004 2.2495031 30.739449 -5.3008595 2.9575601 
		31.735743 -5.2962422 2.9520297 31.734819 -5.2930455 2.9466205 31.732582 -5.3153896 
		2.972086 31.735743 -5.3187222 2.9745035 31.734819 -5.3188186 2.9723864 31.732582 
		-5.3167071 2.9471536 31.709181 -5.3115458 2.941978 31.709166 -5.307034 2.9374328 
		31.709133 -5.3312373 2.9616795 31.709181 -5.3340259 2.9644518 31.709166 -5.3328071 
		2.9631987 31.709133 -5.3272967 2.9314256 31.682556 -5.3217711 2.9267917 31.683458 
		-5.3163815 2.9235511 31.685633 -5.3418269 2.9459515 31.682556 -5.3442512 2.9492655 
		31.683458 -5.3421545 2.949317 31.685633 -5.3272967 1.9915433 30.731936 -5.3217711 
		1.988193 30.734137 -5.3163815 1.9880557 30.739449 -5.3418269 2.0060692 30.731936 
		-5.3442512 2.0106668 30.734137 -5.3421545 2.0138216 30.739449 -5.3167071 1.9755692 
		30.726494 -5.3115458 1.9727664 30.728882 -5.3070345 1.9739547 30.734646 -5.3312373 
		1.9900951 30.726494 -5.3340259 1.9952402 30.728882 -5.3328075 1.9997206 30.734646 
		-5.3008595 1.9647927 30.731632 -5.2962422 1.9623637 30.733845 -5.293045 1.9644427 
		30.739182 -5.3153896 1.9793186 30.731632 -5.3187222 1.9848375 30.733845 -5.3188181 
		1.9902086 30.739182;
	setAttr -s 284 ".vt";
	setAttr ".vt[0:165]"  0.32750392 0.025765806 -0.47267294 0.32750392 0.025765806 0.47267294
		 0.32750392 0.26144749 -0.47267294 0.32750392 0.26144749 0.47267294 -0.32345343 0.074336678 0.47267294
		 -0.34213877 0.10718367 0.47267294 -0.29434967 0.048269153 0.47267294 -0.25767732 0.031532794 0.47267294
		 -0.21702528 0.025765806 0.47267294 -0.21702528 0.26144749 0.47267294 -0.25767732 0.2556805 0.47267294
		 -0.29434967 0.23894414 0.47267294 -0.32345343 0.21287659 0.47267294 -0.34213877 0.18002957 0.47267294
		 -0.3485775 0.14360663 0.47267294 -0.29434967 0.048269153 -0.47267294 -0.25767732 0.031532794 -0.47267294
		 -0.32345343 0.074336678 -0.47267294 -0.34213877 0.10718367 -0.47267294 -0.3485775 0.14360663 -0.47267294
		 -0.34213877 0.18002957 -0.47267294 -0.32345343 0.21287659 -0.47267294 -0.29434967 0.23894414 -0.47267294
		 -0.25767732 0.2556805 -0.47267294 -0.21702528 0.26144749 -0.47267294 -0.21702528 0.025765806 -0.47267294
		 0.33020163 0.025765806 -0.47540808 0.33020163 0.025765806 0.47540808 0.33020163 0.26144749 -0.47540808
		 0.33020163 0.26144749 0.47540808 0.054621935 0.28721327 0 0.054621935 0 0 -0.23644614 0.28159335 0.5
		 -0.23675871 0.28556722 0.49835396 -0.23688841 0.28721327 0.49438 0.30560875 0.28159335 0.5
		 0.30544662 0.28556722 0.49835396 0.30505538 0.28721327 0.49438 -0.23644614 0.28159335 -0.5
		 -0.23675871 0.28556722 -0.49835396 -0.23688841 0.28721327 -0.49438 0.30560875 0.28159335 -0.5
		 0.30544662 0.28556722 -0.49835396 0.30505538 0.28721327 -0.49438 -0.23644614 0.0056199208 0.5
		 -0.23675871 0.0016460367 0.49835396 -0.23688841 0 0.49438 0.30560875 0.0056199208 0.5
		 0.30544662 0.0016460367 0.49835396 0.30505538 0 0.49438 -0.23644614 0.0056199208 -0.5
		 -0.23675871 0.0016460367 -0.49835396 -0.23688841 0 -0.49438 0.30560875 0.0056199208 -0.5
		 0.30544662 0.0016460367 -0.49835396 0.30505538 0 -0.49438 -0.37345266 0.18799347 0.49438
		 -0.37186766 0.18747851 0.49835396 -0.36804128 0.18623529 0.5 -0.38048065 0.14360663 0.49438
		 -0.3788141 0.14360663 0.49835396 -0.37479067 0.14360663 0.5 -0.38048065 0.14360663 -0.49438
		 -0.3788141 0.14360663 -0.49835396 -0.37479067 0.14360663 -0.5 -0.37345266 0.18799347 -0.49438
		 -0.37186766 0.18747851 -0.49835396 -0.36804128 0.18623529 -0.5 -0.35305691 0.22802246 0.49438
		 -0.35170865 0.22704288 0.49835396 -0.34845376 0.22467798 0.5 -0.35305691 0.22802246 -0.49438
		 -0.35170865 0.22704288 -0.49835396 -0.34845376 0.22467798 -0.5 -0.32128978 0.25978965 0.49438
		 -0.32031012 0.25844136 0.49835396 -0.31794524 0.25518635 0.5 -0.32128978 0.25978965 -0.49438
		 -0.32031012 0.25844136 -0.49835396 -0.31794524 0.25518635 -0.5 -0.28126097 0.2801854 0.49438
		 -0.28074598 0.27860042 0.49835396 -0.27950263 0.27477393 0.5 -0.28126097 0.2801854 -0.49438
		 -0.28074598 0.27860042 -0.49835396 -0.27950263 0.27477393 -0.5 -0.28126097 0.0070279241 0.49438
		 -0.28074598 0.0086129112 0.49835396 -0.27950263 0.01243941 0.5 -0.28126097 0.0070279241 -0.49438
		 -0.28074598 0.0086129112 -0.49835396 -0.27950263 0.01243941 -0.5 -0.32128978 0.02742368 0.49438
		 -0.32031012 0.028771952 0.49835396 -0.31794524 0.032026965 0.5 -0.32128978 0.02742368 -0.49438
		 -0.32031012 0.028771952 -0.49835396 -0.31794524 0.032026965 -0.5 -0.35305691 0.059190869 0.49438
		 -0.35170865 0.060170446 0.49835396 -0.34845376 0.062535353 0.5 -0.35305691 0.059190869 -0.49438
		 -0.35170865 0.060170446 -0.49835396 -0.34845376 0.062535353 -0.5 -0.37345266 0.099219829 0.49438
		 -0.37186766 0.099734783 0.49835396 -0.36804128 0.10097799 0.5 -0.37345266 0.099219829 -0.49438
		 -0.37186766 0.099734783 -0.49835396 -0.36804128 0.10097799 -0.5 -0.32788515 0.070761621 0.5
		 -0.32475138 0.073289566 0.49835396 -0.32345343 0.074336678 0.49438 -0.3475039 0.105249 0.5
		 -0.34371018 0.10661702 0.49835396 -0.34213877 0.10718367 0.49438 -0.29746175 0.043511856 0.5
		 -0.29526138 0.046875771 0.49835396 -0.29434967 0.048269153 0.49438 -0.25927114 0.02608273 0.5
		 -0.25814414 0.029936507 0.49835396 -0.25767732 0.031532794 0.49438 -0.21742201 0.020145886 0.5
		 -0.21714163 0.02411977 0.49835396 -0.21702528 0.025765806 0.49438 0.30505538 0.025765806 0.49438
		 0.30544662 0.02411977 0.49835396 0.30560875 0.020145886 0.5 -0.21742201 0.2670674 0.5
		 -0.21714163 0.26309353 0.49835396 -0.21702528 0.26144749 0.49438 0.30560875 0.2670674 0.5
		 0.30544662 0.26309353 0.49835396 0.30505538 0.26144749 0.49438 -0.25927114 0.26113057 0.5
		 -0.25814414 0.2572768 0.49835396 -0.25767732 0.2556805 0.49438 -0.29746175 0.24370144 0.5
		 -0.29526138 0.24033752 0.49835396 -0.29434967 0.23894414 0.49438 -0.32788515 0.21645164 0.5
		 -0.32475138 0.21392369 0.49835396 -0.32345343 0.21287659 0.49438 -0.3475039 0.18196423 0.5
		 -0.34371018 0.18059622 0.49835396 -0.34213877 0.18002957 0.49438 -0.35428452 0.14360663 0.5
		 -0.35024905 0.14360663 0.49835396 -0.3485775 0.14360663 0.49438 -0.29746175 0.043511856 -0.5
		 -0.29526138 0.046875771 -0.49835396 -0.29434967 0.048269153 -0.49438 -0.25927114 0.02608273 -0.5
		 -0.25814414 0.029936507 -0.49835396 -0.25767732 0.031532794 -0.49438 -0.32788515 0.070761621 -0.5
		 -0.32475138 0.073289566 -0.49835396 -0.32345343 0.074336678 -0.49438 -0.3475039 0.105249 -0.5
		 -0.34371018 0.10661702 -0.49835396 -0.34213877 0.10718367 -0.49438 -0.35428452 0.14360663 -0.5
		 -0.35024905 0.14360663 -0.49835396 -0.3485775 0.14360663 -0.49438 -0.3475039 0.18196423 -0.5
		 -0.34371018 0.18059622 -0.49835396;
	setAttr ".vt[166:283]" -0.34213877 0.18002957 -0.49438 -0.32788515 0.21645164 -0.5
		 -0.32475138 0.21392369 -0.49835396 -0.32345343 0.21287659 -0.49438 -0.29746175 0.24370144 -0.5
		 -0.29526138 0.24033752 -0.49835396 -0.29434967 0.23894414 -0.49438 -0.25927114 0.26113057 -0.5
		 -0.25814414 0.2572768 -0.49835396 -0.25767732 0.2556805 -0.49438 -0.21742201 0.2670674 -0.5
		 -0.21714163 0.26309353 -0.49835396 -0.21702528 0.26144749 -0.49438 0.30505538 0.26144749 -0.49438
		 0.30544662 0.26309353 -0.49835396 0.30560875 0.2670674 -0.5 -0.21742201 0.020145886 -0.5
		 -0.21714163 0.02411977 -0.49835396 -0.21702528 0.025765806 -0.49438 0.30560875 0.020145886 -0.5
		 0.30544662 0.02411977 -0.49835396 0.30505538 0.025765806 -0.49438 0.35445833 0.0056199208 -0.45115042
		 0.35281229 0.0016460367 -0.45098829 0.34883833 0 -0.45059681 0.35445833 0.0056199208 0.45115042
		 0.35281229 0.0016460367 0.45098829 0.34883833 0 0.45059681 0.34883595 0.025765806 -0.45061398
		 0.35281157 0.024119522 -0.45099354 0.35445833 0.020145044 -0.45115042 0.35445833 0.020145886 0.45115042
		 0.35281229 0.02411977 0.45098829 0.34883833 0.025765806 0.45059681 0.35445833 0.28159335 -0.45115042
		 0.35281229 0.28556722 -0.45098829 0.34883833 0.28721327 -0.45059681 0.35445833 0.28159335 0.45115042
		 0.35281229 0.28556722 0.45098829 0.34883833 0.28721327 0.45059681 0.35445833 0.2670674 -0.45115042
		 0.35281229 0.26309353 -0.45098829 0.34883833 0.26144749 -0.45059681 0.34883595 0.26144749 0.45061398
		 0.35281157 0.26309377 0.45099354 0.35445833 0.26706824 0.45115042 0.35073996 0.0056199208 -0.46984434
		 0.34918928 0.0016460367 -0.46920204 0.34544611 0 -0.46765137 0.35073996 0.020145886 -0.46984434
		 0.34918928 0.02411977 -0.46920204 0.34544611 0.025765806 -0.46765137 0.34015059 0.0056199208 -0.4856925
		 0.33896399 0.0016460367 -0.48450565 0.33609891 0 -0.48164082 0.34015059 0.020145886 -0.4856925
		 0.33896399 0.02411977 -0.48450565 0.33609891 0.025765806 -0.48164082 0.32430267 0.0056199208 -0.49628162
		 0.32366037 0.0016460367 -0.49473095 0.32210994 0 -0.49098778 0.32430267 0.020145886 -0.49628162
		 0.32366037 0.02411977 -0.49473095 0.32210994 0.025765806 -0.49098778 0.32430267 0.0056199208 0.49628162
		 0.32366037 0.0016460367 0.49473095 0.32210994 0 0.49098778 0.32430267 0.020145886 0.49628162
		 0.32366037 0.02411977 0.49473095 0.32210994 0.025765806 0.49098778 0.34015059 0.0056199208 0.4856925
		 0.33896399 0.0016460367 0.48450565 0.33609891 0 0.48164082 0.34015059 0.020145886 0.4856925
		 0.33896399 0.02411977 0.48450565 0.33609891 0.025765806 0.48164082 0.35073996 0.0056199208 0.46984434
		 0.34918928 0.0016460367 0.46920204 0.34544611 0 0.46765137 0.35073996 0.020145886 0.46984434
		 0.34918928 0.02411977 0.46920204 0.34544611 0.025765806 0.46765137 0.32430267 0.28159335 -0.49628162
		 0.32366037 0.28556722 -0.49473095 0.32210994 0.28721327 -0.49098778 0.32430267 0.2670674 -0.49628162
		 0.32366037 0.26309353 -0.49473095 0.32210994 0.26144749 -0.49098778 0.34015059 0.28159335 -0.4856925
		 0.33896399 0.28556722 -0.48450565 0.33609891 0.28721327 -0.48164082 0.34015059 0.2670674 -0.4856925
		 0.33896399 0.26309353 -0.48450565 0.33609891 0.26144749 -0.48164082 0.35073996 0.28159335 -0.46984434
		 0.34918928 0.28556722 -0.46920204 0.34544611 0.28721327 -0.46765137 0.35073996 0.2670674 -0.46984434
		 0.34918928 0.26309353 -0.46920204 0.34544611 0.26144749 -0.46765137 0.35073996 0.28159335 0.46984434
		 0.34918928 0.28556722 0.46920204 0.34544611 0.28721327 0.46765137 0.35073996 0.2670674 0.46984434
		 0.34918928 0.26309353 0.46920204 0.34544611 0.26144749 0.46765137 0.34015059 0.28159335 0.4856925
		 0.33896399 0.28556722 0.48450565 0.33609891 0.28721327 0.48164082 0.34015059 0.2670674 0.4856925
		 0.33896399 0.26309353 0.48450565 0.33609891 0.26144749 0.48164082 0.32430267 0.28159335 0.49628162
		 0.32366037 0.28556722 0.49473095 0.32210994 0.28721327 0.49098778 0.32430267 0.2670674 0.49628162
		 0.32366037 0.26309353 0.49473095 0.32210994 0.26144749 0.49098778;
	setAttr -s 569 ".ed";
	setAttr ".ed[0:165]"  40 39 0 39 84 0 84 83 0 83 40 0 39 38 0 38 85 0 85 84 0
		 46 45 0 45 87 0 87 86 0 86 46 0 45 44 0 44 88 0 88 87 0 124 123 0 123 126 0 126 125 0
		 125 124 0 123 122 0 122 127 0 127 126 0 178 177 0 177 180 0 180 179 0 179 178 0 177 176 0
		 176 181 0 181 180 0 196 195 0 195 198 0 198 197 0 197 196 0 195 194 0 194 199 0 199 198 0
		 208 207 0 207 210 0 210 209 0 209 208 0 207 206 0 206 211 0 211 210 0 59 56 0 56 65 0
		 65 62 0 62 59 0 56 68 0 68 71 0 71 65 0 68 74 0 74 77 0 77 71 0 74 80 0 80 83 0 83 77 0
		 80 34 0 34 40 0 86 89 0 89 52 0 52 46 0 86 92 0 92 95 0 95 89 0 92 98 0 98 101 0
		 101 95 0 98 104 0 104 107 0 107 101 0 104 59 0 62 107 0 197 191 0 191 188 0 188 196 0
		 206 200 0 200 203 0 203 211 0 106 100 0 100 110 0 110 113 0 113 106 0 100 94 0 94 116 0
		 116 110 0 94 88 0 88 119 0 119 116 0 44 122 0 122 119 0 44 47 0 47 127 0 131 35 0
		 35 32 0 32 128 0 128 131 0 32 82 0 82 134 0 134 128 0 82 76 0 76 137 0 137 134 0
		 76 70 0 70 140 0 140 137 0 70 58 0 58 143 0 143 140 0 58 61 0 61 146 0 146 143 0
		 61 106 0 113 146 0 91 97 0 97 149 0 149 152 0 152 91 0 97 103 0 103 155 0 155 149 0
		 103 109 0 109 158 0 158 155 0 109 64 0 64 161 0 161 158 0 64 67 0 67 164 0 164 161 0
		 67 73 0 73 167 0 167 164 0 73 79 0 79 170 0 170 167 0 79 85 0 85 173 0 173 170 0
		 38 176 0 176 173 0 38 41 0 41 181 0 185 53 0 53 50 0 50 182 0 182 185 0 50 91 0 152 182 0
		 115 112 0 112 4 0 4 5 0 5 115 0 112 118 0 118 6 0 6 4 0 118 121 0 121 7 0 7 6 0 121 124 0
		 124 8 0 8 7 0 125 27 0 27 1 0 1 8 0 130 136 0 136 10 0 10 9 0;
	setAttr ".ed[166:331]" 9 130 0 136 139 0 139 11 0 11 10 0 139 142 0 142 12 0
		 12 11 0 142 145 0 145 13 0 13 12 0 145 148 0 148 14 0 14 13 0 148 115 0 5 14 0 154 151 0
		 151 15 0 15 16 0 16 154 0 151 157 0 157 17 0 17 15 0 157 160 0 160 18 0 18 17 0 160 163 0
		 163 19 0 19 18 0 163 166 0 166 20 0 20 19 0 166 169 0 169 21 0 21 20 0 169 172 0
		 172 22 0 22 21 0 172 175 0 175 23 0 23 22 0 175 178 0 178 24 0 24 23 0 179 28 0 28 2 0
		 2 24 0 184 154 0 16 25 0 25 184 0 26 187 0 187 184 0 25 0 0 0 26 0 27 199 0 194 26 0
		 0 1 0 28 208 0 209 29 0 29 3 0 3 2 0 29 133 0 133 130 0 9 3 0 188 212 0 212 215 0
		 215 196 0 212 218 0 218 221 0 221 215 0 218 224 0 224 227 0 227 221 0 224 53 0 185 227 0
		 47 230 0 230 233 0 233 127 0 230 236 0 236 239 0 239 233 0 236 242 0 242 245 0 245 239 0
		 242 191 0 197 245 0 41 248 0 248 251 0 251 181 0 248 254 0 254 257 0 257 251 0 254 260 0
		 260 263 0 263 257 0 260 200 0 206 263 0 203 266 0 266 269 0 269 211 0 266 272 0 272 275 0
		 275 269 0 272 278 0 278 281 0 281 275 0 278 35 0 131 281 0 194 217 0 217 26 0 217 223 0
		 223 26 0 223 229 0 229 26 0 229 187 0 226 31 0 31 55 0 55 226 0 125 235 0 235 27 0
		 235 241 0 241 27 0 241 247 0 247 27 0 247 199 0 179 253 0 253 28 0 253 259 0 259 28 0
		 259 265 0 265 28 0 265 208 0 250 30 0 30 256 0 256 250 0 209 271 0 271 29 0 271 277 0
		 277 29 0 277 283 0 283 29 0 283 133 0 280 274 0 274 30 0 30 280 0 274 268 0 268 30 0
		 268 205 0 205 30 0 205 202 0 202 30 0 202 262 0 262 30 0 262 256 0 43 30 0 250 43 0
		 40 30 0 43 40 0 34 30 0 37 30 0 34 37 0 37 280 0 244 238 0 238 31 0 31 244 0 238 232 0
		 232 31 0;
	setAttr ".ed[332:497]" 232 49 0 49 31 0 49 46 0 46 31 0 52 31 0 52 55 0 220 31 0
		 226 220 0 214 31 0 220 214 0 190 31 0 214 190 0 193 31 0 190 193 0 193 244 0 34 33 0
		 33 36 0 36 37 0 33 32 0 35 36 0 39 42 0 42 41 0 43 42 0 42 249 0 249 248 0 250 249 0
		 45 48 0 48 47 0 49 48 0 48 231 0 231 230 0 232 231 0 52 51 0 51 54 0 54 55 0 51 50 0
		 53 54 0 56 57 0 57 69 0 69 68 0 57 58 0 70 69 0 57 60 0 60 61 0 59 60 0 62 63 0 63 108 0
		 108 107 0 63 64 0 109 108 0 63 66 0 66 67 0 65 66 0 69 75 0 75 74 0 76 75 0 66 72 0
		 72 73 0 71 72 0 75 81 0 81 80 0 82 81 0 72 78 0 78 79 0 77 78 0 33 81 0 78 84 0 87 93 0
		 93 92 0 94 93 0 51 90 0 90 91 0 89 90 0 93 99 0 99 98 0 100 99 0 90 96 0 96 97 0
		 95 96 0 99 105 0 105 104 0 106 105 0 96 102 0 102 103 0 101 102 0 60 105 0 102 108 0
		 110 111 0 111 114 0 114 113 0 111 112 0 115 114 0 114 147 0 147 146 0 148 147 0 111 117 0
		 117 118 0 116 117 0 117 120 0 120 121 0 119 120 0 120 123 0 128 129 0 129 132 0 132 131 0
		 129 130 0 133 132 0 132 282 0 282 281 0 283 282 0 129 135 0 135 136 0 134 135 0 135 138 0
		 138 139 0 137 138 0 138 141 0 141 142 0 140 141 0 141 144 0 144 145 0 143 144 0 144 147 0
		 149 150 0 150 153 0 153 152 0 150 151 0 154 153 0 153 183 0 183 182 0 184 183 0 150 156 0
		 156 157 0 155 156 0 156 159 0 159 160 0 158 159 0 159 162 0 162 163 0 161 162 0 162 165 0
		 165 166 0 164 165 0 165 168 0 168 169 0 167 168 0 168 171 0 171 172 0 170 171 0 171 174 0
		 174 175 0 173 174 0 174 177 0 183 186 0 186 185 0 187 186 0 186 228 0 228 227 0 229 228 0
		 188 189 0 189 213 0 213 212 0 189 190 0 214 213 0 189 192 0 192 193 0;
	setAttr ".ed[498:568]" 191 192 0 198 246 0 246 245 0 247 246 0 200 201 0 201 204 0
		 204 203 0 201 202 0 205 204 0 204 267 0 267 266 0 268 267 0 207 264 0 264 263 0 265 264 0
		 213 219 0 219 218 0 220 219 0 195 216 0 216 217 0 215 216 0 219 225 0 225 224 0 226 225 0
		 216 222 0 222 223 0 221 222 0 54 225 0 222 228 0 231 237 0 237 236 0 238 237 0 126 234 0
		 234 235 0 233 234 0 237 243 0 243 242 0 244 243 0 234 240 0 240 241 0 239 240 0 192 243 0
		 240 246 0 249 255 0 255 254 0 256 255 0 180 252 0 252 253 0 251 252 0 255 261 0 261 260 0
		 262 261 0 252 258 0 258 259 0 257 258 0 201 261 0 258 264 0 267 273 0 273 272 0 274 273 0
		 210 270 0 270 271 0 269 270 0 273 279 0 279 278 0 280 279 0 270 276 0 276 277 0 275 276 0
		 36 279 0 276 282 0;
	setAttr -s 1112 ".n";
	setAttr ".n[0:165]" -type "float3"  0.9989925 0.0047137877 0.038022619 0.92344767
		 0.38269961 0.015473634 0.87684643 0.38329786 0.28926975 0.95079589 -0.0019874745
		 0.30892906 0.38227558 0.92362708 0.015242501 0.14832743 0.98857343 0.013244566 0.079420008
		 0.99586737 0.037343919 0.3600831 0.92386526 0.12754244 -0.9989925 -0.0055969507 0.037903011
		 -0.9234466 -0.3829585 0.0065679653 -0.87684751 -0.38992122 0.2802746 -0.95079565
		 -0.0051987143 0.30889225 -0.38227391 -0.92373246 -0.0062449072 -0.1483269 -0.98861414
		 -0.0097530419 -0.079419978 -0.99646652 0.014170629 -0.36008248 -0.92658204 0.10601982
		 0.99764979 -0.063507438 -0.010759151 0.92349005 -0.38265595 -0.013949576 0.92371339
		 -0.38230816 -0.0069306884 0.99870634 -0.045155361 -0.00081862672 0.38233694 -0.92361003
		 -0.014725656 0.060125936 -0.99784225 -0.012232696 0.085755259 -0.99587387 -0.018310122
		 0.38279095 -0.92338294 -0.017003763 -0.99764973 0.063740693 -0.0092790797 -0.92348975
		 0.38287765 -0.0050453595 -0.92371321 0.38236639 0.0019636068 -0.99870634 0.045162305
		 0.00023190133 -0.38233775 0.92370236 0.0067614657 -0.060125917 0.99785674 0.010980316
		 -0.085755266 0.99603027 0.0048587327 -0.38279191 0.92352825 0.004478584 0.087011784
		 0.015592212 -0.9958111 0.38275108 0.01442931 -0.92344326 0.38275215 0.0070601739
		 -0.92352855 0.086960226 0.0075733424 -0.99590898 0.92369717 0.0059014428 -0.38236436
		 0.99870938 0.00069710042 -0.045088723 0.9987067 0.00035299757 -0.045153618 0.92369783
		 0.0029894011 -0.38239685 -0.99870664 0.00069736992 -0.045149732 -0.92369777 0.0059059463
		 -0.38236308 -0.92369717 0.0029939287 -0.3823984 -0.99870944 0.00035184895 -0.045092866
		 -0.3827531 0.014422853 -0.92344242 -0.086960375 0.015593417 -0.99581558 -0.087011933
		 0.0075744563 -0.99590433 -0.38275203 0.0070537673 -0.92352855 1.0773699e-09 -0.013231969
		 0.99963939 0.30888507 -0.012663046 0.95072794 0.30888507 -0.0094541963 0.95076525
		 -5.2554624e-11 -0.010023101 0.9996767 0.30888507 -0.012663046 0.95072794 0.58762342
		 -0.011011317 0.80872214 0.58762342 -0.0078024422 0.80875945 0.30888507 -0.0094541963
		 0.95076525 0.58762342 -0.011011317 0.80872214 0.80879432 -0.0084389485 0.58756667
		 0.80879432 -0.0052300664 0.58760399 0.58762342 -0.0078024422 0.80875945 0.80879432
		 -0.0084389485 0.58756667 0.95079589 -0.0051987153 0.30889168 0.95079589 -0.0019874745
		 0.30892906 0.80879432 -0.0052300664 0.58760399 0.95079589 -0.0051987153 0.30889168
		 0.9989925 -0.0055969129 0.037902687 0.9989925 0.0047137877 0.038022619 0.95079589
		 -0.0019874745 0.30892906 -0.9989925 -0.0055969507 0.037903011 -0.95079565 -0.0051987143
		 0.30889225 -0.95079565 -0.0019874903 0.30892965 -0.99899244 0.0047138166 0.038022935
		 -0.95079565 -0.0051987143 0.30889225 -0.80879432 -0.0084389476 0.58756667 -0.80879432
		 -0.005230064 0.58760399 -0.95079565 -0.0019874903 0.30892965 -0.80879432 -0.0084389476
		 0.58756667 -0.58762354 -0.011011312 0.80872208 -0.58762354 -0.0078024417 0.80875939
		 -0.80879432 -0.005230064 0.58760399 -0.58762354 -0.011011312 0.80872208 -0.30888528
		 -0.012663039 0.95072794 -0.30888528 -0.0094542 0.95076525 -0.58762354 -0.0078024417
		 0.80875939 -0.30888528 -0.012663039 0.95072794 1.0773699e-09 -0.013231969 0.99963939
		 -5.2554624e-11 -0.010023101 0.9996767 -0.30888528 -0.0094542 0.95076525 0.086960226
		 0.0075733424 -0.99590898 -0.086942881 0.007573158 -0.99591041 -0.086942926 0.015593557
		 -0.99581712 0.087011784 0.015592212 -0.9958111 -0.086960375 0.015593417 -0.99581558
		 0.086942978 0.015593644 -0.99581707 0.086943023 0.0075732525 -0.99591041 -0.087011933
		 0.0075744563 -0.99590433 -0.024888502 -0.99729997 0.065017037 -0.046351321 -0.99728662
		 0.052200787 0.032757793 -0.99783546 -0.052012742 0.017565772 -0.99776632 -0.060065463
		 -0.046351321 -0.99728662 0.052200787 -0.063780308 -0.99708515 0.034744687 0.045908619
		 -0.99780983 -0.041495141 0.032757793 -0.99783546 -0.052012742 -0.063780308 -0.99708515
		 0.034744687 -0.079419978 -0.99646652 0.014170629 0.060380585 -0.99747419 -0.029211221
		 0.045908619 -0.99780983 -0.041495141 -0.079419978 -0.99646652 0.014170629 -0.1483269
		 -0.98861414 -0.0097530419 0.060125936 -0.99784225 -0.012232696 0.060380585 -0.99747419
		 -0.029211221 -0.1483269 -0.98861414 -0.0097530419 -0.088142194 -0.99566638 -0.018256808
		 0.085755259 -0.99587387 -0.018310122 0.060125936 -0.99784225 -0.012232696 -0.085755311
		 -0.99587393 -0.01831013 0.088142477 -0.99566633 -0.018256815 0.14832745 -0.98861408
		 -0.0097530792 -0.060125932 -0.99784225 -0.012232665 0.14832745 -0.98861408 -0.0097530792
		 0.079420015 -0.99646658 0.0141702 -0.060380563 -0.99747419 -0.029211169 -0.060125932
		 -0.99784225 -0.012232665 0.079420015 -0.99646658 0.0141702 0.063780248 -0.99708509
		 0.034744468 -0.04590854 -0.99780983 -0.041495372 -0.060380563 -0.99747419 -0.029211169
		 0.063780248 -0.99708509 0.034744468 0.046351198 -0.99728656 0.052201662 -0.032757763
		 -0.99783546 -0.052012693 -0.04590854 -0.99780983 -0.041495372 0.046351198 -0.99728656
		 0.052201662 0.024888437 -0.99730003 0.065018013 -0.01756577 -0.99776632 -0.060065433
		 -0.032757763 -0.99783546 -0.052012693 0.024888437 -0.99730003 0.065018013 8.4928145e-09
		 -0.9972809 0.069891803 3.7607926e-09 -0.99772602 -0.063218534 -0.01756577 -0.99776632
		 -0.060065433 8.4928145e-09 -0.9972809 0.069891803 -0.024888502 -0.99729997 0.065017037
		 0.017565772 -0.99776632 -0.060065463 3.7607926e-09 -0.99772602 -0.063218534 -0.079419985
		 0.99586737 0.037344486 -0.063780315 0.99600726 0.05792737 0.045908637 0.99850506
		 -0.018274993 0.060380593 0.9978838 -0.0060021896 -0.063780315 0.99600726 0.05792737
		 -0.046351325 0.99580252 0.075383432 0.032757811 0.9987753 -0.028789163 0.045908637
		 0.99850506 -0.018274993 -0.046351325 0.99580252 0.075383432 -0.024888506 0.99551791
		 0.088196531 0.017565774 0.99889338 -0.036841299 0.032757811 0.9987753 -0.028789163
		 -0.024888506 0.99551791 0.088196531 0 0.99538529 0.093069471 -7.5215851e-09 0.99892658
		 -0.039994501 0.017565774 0.99889338 -0.036841299 0 0.99538529 0.093069471 0.024888419
		 0.99551785 0.08819744 -0.017565794 0.99889338 -0.03684134 -7.5215851e-09 0.99892658
		 -0.039994501 0.024888419 0.99551785 0.08819744 0.046351302 0.99580258 0.075384393;
	setAttr ".n[166:331]" -type "float3"  -0.032757793 0.9987753 -0.028789137 -0.017565794
		 0.99889338 -0.03684134 0.046351302 0.99580258 0.075384393 0.06378036 0.99600726 0.057927266
		 -0.045908596 0.99850506 -0.018275242 -0.032757793 0.9987753 -0.028789137 0.06378036
		 0.99600726 0.057927266 0.079420008 0.99586737 0.037343919 -0.060380679 0.9978838
		 -0.0060022734 -0.045908596 0.99850506 -0.018275242 0.079420008 0.99586737 0.037343919
		 0.14832743 0.98857343 0.013244566 -0.060125917 0.99785674 0.010980316 -0.060380679
		 0.9978838 -0.0060022734 0.14832743 0.98857343 0.013244566 0.088142425 0.99582165
		 0.0049072048 -0.085755266 0.99603027 0.0048587327 -0.060125917 0.99785674 0.010980316
		 0.085755251 0.99603027 0.0048587355 -0.088142216 0.99582171 0.0049072122 -0.14832692
		 0.98857349 0.01324464 0.060125936 0.99785674 0.010980302 -0.14832692 0.98857349 0.01324464
		 -0.079419985 0.99586737 0.037344486 0.060380593 0.9978838 -0.0060021896 0.060125936
		 0.99785674 0.010980302 0.34008509 -0.056683384 -0.93839395 0.62835687 -0.058311552
		 -0.7753846 0.62979329 0.0090302248 -0.77635866 0.3408708 0.010930785 -0.93975616
		 0.62835687 -0.058311552 -0.7753846 0.8360371 -0.060710113 -0.5448029 0.83792675 0.0063420273
		 -0.54524529 0.62979329 0.0090302248 -0.77635866 0.8360371 -0.060710113 -0.5448029
		 0.95775223 -0.063554704 -0.27950937 0.95990312 0.0032491181 -0.27933756 0.83792675
		 0.0063420273 -0.54524529 0.95775223 -0.063554704 -0.27950937 0.99764979 -0.063507438
		 -0.010759151 0.99967694 0.00011633984 -0.0099957306 0.95990312 0.0032491181 -0.27933756
		 0.99764979 -0.063507438 -0.010759151 0.99870634 -0.045155361 -0.00081862672 0.99972695
		 2.8278276e-08 3.2891911e-10 0.99972695 2.8565887e-08 3.3226447e-10 0.99967694 0.00011633984
		 -0.0099957306 -0.99764979 -0.063507169 -0.010759164 -0.95775211 -0.063555211 -0.27950948
		 -0.95990312 0.0032491181 -0.27933756 -0.99967694 0.00011680461 -0.009995725 -0.95775211
		 -0.063555211 -0.27950948 -0.83603692 -0.060709901 -0.5448032 -0.83792657 0.0063420315
		 -0.54524565 -0.95990312 0.0032491181 -0.27933756 -0.83603692 -0.060709901 -0.5448032
		 -0.62835652 -0.058311455 -0.77538502 -0.62979329 0.0090302248 -0.77635866 -0.83792657
		 0.0063420315 -0.54524565 -0.62835652 -0.058311455 -0.77538502 -0.34008497 -0.056683369
		 -0.93839395 -0.34087101 0.010930784 -0.9397561 -0.62979329 0.0090302248 -0.77635866
		 -0.34008497 -0.056683369 -0.93839395 -3.67541e-09 -0.056100048 -0.99815166 0 0.011627549
		 -0.9996593 -0.34087101 0.010930784 -0.9397561 -3.67541e-09 -0.056100048 -0.99815166
		 0.34008509 -0.056683384 -0.93839395 0.3408708 0.010930785 -0.93975616 0 0.011627549
		 -0.9996593 0.95775229 0.0700389 -0.2779555 0.83603692 0.073365644 -0.54324371 0.83792675
		 0.0063420273 -0.54524529 0.95990312 0.0032491181 -0.27933756 0.83603692 0.073365644
		 -0.54324371 0.62835664 0.07633099 -0.77381885 0.62979329 0.0090302248 -0.77635866
		 0.83792675 0.0063420273 -0.54524529 0.62835664 0.07633099 -0.77381885 0.34008509
		 0.078494951 -0.93682158 0.3408708 0.010930785 -0.93975616 0.62979329 0.0090302248
		 -0.77635866 0.34008509 0.078494951 -0.93682158 -3.3078678e-08 0.079301789 -0.99657667
		 0 0.011627549 -0.9996593 0.3408708 0.010930785 -0.93975616 -3.3078678e-08 0.079301789
		 -0.99657667 -0.34008503 0.07849507 -0.93682164 -0.34087101 0.010930784 -0.9397561
		 0 0.011627549 -0.9996593 -0.34008503 0.07849507 -0.93682164 -0.6283564 0.076331094
		 -0.77381903 -0.62979329 0.0090302248 -0.77635866 -0.34087101 0.010930784 -0.9397561
		 -0.6283564 0.076331094 -0.77381903 -0.83603692 0.073365569 -0.54324365 -0.83792657
		 0.0063420315 -0.54524565 -0.62979329 0.0090302248 -0.77635866 -0.83603692 0.073365569
		 -0.54324365 -0.95775217 0.070039429 -0.27795559 -0.95990312 0.0032491181 -0.27933756
		 -0.83792657 0.0063420315 -0.54524565 -0.95775217 0.070039429 -0.27795559 -0.99764973
		 0.063740693 -0.0092790797 -0.99967694 0.00011626547 -0.0099957315 -0.95990312 0.0032491181
		 -0.27933756 -0.99764973 0.063740693 -0.0092790797 -0.99870634 0.045162305 0.00023190133
		 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.99972695 0 0 -0.99967694 0.00011626547
		 -0.0099957315 0.99764973 0.063740529 -0.0092790648 0.95775229 0.0700389 -0.2779555
		 0.95990312 0.0032491181 -0.27933756 0.99967694 0.00011621086 -0.0099957325 0.99972695
		 -2.2651411e-08 -2.6347016e-10 0.99870634 0.045162205 0.00023190308 0.99764973 0.063740529
		 -0.0092790648 0.99967694 0.00011621086 -0.0099957325 0.99972695 -2.2585944e-08 -2.6270866e-10
		 0.99972695 2.8278276e-08 3.2891911e-10 0.9987067 0.00035299757 -0.045153618 0.99870938
		 0.00069710042 -0.045088723 0.99972695 -2.2651411e-08 -2.6347016e-10 0.99972695 -2.2585944e-08
		 -2.6270866e-10 0.99972695 2.8565887e-08 3.3226447e-10 -0.99972695 -5.4759912e-09
		 -6.3694064e-11 -0.99870664 0.00069736992 -0.045149732 -0.99870944 0.00035184895 -0.045092866
		 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99972695 2.1382385e-07 2.4870948e-09 -0.99972695
		 0 0 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99870634 -0.045154974 -0.00081862515
		 -0.99764979 -0.063507169 -0.010759164 -0.99967694 0.00011680461 -0.009995725 -0.99972695
		 2.1382385e-07 2.4870948e-09 -0.086942926 0.015593557 -0.99581712 -0.085857131 0.39176112
		 -0.91575402 0.085848674 0.39176387 -0.91575372 0.087011784 0.015592212 -0.9958111
		 -0.085857131 0.39176112 -0.91575402 -0.085707299 0.71245569 -0.69607121 0.085707307
		 0.71245569 -0.69607121 0.085848674 0.39176387 -0.91575372 -0.085707299 0.71245569
		 -0.69607121 -0.085857764 0.92462069 -0.37034982 0.085857652 0.92462075 -0.37034985
		 0.085707307 0.71245569 -0.69607121 -0.085857764 0.92462069 -0.37034982 -0.088142216
		 0.99582171 0.0049072122 0.085755251 0.99603027 0.0048587355 0.085857652 0.92462075
		 -0.37034985 -0.088142194 -0.99566638 -0.018256808 -0.085857615 -0.91575634 -0.39175615
		 0.085857749 -0.91575629 -0.39175615 0.085755259 -0.99587387 -0.018310122 -0.085857615
		 -0.91575634 -0.39175615 -0.08570727 -0.6960724 -0.7124545 0.08570727 -0.6960724 -0.7124545
		 0.085857749 -0.91575629 -0.39175615 -0.08570727 -0.6960724 -0.7124545 -0.085856169
		 -0.37035275 -0.92461962 0.085856132 -0.37035266 -0.92461956 0.08570727 -0.6960724
		 -0.7124545;
	setAttr ".n[332:497]" -type "float3"  -0.085856169 -0.37035275 -0.92461962
		 -0.086942881 0.007573158 -0.99591041 0.086960226 0.0075733424 -0.99590898 0.085856132
		 -0.37035266 -0.92461956 0.088142425 0.99582165 0.0049072048 0.085857794 0.92462045
		 -0.37035 -0.085857838 0.92462045 -0.37035 -0.085755266 0.99603027 0.0048587327 0.085857794
		 0.92462045 -0.37035 0.085707456 0.71245557 -0.69607133 -0.085707314 0.71245581 -0.69607103
		 -0.085857838 0.92462045 -0.37035 0.085707456 0.71245557 -0.69607133 0.085856251 0.39175913
		 -0.91575509 -0.085856259 0.39175898 -0.91575515 -0.085707314 0.71245581 -0.69607103
		 0.085856251 0.39175913 -0.91575509 0.086942978 0.015593644 -0.99581707 -0.086960375
		 0.015593417 -0.99581558 -0.085856259 0.39175898 -0.91575515 0.086943023 0.0075732525
		 -0.99591041 0.08585725 -0.37035483 -0.9246186 -0.085848793 -0.37035754 -0.92461842
		 -0.087011933 0.0075744563 -0.99590433 0.08585725 -0.37035483 -0.9246186 0.085707381
		 -0.69607222 -0.71245462 -0.085707374 -0.69607258 -0.71245426 -0.085848793 -0.37035754
		 -0.92461842 0.085707381 -0.69607222 -0.71245462 0.085857891 -0.91575617 -0.39175639
		 -0.085857749 -0.91575617 -0.39175642 -0.085707374 -0.69607258 -0.71245426 0.085857891
		 -0.91575617 -0.39175639 0.088142477 -0.99566633 -0.018256815 -0.085755311 -0.99587393
		 -0.01831013 -0.085857749 -0.91575617 -0.39175642 0.99972695 -2.2651411e-08 -2.6347016e-10
		 0.99870938 0.00069710042 -0.045088723 0.98309106 0.071118951 -0.16711697 0.99972695
		 -2.2651411e-08 -2.6347016e-10 0.98309106 0.071118951 -0.16711697 0.97501057 0.15802498
		 -0.15439041 0.99972695 -2.2651411e-08 -2.6347016e-10 0.97501057 0.15802498 -0.15439041
		 0.9834494 0.16691816 -0.066480488 0.99972695 -2.2651411e-08 -2.6347016e-10 0.9834494
		 0.16691816 -0.066480488 0.99870634 0.045162205 0.00023190308 -0.99969721 0.0071568051
		 -0.0028504191 -0.99972695 0 0 -0.99968112 0.0095720934 5.1344847e-05 0.99972695 2.8278276e-08
		 3.2891911e-10 0.99870634 -0.045155361 -0.00081862672 0.9834494 -0.16532661 -0.070344843
		 0.99972695 2.8278276e-08 3.2891911e-10 0.9834494 -0.16532661 -0.070344843 0.97501057
		 -0.15439101 -0.15802419 0.99972695 2.8278276e-08 3.2891911e-10 0.97501057 -0.15439101
		 -0.15802419 0.98310292 -0.067177221 -0.1686707 0.99972695 2.8278276e-08 3.2891911e-10
		 0.98310292 -0.067177221 -0.1686707 0.9987067 0.00035299757 -0.045153618 -0.99972695
		 -5.4759912e-09 -6.3694064e-11 -0.99870634 0.045162305 0.00023190133 -0.98344934 0.16691834
		 -0.066480517 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.98344934 0.16691834 -0.066480517
		 -0.97501057 0.15802446 -0.1543908 -0.99972695 -5.4759912e-09 -6.3694064e-11 -0.97501057
		 0.15802446 -0.1543908 -0.98310268 0.071082883 -0.16706324 -0.99972695 -5.4759912e-09
		 -6.3694064e-11 -0.98310268 0.071082883 -0.16706324 -0.99870664 0.00069736992 -0.045149732
		 0.99969733 0.0071564629 -0.0028504434 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99969572
		 0.0056558605 -0.0055255215 -0.99972695 2.2440248e-07 2.6101403e-09 -0.99870944 0.00035184895
		 -0.045092866 -0.98309106 -0.067212798 -0.16872638 -0.99972695 2.2440248e-07 2.6101403e-09
		 -0.98309106 -0.067212798 -0.16872638 -0.97501069 -0.15439014 -0.15802479 -0.99972695
		 2.2440248e-07 2.6101403e-09 -0.97501069 -0.15439014 -0.15802479 -0.98344922 -0.16532782
		 -0.070345186 -0.99972695 2.2440248e-07 2.6101403e-09 -0.98344922 -0.16532782 -0.070345186
		 -0.99870634 -0.045154974 -0.00081862515 0.99969733 -0.0070885187 -0.0030161249 0.99969566
		 -0.0055261827 -0.0056555765 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99972689 -1.1770301e-10
		 -1.3690642e-12 0.99969566 -0.0055261827 -0.0056555765 0.99968606 -0.0033467452 -0.0083996961
		 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99968606 -0.0033467452 -0.0083996961 0.99934143
		 0.00021694523 -0.027759138 0.99972689 -1.1770301e-10 -1.3690642e-12 0.99934143 0.00021694523
		 -0.027759138 0.99934143 0.00042878656 -0.027756676 0.99972689 -1.1770301e-10 -1.3690642e-12
		 0.99934143 0.00042878656 -0.027756676 0.99968606 0.0035411692 -0.0083195791 0.99972689
		 -1.1770301e-10 -1.3690642e-12 0.99968606 0.0035411692 -0.0083195791 0.99969572 0.0056558605
		 -0.0055255215 0.99968112 0.0095720161 5.1343399e-05 0.99972689 -1.1770301e-10 -1.3690642e-12
		 0.99969733 0.0071564629 -0.0028504434 0.9989925 0.0047137877 0.038022619 0.99972689
		 -1.1770301e-10 -1.3690642e-12 0.99968112 0.0095720161 5.1343399e-05 0.9989925 -0.0055969129
		 0.037902687 0.99972689 -1.1770301e-10 -1.3690642e-12 0.9989925 0.0047137877 0.038022619
		 0.99968112 -0.009570621 -0.00017131443 0.99972689 -1.1770301e-10 -1.3690642e-12 0.9989925
		 -0.0055969129 0.037902687 0.99969733 -0.0070885187 -0.0030161249 0.99972689 -1.1770301e-10
		 -1.3690642e-12 0.99968112 -0.009570621 -0.00017131443 -0.99968606 -0.0033453656 -0.0083996449
		 -0.99969566 -0.0055255466 -0.0056555751 -0.99972695 0 0 -0.99972695 0 0 -0.99969566
		 -0.0055255466 -0.0056555751 -0.99969733 -0.0070885937 -0.0030161308 -0.99972695 0
		 0 -0.99969733 -0.0070885937 -0.0030161308 -0.99968112 -0.0095706983 -0.00017131478
		 -0.99972695 0 0 -0.99968112 -0.0095706983 -0.00017131478 -0.9989925 -0.0055969507
		 0.037903011 -0.99972695 0 0 -0.9989925 -0.0055969507 0.037903011 -0.99899244 0.0047138166
		 0.038022935 -0.99972695 0 0 -0.99899244 0.0047138166 0.038022935 -0.99968112 0.0095720934
		 5.1344847e-05 -0.99969566 0.0056555751 -0.005525507 -0.99972695 0 0 -0.99969721 0.0071568051
		 -0.0028504191 -0.99968606 0.003539837 -0.0083195632 -0.99972695 0 0 -0.99969566 0.0056555751
		 -0.005525507 -0.99934143 0.00042878321 -0.027756592 -0.99972695 0 0 -0.99968606 0.003539837
		 -0.0083195632 -0.99934143 0.00021694772 -0.027759055 -0.99972695 0 0 -0.99934143
		 0.00042878321 -0.027756592 -0.99968606 -0.0033453656 -0.0083996449 -0.99972695 0
		 0 -0.99934143 0.00021694772 -0.027759055 0.9989925 -0.0055969129 0.037902687 0.92344767
		 -0.38295594 0.0065678991 0.9237116 -0.38231391 -0.0068432223 0.99968112 -0.009570621
		 -0.00017131443 0.38227564 -0.92373174 -0.006244984 0.14832745 -0.98861408 -0.0097530792
		 0.088142477 -0.99566633 -0.018256815 0.3827858 -0.9233889 -0.016788017 0.14832743
		 0.98857343 0.013244566 0.38227558 0.92362708 0.015242501;
	setAttr ".n[498:663]" -type "float3"  0.38278577 0.92352957 0.0046944339 0.088142425
		 0.99582165 0.0049072048 0.92344767 0.38269961 0.015473634 0.9989925 0.0047137877
		 0.038022619 0.99968112 0.0095720161 5.1343399e-05 0.9237116 0.38236964 0.0020512037
		 0.088142425 0.99582165 0.0049072048 0.38278577 0.92352957 0.0046944339 0.3889665
		 0.85504496 -0.34213594 0.085857794 0.92462045 -0.37035 0.9237116 0.38236964 0.0020512037
		 0.99968112 0.0095720161 5.1343399e-05 0.99969733 0.0071564629 -0.0028504434 0.92620701
		 0.34958392 -0.13923192 -0.1483269 -0.98861414 -0.0097530419 -0.38227391 -0.92373246
		 -0.0062449072 -0.38278395 -0.92338967 -0.016788006 -0.088142194 -0.99566638 -0.018256808
		 -0.9234466 -0.3829585 0.0065679653 -0.9989925 -0.0055969507 0.037903011 -0.99968112
		 -0.0095706983 -0.00017131478 -0.92371041 -0.38231677 -0.0068432325 -0.088142194 -0.99566638
		 -0.018256808 -0.38278395 -0.92338967 -0.016788006 -0.38896573 -0.84685564 -0.36193249
		 -0.085857615 -0.91575634 -0.39175615 -0.92371041 -0.38231677 -0.0068432325 -0.99968112
		 -0.0095706983 -0.00017131478 -0.99969733 -0.0070885937 -0.0030161308 -0.92620796
		 -0.34624851 -0.14732529 -0.99899244 0.0047138166 0.038022935 -0.9234466 0.38270214
		 0.015473756 -0.92371041 0.3823725 0.0020512596 -0.99968112 0.0095720934 5.1344847e-05
		 -0.38227397 0.92362779 0.015242686 -0.14832692 0.98857349 0.01324464 -0.088142216
		 0.99582171 0.0049072122 -0.38278401 0.92353034 0.0046944702 0.30888507 -0.012663046
		 0.95072794 0.28485149 -0.39680633 0.87227196 0.54190344 -0.39528492 0.74131262 0.58762342
		 -0.011011317 0.80872214 0.11696181 -0.92940801 0.34924883 0.024888437 -0.99730003
		 0.065018013 0.046351198 -0.99728656 0.052201662 0.22251031 -0.92878252 0.29547635
		 0.024888437 -0.99730003 0.065018013 0.11696181 -0.92940801 0.34924883 4.4102542e-08
		 -0.92962277 0.36777094 8.4928145e-09 -0.9972809 0.069891803 0.28485149 -0.39680633
		 0.87227196 0.30888507 -0.012663046 0.95072794 1.0773699e-09 -0.013231969 0.99963939
		 2.5792522e-07 -0.39732343 0.91738099 -5.2554624e-11 -0.010023101 0.9996767 -1.7585844e-08
		 0.37587816 0.92637444 -0.28485063 0.37640756 0.88126695 -0.30888528 -0.0094542 0.95076525
		 3.3925054e-09 0.9208169 0.38929436 0 0.99538529 0.093069471 -0.024888506 0.99551791
		 0.088196531 -0.11696196 0.92103469 0.3707681 0 0.99538529 0.093069471 3.3925054e-09
		 0.9208169 0.38929436 0.11696181 0.92103297 0.37077224 0.024888419 0.99551785 0.08819744
		 -1.7585844e-08 0.37587816 0.92637444 -5.2554624e-11 -0.010023101 0.9996767 0.30888507
		 -0.0094541963 0.95076525 0.28485176 0.37641034 0.88126534 0.58762342 -0.011011317
		 0.80872214 0.54190344 -0.39528492 0.74131262 0.74586219 -0.39291227 0.53736711 0.80879432
		 -0.0084389485 0.58756667 0.22251031 -0.92878252 0.29547635 0.046351198 -0.99728656
		 0.052201662 0.063780248 -0.99708509 0.034744468 0.3062548 -0.92781067 0.2117292 0.024888419
		 0.99551785 0.08819744 0.11696181 0.92103297 0.37077224 0.22251067 0.92165822 0.31699997
		 0.046351302 0.99580258 0.075384393 0.28485176 0.37641034 0.88126534 0.30888507 -0.0094541963
		 0.95076525 0.58762342 -0.0078024422 0.80875945 0.54190326 0.37793517 0.75030649 0.80879432
		 -0.0084389485 0.58756667 0.74586219 -0.39291227 0.53736711 0.87684649 -0.38992256
		 0.280276 0.95079589 -0.0051987153 0.30889168 0.3062548 -0.92781067 0.2117292 0.063780248
		 -0.99708509 0.034744468 0.079420015 -0.99646658 0.0141702 0.36008307 -0.92658186
		 0.10601955 0.046351302 0.99580258 0.075384393 0.22251067 0.92165822 0.31699997 0.30625504
		 0.92263466 0.23325303 0.06378036 0.99600726 0.057927266 0.54190326 0.37793517 0.75030649
		 0.58762342 -0.0078024422 0.80875945 0.80879432 -0.0052300664 0.58760399 0.74586236
		 0.38030693 0.54636067 0.14832745 -0.98861408 -0.0097530792 0.38227564 -0.92373174
		 -0.006244984 0.36008307 -0.92658186 0.10601955 0.079420015 -0.99646658 0.0141702
		 0.92344767 -0.38295594 0.0065678991 0.9989925 -0.0055969129 0.037902687 0.95079589
		 -0.0051987153 0.30889168 0.87684649 -0.38992256 0.280276 0.06378036 0.99600726 0.057927266
		 0.30625504 0.92263466 0.23325303 0.3600831 0.92386526 0.12754244 0.079420008 0.99586737
		 0.037343919 0.74586236 0.38030693 0.54636067 0.80879432 -0.0052300664 0.58760399
		 0.95079589 -0.0019874745 0.30892906 0.87684643 0.38329786 0.28926975 -0.95079565
		 -0.0051987143 0.30889225 -0.87684751 -0.38992122 0.2802746 -0.74586338 -0.39291307
		 0.53736484 -0.80879432 -0.0084389476 0.58756667 -0.36008248 -0.92658204 0.10601982
		 -0.079419978 -0.99646652 0.014170629 -0.063780308 -0.99708515 0.034744687 -0.30625418
		 -0.92781097 0.21172889 -0.14832692 0.98857349 0.01324464 -0.38227397 0.92362779 0.015242686
		 -0.36008248 0.92386538 0.12754332 -0.079419985 0.99586737 0.037344486 -0.9234466
		 0.38270214 0.015473756 -0.99899244 0.0047138166 0.038022935 -0.95079565 -0.0019874903
		 0.30892965 -0.87684685 0.38329625 0.28927037 -0.80879432 -0.0084389476 0.58756667
		 -0.74586338 -0.39291307 0.53736484 -0.54190129 -0.39528307 0.74131519 -0.58762354
		 -0.011011312 0.80872208 -0.30625418 -0.92781097 0.21172889 -0.063780308 -0.99708515
		 0.034744687 -0.046351321 -0.99728662 0.052200787 -0.22251076 -0.92878377 0.29547188
		 -0.079419985 0.99586737 0.037344486 -0.36008248 0.92386538 0.12754332 -0.30625418
		 0.92263514 0.23325236 -0.063780315 0.99600726 0.05792737 -0.87684685 0.38329625 0.28927037
		 -0.95079565 -0.0019874903 0.30892965 -0.80879432 -0.005230064 0.58760399 -0.74586314
		 0.3803077 0.54635894 -0.58762354 -0.011011312 0.80872208 -0.54190129 -0.39528307
		 0.74131519 -0.28485066 -0.3968038 0.87227339 -0.30888528 -0.012663039 0.95072794
		 -0.22251076 -0.92878377 0.29547188 -0.046351321 -0.99728662 0.052200787 -0.024888502
		 -0.99729997 0.065017037 -0.11696196 -0.9294095 0.34924462 -0.063780315 0.99600726
		 0.05792737 -0.30625418 0.92263514 0.23325236 -0.22251076 0.92165983 0.31699535 -0.046351325
		 0.99580252 0.075383432 -0.74586314 0.3803077 0.54635894 -0.80879432 -0.005230064
		 0.58760399 -0.58762354 -0.0078024417 0.80875939 -0.54190242 0.37793392 0.75030768;
	setAttr ".n[664:829]" -type "float3"  8.4928145e-09 -0.9972809 0.069891803
		 4.4102542e-08 -0.92962277 0.36777094 -0.11696196 -0.9294095 0.34924462 -0.024888502
		 -0.99729997 0.065017037 2.5792522e-07 -0.39732343 0.91738099 1.0773699e-09 -0.013231969
		 0.99963939 -0.30888528 -0.012663039 0.95072794 -0.28485066 -0.3968038 0.87227339
		 -0.046351325 0.99580252 0.075383432 -0.22251076 0.92165983 0.31699535 -0.11696196
		 0.92103469 0.3707681 -0.024888506 0.99551791 0.088196531 -0.54190242 0.37793392 0.75030768
		 -0.58762354 -0.0078024417 0.80875939 -0.30888528 -0.0094542 0.95076525 -0.28485063
		 0.37640756 0.88126695 0.032757793 -0.99783546 -0.052012742 0.23825736 -0.92189956
		 -0.3046121 0.12875399 -0.92140079 -0.36591932 0.017565772 -0.99776632 -0.060065463
		 0.58069026 -0.37851754 -0.72040075 0.62835687 -0.058311552 -0.7753846 0.34008509
		 -0.056683384 -0.93839395 0.31420559 -0.3772921 -0.87084991 0.017565772 -0.99776632
		 -0.060065463 0.12875399 -0.92140079 -0.36591932 1.9176056e-08 -0.92123204 -0.38831103
		 3.7607926e-09 -0.99772602 -0.063218534 0.31420559 -0.3772921 -0.87084991 0.34008509
		 -0.056683384 -0.93839395 -3.67541e-09 -0.056100048 -0.99815166 -2.2933056e-08 -0.37687662
		 -0.92596871 0.62835687 -0.058311552 -0.7753846 0.58069026 -0.37851754 -0.72040075
		 0.772807 -0.38046089 -0.50741786 0.8360371 -0.060710113 -0.5448029 0.23825736 -0.92189956
		 -0.3046121 0.032757793 -0.99783546 -0.052012742 0.045908619 -0.99780983 -0.041495141
		 0.31749782 -0.92269528 -0.21744543 0.8360371 -0.060710113 -0.5448029 0.772807 -0.38046089
		 -0.50741786 0.88544881 -0.38294163 -0.26227871 0.95775223 -0.063554704 -0.27950937
		 0.31749782 -0.92269528 -0.21744543 0.045908619 -0.99780983 -0.041495141 0.060380585
		 -0.99747419 -0.029211221 0.3640494 -0.92371672 -0.11691625 0.95775223 -0.063554704
		 -0.27950937 0.88544881 -0.38294163 -0.26227871 0.92349005 -0.38265595 -0.013949576
		 0.99764979 -0.063507438 -0.010759151 0.3640494 -0.92371672 -0.11691625 0.060380585
		 -0.99747419 -0.029211221 0.060125936 -0.99784225 -0.012232696 0.38233694 -0.92361003
		 -0.014725656 -0.060125932 -0.99784225 -0.012232665 -0.38233778 -0.92360979 -0.014725462
		 -0.38279185 -0.92338258 -0.017003786 -0.085755311 -0.99587393 -0.01831013 -0.92348975
		 -0.38265666 -0.013949674 -0.99764979 -0.063507169 -0.010759164 -0.99870634 -0.045154974
		 -0.00081862515 -0.92371321 -0.38230863 -0.0069307191 -0.085755311 -0.99587393 -0.01831013
		 -0.38279185 -0.92338258 -0.017003786 -0.38896656 -0.84685576 -0.36193162 -0.085857749
		 -0.91575617 -0.39175642 -0.92371321 -0.38230863 -0.0069307191 -0.99870634 -0.045154974
		 -0.00081862515 -0.98344922 -0.16532782 -0.070345186 -0.92620724 -0.34625036 -0.14732532
		 -0.99764979 -0.063507169 -0.010759164 -0.92348975 -0.38265666 -0.013949674 -0.88544756
		 -0.38294411 -0.26227906 -0.95775211 -0.063555211 -0.27950948 -0.38233778 -0.92360979
		 -0.014725462 -0.060125932 -0.99784225 -0.012232665 -0.060380563 -0.99747419 -0.029211169
		 -0.36404964 -0.92371672 -0.11691508 -0.95775211 -0.063555211 -0.27950948 -0.88544756
		 -0.38294411 -0.26227906 -0.77280724 -0.38045999 -0.50741798 -0.83603692 -0.060709901
		 -0.5448032 -0.36404964 -0.92371672 -0.11691508 -0.060380563 -0.99747419 -0.029211169
		 -0.04590854 -0.99780983 -0.041495372 -0.31749758 -0.92269534 -0.21744533 -0.83603692
		 -0.060709901 -0.5448032 -0.77280724 -0.38045999 -0.50741798 -0.58068782 -0.37851596
		 -0.72040343 -0.62835652 -0.058311455 -0.77538502 -0.31749758 -0.92269534 -0.21744533
		 -0.04590854 -0.99780983 -0.041495372 -0.032757763 -0.99783546 -0.052012693 -0.23825727
		 -0.92189962 -0.30461216 -0.62835652 -0.058311455 -0.77538502 -0.58068782 -0.37851596
		 -0.72040343 -0.31420374 -0.37729022 -0.87085134 -0.34008497 -0.056683369 -0.93839395
		 -0.23825727 -0.92189962 -0.30461216 -0.032757763 -0.99783546 -0.052012693 -0.01756577
		 -0.99776632 -0.060065433 -0.12875411 -0.92140067 -0.36591953 -0.34008497 -0.056683369
		 -0.93839395 -0.31420374 -0.37729022 -0.87085134 -2.2933056e-08 -0.37687662 -0.92596871
		 -3.67541e-09 -0.056100048 -0.99815166 -0.12875411 -0.92140067 -0.36591953 -0.01756577
		 -0.99776632 -0.060065433 3.7607926e-09 -0.99772602 -0.063218534 1.9176056e-08 -0.92123204
		 -0.38831103 0.045908637 0.99850506 -0.018274993 0.31749779 0.92750335 -0.19592483
		 0.36404946 0.92618626 -0.095399082 0.060380593 0.9978838 -0.0060021896 0.77280611
		 0.39215988 -0.49843282 0.83603692 0.073365644 -0.54324371 0.95775229 0.0700389 -0.2779555
		 0.88544875 0.38893855 -0.25330064 0.060380593 0.9978838 -0.0060021896 0.36404946
		 0.92618626 -0.095399082 0.38233697 0.92370266 0.0067613819 0.060125936 0.99785674
		 0.010980302 0.88544875 0.38893855 -0.25330064 0.95775229 0.0700389 -0.2779555 0.99764973
		 0.063740529 -0.0092790648 0.92349005 0.3828769 -0.0050452715 0.83603692 0.073365644
		 -0.54324371 0.77280611 0.39215988 -0.49843282 0.58068889 0.39517078 -0.71140319 0.62835664
		 0.07633099 -0.77381885 0.31749779 0.92750335 -0.19592483 0.045908637 0.99850506 -0.018274993
		 0.032757811 0.9987753 -0.028789163 0.23825738 0.92873544 -0.28308642 0.62835664 0.07633099
		 -0.77381885 0.58068889 0.39517078 -0.71140319 0.31420559 0.39744565 -0.86183852 0.34008509
		 0.078494951 -0.93682158 0.23825738 0.92873544 -0.28308642 0.032757811 0.9987753 -0.028789163
		 0.017565774 0.99889338 -0.036841299 0.12875398 0.9296627 -0.34438863 0.34008509 0.078494951
		 -0.93682158 0.31420559 0.39744565 -0.86183852 -1.7581988e-07 0.39831245 -0.91695201
		 -3.3078678e-08 0.079301789 -0.99657667 0.12875398 0.9296627 -0.34438863 0.017565774
		 0.99889338 -0.036841299 -7.5215851e-09 0.99892658 -0.039994501 -6.3920147e-08 0.93001485
		 -0.36677843 -3.3078678e-08 0.079301789 -0.99657667 -1.7581988e-07 0.39831245 -0.91695201
		 -0.3142041 0.39744341 -0.86184007 -0.34008503 0.07849507 -0.93682164 -6.3920147e-08
		 0.93001485 -0.36677843 -7.5215851e-09 0.99892658 -0.039994501 -0.017565794 0.99889338
		 -0.03684134 -0.12875405 0.92966259 -0.34438872 -0.34008503 0.07849507 -0.93682164
		 -0.3142041 0.39744341 -0.86184007 -0.58068758 0.39516944 -0.71140486 -0.6283564 0.076331094
		 -0.77381903 -0.12875405 0.92966259 -0.34438872 -0.017565794 0.99889338 -0.03684134;
	setAttr ".n[830:995]" -type "float3"  -0.032757793 0.9987753 -0.028789137 -0.23825708
		 0.92873544 -0.28308633 -0.6283564 0.076331094 -0.77381903 -0.58068758 0.39516944
		 -0.71140486 -0.77280736 0.39215961 -0.49843127 -0.83603692 0.073365569 -0.54324365
		 -0.23825708 0.92873544 -0.28308633 -0.032757793 0.9987753 -0.028789137 -0.045908596
		 0.99850506 -0.018275242 -0.31749758 0.92750341 -0.19592467 -0.83603692 0.073365569
		 -0.54324365 -0.77280736 0.39215961 -0.49843127 -0.88544768 0.38894111 -0.25330088
		 -0.95775217 0.070039429 -0.27795559 -0.31749758 0.92750341 -0.19592467 -0.045908596
		 0.99850506 -0.018275242 -0.060380679 0.9978838 -0.0060022734 -0.36404967 0.9261862
		 -0.095398553 -0.95775217 0.070039429 -0.27795559 -0.88544768 0.38894111 -0.25330088
		 -0.92348975 0.38287765 -0.0050453595 -0.99764973 0.063740693 -0.0092790797 -0.36404967
		 0.9261862 -0.095398553 -0.060380679 0.9978838 -0.0060022734 -0.060125917 0.99785674
		 0.010980316 -0.38233775 0.92370236 0.0067614657 0.060125936 0.99785674 0.010980302
		 0.38233697 0.92370266 0.0067613819 0.38279089 0.92352861 0.0044786059 0.085755251
		 0.99603027 0.0048587355 0.92349005 0.3828769 -0.0050452715 0.99764973 0.063740529
		 -0.0092790648 0.99870634 0.045162205 0.00023190308 0.92371339 0.38236591 0.0019636273
		 0.085755251 0.99603027 0.0048587355 0.38279089 0.92352861 0.0044786059 0.38896579
		 0.85504502 -0.34213689 0.085857652 0.92462075 -0.37034985 0.92371339 0.38236591 0.0019636273
		 0.99870634 0.045162205 0.00023190308 0.9834494 0.16691816 -0.066480488 0.92620832
		 0.349581 -0.13923152 -0.086942926 0.015593557 -0.99581712 -0.38270637 0.014424055
		 -0.92346168 -0.38896132 0.36193475 -0.84685665 -0.085857131 0.39176112 -0.91575402
		 -0.92368066 0.0059074424 -0.38240409 -0.99934143 0.00042878321 -0.027756592 -0.99968606
		 0.003539837 -0.0083195632 -0.926211 0.14732485 -0.34624076 -0.99934143 0.00042878321
		 -0.027756592 -0.92368066 0.0059074424 -0.38240409 -0.92368066 0.0029888283 -0.38243806
		 -0.99934143 0.00021694772 -0.027759055 -0.38270637 0.014424055 -0.92346168 -0.086942926
		 0.015593557 -0.99581712 -0.086942881 0.007573158 -0.99591041 -0.38270637 0.0070594531
		 -0.92354739 0.086960226 0.0075733424 -0.99590898 0.38275215 0.0070601739 -0.92352855
		 0.38896108 -0.34213892 -0.85504633 0.085856132 -0.37035266 -0.92461956 0.92369783
		 0.0029894011 -0.38239685 0.9987067 0.00035299757 -0.045153618 0.98310292 -0.067177221
		 -0.1686707 0.92621094 -0.13923131 -0.34957382 0.086942978 0.015593644 -0.99581707
		 0.38270745 0.014424044 -0.92346126 0.38270745 0.0070594558 -0.92354697 0.086943023
		 0.0075732525 -0.99591041 0.92368031 0.0059074876 -0.38240516 0.99934143 0.00042878656
		 -0.027756676 0.99934143 0.00021694523 -0.027759138 0.92368031 0.0029887937 -0.38243914
		 0.086943023 0.0075732525 -0.99591041 0.38270745 0.0070594558 -0.92354697 0.38896218
		 -0.3421391 -0.85504568 0.08585725 -0.37035483 -0.9246186 0.92368031 0.0029887937
		 -0.38243914 0.99934143 0.00021694523 -0.027759138 0.99968606 -0.0033467452 -0.0083996961
		 0.92621028 -0.13923319 -0.34957507 -0.086960375 0.015593417 -0.99581558 -0.3827531
		 0.014422853 -0.92344242 -0.38896227 0.36193413 -0.84685647 -0.085856259 0.39175898
		 -0.91575515 -0.92369777 0.0059059463 -0.38236308 -0.99870664 0.00069736992 -0.045149732
		 -0.98310268 0.071082883 -0.16706324 -0.92621034 0.14732587 -0.34624201 -0.085857131
		 0.39176112 -0.91575402 -0.38896132 0.36193475 -0.84685665 -0.38896236 0.65874195
		 -0.64360029 -0.085707299 0.71245569 -0.69607121 -0.926211 0.14732485 -0.34624076
		 -0.99968606 0.003539837 -0.0083195632 -0.99969566 0.0056555751 -0.005525507 -0.92620981
		 0.26914713 -0.26296231 0.99870938 0.00069710042 -0.045088723 0.92369717 0.0059014428
		 -0.38236436 0.92620063 0.14735679 -0.34625486 0.98309106 0.071118951 -0.16711697
		 0.38275108 0.01442931 -0.92344326 0.087011784 0.015592212 -0.9958111 0.085848674
		 0.39176387 -0.91575372 0.38892981 0.36194485 -0.84686679 -0.085707299 0.71245569
		 -0.69607121 -0.38896236 0.65874195 -0.64360029 -0.38896638 0.85504478 -0.34213683
		 -0.085857764 0.92462069 -0.37034982 -0.92620981 0.26914713 -0.26296231 -0.99969566
		 0.0056555751 -0.005525507 -0.99969721 0.0071568051 -0.0028504191 -0.92620838 0.34958073
		 -0.1392311 0.98309106 0.071118951 -0.16711697 0.92620063 0.14735679 -0.34625486 0.92620975
		 0.26914749 -0.26296222 0.97501057 0.15802498 -0.15439041 0.38892981 0.36194485 -0.84686679
		 0.085848674 0.39176387 -0.91575372 0.085707307 0.71245569 -0.69607121 0.38896236
		 0.65874195 -0.64360023 -0.99968112 0.0095720934 5.1344847e-05 -0.92371041 0.3823725
		 0.0020512596 -0.92620838 0.34958073 -0.1392311 -0.99969721 0.0071568051 -0.0028504191
		 -0.38278401 0.92353034 0.0046944702 -0.088142216 0.99582171 0.0049072122 -0.085857764
		 0.92462069 -0.37034982 -0.38896638 0.85504478 -0.34213683 0.97501057 0.15802498 -0.15439041
		 0.92620975 0.26914749 -0.26296222 0.92620832 0.349581 -0.13923152 0.9834494 0.16691816
		 -0.066480488 0.38896236 0.65874195 -0.64360023 0.085707307 0.71245569 -0.69607121
		 0.085857652 0.92462075 -0.37034985 0.38896579 0.85504502 -0.34213689 -0.085857615
		 -0.91575634 -0.39175615 -0.38896573 -0.84685564 -0.36193249 -0.38896239 -0.64359373
		 -0.65874839 -0.08570727 -0.6960724 -0.7124545 -0.92620796 -0.34624851 -0.14732529
		 -0.99969733 -0.0070885937 -0.0030161308 -0.99969566 -0.0055255466 -0.0056555751 -0.92620939
		 -0.26295882 -0.26915208 0.99870634 -0.045155361 -0.00081862672 0.92371339 -0.38230816
		 -0.0069306884 0.9262082 -0.34624812 -0.14732489 0.9834494 -0.16532661 -0.070344843
		 0.38279095 -0.92338294 -0.017003763 0.085755259 -0.99587387 -0.018310122 0.085857749
		 -0.91575629 -0.39175615 0.38896635 -0.84685534 -0.36193246 -0.08570727 -0.6960724
		 -0.7124545 -0.38896239 -0.64359373 -0.65874839 -0.38896132 -0.34213904 -0.85504603
		 -0.085856169 -0.37035275 -0.92461962 -0.92620939 -0.26295882 -0.26915208 -0.99969566
		 -0.0055255466 -0.0056555751 -0.99968606 -0.0033453656 -0.0083996449 -0.92621094 -0.13923141
		 -0.34957382 0.9834494 -0.16532661 -0.070344843 0.9262082 -0.34624812 -0.14732489
		 0.92620969 -0.26295817 -0.26915145 0.97501057 -0.15439101 -0.15802419;
	setAttr ".n[996:1111]" -type "float3"  0.38896635 -0.84685534 -0.36193246 0.085857749
		 -0.91575629 -0.39175615 0.08570727 -0.6960724 -0.7124545 0.38896233 -0.64359373 -0.65874839
		 -0.99934143 0.00021694772 -0.027759055 -0.92368066 0.0029888283 -0.38243806 -0.92621094
		 -0.13923141 -0.34957382 -0.99968606 -0.0033453656 -0.0083996449 -0.38270637 0.0070594531
		 -0.92354739 -0.086942881 0.007573158 -0.99591041 -0.085856169 -0.37035275 -0.92461962
		 -0.38896132 -0.34213904 -0.85504603 0.97501057 -0.15439101 -0.15802419 0.92620969
		 -0.26295817 -0.26915145 0.92621094 -0.13923131 -0.34957382 0.98310292 -0.067177221
		 -0.1686707 0.38896233 -0.64359373 -0.65874839 0.08570727 -0.6960724 -0.7124545 0.085856132
		 -0.37035266 -0.92461956 0.38896108 -0.34213892 -0.85504633 0.085857794 0.92462045
		 -0.37035 0.3889665 0.85504496 -0.34213594 0.38896316 0.65874225 -0.64359939 0.085707456
		 0.71245557 -0.69607133 0.92620701 0.34958392 -0.13923192 0.99969733 0.0071564629
		 -0.0028504434 0.99969572 0.0056558605 -0.0055255215 0.92620903 0.26914933 -0.26296312
		 -0.99870634 0.045162305 0.00023190133 -0.92371321 0.38236639 0.0019636068 -0.92620736
		 0.34958354 -0.13923159 -0.98344934 0.16691834 -0.066480517 -0.38279191 0.92352825
		 0.004478584 -0.085755266 0.99603027 0.0048587327 -0.085857838 0.92462045 -0.37035
		 -0.38896716 0.85504478 -0.34213582 0.085707456 0.71245557 -0.69607133 0.38896316
		 0.65874225 -0.64359939 0.38896218 0.36193484 -0.8468563 0.085856251 0.39175913 -0.91575509
		 0.92620903 0.26914933 -0.26296312 0.99969572 0.0056558605 -0.0055255215 0.99968606
		 0.0035411692 -0.0083195791 0.92621052 0.14732473 -0.34624201 -0.98344934 0.16691834
		 -0.066480517 -0.92620736 0.34958354 -0.13923159 -0.92620957 0.2691474 -0.26296297
		 -0.97501057 0.15802446 -0.1543908 -0.38896716 0.85504478 -0.34213582 -0.085857838
		 0.92462045 -0.37035 -0.085707314 0.71245581 -0.69607103 -0.38896245 0.65874392 -0.64359826
		 0.99934143 0.00042878656 -0.027756676 0.92368031 0.0059074876 -0.38240516 0.92621052
		 0.14732473 -0.34624201 0.99968606 0.0035411692 -0.0083195791 0.38270745 0.014424044
		 -0.92346126 0.086942978 0.015593644 -0.99581707 0.085856251 0.39175913 -0.91575509
		 0.38896218 0.36193484 -0.8468563 -0.97501057 0.15802446 -0.1543908 -0.92620957 0.2691474
		 -0.26296297 -0.92621034 0.14732587 -0.34624201 -0.98310268 0.071082883 -0.16706324
		 -0.38896245 0.65874392 -0.64359826 -0.085707314 0.71245581 -0.69607103 -0.085856259
		 0.39175898 -0.91575515 -0.38896227 0.36193413 -0.84685647 0.08585725 -0.37035483
		 -0.9246186 0.38896218 -0.3421391 -0.85504568 0.38896313 -0.64359391 -0.65874761 0.085707381
		 -0.69607222 -0.71245462 0.92621028 -0.13923319 -0.34957507 0.99968606 -0.0033467452
		 -0.0083996961 0.99969566 -0.0055261827 -0.0056555765 0.92620969 -0.26295772 -0.26915178
		 -0.99870944 0.00035184895 -0.045092866 -0.92369717 0.0029939287 -0.3823984 -0.92620033
		 -0.13926366 -0.34958926 -0.98309106 -0.067212798 -0.16872638 -0.38275203 0.0070537673
		 -0.92352855 -0.087011933 0.0075744563 -0.99590433 -0.085848793 -0.37035754 -0.92461842
		 -0.38893071 -0.34214917 -0.85505605 0.085707381 -0.69607222 -0.71245462 0.38896313
		 -0.64359391 -0.65874761 0.38896716 -0.84685552 -0.36193144 0.085857891 -0.91575617
		 -0.39175639 0.92620969 -0.26295772 -0.26915178 0.99969566 -0.0055261827 -0.0056555765
		 0.99969733 -0.0070885187 -0.0030161249 0.9262085 -0.34624723 -0.1473251 -0.98309106
		 -0.067212798 -0.16872638 -0.92620033 -0.13926366 -0.34958926 -0.92620945 -0.2629582
		 -0.26915205 -0.97501069 -0.15439014 -0.15802479 -0.38893071 -0.34214917 -0.85505605
		 -0.085848793 -0.37035754 -0.92461842 -0.085707374 -0.69607258 -0.71245426 -0.38896242
		 -0.64359564 -0.6587463 0.99968112 -0.009570621 -0.00017131443 0.9237116 -0.38231391
		 -0.0068432223 0.9262085 -0.34624723 -0.1473251 0.99969733 -0.0070885187 -0.0030161249
		 0.3827858 -0.9233889 -0.016788017 0.088142477 -0.99566633 -0.018256815 0.085857891
		 -0.91575617 -0.39175639 0.38896716 -0.84685552 -0.36193144 -0.97501069 -0.15439014
		 -0.15802479 -0.92620945 -0.2629582 -0.26915205 -0.92620724 -0.34625036 -0.14732532
		 -0.98344922 -0.16532782 -0.070345186 -0.38896242 -0.64359564 -0.6587463 -0.085707374
		 -0.69607258 -0.71245426 -0.085857749 -0.91575617 -0.39175642 -0.38896656 -0.84685576
		 -0.36193162;
	setAttr -s 286 -ch 1112 ".fc[0:285]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -2
		f 4 7 8 9 10
		f 4 11 12 13 -9
		f 4 14 15 16 17
		f 4 18 19 20 -16
		f 4 21 22 23 24
		f 4 25 26 27 -23
		f 4 28 29 30 31
		f 4 32 33 34 -30
		f 4 35 36 37 38
		f 4 39 40 41 -37
		f 4 42 43 44 45
		f 4 46 47 48 -44
		f 4 49 50 51 -48
		f 4 52 53 54 -51
		f 4 55 56 -4 -54
		f 4 -11 57 58 59
		f 4 60 61 62 -58
		f 4 63 64 65 -62
		f 4 66 67 68 -65
		f 4 69 -46 70 -68
		f 4 71 72 73 -32
		f 4 74 75 76 -41
		f 4 77 78 79 80
		f 4 81 82 83 -79
		f 4 84 85 86 -83
		f 4 -13 87 88 -86
		f 4 89 90 -20 -88
		f 4 91 92 93 94
		f 4 95 96 97 -94
		f 4 98 99 100 -97
		f 4 101 102 103 -100
		f 4 104 105 106 -103
		f 4 107 108 109 -106
		f 4 110 -81 111 -109
		f 4 112 113 114 115
		f 4 116 117 118 -114
		f 4 119 120 121 -118
		f 4 122 123 124 -121
		f 4 125 126 127 -124
		f 4 128 129 130 -127
		f 4 131 132 133 -130
		f 4 134 135 136 -133
		f 4 -6 137 138 -136
		f 4 139 140 -27 -138
		f 4 141 142 143 144
		f 4 145 -116 146 -144
		f 4 147 148 149 150
		f 4 151 152 153 -149
		f 4 154 155 156 -153
		f 4 157 158 159 -156
		f 5 -18 160 161 162 -159
		f 4 163 164 165 166
		f 4 167 168 169 -165
		f 4 170 171 172 -169
		f 4 173 174 175 -172
		f 4 176 177 178 -175
		f 4 179 -151 180 -178
		f 4 181 182 183 184
		f 4 185 186 187 -183
		f 4 188 189 190 -187
		f 4 191 192 193 -190
		f 4 194 195 196 -193
		f 4 197 198 199 -196
		f 4 200 201 202 -199
		f 4 203 204 205 -202
		f 4 206 207 208 -205
		f 5 -25 209 210 211 -208
		f 4 212 -185 213 214
		f 5 215 216 -215 217 218
		f 6 219 -34 220 -219 221 -162
		f 6 222 -39 223 224 225 -211
		f 5 226 227 -167 228 -225
		f 4 229 230 231 -74
		f 4 232 233 234 -231
		f 4 235 236 237 -234
		f 4 238 -142 239 -237
		f 4 240 241 242 -91
		f 4 243 244 245 -242
		f 4 246 247 248 -245
		f 4 249 -72 250 -248
		f 4 251 252 253 -141
		f 4 254 255 256 -253
		f 4 257 258 259 -256
		f 4 260 -75 261 -259
		f 4 262 263 264 -77
		f 4 265 266 267 -264
		f 4 268 269 270 -267
		f 4 271 -92 272 -270
		f 3 -221 273 274
		f 3 -275 275 276
		f 3 -277 277 278
		f 3 -279 279 -216
		f 3 280 281 282
		f 3 -161 283 284
		f 3 -285 285 286
		f 3 -287 287 288
		f 3 -289 289 -220
		f 3 -210 290 291
		f 3 -292 292 293
		f 3 -294 294 295
		f 3 -296 296 -223
		f 3 297 298 299
		mu 0 3 2 3 4
		f 3 -224 300 301
		f 3 -302 302 303
		f 3 -304 304 305
		f 3 -306 306 -227
		f 3 307 308 309
		mu 0 3 5 6 3
		f 3 -309 310 311
		mu 0 3 3 6 7
		f 3 -312 312 313
		mu 0 3 3 7 8
		f 3 -314 314 315
		mu 0 3 3 8 9
		f 3 -316 316 317
		mu 0 3 3 9 10
		f 3 -318 318 -299
		mu 0 3 3 10 4
		f 3 319 -298 320
		mu 0 3 11 3 2
		f 3 321 -320 322
		mu 0 3 0 3 11
		f 3 323 -322 -57
		mu 0 3 1 3 0
		f 3 324 -324 325
		mu 0 3 12 3 1
		f 3 -310 -325 326
		mu 0 3 5 3 12
		f 3 327 328 329
		f 3 -329 330 331
		f 3 -332 332 333
		f 3 -334 334 335
		f 3 -336 -60 336
		f 3 -337 337 -282
		f 3 338 -281 339
		f 3 340 -339 341
		f 3 342 -341 343
		f 3 344 -343 345
		f 3 -330 -345 346
		f 4 347 348 349 -326
		f 4 350 -93 351 -349
		f 4 -5 352 353 -140
		f 4 -1 -323 354 -353
		f 4 -354 355 356 -252
		f 4 -355 -321 357 -356
		f 4 -12 358 359 -90
		f 4 -8 -335 360 -359
		f 4 -360 361 362 -241
		f 4 -361 -333 363 -362
		f 4 364 365 366 -338
		f 4 367 -143 368 -366
		f 4 369 370 371 -47
		f 4 372 -105 373 -371
		f 4 -373 374 375 -108
		f 4 -370 -43 376 -375
		f 4 377 378 379 -71
		f 4 380 -123 381 -379
		f 4 -381 382 383 -126
		f 4 -378 -45 384 -383
		f 4 -372 385 386 -50
		f 4 -374 -102 387 -386
		f 4 -384 388 389 -129
		f 4 -385 -49 390 -389
		f 4 -387 391 392 -53
		f 4 -388 -99 393 -392
		f 4 -390 394 395 -132
		f 4 -391 -52 396 -395
		f 4 -351 397 -394 -96
		f 4 -348 -56 -393 -398
		f 4 -396 398 -7 -135
		f 4 -397 -55 -3 -399
		f 4 -10 399 400 -61
		f 4 -14 -85 401 -400
		f 4 -368 402 403 -146
		f 4 -365 -59 404 -403
		f 4 -401 405 406 -64
		f 4 -402 -82 407 -406
		f 4 -404 408 409 -113
		f 4 -405 -63 410 -409
		f 4 -407 411 412 -67
		f 4 -408 -78 413 -412
		f 4 -410 414 415 -117
		f 4 -411 -66 416 -415
		f 4 -376 417 -414 -111
		f 4 -377 -70 -413 -418
		f 4 -416 418 -382 -120
		f 4 -417 -69 -380 -419
		f 4 419 420 421 -80
		f 4 422 -148 423 -421
		f 4 -422 424 425 -112
		f 4 -424 -180 426 -425
		f 4 -423 427 428 -152
		f 4 -420 -84 429 -428
		f 4 -429 430 431 -155
		f 4 -430 -87 432 -431
		f 4 -432 433 -15 -158
		f 4 -433 -89 -19 -434
		f 4 434 435 436 -95
		f 4 437 -228 438 -436
		f 4 -437 439 440 -273
		f 4 -439 -307 441 -440
		f 4 -438 442 443 -164
		f 4 -435 -98 444 -443
		f 4 -444 445 446 -168
		f 4 -445 -101 447 -446
		f 4 -447 448 449 -171
		f 4 -448 -104 450 -449
		f 4 -450 451 452 -174
		f 4 -451 -107 453 -452
		f 4 -453 454 -427 -177
		f 4 -454 -110 -426 -455
		f 4 455 456 457 -115
		f 4 458 -182 459 -457
		f 4 -458 460 461 -147
		f 4 -460 -213 462 -461
		f 4 -459 463 464 -186
		f 4 -456 -119 465 -464
		f 4 -465 466 467 -189
		f 4 -466 -122 468 -467
		f 4 -468 469 470 -192
		f 4 -469 -125 471 -470
		f 4 -471 472 473 -195
		f 4 -472 -128 474 -473
		f 4 -474 475 476 -198
		f 4 -475 -131 477 -476
		f 4 -477 478 479 -201
		f 4 -478 -134 480 -479
		f 4 -480 481 482 -204
		f 4 -481 -137 483 -482
		f 4 -483 484 -22 -207
		f 4 -484 -139 -26 -485
		f 4 -462 485 486 -145
		f 4 -463 -217 487 -486
		f 4 -487 488 489 -240
		f 4 -488 -280 490 -489
		f 4 491 492 493 -230
		f 4 494 -344 495 -493
		f 4 -495 496 497 -346
		f 4 -492 -73 498 -497
		f 4 -31 499 500 -251
		f 4 -35 -290 501 -500
		f 4 502 503 504 -76
		f 4 505 -315 506 -504
		f 4 -505 507 508 -263
		f 4 -507 -313 509 -508
		f 4 -40 510 511 -262
		f 4 -36 -297 512 -511
		f 4 -494 513 514 -233
		f 4 -496 -342 515 -514
		f 4 -33 516 517 -274
		f 4 -29 -232 518 -517
		f 4 -515 519 520 -236
		f 4 -516 -340 521 -520
		f 4 -518 522 523 -276
		f 4 -519 -235 524 -523
		f 4 -367 525 -522 -283
		f 4 -369 -239 -521 -526
		f 4 -524 526 -491 -278
		f 4 -525 -238 -490 -527
		f 4 -363 527 528 -244
		f 4 -364 -331 529 -528
		f 4 -17 530 531 -284
		f 4 -21 -243 532 -531
		f 4 -529 533 534 -247
		f 4 -530 -328 535 -534
		f 4 -532 536 537 -286
		f 4 -533 -246 538 -537
		f 4 -498 539 -536 -347
		f 4 -499 -250 -535 -540
		f 4 -538 540 -502 -288
		f 4 -539 -249 -501 -541
		f 4 -357 541 542 -255
		f 4 -358 -300 543 -542
		f 4 -24 544 545 -291
		f 4 -28 -254 546 -545
		f 4 -543 547 548 -258
		f 4 -544 -319 549 -548
		f 4 -546 550 551 -293
		f 4 -547 -257 552 -551
		f 4 -506 553 -550 -317
		f 4 -503 -261 -549 -554
		f 4 -552 554 -513 -295
		f 4 -553 -260 -512 -555
		f 4 -509 555 556 -266
		f 4 -510 -311 557 -556
		f 4 -38 558 559 -301
		f 4 -42 -265 560 -559
		f 4 -557 561 562 -269
		f 4 -558 -308 563 -562
		f 4 -560 564 565 -303
		f 4 -561 -268 566 -565
		f 4 -350 567 -564 -327
		f 4 -352 -272 -563 -568
		f 4 -566 568 -442 -305
		f 4 -567 -271 -441 -569;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	rename -uid "0C28D3FB-4633-0B3C-8B82-61A48D5539F4";
	setAttr ".s" -type "double3" 1 0.11947827869124401 1 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "2B6E2559-434E-5FF6-82D5-B59A21155992";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "BE70B573-4F74-9175-31AD-269E2DB17134";
	setAttr ".t" -type "double3" 0 1.1207206860282681 0 ;
	setAttr ".s" -type "double3" 0.60074109011572718 0.071775511386128601 0.60074109011572718 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "7535E912-4A58-881B-5655-C6ADC180747E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[20:39]" "f[60:79]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:79]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 122 ".uvst[0].uvsp[0:121]" -type "float2" 0.64860266 0.10796607
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
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.62640899 0.064408496 0.64860266
		 0.10796607 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661 0.34374997
		 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.6486026 0.89203393 0.62640893 0.93559146 0.59184146
		 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107
		 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107
		 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393
		 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.90291154 -1 -0.29337379 0.76806247 -1 -0.55803001 0.55803001 -1 -0.76806241
		 0.2933737 -1 -0.90291142 4.964364e-09 -1 -0.94937724 -0.2933737 -1 -0.90291137 -0.55802989 -1 -0.76806223
		 -0.76806217 -1 -0.55802983 -0.90291119 -1 -0.29337361 -0.949377 -1 0 -0.90291119 -1 0.29337361
		 -0.76806211 -1 0.55802977 -0.55802977 -1 0.76806206 -0.29337361 -1 0.90291107 -3.4766686e-08 -1 0.94937688
		 0.29337353 -1 0.90291101 0.55802965 -1 0.768062 0.76806194 -1 0.55802971 0.90291095 -1 0.29337355
		 0.94937676 -1 -4.9643617e-08 0.90291154 1 -0.29337379 0.76806247 1 -0.55803001 0.55803001 1 -0.76806241
		 0.2933737 1 -0.90291142 4.964364e-09 1 -0.94937724 -0.2933737 1 -0.90291137 -0.55802989 1 -0.76806223
		 -0.76806217 1 -0.55802983 -0.90291119 1 -0.29337361 -0.949377 1 0 -0.90291119 1 0.29337361
		 -0.76806211 1 0.55802977 -0.55802977 1 0.76806206 -0.29337361 1 0.90291107 -3.4766686e-08 1 0.94937688
		 0.29337353 1 0.90291101 0.55802965 1 0.768062 0.76806194 1 0.55802971 0.90291095 1 0.29337355
		 0.94937676 1 -4.9643617e-08;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 0 40 1 1 41 1 40 41 0
		 2 42 1 41 42 0 3 43 1 42 43 0 4 44 1 43 44 0 5 45 1 44 45 0 6 46 1 45 46 0 7 47 1
		 46 47 0 8 48 1 47 48 0 9 49 1 48 49 0 10 50 1 49 50 0 11 51 1 50 51 0 12 52 1 51 52 0
		 13 53 1 52 53 0 14 54 1 53 54 0 15 55 1 54 55 0 16 56 1 55 56 0 17 57 1 56 57 0 18 58 1
		 57 58 0 19 59 1 58 59 0 59 40 0 20 60 1 21 61 1 60 61 0 22 62 1 61 62 0 23 63 1 62 63 0
		 24 64 1 63 64 0 25 65 1 64 65 0 26 66 1 65 66 0 27 67 1 66 67 0 28 68 1 67 68 0 29 69 1
		 68 69 0 30 70 1 69 70 0 31 71 1 70 71 0 32 72 1 71 72 0 33 73 1 72 73 0 34 74 1 73 74 0
		 35 75 1 74 75 0 36 76 1 75 76 0 37 77 1 76 77 0 38 78 1 77 78 0 39 79 1 78 79 0 79 60 0
		 41 61 1 40 60 1 59 79 1 58 78 1 57 77 1 56 76 1 55 75 1 54 74 1 53 73 1 52 72 1 51 71 1
		 50 70 1 49 69 1 48 68 1 47 67 1 46 66 1 45 65 1 44 64 1 43 63 1 42 62 1;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
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
		f 4 -1 60 62 -62
		mu 0 4 1 0 83 82
		f 4 -2 61 64 -64
		mu 0 4 2 1 82 84
		f 4 -3 63 66 -66
		mu 0 4 3 2 84 85
		f 4 -4 65 68 -68
		mu 0 4 4 3 85 86
		f 4 -5 67 70 -70
		mu 0 4 5 4 86 87
		f 4 -6 69 72 -72
		mu 0 4 6 5 87 88
		f 4 -7 71 74 -74
		mu 0 4 7 6 88 89
		f 4 -8 73 76 -76
		mu 0 4 8 7 89 90
		f 4 -9 75 78 -78
		mu 0 4 9 8 90 91
		f 4 -10 77 80 -80
		mu 0 4 10 9 91 92
		f 4 -11 79 82 -82
		mu 0 4 11 10 92 93
		f 4 -12 81 84 -84
		mu 0 4 12 11 93 94
		f 4 -13 83 86 -86
		mu 0 4 13 12 94 95
		f 4 -14 85 88 -88
		mu 0 4 14 13 95 96
		f 4 -15 87 90 -90
		mu 0 4 15 14 96 97
		f 4 -16 89 92 -92
		mu 0 4 16 15 97 98
		f 4 -17 91 94 -94
		mu 0 4 17 16 98 99
		f 4 -18 93 96 -96
		mu 0 4 18 17 99 100
		f 4 -19 95 98 -98
		mu 0 4 19 18 100 101
		f 4 -20 97 99 -61
		mu 0 4 0 19 101 83
		f 4 20 101 -103 -101
		mu 0 4 80 79 103 102
		f 4 21 103 -105 -102
		mu 0 4 79 78 104 103
		f 4 22 105 -107 -104
		mu 0 4 78 77 105 104
		f 4 23 107 -109 -106
		mu 0 4 77 76 106 105
		f 4 24 109 -111 -108
		mu 0 4 76 75 107 106
		f 4 25 111 -113 -110
		mu 0 4 75 74 108 107
		f 4 26 113 -115 -112
		mu 0 4 74 73 109 108
		f 4 27 115 -117 -114
		mu 0 4 73 72 110 109
		f 4 28 117 -119 -116
		mu 0 4 72 71 111 110
		f 4 29 119 -121 -118
		mu 0 4 71 70 112 111
		f 4 30 121 -123 -120
		mu 0 4 70 69 113 112
		f 4 31 123 -125 -122
		mu 0 4 69 68 114 113
		f 4 32 125 -127 -124
		mu 0 4 68 67 115 114
		f 4 33 127 -129 -126
		mu 0 4 67 66 116 115
		f 4 34 129 -131 -128
		mu 0 4 66 65 117 116
		f 4 35 131 -133 -130
		mu 0 4 65 64 118 117
		f 4 36 133 -135 -132
		mu 0 4 64 63 119 118
		f 4 37 135 -137 -134
		mu 0 4 63 62 120 119
		f 4 38 137 -139 -136
		mu 0 4 62 81 121 120
		f 4 39 100 -140 -138
		mu 0 4 81 80 102 121
		f 4 -63 141 102 -141
		mu 0 4 82 83 102 103
		f 4 -100 142 139 -142
		mu 0 4 83 101 121 102
		f 4 -99 143 138 -143
		mu 0 4 101 100 120 121
		f 4 -97 144 136 -144
		mu 0 4 100 99 119 120
		f 4 -95 145 134 -145
		mu 0 4 99 98 118 119
		f 4 -93 146 132 -146
		mu 0 4 98 97 117 118
		f 4 -91 147 130 -147
		mu 0 4 97 96 116 117
		f 4 -89 148 128 -148
		mu 0 4 96 95 115 116
		f 4 -87 149 126 -149
		mu 0 4 95 94 114 115
		f 4 -85 150 124 -150
		mu 0 4 94 93 113 114
		f 4 -83 151 122 -151
		mu 0 4 93 92 112 113
		f 4 -81 152 120 -152
		mu 0 4 92 91 111 112
		f 4 -79 153 118 -153
		mu 0 4 91 90 110 111
		f 4 -77 154 116 -154
		mu 0 4 90 89 109 110
		f 4 -75 155 114 -155
		mu 0 4 89 88 108 109
		f 4 -73 156 112 -156
		mu 0 4 88 87 107 108
		f 4 -71 157 110 -157
		mu 0 4 87 86 106 107
		f 4 -69 158 108 -158
		mu 0 4 86 85 105 106
		f 4 -67 159 106 -159
		mu 0 4 85 84 104 105
		f 4 -65 140 104 -160
		mu 0 4 84 82 103 104;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Sink_Prep";
	rename -uid "D2608391-4592-AB4F-6A74-AC8FA8C54CEC";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 99.710433959960938 157.73786544799805 21.122526168823242 ;
	setAttr ".sp" -type "double3" 99.710433959960938 157.73786544799805 21.122526168823242 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "Sink_PrepShape" -p "Sink_Prep";
	rename -uid "1B2DCC68-43AA-DE4B-DB3A-65A8B03B90F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "polySurfaceShape4" -p "Sink_Prep";
	rename -uid "2C5F5609-4199-2096-9D3C-639DEB878D07";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.37548103928565979 0.18925153836607933 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 190 ".uvst[0].uvsp[0:189]" -type "float2" 0.69474888 0.28234446
		 0.69497657 0.28020281 0.69705623 0.28054225 0.69684792 0.28254449 0.69533479 0.27806407
		 0.69738179 0.27854872 0.69583762 0.27592492 0.6978361 0.2765606 0.69651026 0.27378285
		 0.69844055 0.27457607 0.69739032 0.27164024 0.69923073 0.2725957 0.69852126 0.26950777
		 0.70026088 0.27062315 0.69990718 0.26737332 0.70159817 0.26866341 0.69985765 0.30198967
		 0.69846857 0.29987139 0.70021152 0.2987597 0.70158535 0.30072671 0.69727647 0.29771978
		 0.69911873 0.29676652 0.69633842 0.29552418 0.69827676 0.29474634 0.69563794 0.29330826
		 0.6976496 0.29270905 0.69514364 0.29109198 0.69720542 0.29066592 0.69482595 0.28888744
		 0.69691885 0.28862554 0.69466406 0.28670114 0.69677234 0.2865923 0.6946429 0.28451562
		 0.69675219 0.28456318 0.69916636 0.28088301 0.69897991 0.28273571 0.6994549 0.27904284
		 0.69985199 0.27721637 0.70037156 0.27540582 0.70103931 0.27361619 0.70190227 0.27186227
		 0.70305425 0.27019954 0.70187223 0.29750669 0.70311844 0.29917455 0.70093501 0.29573977
		 0.70021677 0.29392368 0.69967771 0.29207808 0.69929218 0.29021555 0.69904137 0.28834486
		 0.69891208 0.28647202 0.69889402 0.28460044 0.70130873 0.28123385 0.7011466 0.28293365
		 0.70155609 0.27955103 0.70188886 0.27789187 0.70231032 0.27626514 0.7028299 0.27468503
		 0.70346546 0.2731787 0.70424545 0.27181226 0.703484 0.29614985 0.70437312 0.29745245
		 0.70275193 0.29466558 0.70217627 0.29308242 0.70173508 0.29144186 0.7014128 0.28976583
		 0.70119941 0.28806794 0.70108759 0.28635806 0.70107168 0.28464407 0.70335454 0.28148597
		 0.70320982 0.28305233 0.70356917 0.27993882 0.70384783 0.27842128 0.70418453 0.27694488
		 0.70457751 0.27552187 0.70504302 0.27415872 0.70564759 0.27282268 0.7049998 0.29508692
		 0.7057445 0.29637897 0.70445746 0.29373515 0.70402336 0.29231745 0.70367771 0.29084235
		 0.70341724 0.28932333 0.70324147 0.28777397 0.70314968 0.28620577 0.70314014 0.28462869
		 0.70988995 0.25217679 0.70986068 0.25474024 0.70319551 0.25490409 0.703179 0.25217149
		 0.0411084 0.12890083 0.041088879 0.12632662 0.047799826 0.12632453 0.047758609 0.12906003
		 0.71012151 0.25712734 0.71081686 0.25943226 0.70984 0.26006883 0.70778179 0.2580235
		 0.70558202 0.2559354 0.040855378 0.13129461 0.045375288 0.13010758 0.043189704 0.13221645
		 0.040174752 0.13361299 0.041148037 0.13426983 0.039127529 0.13590473 0.7118634 0.26171952
		 0.050269783 0.12971896 0.050987661 0.13837481 0.048958719 0.13852698 0.052744448
		 0.13117379 0.053010494 0.13839173 0.055142432 0.13234568 0.055054665 0.13861656 0.057482481
		 0.13288665 0.057171077 0.13912034 0.69349372 0.25879884 0.69583905 0.25826824 0.69596803
		 0.26460084 0.69384497 0.265073 0.69822717 0.25708044 0.69802117 0.26435649 0.70068425
		 0.25559056 0.70004845 0.26429147 0.70207673 0.26438263 0.70773339 0.26611942 0.70592165
		 0.26527879 0.70404291 0.26472014 0.047000736 0.13891959 0.0451262 0.13951975 0.043310463
		 0.14037776 0.04147616 0.14154804 0.70955288 0.26731658 0.041115344 0.12376308 0.047780365
		 0.1235919 0.70987326 0.24960259 0.70322317 0.24943599 0.040851921 0.12137628 0.04015398
		 0.1190722 0.041130155 0.11843455 0.043190658 0.12047768 0.045392692 0.12256324 0.71012896
		 0.24720907 0.70560765 0.24839106 0.70779556 0.24628463 0.71081197 0.24489138 0.70983952
		 0.24423361 0.71186185 0.24260083 0.039104909 0.11678612 0.70071274 0.24877429 0.70000434
		 0.24011764 0.70203352 0.2399677 0.69823968 0.24731678 0.69798148 0.24009851 0.69584298
		 0.24614227 0.69593757 0.23987141 0.6935035 0.2455987 0.69382173 0.23936546 0.057477862
		 0.1196866 0.055133075 0.12021971 0.054997236 0.11388719 0.057119697 0.1134128 0.052746236
		 0.12141013 0.052944332 0.11413378 0.050290853 0.12290263 0.050917089 0.11420107 0.048888683
		 0.11411214 0.043230087 0.1123817 0.045042783 0.11322021 0.046922028 0.1137768 0.70399195
		 0.23957732 0.70586705 0.23897916 0.7076838 0.23812315 0.70951939 0.2369549 0.041409194
		 0.1111865 0.69393557 0.28225887 0.69417006 0.28006876 0.69453955 0.27787572 0.69505847
		 0.27568054 0.69485182 0.29352963 0.69434106 0.29124701 0.6940133 0.28897977 0.6938414
		 0.28673881 0.69349372 0.28447789 0.69776839 0.30028278 0.69654524 0.29807705 0.69557619
		 0.29581434 0.6957528 0.27348047 0.69666052 0.2712788 0.69782007 0.26909012 0.69893175
		 0.26675278 0.69887829 0.30260837;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 34 ".pt";
	setAttr ".pt[106]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[107]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[108]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[109]" -type "float3" 0 -2.0717177 0 ;
	setAttr ".pt[110]" -type "float3" 0 -2.0717177 0 ;
	setAttr ".pt[111]" -type "float3" 0 -2.0717177 0 ;
	setAttr ".pt[112]" -type "float3" 0 -2.0717177 0 ;
	setAttr ".pt[113]" -type "float3" 0 -2.0717177 0 ;
	setAttr ".pt[114]" -type "float3" 0 -2.0717177 0 ;
	setAttr ".pt[115]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[116]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[117]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[118]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[119]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[120]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[121]" -type "float3" 0 -2.0717142 0 ;
	setAttr ".pt[144]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[145]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[146]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[147]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[148]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[149]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[150]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[151]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[152]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[153]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[154]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[155]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[156]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[157]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[158]" -type "float3" 0 2.0717177 0 ;
	setAttr ".pt[159]" -type "float3" 0 2.0717177 0 ;
	setAttr -s 160 ".vt[0:159]"  1.94684446 174.64840698 -32.75482178 1.94684446 173.53701782 -31.091510773
		 1.94684446 171.87371826 -29.98012543 1.94684446 169.91171265 -29.58985901 1.94684446 167.94970703 -29.98012543
		 1.94684446 166.28639221 -31.091510773 1.94684446 165.17498779 -32.75482178 1.94684315 164.784729 -34.71682739
		 1.94684446 165.17498779 -36.67883301 1.94684446 166.28639221 -38.3421402 1.94684446 167.94969177 -39.45352936
		 1.94684446 169.91171265 -39.84379578 1.94684446 171.87371826 -39.45352936 1.94684446 173.53701782 -38.3421402
		 1.94684446 174.64840698 -36.67883301 1.94684315 175.038665771 -34.71682739 3.53378534 174.42404175 -32.84775925
		 3.53378534 173.36529541 -31.26323891 3.53378534 171.78079224 -30.20449066 3.53378534 169.91171265 -29.83270836
		 3.53378534 168.042633057 -30.20449066 3.53378534 166.45809937 -31.26323128 3.53378534 165.39938354 -32.84775543
		 3.53378534 165.027587891 -34.71682739 3.53378534 165.39938354 -36.58589554 3.53378534 166.45809937 -38.1704216
		 3.53378534 168.042633057 -39.22916412 3.53378534 169.91171265 -39.60094452 3.53378534 171.78076172 -39.22916412
		 3.53378534 173.36529541 -38.1704216 3.53378534 174.42404175 -36.58589935 3.53378534 174.7958374 -34.71682739
		 4.96539593 173.75012207 -33.12690353 4.96539593 172.84951782 -31.77902794 4.96539593 171.50163269 -30.87840462
		 4.96539593 169.91171265 -30.56214905 4.96539593 168.32177734 -30.87840462 4.96539593 166.97390747 -31.77902412
		 4.96539593 166.073272705 -33.12689972 4.96539593 165.75701904 -34.71682739 4.96539593 166.073272705 -36.30675507
		 4.96539593 166.97390747 -37.65462875 4.96539593 168.32177734 -38.55525208 4.96539593 169.91171265 -38.87150574
		 4.96539593 171.50161743 -38.55525208 4.96539593 172.84951782 -37.65462875 4.96539593 173.75012207 -36.30675507
		 4.96539593 174.066375732 -34.71682739 6.10151482 172.70050049 -33.56167984 6.10151482 172.046142578 -32.58238983
		 6.10151482 171.066864014 -31.92805099 6.10151482 169.91171265 -31.69827843 6.10151482 168.75656128 -31.92805099
		 6.10151482 167.77728271 -32.58238983 6.10151482 167.1229248 -33.56167603 6.10151482 166.89315796 -34.71682739
		 6.10151482 167.1229248 -35.87197495 6.10151482 167.77728271 -36.85126495 6.10151482 168.75656128 -37.50560379
		 6.10151482 169.91171265 -37.73537827 6.10151482 171.066864014 -37.50560379 6.10151482 172.046142578 -36.85126495
		 6.10151482 172.70050049 -35.87197876 6.10151482 172.93026733 -34.71682739 27.26688004 172.70050049 -33.56167984
		 27.26688004 172.046142578 -32.58238983 27.26688004 171.066864014 -31.92805099 27.26688004 169.91171265 -31.69827843
		 27.26688004 168.75656128 -31.92805099 27.26688004 167.77728271 -32.58238983 27.26688004 167.1229248 -33.56167603
		 27.26688004 166.89315796 -34.71682739 27.26688004 167.1229248 -35.87197495 27.26688004 167.77728271 -36.85126495
		 27.26688004 168.75656128 -37.50560379 27.26688004 169.91171265 -37.73537827 27.26688004 171.066864014 -37.50560379
		 27.26688004 172.046142578 -36.85126495 27.26688004 172.70050049 -35.87197876 27.26688004 172.93026733 -34.71682739
		 -3.79816937 169.91171265 -30.053781509 -3.79816937 169.91171265 -39.37987518 -3.79816937 171.96894836 -39.37987137
		 -3.79816937 171.96894836 -30.053781509 -8.39540672 175.030181885 -34.71682358 1.31825936 174.64056396 -32.7580719
		 1.31825936 173.53100586 -31.097518921 1.31825936 171.87045288 -29.98797226 1.31825936 169.91171265 -29.59835434
		 1.31825936 169.91171265 -39.83530045 1.31825936 171.87045288 -39.44567871 1.31825936 173.53100586 -38.33613205
		 1.31825936 174.64056396 -36.67557907 1.058664441 175.030181885 -34.71682739 -5.55745697 172.59117126 -38.96411896
		 -7.048906326 173.77728271 -37.96755981 -8.045461655 174.68023682 -36.47611237 -8.045461655 174.68023682 -32.9575386
		 -7.048906326 173.77728271 -31.46609116 -5.55745697 172.59115601 -30.46953011 0.44912383 174.68023682 -32.9575386
		 -0.54743195 173.77728271 -31.46609116 -2.038881779 172.59115601 -30.46953011 -2.038881779 172.59117126 -38.96411896
		 -0.54743195 173.77728271 -37.96755981 0.44912383 174.68023682 -36.47611237 -2.038881779 179.6105957 -38.96411896
		 -3.79816937 179.6105957 -39.31406403 -5.55745697 179.6105957 -38.96411896 -8.045461655 179.61061096 -36.47611237
		 -8.39540672 179.61061096 -34.71682739 -8.045461655 179.61061096 -32.9575386 0.79906845 179.61061096 -34.71682739
		 0.44912383 179.61061096 -32.9575386 0.44912383 179.61061096 -36.47611237 -0.54743195 179.6105957 -37.96755981
		 -0.54743195 179.6105957 -31.46609116 -2.038881779 179.6105957 -30.46953011 -3.79816937 179.6105957 -30.11959267
		 -5.55745697 179.6105957 -30.46953011 -7.048906326 179.6105957 -31.46609116 -7.048906326 179.6105957 -37.96755981
		 -3.79816937 167.85446167 -30.053781509 -3.79816937 167.85446167 -39.37987518 -8.39540672 164.79321289 -34.71682739
		 1.31825936 165.18286133 -36.67558289 1.31825936 166.29238892 -38.33613586 1.31825936 167.95294189 -39.44567871
		 1.31825936 167.95294189 -29.98797607 1.31825936 166.29238892 -31.097518921 1.31825936 165.18284607 -32.75807571
		 1.058664441 164.79321289 -34.71682739 -5.55745697 167.23223877 -30.46953773 -7.048906326 166.046127319 -31.46609306
		 -8.045461655 165.14318848 -32.95754242 -8.045461655 165.14318848 -36.47611618 -7.048906326 166.046127319 -37.96756744
		 -5.55745697 167.23223877 -38.96411896 0.44912383 165.14318848 -36.47611618 -0.54743195 166.046127319 -37.96756744
		 -2.038881779 167.23223877 -38.96411896 -2.038881779 167.23223877 -30.46953773 -0.54743195 166.046127319 -31.46609116
		 0.44912383 165.14318848 -32.95754242 -2.038881779 160.21279907 -30.46953773 -3.79816937 160.21279907 -30.11959267
		 -5.55745697 160.21279907 -30.46953773 -8.045461655 160.21279907 -32.95754242 -8.39540672 160.21279907 -34.71682739
		 -8.045461655 160.21279907 -36.47611618 0.79906845 160.21279907 -34.71682739 0.44912383 160.21279907 -36.47611618
		 0.44912383 160.21279907 -32.95754242 -0.54743195 160.21279907 -31.46609116 -0.54743195 160.21279907 -37.96756744
		 -2.038881779 160.21279907 -38.96411896 -3.79816937 160.21279907 -39.31406403 -5.55745697 160.21279907 -38.96411896
		 -7.048906326 160.21279907 -37.96756744 -7.048906326 160.21279907 -31.46609116;
	setAttr -s 305 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 17 0 17 16 0 16 0 0 1 2 0 2 18 0 18 17 0 2 3 0
		 3 19 0 19 18 0 3 4 0 4 20 0 20 19 0 4 5 0 5 21 0 21 20 0 5 6 0 6 22 0 22 21 0 6 7 0
		 7 23 0 23 22 0 7 8 0 8 24 0 24 23 0 8 9 0 9 25 0 25 24 0 9 10 0 10 26 0 26 25 0 10 11 0
		 11 27 0 27 26 0 11 12 0 12 28 0 28 27 0 12 13 0 13 29 0 29 28 0 13 14 0 14 30 0 30 29 0
		 14 15 0 15 31 0 31 30 0 15 0 0 16 31 0 17 33 0 33 32 0 32 16 0 18 34 0 34 33 0 19 35 0
		 35 34 0 20 36 0 36 35 0 21 37 0 37 36 0 22 38 0 38 37 0 23 39 0 39 38 0 24 40 0 40 39 0
		 25 41 0 41 40 0 26 42 0 42 41 0 27 43 0 43 42 0 28 44 0 44 43 0 29 45 0 45 44 0 30 46 0
		 46 45 0 31 47 0 47 46 0 32 47 0 33 49 0 49 48 0 48 32 0 34 50 0 50 49 0 35 51 0 51 50 0
		 36 52 0 52 51 0 37 53 0 53 52 0 38 54 0 54 53 0 39 55 0 55 54 0 40 56 0 56 55 0 41 57 0
		 57 56 0 42 58 0 58 57 0 43 59 0 59 58 0 44 60 0 60 59 0 45 61 0 61 60 0 46 62 0 62 61 0
		 47 63 0 63 62 0 48 63 0 49 65 0 65 64 0 64 48 0 50 66 0 66 65 0 51 67 0 67 66 0 52 68 0
		 68 67 0 53 69 0 69 68 0 54 70 0 70 69 0 55 71 0 71 70 0 56 72 0 72 71 0 57 73 0 73 72 0
		 58 74 0 74 73 0 59 75 0 75 74 0 60 76 0 76 75 0 61 77 0 77 76 0 62 78 0 78 77 0 63 79 0
		 79 78 0 64 79 0 88 87 0 87 83 0 83 80 0 80 88 0 90 89 0 89 81 0 81 82 0 82 90 0 86 85 0
		 85 100 0 100 101 0 101 86 0 87 86 0 101 102 0 102 87 0 102 83 0 91 90 0 90 103 0
		 103 104 0 104 91 0 82 103 0 92 91 0;
	setAttr ".ed[166:304]" 104 105 0 105 92 0 93 92 0 105 93 0 85 93 0 93 100 0
		 82 94 0 94 108 0 108 107 0 107 82 0 94 95 0 95 121 0 121 108 0 95 96 0 96 109 0 109 121 0
		 96 84 0 84 110 0 110 109 0 84 97 0 97 111 0 111 110 0 97 98 0 98 120 0 120 111 0
		 98 99 0 99 119 0 119 120 0 99 83 0 83 118 0 118 119 0 100 113 0 113 116 0 116 101 0
		 116 117 0 117 102 0 117 118 0 103 106 0 106 115 0 115 104 0 107 106 0 115 114 0 114 105 0
		 114 112 0 112 93 0 112 113 0 89 127 0 127 123 0 123 81 0 128 88 0 80 122 0 122 128 0
		 126 125 0 125 138 0 138 139 0 139 126 0 127 126 0 139 140 0 140 127 0 140 123 0 129 128 0
		 128 141 0 141 142 0 142 129 0 122 141 0 130 129 0 142 143 0 143 130 0 131 130 0 143 131 0
		 125 131 0 131 138 0 122 132 0 132 146 0 146 145 0 145 122 0 132 133 0 133 159 0 159 146 0
		 133 134 0 134 147 0 147 159 0 134 124 0 124 148 0 148 147 0 124 135 0 135 149 0 149 148 0
		 135 136 0 136 158 0 158 149 0 136 137 0 137 157 0 157 158 0 137 123 0 123 156 0 156 157 0
		 138 151 0 151 154 0 154 139 0 154 155 0 155 140 0 155 156 0 141 144 0 144 153 0 153 142 0
		 145 144 0 153 152 0 152 143 0 152 150 0 150 131 0 150 151 0 86 1 0 0 85 0 87 2 0
		 88 3 0 90 12 0 11 89 0 91 13 0 92 14 0 93 15 0 126 9 0 8 125 0 127 10 0 128 4 0 129 5 0
		 130 6 0 131 7 0 98 133 0 132 99 0 99 80 0 80 132 0 97 134 0 84 124 0 96 135 0 95 136 0
		 94 137 0 81 94 0 137 81 0;
	setAttr -s 562 ".n";
	setAttr ".n[0:165]" -type "float3"  0.10082334 0.92132759 0.37548628 0.10383392
		 0.70328522 0.70328397 0.29288438 0.67609912 0.67609823 0.29288498 0.88336635 0.36589924
		 0.10383392 0.70328522 0.70328397 0.10383285 0.38061523 0.91888565 0.29288441 0.36590281
		 0.88336504 0.29288438 0.67609912 0.67609823 0.10383285 0.38061523 0.91888565 0.10383494
		 -1.388524e-07 0.99459457 0.29288533 6.6777979e-09 0.95614761 0.29288441 0.36590281
		 0.88336504 0.10383494 -1.388524e-07 0.99459457 0.10383487 -0.38061267 0.91888642
		 0.29288507 -0.36590087 0.88336569 0.29288533 6.6777979e-09 0.95614761 0.10383487
		 -0.38061267 0.91888642 0.10383534 -0.70328432 0.70328468 0.29288539 -0.67609978 0.6760971
		 0.29288507 -0.36590087 0.88336569 0.10383534 -0.70328432 0.70328468 0.1008281 -0.92132622
		 0.37548879 0.29288647 -0.88336474 0.36590204 0.29288539 -0.67609978 0.6760971 0.1008281
		 -0.92132622 0.37548879 0.097981714 -0.99518818 7.8611663e-07 0.2928867 -0.95614713
		 -1.6694509e-08 0.29288647 -0.88336474 0.36590204 0.097981714 -0.99518818 7.8611663e-07
		 0.10082591 -0.92132676 -0.37548786 0.29288664 -0.88336468 -0.36590195 0.2928867 -0.95614713
		 -1.6694509e-08 0.10082591 -0.92132676 -0.37548786 0.10383472 -0.70328462 -0.70328456
		 0.29288545 -0.67609996 -0.67609686 0.29288664 -0.88336468 -0.36590195 0.10383472
		 -0.70328462 -0.70328456 0.10383404 -0.38061461 -0.91888577 0.29288509 -0.3659007
		 -0.88336575 0.29288545 -0.67609996 -0.67609686 0.10383404 -0.38061461 -0.91888577
		 0.10383272 -2.239563e-08 -0.99459469 0.29288542 -6.343933e-08 -0.95614749 0.29288509
		 -0.3659007 -0.88336575 0.10383272 -2.239563e-08 -0.99459469 0.10383325 0.38061655
		 -0.91888511 0.29288518 0.36590061 -0.88336581 0.29288542 -6.343933e-08 -0.95614749
		 0.10383325 0.38061655 -0.91888511 0.10383406 0.70328355 -0.70328569 0.29288492 0.67609644
		 -0.67610061 0.29288518 0.36590061 -0.88336581 0.10383406 0.70328355 -0.70328569 0.10082197
		 0.92132777 -0.37548646 0.29288507 0.88336641 -0.36589915 0.29288492 0.67609644 -0.67610061
		 0.10082197 0.92132777 -0.37548646 0.097973786 0.99518901 -8.4528597e-09 0.29288509
		 0.95614767 1.3355647e-08 0.29288507 0.88336641 -0.36589915 0.097973786 0.99518901
		 -8.4528597e-09 0.10082334 0.92132759 0.37548628 0.29288498 0.88336635 0.36589924
		 0.29288509 0.95614767 1.3355647e-08 0.29288498 0.88336635 0.36589924 0.29288438 0.67609912
		 0.67609823 0.56358248 0.58411211 0.58411282 0.56358349 0.76317936 0.31611866 0.29288438
		 0.67609912 0.67609823 0.29288441 0.36590281 0.88336504 0.56358474 0.31611848 0.76317841
		 0.56358248 0.58411211 0.58411282 0.29288441 0.36590281 0.88336504 0.29288533 6.6777979e-09
		 0.95614761 0.56358635 1.3585332e-08 0.82605714 0.56358474 0.31611848 0.76317841 0.29288533
		 6.6777979e-09 0.95614761 0.29288507 -0.36590087 0.88336569 0.56358594 -0.31611753
		 0.76317793 0.56358635 1.3585332e-08 0.82605714 0.29288507 -0.36590087 0.88336569
		 0.29288539 -0.67609978 0.6760971 0.56358713 -0.58411038 0.58411002 0.56358594 -0.31611753
		 0.76317793 0.29288539 -0.67609978 0.6760971 0.29288647 -0.88336474 0.36590204 0.56358451
		 -0.76317865 0.31611857 0.56358713 -0.58411038 0.58411002 0.29288647 -0.88336474 0.36590204
		 0.2928867 -0.95614713 -1.6694509e-08 0.5635823 -0.82605994 -7.7630675e-09 0.56358451
		 -0.76317865 0.31611857 0.2928867 -0.95614713 -1.6694509e-08 0.29288664 -0.88336468
		 -0.36590195 0.56358397 -0.76317894 -0.31611902 0.5635823 -0.82605994 -7.7630675e-09
		 0.29288664 -0.88336468 -0.36590195 0.29288545 -0.67609996 -0.67609686 0.56358671
		 -0.58411098 -0.58410996 0.56358397 -0.76317894 -0.31611902 0.29288545 -0.67609996
		 -0.67609686 0.29288509 -0.3659007 -0.88336575 0.56358558 -0.31611779 -0.76317805
		 0.56358671 -0.58411098 -0.58410996 0.29288509 -0.3659007 -0.88336575 0.29288542 -6.343933e-08
		 -0.95614749 0.56358522 -2.5229978e-08 -0.82605785 0.56358558 -0.31611779 -0.76317805
		 0.29288542 -6.343933e-08 -0.95614749 0.29288518 0.36590061 -0.88336581 0.56358373
		 0.31611824 -0.7631793 0.56358522 -2.5229978e-08 -0.82605785 0.29288518 0.36590061
		 -0.88336581 0.29288492 0.67609644 -0.67610061 0.5635826 0.58411086 -0.5841139 0.56358373
		 0.31611824 -0.7631793 0.29288492 0.67609644 -0.67610061 0.29288507 0.88336641 -0.36589915
		 0.56358439 0.76317888 -0.31611818 0.5635826 0.58411086 -0.5841139 0.29288507 0.88336641
		 -0.36589915 0.29288509 0.95614767 1.3355647e-08 0.56358445 0.82605851 8.5393516e-08
		 0.56358439 0.76317888 -0.31611818 0.29288509 0.95614767 1.3355647e-08 0.29288498
		 0.88336635 0.36589924 0.56358349 0.76317936 0.31611866 0.56358445 0.82605851 8.5393516e-08
		 0.56358349 0.76317936 0.31611866 0.56358248 0.58411211 0.58411282 0.7071076 0.49999747
		 0.50000137 0.70710498 0.65328372 0.27059743 0.56358248 0.58411211 0.58411282 0.56358474
		 0.31611848 0.76317841 0.70710933 0.27059776 0.65327889 0.7071076 0.49999747 0.50000137
		 0.56358474 0.31611848 0.76317841 0.56358635 1.3585332e-08 0.82605714 0.70711142 3.1626779e-08
		 0.70710218 0.70710933 0.27059776 0.65327889 0.56358635 1.3585332e-08 0.82605714 0.56358594
		 -0.31611753 0.76317793 0.70711058 -0.27059624 0.65327811 0.70711142 3.1626779e-08
		 0.70710218 0.56358594 -0.31611753 0.76317793 0.56358713 -0.58411038 0.58411002 0.70711148
		 -0.4999961 0.49999726 0.70711058 -0.27059624 0.65327811 0.56358713 -0.58411038 0.58411002
		 0.56358451 -0.76317865 0.31611857 0.70711279 -0.65327501 0.2705979 0.70711148 -0.4999961
		 0.49999726 0.56358451 -0.76317865 0.31611857 0.5635823 -0.82605994 -7.7630675e-09
		 0.70711178 -0.70710176 1.5813375e-08 0.70711279 -0.65327501 0.2705979 0.5635823 -0.82605994
		 -7.7630675e-09 0.56358397 -0.76317894 -0.31611902 0.70711243 -0.65327549 -0.27059793
		 0.70711178 -0.70710176 1.5813375e-08 0.56358397 -0.76317894 -0.31611902 0.56358671
		 -0.58411098 -0.58410996 0.70711231 -0.49999586 -0.4999963 0.70711243 -0.65327549
		 -0.27059793 0.56358671 -0.58411098 -0.58410996 0.56358558 -0.31611779 -0.76317805;
	setAttr ".n[166:331]" -type "float3"  0.70711124 -0.27059627 -0.6532774 0.70711231
		 -0.49999586 -0.4999963 0.56358558 -0.31611779 -0.76317805 0.56358522 -2.5229978e-08
		 -0.82605785 0.70710975 0 -0.70710373 0.70711124 -0.27059627 -0.6532774 0.56358522
		 -2.5229978e-08 -0.82605785 0.56358373 0.31611824 -0.7631793 0.70710921 0.2705982
		 -0.65327871 0.70710975 0 -0.70710373 0.56358373 0.31611824 -0.7631793 0.5635826 0.58411086
		 -0.5841139 0.70710814 0.49999675 -0.50000143 0.70710921 0.2705982 -0.65327871 0.5635826
		 0.58411086 -0.5841139 0.56358439 0.76317888 -0.31611818 0.70710534 0.65328324 -0.27059737
		 0.70710814 0.49999675 -0.50000143 0.56358439 0.76317888 -0.31611818 0.56358445 0.82605851
		 8.5393516e-08 0.70710164 0.7071119 1.3441586e-07 0.70710534 0.65328324 -0.27059737
		 0.56358445 0.82605851 8.5393516e-08 0.56358349 0.76317936 0.31611866 0.70710498 0.65328372
		 0.27059743 0.70710164 0.7071119 1.3441586e-07 0 0.92387706 0.38268927 0 0.70710683
		 0.70710677 0 0.70710683 0.70710677 0 0.92387706 0.38268927 0 0.70710683 0.70710677
		 0 0.38268331 0.92387956 0 0.38268331 0.92387956 0 0.70710683 0.70710677 0 0.38268331
		 0.92387956 0 0 0.99999994 0 0 0.99999994 0 0.38268331 0.92387956 0 0 0.99999994 0
		 -0.38268489 0.92387891 0 -0.38268489 0.92387891 0 0 0.99999994 0 -0.38268489 0.92387891
		 0 -0.70710379 0.70710975 0 -0.70710379 0.70710975 0 -0.38268489 0.92387891 0 -0.70710379
		 0.70710975 0 -0.92387718 0.38268918 0 -0.92387718 0.38268918 0 -0.70710379 0.70710975
		 0 -0.92387718 0.38268918 0 -1 0 0 -1 0 0 -0.92387718 0.38268918 0 -1 0 0 -0.92387706
		 -0.38268927 0 -0.92387706 -0.38268927 0 -1 0 0 -0.92387706 -0.38268927 0 -0.70710456
		 -0.70710897 0 -0.70710456 -0.70710897 0 -0.92387706 -0.38268927 0 -0.70710456 -0.70710897
		 0 -0.38268557 -0.92387867 0 -0.38268557 -0.92387867 0 -0.70710456 -0.70710897 0 -0.38268557
		 -0.92387867 0 1.0946802e-08 -0.99999994 0 1.0946802e-08 -0.99999994 0 -0.38268557
		 -0.92387867 0 1.0946802e-08 -0.99999994 0 0.38268402 -0.92387933 0 0.38268402 -0.92387933
		 0 1.0946802e-08 -0.99999994 0 0.38268402 -0.92387933 0 0.70710593 -0.7071076 0 0.70710593
		 -0.7071076 0 0.38268402 -0.92387933 0 0.70710593 -0.7071076 0 0.92387712 -0.38268924
		 0 0.92387712 -0.38268924 0 0.70710593 -0.7071076 0 0.92387712 -0.38268924 0 1 -1.0946818e-08
		 0 1 -1.0946818e-08 0 0.92387712 -0.38268924 0 1 -1.0946818e-08 0 0.92387706 0.38268927
		 0 0.92387706 0.38268927 0 1 -1.0946818e-08 -0.046002284 -4.7901415e-07 0.99894124
		 -0.037254695 0.27549961 0.96057904 -0.030924074 0.041602392 0.99865556 -0.098038524
		 -6.4826929e-07 0.99518257 -0.037254434 0.27550051 -0.96057874 -0.046002034 4.149793e-07
		 -0.99894136 -0.098039024 3.9588244e-07 -0.99518257 -0.030924222 0.041603487 -0.99865556
		 -0.018511418 0.68636614 0.72702062 -0.015831456 0.90392381 0.42740035 -0.018096674
		 0.88155276 0.47173864 -0.019880734 0.66899431 0.7430017 -0.037254695 0.27549961 0.96057904
		 -0.018511418 0.68636614 0.72702062 -0.019880734 0.66899431 0.7430017 -0.0097298659
		 0.57934326 0.81502557 -0.030924074 0.041602392 0.99865556 -0.037254695 0.27549961
		 0.96057904 -0.0097298659 0.57934326 0.81502557 -0.018511623 0.68636507 -0.72702152
		 -0.037254434 0.27550051 -0.96057874 -0.0097288489 0.57934618 -0.81502354 -0.019879946
		 0.66899264 -0.74300313 -0.037254434 0.27550051 -0.96057874 -0.030924222 0.041603487
		 -0.99865556 -0.0097288489 0.57934618 -0.81502354 -0.015832206 0.90392435 -0.4273991
		 -0.018511623 0.68636507 -0.72702152 -0.019879946 0.66899264 -0.74300313 -0.018096926
		 0.88155359 -0.47173691 -0.0095196823 0.99995464 -6.5563825e-07 -0.015832206 0.90392435
		 -0.4273991 -0.018096926 0.88155359 -0.47173691 -0.015831456 0.90392381 0.42740035
		 -0.0095196823 0.99995464 -6.5563825e-07 -0.018096674 0.88155276 0.47173864 -0.030924222
		 0.041603487 -0.99865556 -0.41145268 0.0017015606 -0.91142958 -0.37876174 0.0023830659
		 -0.92549121 0 0.0044885334 -0.99998993 -0.41145268 0.0017015606 -0.91142958 -0.71738333
		 2.2756319e-07 -0.69667876 -0.69455802 0 -0.71943665 -0.37876174 0.0023830659 -0.92549121
		 -0.71738333 2.2756319e-07 -0.69667876 -0.92973691 1.0037191e-07 -0.36822456 -0.91910625
		 -5.347027e-08 -0.39400974 -0.69455802 0 -0.71943665 -0.92973691 1.0037191e-07 -0.36822456
		 -1 -1.3098529e-08 3.078388e-08 -0.99999994 -2.3845724e-08 -9.0712291e-08 -0.91910625
		 -5.347027e-08 -0.39400974 -1 -1.3098529e-08 3.078388e-08 -0.92973685 -6.8348065e-08
		 0.36822474 -0.91910625 3.1099756e-08 0.39400965 -0.99999994 -2.3845724e-08 -9.0712291e-08
		 -0.92973685 -6.8348065e-08 0.36822474 -0.71738416 -1.5897341e-07 0.69667786 -0.69455922
		 0 0.71943551 -0.91910625 3.1099756e-08 0.39400965 -0.71738416 -1.5897341e-07 0.69667786
		 -0.41145208 0.0017011467 0.91142988 -0.37876108 0.0023832 0.92549139 -0.69455922
		 0 0.71943551 -0.41145208 0.0017011467 0.91142988 -0.030924074 0.041602392 0.99865556
		 5.5255697e-07 0.0044887904 0.99998993 -0.37876108 0.0023832 0.92549139 0.64888787
		 0 0.76088411 0.89248705 0.010103045 0.45095986 0.90574229 0.012617012 0.42364079
		 0.69455814 0 0.71943665 0.32392749 0.0030653188 0.94607693 0.64888787 0 0.76088411
		 0.69455814 0 0.71943665 0.37876123 0.0023831993 0.92549133;
	setAttr ".n[332:497]" -type "float3"  -0.030924074 0.041602392 0.99865556 0.32392749
		 0.0030653188 0.94607693 0.37876123 0.0023831993 0.92549133 5.5255697e-07 0.0044887904
		 0.99998993 0.64888799 0 -0.76088399 0.32392922 0.0030651374 -0.94607633 0.37876213
		 0.0023830619 -0.92549098 0.6945582 0 -0.71943653 0.32392922 0.0030651374 -0.94607633
		 -0.030924222 0.041603487 -0.99865556 0 0.0044885334 -0.99998993 0.37876213 0.0023830619
		 -0.92549098 0.89248699 0.010103019 -0.45095998 0.64888799 0 -0.76088399 0.6945582
		 0 -0.71943653 0.90574241 0.012616984 -0.42364088 0.99962771 0.027284686 -1.6392974e-08
		 0.89248699 0.010103019 -0.45095998 0.90574241 0.012616984 -0.42364088 0.99962777
		 0.027284687 0 0.89248705 0.010103045 0.45095986 0.99962771 0.027284686 -1.6392974e-08
		 0.99962777 0.027284687 0 0.90574229 0.012617012 0.42364079 -0.046002034 4.149793e-07
		 -0.99894136 -0.037253927 -0.27549934 -0.9605791 -0.030924609 -0.041603025 -0.9986555
		 -0.098039024 3.9588244e-07 -0.99518257 -0.037253689 -0.27549887 0.96057928 -0.046002284
		 -4.7901415e-07 0.99894124 -0.098038524 -6.4826929e-07 0.99518257 -0.030924821 -0.041602828
		 0.99865556 -0.018512646 -0.68637139 -0.7270155 -0.015838463 -0.90392601 -0.42739546
		 -0.018097594 -0.88155729 -0.47172999 -0.01988245 -0.66899949 -0.74299687 -0.037253927
		 -0.27549934 -0.9605791 -0.018512646 -0.68637139 -0.7270155 -0.01988245 -0.66899949
		 -0.74299687 -0.0097311102 -0.57933998 -0.81502783 -0.030924609 -0.041603025 -0.9986555
		 -0.037253927 -0.27549934 -0.9605791 -0.0097311102 -0.57933998 -0.81502783 -0.018511951
		 -0.68637049 0.72701645 -0.037253689 -0.27549887 0.96057928 -0.0097316746 -0.57933599
		 0.81503069 -0.0198838 -0.66899812 0.74299812 -0.037253689 -0.27549887 0.96057928
		 -0.030924821 -0.041602828 0.99865556 -0.0097316746 -0.57933599 0.81503069 -0.015838657
		 -0.90392643 0.42739463 -0.018511951 -0.68637049 0.72701645 -0.0198838 -0.66899812
		 0.74299812 -0.018105494 -0.88155794 0.47172853 -0.0095339697 -0.99995458 1.3880634e-06
		 -0.015838657 -0.90392643 0.42739463 -0.018105494 -0.88155794 0.47172853 -0.015838463
		 -0.90392601 -0.42739546 -0.0095339697 -0.99995458 1.3880634e-06 -0.018097594 -0.88155729
		 -0.47172999 -0.030924821 -0.041602828 0.99865556 -0.41145247 -0.0017016997 0.91142958
		 -0.37876052 -0.0023831397 0.92549163 0 -0.0044887853 0.99998993 -0.41145247 -0.0017016997
		 0.91142958 -0.71738267 -1.0668682e-07 0.69667935 -0.69455659 1.1026005e-07 0.71943796
		 -0.37876052 -0.0023831397 0.92549163 -0.71738267 -1.0668682e-07 0.69667935 -0.92973679
		 -5.5722545e-08 0.36822471 -0.91910583 4.8239926e-08 0.39401075 -0.69455659 1.1026005e-07
		 0.71943796 -0.92973679 -5.5722545e-08 0.36822471 -1 -4.0137018e-09 -6.7724798e-08
		 -0.99999994 0 0 -0.91910583 4.8239926e-08 0.39401075 -1 -4.0137018e-09 -6.7724798e-08
		 -0.92973679 1.1716246e-07 -0.36822483 -0.91910571 0 -0.39401114 -0.99999994 0 0 -0.92973679
		 1.1716246e-07 -0.36822483 -0.71738231 2.2756234e-07 -0.69667965 -0.69455624 0 -0.71943831
		 -0.91910571 0 -0.39401114 -0.71738231 2.2756234e-07 -0.69667965 -0.411452 -0.0017012493
		 -0.91142988 -0.37876007 -0.0023831967 -0.92549181 -0.69455624 0 -0.71943831 -0.411452
		 -0.0017012493 -0.91142988 -0.030924609 -0.041603025 -0.9986555 0 -0.0044887844 -0.99998993
		 -0.37876007 -0.0023831967 -0.92549181 0.64888692 0 -0.76088488 0.89248729 -0.010102975
		 -0.45095941 0.90574265 -0.012616954 -0.4236401 0.69455695 0 -0.71943766 0.32392788
		 -0.0030653113 -0.94607687 0.64888692 0 -0.76088488 0.69455695 0 -0.71943766 0.37876049
		 -0.0023831963 -0.92549169 -0.030924609 -0.041603025 -0.9986555 0.32392788 -0.0030653113
		 -0.94607687 0.37876049 -0.0023831963 -0.92549169 0 -0.0044887844 -0.99998993 0.64888644
		 0 0.7608853 0.3239283 -0.0030653088 0.94607663 0.37876052 -0.0023831946 0.92549163
		 0.69455665 0 0.71943796 0.3239283 -0.0030653088 0.94607663 -0.030924821 -0.041602828
		 0.99865556 0 -0.0044887853 0.99998993 0.37876052 -0.0023831946 0.92549163 0.89248723
		 -0.010102943 0.4509595 0.64888644 0 0.7608853 0.69455665 0 0.71943796 0.90574265
		 -0.012616918 0.42364022 0.99962765 -0.027284686 1.6392825e-08 0.89248723 -0.010102943
		 0.4509595 0.90574265 -0.012616918 0.42364022 0.99962777 -0.027284686 0 0.89248729
		 -0.010102975 -0.45095941 0.99962765 -0.027284686 1.6392825e-08 0.99962777 -0.027284686
		 0 0.90574265 -0.012616954 -0.4236401 -0.015831456 0.90392381 0.42740035 -0.018511418
		 0.68636614 0.72702062 0.10383392 0.70328522 0.70328397 0.10082334 0.92132759 0.37548628
		 -0.018511418 0.68636614 0.72702062 -0.037254695 0.27549961 0.96057904 0.10383285
		 0.38061523 0.91888565 0.10383392 0.70328522 0.70328397 -0.037254695 0.27549961 0.96057904
		 -0.046002284 -4.7901415e-07 0.99894124 0.10383494 -1.388524e-07 0.99459457 0.10383285
		 0.38061523 0.91888565 -0.046002034 4.149793e-07 -0.99894136 -0.037254434 0.27550051
		 -0.96057874 0.10383325 0.38061655 -0.91888511 0.10383272 -2.239563e-08 -0.99459469
		 -0.037254434 0.27550051 -0.96057874 -0.018511623 0.68636507 -0.72702152 0.10383406
		 0.70328355 -0.70328569 0.10383325 0.38061655 -0.91888511 -0.018511623 0.68636507
		 -0.72702152 -0.015832206 0.90392435 -0.4273991 0.10082197 0.92132777 -0.37548646
		 0.10383406 0.70328355 -0.70328569 -0.015832206 0.90392435 -0.4273991 -0.0095196823
		 0.99995464 -6.5563825e-07 0.097973786 0.99518901 -8.4528597e-09 0.10082197 0.92132777
		 -0.37548646 -0.0095196823 0.99995464 -6.5563825e-07 -0.015831456 0.90392381 0.42740035
		 0.10082334 0.92132759 0.37548628 0.097973786 0.99518901 -8.4528597e-09 -0.015838463
		 -0.90392601 -0.42739546 -0.018512646 -0.68637139 -0.7270155 0.10383472 -0.70328462
		 -0.70328456 0.10082591 -0.92132676 -0.37548786 -0.018512646 -0.68637139 -0.7270155
		 -0.037253927 -0.27549934 -0.9605791 0.10383404 -0.38061461 -0.91888577 0.10383472
		 -0.70328462 -0.70328456 -0.037253927 -0.27549934 -0.9605791 -0.046002034 4.149793e-07
		 -0.99894136;
	setAttr ".n[498:561]" -type "float3"  0.10383272 -2.239563e-08 -0.99459469
		 0.10383404 -0.38061461 -0.91888577 -0.046002284 -4.7901415e-07 0.99894124 -0.037253689
		 -0.27549887 0.96057928 0.10383487 -0.38061267 0.91888642 0.10383494 -1.388524e-07
		 0.99459457 -0.037253689 -0.27549887 0.96057928 -0.018511951 -0.68637049 0.72701645
		 0.10383534 -0.70328432 0.70328468 0.10383487 -0.38061267 0.91888642 -0.018511951
		 -0.68637049 0.72701645 -0.015838657 -0.90392643 0.42739463 0.1008281 -0.92132622
		 0.37548879 0.10383534 -0.70328432 0.70328468 -0.015838657 -0.90392643 0.42739463
		 -0.0095339697 -0.99995458 1.3880634e-06 0.097981714 -0.99518818 7.8611663e-07 0.1008281
		 -0.92132622 0.37548879 -0.0095339697 -0.99995458 1.3880634e-06 -0.015838463 -0.90392601
		 -0.42739546 0.10082591 -0.92132676 -0.37548786 0.097981714 -0.99518818 7.8611663e-07
		 -0.41145208 0.0017011467 0.91142988 -0.71738416 -1.5897341e-07 0.69667786 -0.71738267
		 -1.0668682e-07 0.69667935 -0.41145247 -0.0017016997 0.91142958 -0.098038524 -6.4826929e-07
		 0.99518257 -0.030924074 0.041602392 0.99865556 -0.41145208 0.0017011467 0.91142988
		 -0.098038524 -6.4826929e-07 0.99518257 -0.41145247 -0.0017016997 0.91142958 -0.030924821
		 -0.041602828 0.99865556 -0.098038524 -6.4826929e-07 0.99518257 -0.41145208 0.0017011467
		 0.91142988 -0.41145247 -0.0017016997 0.91142958 -0.71738416 -1.5897341e-07 0.69667786
		 -0.92973685 -6.8348065e-08 0.36822474 -0.92973679 -5.5722545e-08 0.36822471 -0.71738267
		 -1.0668682e-07 0.69667935 -0.92973685 -6.8348065e-08 0.36822474 -1 -1.3098529e-08
		 3.078388e-08 -1 -4.0137018e-09 -6.7724798e-08 -0.92973679 -5.5722545e-08 0.36822471
		 -1 -1.3098529e-08 3.078388e-08 -0.92973691 1.0037191e-07 -0.36822456 -0.92973679
		 1.1716246e-07 -0.36822483 -1 -4.0137018e-09 -6.7724798e-08 -0.92973691 1.0037191e-07
		 -0.36822456 -0.71738333 2.2756319e-07 -0.69667876 -0.71738231 2.2756234e-07 -0.69667965
		 -0.92973679 1.1716246e-07 -0.36822483 -0.71738333 2.2756319e-07 -0.69667876 -0.41145268
		 0.0017015606 -0.91142958 -0.411452 -0.0017012493 -0.91142988 -0.71738231 2.2756234e-07
		 -0.69667965 -0.030924222 0.041603487 -0.99865556 -0.098039024 3.9588244e-07 -0.99518257
		 -0.41145268 0.0017015606 -0.91142958 -0.411452 -0.0017012493 -0.91142988 -0.098039024
		 3.9588244e-07 -0.99518257 -0.030924609 -0.041603025 -0.9986555 -0.41145268 0.0017015606
		 -0.91142958 -0.098039024 3.9588244e-07 -0.99518257 -0.411452 -0.0017012493 -0.91142988;
	setAttr -s 144 -ch 562 ".fc[0:143]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 23 24 -21
		mu 0 4 16 17 18 19
		f 4 25 26 27 -24
		mu 0 4 17 20 21 18
		f 4 28 29 30 -27
		mu 0 4 20 22 23 21
		f 4 31 32 33 -30
		mu 0 4 22 24 25 23
		f 4 34 35 36 -33
		mu 0 4 24 26 27 25
		f 4 37 38 39 -36
		mu 0 4 26 28 29 27
		f 4 40 41 42 -39
		mu 0 4 28 30 31 29
		f 4 43 44 45 -42
		mu 0 4 30 32 33 31
		f 4 46 -4 47 -45
		mu 0 4 32 0 3 33
		f 4 -3 48 49 50
		mu 0 4 3 2 34 35
		f 4 -7 51 52 -49
		mu 0 4 2 5 36 34
		f 4 -10 53 54 -52
		mu 0 4 5 7 37 36
		f 4 -13 55 56 -54
		mu 0 4 7 9 38 37
		f 4 -16 57 58 -56
		mu 0 4 9 11 39 38
		f 4 -19 59 60 -58
		mu 0 4 11 13 40 39
		f 4 -22 61 62 -60
		mu 0 4 13 15 41 40
		f 4 -25 63 64 -62
		mu 0 4 19 18 42 43
		f 4 -28 65 66 -64
		mu 0 4 18 21 44 42
		f 4 -31 67 68 -66
		mu 0 4 21 23 45 44
		f 4 -34 69 70 -68
		mu 0 4 23 25 46 45
		f 4 -37 71 72 -70
		mu 0 4 25 27 47 46
		f 4 -40 73 74 -72
		mu 0 4 27 29 48 47
		f 4 -43 75 76 -74
		mu 0 4 29 31 49 48
		f 4 -46 77 78 -76
		mu 0 4 31 33 50 49
		f 4 -48 -51 79 -78
		mu 0 4 33 3 35 50
		f 4 -50 80 81 82
		mu 0 4 35 34 51 52
		f 4 -53 83 84 -81
		mu 0 4 34 36 53 51
		f 4 -55 85 86 -84
		mu 0 4 36 37 54 53
		f 4 -57 87 88 -86
		mu 0 4 37 38 55 54
		f 4 -59 89 90 -88
		mu 0 4 38 39 56 55
		f 4 -61 91 92 -90
		mu 0 4 39 40 57 56
		f 4 -63 93 94 -92
		mu 0 4 40 41 58 57
		f 4 -65 95 96 -94
		mu 0 4 43 42 59 60
		f 4 -67 97 98 -96
		mu 0 4 42 44 61 59
		f 4 -69 99 100 -98
		mu 0 4 44 45 62 61
		f 4 -71 101 102 -100
		mu 0 4 45 46 63 62
		f 4 -73 103 104 -102
		mu 0 4 46 47 64 63
		f 4 -75 105 106 -104
		mu 0 4 47 48 65 64
		f 4 -77 107 108 -106
		mu 0 4 48 49 66 65
		f 4 -79 109 110 -108
		mu 0 4 49 50 67 66
		f 4 -80 -83 111 -110
		mu 0 4 50 35 52 67
		f 4 -82 112 113 114
		mu 0 4 52 51 68 69
		f 4 -85 115 116 -113
		mu 0 4 51 53 70 68
		f 4 -87 117 118 -116
		mu 0 4 53 54 71 70
		f 4 -89 119 120 -118
		mu 0 4 54 55 72 71
		f 4 -91 121 122 -120
		mu 0 4 55 56 73 72
		f 4 -93 123 124 -122
		mu 0 4 56 57 74 73
		f 4 -95 125 126 -124
		mu 0 4 57 58 75 74
		f 4 -97 127 128 -126
		mu 0 4 60 59 76 77
		f 4 -99 129 130 -128
		mu 0 4 59 61 78 76
		f 4 -101 131 132 -130
		mu 0 4 61 62 79 78
		f 4 -103 133 134 -132
		mu 0 4 62 63 80 79
		f 4 -105 135 136 -134
		mu 0 4 63 64 81 80
		f 4 -107 137 138 -136
		mu 0 4 64 65 82 81
		f 4 -109 139 140 -138
		mu 0 4 65 66 83 82
		f 4 -111 141 142 -140
		mu 0 4 66 67 84 83
		f 4 -112 -115 143 -142
		mu 0 4 67 52 69 84
		f 4 144 145 146 147
		mu 0 4 85 86 87 88
		f 4 148 149 150 151
		mu 0 4 89 90 91 92
		f 4 152 153 154 155
		mu 0 4 93 94 95 96
		f 4 156 -156 157 158
		mu 0 4 86 93 96 97
		f 3 -146 -159 159
		mu 0 3 87 86 97
		f 4 160 161 162 163
		mu 0 4 98 89 99 100
		f 3 -152 164 -162
		mu 0 3 89 92 99
		f 4 165 -164 166 167
		mu 0 4 101 98 100 102
		f 3 168 -168 169
		mu 0 3 103 101 102
		f 3 170 171 -154
		mu 0 3 94 104 95
		f 4 172 173 174 175
		mu 0 4 92 105 106 107
		f 4 176 177 178 -174
		mu 0 4 105 108 109 106
		f 4 179 180 181 -178
		mu 0 4 108 110 111 109
		f 4 182 183 184 -181
		mu 0 4 110 112 113 111
		f 4 185 186 187 -184
		mu 0 4 114 115 116 117
		f 4 188 189 190 -187
		mu 0 4 115 118 119 116
		f 4 191 192 193 -190
		mu 0 4 118 120 121 119
		f 4 194 195 196 -193
		mu 0 4 120 87 122 121
		f 4 -155 197 198 199
		mu 0 4 96 95 123 124
		f 4 -158 -200 200 201
		mu 0 4 97 96 124 125
		f 4 -160 -202 202 -196
		mu 0 4 87 97 125 122
		f 4 -163 203 204 205
		mu 0 4 100 99 126 127
		f 4 -165 -176 206 -204
		mu 0 4 99 92 107 126
		f 4 -167 -206 207 208
		mu 0 4 102 100 127 128
		f 4 -170 -209 209 210
		mu 0 4 103 102 128 129
		f 4 -172 -211 211 -198
		mu 0 4 95 104 130 123
		f 4 212 213 214 -150
		mu 0 4 90 131 132 91
		f 4 215 -148 216 217
		mu 0 4 133 85 88 134
		f 4 218 219 220 221
		mu 0 4 135 136 137 138
		f 4 222 -222 223 224
		mu 0 4 131 135 138 139
		f 3 -214 -225 225
		mu 0 3 132 131 139
		f 4 226 227 228 229
		mu 0 4 140 133 141 142
		f 3 -218 230 -228
		mu 0 3 133 134 141
		f 4 231 -230 232 233
		mu 0 4 143 140 142 144
		f 3 234 -234 235
		mu 0 3 145 143 144
		f 3 236 237 -220
		mu 0 3 136 146 137
		f 4 238 239 240 241
		mu 0 4 134 147 148 149
		f 4 242 243 244 -240
		mu 0 4 147 150 151 148
		f 4 245 246 247 -244
		mu 0 4 150 152 153 151
		f 4 248 249 250 -247
		mu 0 4 152 154 155 153
		f 4 251 252 253 -250
		mu 0 4 156 157 158 159
		f 4 254 255 256 -253
		mu 0 4 157 160 161 158
		f 4 257 258 259 -256
		mu 0 4 160 162 163 161
		f 4 260 261 262 -259
		mu 0 4 162 132 164 163
		f 4 -221 263 264 265
		mu 0 4 138 137 165 166
		f 4 -224 -266 266 267
		mu 0 4 139 138 166 167
		f 4 -226 -268 268 -262
		mu 0 4 132 139 167 164
		f 4 -229 269 270 271
		mu 0 4 142 141 168 169
		f 4 -231 -242 272 -270
		mu 0 4 141 134 149 168
		f 4 -233 -272 273 274
		mu 0 4 144 142 169 170
		f 4 -236 -275 275 276
		mu 0 4 145 144 170 171
		f 4 -238 -277 277 -264
		mu 0 4 137 146 172 165
		f 4 -153 278 -1 279
		mu 0 4 173 174 1 0
		f 4 -157 280 -5 -279
		mu 0 4 174 175 4 1
		f 4 -145 281 -8 -281
		mu 0 4 175 176 6 4
		f 4 -149 282 -35 283
		mu 0 4 177 178 26 24
		f 4 -161 284 -38 -283
		mu 0 4 178 179 28 26
		f 4 -166 285 -41 -285
		mu 0 4 179 180 30 28
		f 4 -169 286 -44 -286
		mu 0 4 180 181 32 30
		f 4 -171 -280 -47 -287
		mu 0 4 181 173 0 32
		f 4 -219 287 -26 288
		mu 0 4 182 183 20 17
		f 4 -223 289 -29 -288
		mu 0 4 183 184 22 20
		f 4 -213 -284 -32 -290
		mu 0 4 184 177 24 22
		f 4 -216 290 -11 -282
		mu 0 4 176 185 8 6
		f 4 -227 291 -14 -291
		mu 0 4 185 186 10 8
		f 4 -232 292 -17 -292
		mu 0 4 186 187 12 10
		f 4 -235 293 -20 -293
		mu 0 4 187 188 14 12
		f 4 -237 -289 -23 -294
		mu 0 4 189 182 17 16
		f 4 -192 294 -243 295
		mu 0 4 120 118 150 147
		f 3 -147 -195 296
		mu 0 3 88 87 120
		f 3 297 -239 -217
		mu 0 3 88 147 134
		f 3 -297 -296 -298
		mu 0 3 88 120 147
		f 4 -189 298 -246 -295
		mu 0 4 118 115 152 150
		f 4 -186 299 -249 -299
		mu 0 4 115 114 154 152
		f 4 -183 300 -252 -300
		mu 0 4 112 110 157 156
		f 4 -180 301 -255 -301
		mu 0 4 110 108 160 157
		f 4 -177 302 -258 -302
		mu 0 4 108 105 162 160
		f 3 -151 303 -173
		mu 0 3 92 91 105
		f 3 304 -215 -261
		mu 0 3 162 91 132
		f 3 -304 -305 -303
		mu 0 3 105 91 162;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "60F22D98-486E-CF70-59BA-D09CFE8549F2";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings";
	rename -uid "12E2A29F-49A4-0BEE-D2F7-DB9176758756";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "35A47FD5-48D3-6444-77E3-10BDBAA14969";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F0429D38-4DAF-2270-AC81-AE906CC7A442";
createNode displayLayerManager -n "layerManager";
	rename -uid "0257FF3B-4B19-B9DA-17EC-70BA091C20CC";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "314C3DCD-4D89-8EA6-1D9F-1F8A1774C13F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2AB08AF9-42ED-5057-5188-3280F0393B42";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3B8D1A55-4E61-828E-1633-398CDDB97786";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "19B367EC-456B-75C6-C6C4-66BA0D810C6D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1237\n            -height 717\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n"
		+ "            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1236\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1237\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2742\n            -height 1523\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showRowButtons 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n"
		+ "                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            cameraSequencer -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -showThumbnail 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -showNamespace 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.png\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2742\\n    -height 1523\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2742\\n    -height 1523\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CB205D0B-4CD6-9370-837F-AD90EF92B728";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 230 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "05C56E14-4AB2-FD8A-2E66-0D918C261D44";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyCube -n "polyCube1";
	rename -uid "73C9500D-4667-082F-17F5-EB895E9441EA";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror1";
	rename -uid "9F536E0D-485B-293C-8203-61A9FF22C90C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 6.5295469864903657 0 -4.5720380210350475 0 0 16.752828750138121 0 0
		 0.42456843355313767 0 0.60634656210453552 0 -7.4626104773820972 8.3764143392673258 -21.183227373722499 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".mtt" 1;
	setAttr ".sp" -type "double3" 0.50000000385724341 -0.49999999786294386 0.50000045413671046 ;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polySeparate -n "polySeparate1";
	rename -uid "6E954984-4237-DA31-4C37-BAB0A8D21EF3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId1";
	rename -uid "8BDAB64A-47A4-A673-9986-84AAADD263DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "32725A14-4AD5-DD83-766E-FBA1A24FF81D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId2";
	rename -uid "B66F2DC4-4B3E-0586-D548-BFB8734CA286";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "5B99CFEE-455C-03C2-F114-F7ACA765B68C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "16FA5982-4EA7-4661-EB80-2A81A82B3AE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId4";
	rename -uid "B3E97AC8-45E5-ACC1-F8F7-F3A737D48D67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "592E7957-4601-2EAE-561A-0D8948B5C2B8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyMirror -n "polyMirror2";
	rename -uid "D321EA80-4544-2B18-4DED-4C834942FD7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0 0 -38.401460108825248 0 0 16.752828750138121 0 0 0.74021247500008702 0 0 0
		 -10.885206357442275 8.3764143392673258 0.60669410024148007 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".mtt" 1;
	setAttr ".sp" -type "double3" 0.50000000385724341 -0.49999999786294386 0.50000080313503403 ;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polySeparate -n "polySeparate2";
	rename -uid "393DDFE7-4750-DB20-9AAE-B3B52E04F7B3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId5";
	rename -uid "B1017EC8-4CFE-9484-6B5C-C6BD7D3F88B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "40451D8D-4EED-FC39-8D32-74A9759C388E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId6";
	rename -uid "4EB28F40-4011-9474-1C00-A2BA930F2360";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "BF94ED0A-460A-B7C6-4143-1189DA31E273";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "F22D9E0A-42F6-5110-8AE3-6CA037A31EEB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId8";
	rename -uid "70E7E86C-42C1-611D-8FF4-55B035A3BF80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "06E96754-4FB4-E237-FC12-448B001846E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyCube -n "polyCube2";
	rename -uid "6FCA6FA2-4BC9-4249-AB52-789D7590A405";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror3";
	rename -uid "26566A14-4624-6874-3B81-70A75177D349";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 7.8799698979531065 0 0 0 0 7.7465878820620295 0 0 0 0 1.0931499266640547 0
		 -6.5751146050798077 3.8732939410310148 17.586119939715068 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".mtt" 1;
	setAttr ".sp" -type "double3" -0.49999999636994796 -0.5 -0.50000000488953011 ;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polyMirror -n "polyMirror4";
	rename -uid "EBCF6492-45E7-B0CA-7CBA-BC8035FC7DB1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 7.8799698979531065 0 0 0 0 7.7465878820620295 0 0 0 0 1.0931499266640547 0
		 -6.5751146050798077 3.8732939410310148 -0.056756716389206319 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".mtt" 1;
	setAttr ".sp" -type "double3" -0.49999999636994796 -0.5 -0.50000000488953011 ;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polySeparate -n "polySeparate3";
	rename -uid "B6B5077A-44AB-B7A2-FC79-F0B28DECBEC8";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId9";
	rename -uid "91AE50E6-413E-FBB1-D060-85A12B7D34DC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "27273401-4ABF-1805-21AB-D7A7E14AFB9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId10";
	rename -uid "3366F525-49E9-AD48-4351-98A72FCF03A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "A1A5ACFD-4E83-2611-06E3-22BBC4195E97";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "6BFE6CB7-4977-D122-9308-5CAC189735C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId12";
	rename -uid "3F2E8657-4A06-C069-7434-8F8E94CA7C98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "8D038669-44FA-D8B7-3D2E-50BFF0B067E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polySeparate -n "polySeparate4";
	rename -uid "A0C1429F-47B6-23A8-6648-09B081A0E5F0";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId13";
	rename -uid "612CAEBC-4E96-EA58-86BF-89B70D945C8C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "0F2BFF45-4384-3C5F-1DFC-ADB72BE72206";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId14";
	rename -uid "3A4926BD-4323-CE9C-F38B-B9A739B9B387";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "25E1843B-4DBC-254F-59BC-478E62504876";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "DA56EE72-42E6-4E3C-7DF0-6E8DE0E1D5B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId16";
	rename -uid "3A4A6F58-4BB4-E558-D8C3-6993B72E35A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "A42E563B-4FF6-DE42-D7AF-C8A1BC8164E9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyCube -n "polyCube3";
	rename -uid "919E012E-4A76-57E2-1C96-A2934A895C9D";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror5";
	rename -uid "8366D778-4F07-C6C1-4414-2FAE73C85D68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 5.6409658257471795 0 0 0 0 2.2424493545693087 0 0 0 0 5.6409658257471795 0
		 -7.0907042549825912 1.1212246772846544 30.837918743915573 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".mtt" 1;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polySeparate -n "polySeparate5";
	rename -uid "75517C9D-416E-B6B3-304B-248416BCC324";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId17";
	rename -uid "E226D8D2-4C49-ACEF-F610-069EC7066C99";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "D9DB3D3B-4590-3D9E-399F-469FCE7E8459";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId18";
	rename -uid "D36089C6-4B52-0F7D-C7B5-AC8929D918C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "7F80E71F-4EF0-FBAA-9765-B08D9FE78B9E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "33DDC3DF-429F-B264-B8E1-118856F04E86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId20";
	rename -uid "BA62E3CD-4291-F1A4-89DD-2DB5D7DEA00A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "F0919E51-4DF2-A74F-3286-FC9458AD9345";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode displayLayer -n "blockout";
	rename -uid "6D7CBA70-4F6A-1347-ED62-5B976F2B7DD0";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "4C92F964-406A-1885-219F-31A55311E0ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 7.8799698979531065 0 0 0 0 7.7465878820620295 0 0 0 0 1.0931499266640547 0
		 -6.5751146050798077 3.8732939410310148 17.586119939715068 1;
	setAttr ".wt" 0.27234089374542236;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "B52F19A1-4663-E709-B419-2A8F31AECD7B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 7.8799698979531065 0 0 0 0 7.7465878820620295 0 0 0 0 1.0931499266640547 0
		 -6.5751146050798077 3.8732939410310148 17.586119939715068 1;
	setAttr ".wt" 0.38392388820648193;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode lambert -n "white";
	rename -uid "D416E100-46D9-8244-5C59-7285F6E53E5A";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "bookPagesSG";
	rename -uid "7CE6E604-4DFF-D663-47F5-E68F37195F5F";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "21BED158-4920-E951-8DAD-A0BEBF7BE77C";
createNode standardSurface -n "bookGreen";
	rename -uid "A242E72C-4AD6-E3B5-DB44-2AA0A08DEC3A";
	setAttr ".bc" -type "float3" 0.023000063 0.054000001 0.017117999 ;
createNode shadingEngine -n "bookCoverSG";
	rename -uid "A579E80C-484E-742D-8920-70A92BF5B501";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "ECB6D1D4-4A4D-9852-047B-369F7DA7F763";
createNode aiStandardSurface -n "texturedMaterial";
	rename -uid "340C9E43-413A-8149-8862-BAB0CF2A46E6";
createNode file -n "file2";
	rename -uid "E5EB70A7-42E1-5BE8-1B17-D68B20A517EC";
	setAttr ".ftn" -type "string" "C:/Users/coope/Desktop/DAGV_1200/Repository/DAGV_1200/game_room/sourceimages/gameUV_3_aiStandardSurface3_Metallic.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "7686E913-41BC-0DC3-1B17-DAA0101D12FC";
createNode file -n "file1";
	rename -uid "C2E95B02-4C7D-7BB7-830B-9684100CF00A";
	setAttr ".ftn" -type "string" "C:/Users/coope/Desktop/DAGV_1200/Repository/DAGV_1200/game_room/sourceimages/gameUV_3_aiStandardSurface3_BaseColorPlus.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "87DFCD7B-44D4-EBCD-00AA-04B2A1157B99";
createNode file -n "file3";
	rename -uid "BDE19591-467C-4225-A329-9CBF30577B4E";
	setAttr ".ftn" -type "string" "C:/Users/coope/Desktop/DAGV_1200/Repository/DAGV_1200/game_room/sourceimages/gameUV_3_aiStandardSurface3_Roughness.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "5376C45F-4671-95EE-1698-DF880A0AE7BB";
createNode bump2d -n "bump2d1";
	rename -uid "E3E4455D-4AAD-4C30-3167-C8817A4A09C2";
	setAttr ".bi" 1;
createNode file -n "file4";
	rename -uid "369FC980-4EFE-D556-2655-0FA3B65BBFFB";
	setAttr ".ftn" -type "string" "C:/Users/coope/Desktop/DAGV_1200/Repository/DAGV_1200/game_room/sourceimages/gameUV_3_aiStandardSurface3_Normal.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "55B0D5A2-4A7D-7723-6FA0-B99300463A68";
createNode shadingEngine -n "bookCoverSG1";
	rename -uid "66DF53A5-4EAA-BADA-C135-1B97F57B7A9A";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "5A23F9F0-4B2B-B112-6303-11B41BA2660D";
createNode groupId -n "groupId21";
	rename -uid "33DF0D85-4712-A47F-92F5-808CB479966F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "2668AA69-46E9-DA4A-DE7E-9C9AF48A603E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "0F99A579-47A7-E7EC-D007-A98ED0B4FFAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "F5F91775-4DE8-4DD5-7850-35A2A78FB2FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "5154495D-4389-F7BE-AE17-748EF2E3F4A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "0B887DE0-4D88-F414-D416-9CAF83A3CB1D";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "6102F788-41D4-5E35-627A-3E9854121094";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "230D9C6B-4641-556F-67C1-BE8176275778";
	setAttr ".ics" -type "componentList" 1 "f[20:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.11136671034896584 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0 -1.7881393e-07 ;
	setAttr ".rs" 34350;
	setAttr ".off" 0.05000000074505806;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000002384185791 -0.11136671034896584 -1.0000004768371582 ;
	setAttr ".cbx" -type "double3" 1 0.11136671034896584 1.0000001192092896 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "D99E4A98-4A2B-27B5-7524-BABD2D81CC1E";
	setAttr ".dc" -type "componentList" 1 "f[20:59]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "66DA42FE-4721-74F1-8DEC-8D92083ADB32";
	setAttr ".ics" -type "componentList" 38 "e[62]" "e[64]" "e[66]" "e[68]" "e[70]" "e[72]" "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94]" "e[96]" "e[98:99]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.11136671034896584 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 41;
	setAttr ".sv2" 61;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "F0FFB100-40F2-1832-A3D2-67B3F9601237";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[140:159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.11136671034896584 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode openPBRSurface -n "openPBRSurface1";
	rename -uid "7802167C-4BB5-437E-DA06-0E911386DFBD";
createNode file -n "Sink_Prep_openPBRSurfaceNEW_Metallic_1";
	rename -uid "D711607E-4EC6-6AA6-3E04-508023637EB6";
	setAttr ".ftn" -type "string" "C:\\Users\\coope\\Documents\\AGD UVU Main Repository\\UVU-AGD-Portfolio\\UnityProject\\UnityProjectTest\\Assets\\Maya\\textureMaps\\Sink_Prep\\Sink_Prep_openPBRSurfaceNEW_Metallic.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "146F5B49-499D-E42F-651B-D0AB6FC352AB";
createNode file -n "Sink_Prep_openPBRSurfaceNEW_BaseColor_1";
	rename -uid "EC335A5B-42AD-C880-A9A9-F2A7EB63D72F";
	setAttr ".ftn" -type "string" "C:\\Users\\coope\\Documents\\AGD UVU Main Repository\\UVU-AGD-Portfolio\\UnityProject\\UnityProjectTest\\Assets\\Maya\\textureMaps\\Sink_Prep\\Sink_Prep_openPBRSurfaceNEW_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "872F79C6-4C74-D042-FC9E-21835DD07603";
createNode file -n "Sink_Prep_openPBRSurfaceNEW_Roughness_1";
	rename -uid "1B61300C-4150-2944-7310-5795D0BF4E73";
	setAttr ".ftn" -type "string" "C:\\Users\\coope\\Documents\\AGD UVU Main Repository\\UVU-AGD-Portfolio\\UnityProject\\UnityProjectTest\\Assets\\Maya\\textureMaps\\Sink_Prep\\Sink_Prep_openPBRSurfaceNEW_Roughness.png";
	setAttr ".cs" -type "string" "sRGB Encoded Rec.709 (sRGB)";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "D82E36AF-4DEB-A8F1-14C2-458DEBEEA625";
createNode shadingEngine -n "Sink_PrepSG";
	rename -uid "32F078BC-482C-D8E7-1A11-8C9B313D7ACC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "614D11EC-4ABB-8612-E425-4ABF67DCD27D";
createNode shadingEngine -n "standardSurface1SG";
	rename -uid "59800251-488F-D7FE-3991-1F8835E06550";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "06352253-478C-C17A-4148-3685277714AA";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "AFAF049F-4164-5400-8701-46A859B35FFE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 30 "e[174]" "e[178]" "e[181]" "e[184]" "e[187]" "e[190]" "e[193]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206:207]" "e[209]" "e[211]" "e[240]" "e[244]" "e[247]" "e[250]" "e[253]" "e[256]" "e[259]" "e[262]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272:273]" "e[275]" "e[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.7981691 169.9117 -34.716827 ;
	setAttr ".rs" 43470;
	setAttr ".lt" -type "double3" -2.2924370735033506e-15 3.6618170550627775 1.1459583282302788e-14 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3954067230224609 162.28451538085938 -39.314064025878906 ;
	setAttr ".cbx" -type "double3" 0.79906845092773438 177.53889465332031 -30.119592666625977 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "64A3DA8B-461F-83C6-2BC4-9E96C00BA199";
	setAttr ".ics" -type "componentList" 3 "f[74:89]" "f[100:115]" "f[132:143]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.6683712 170.66101 -34.716827 ;
	setAttr ".rs" 52818;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 1.5;
	setAttr ".cbn" -type "double3" -8.3954067230224609 163.78312683105469 -39.379875183105469 ;
	setAttr ".cbx" -type "double3" 1.0586644411087036 177.53889465332031 -30.053781509399414 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "03349C21-4CAD-4EB7-C9FB-2FB31652370F";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk";
	setAttr ".tk[84]" -type "float3" 0 -3.0612149 0 ;
	setAttr ".tk[94]" -type "float3" 0 -0.62223828 0 ;
	setAttr ".tk[95]" -type "float3" 0 -1.8083351 0 ;
	setAttr ".tk[96]" -type "float3" 0 -2.7112727 0 ;
	setAttr ".tk[97]" -type "float3" 0 -2.7112727 0 ;
	setAttr ".tk[98]" -type "float3" 0 -1.8083351 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.62222624 0 ;
	setAttr ".tk[122]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".tk[123]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".tk[124]" -type "float3" 0 3.0612338 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.62223768 0 ;
	setAttr ".tk[133]" -type "float3" 0 1.8083358 0 ;
	setAttr ".tk[134]" -type "float3" 0 2.7112629 0 ;
	setAttr ".tk[135]" -type "float3" 0 2.7112629 0 ;
	setAttr ".tk[136]" -type "float3" 0 1.8083358 0 ;
	setAttr ".tk[137]" -type "float3" 0 0.62223768 0 ;
	setAttr ".tk[144]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[145]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[146]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[147]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[148]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[149]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[150]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[151]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[152]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[153]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[154]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[155]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[156]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[157]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[158]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[159]" -type "float3" 0 1.4986117 0 ;
	setAttr ".tk[176]" -type "float3" 0.29072884 0 -0.73605216 ;
	setAttr ".tk[177]" -type "float3" -0.014565145 0 -0.79494649 ;
	setAttr ".tk[178]" -type "float3" 0.55024552 0 -0.56481075 ;
	setAttr ".tk[179]" -type "float3" 0.72339547 0 -0.3056733 ;
	setAttr ".tk[180]" -type "float3" 0.78419799 0 -1.8133031e-07 ;
	setAttr ".tk[181]" -type "float3" 0.72339547 0 0.30567372 ;
	setAttr ".tk[182]" -type "float3" 0.55024552 0 0.56481111 ;
	setAttr ".tk[183]" -type "float3" 0.29072884 0 0.73605222 ;
	setAttr ".tk[184]" -type "float3" -0.014565145 0 0.79494643 ;
	setAttr ".tk[185]" -type "float3" -0.73796082 0 0.30277663 ;
	setAttr ".tk[186]" -type "float3" -0.57937592 0 0.56481111 ;
	setAttr ".tk[187]" -type "float3" -0.31985921 0 0.73605222 ;
	setAttr ".tk[188]" -type "float3" -0.31985921 0 -0.73605216 ;
	setAttr ".tk[189]" -type "float3" -0.57937592 0 -0.56481075 ;
	setAttr ".tk[190]" -type "float3" -0.73796082 0 -0.30277622 ;
	setAttr ".tk[191]" -type "float3" -0.78419793 0 -1.8133031e-07 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "0DA316D9-4D21-A815-E691-83848BABE561";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[278:279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295:296]" "e[298]" "e[301:302]" "e[305]" "e[307]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.086985312402248383;
	setAttr ".re" 281;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "18C134BC-47FB-EF58-1E37-E89B31A1B96C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[473:474]" "e[476]" "e[478]" "e[480]" "e[482]" "e[484]" "e[486]" "e[488]" "e[490]" "e[492]" "e[494]" "e[496]" "e[498]" "e[500]" "e[502]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.27806580066680908;
	setAttr ".re" 476;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "93CAFFD8-42E1-5682-CB13-A79D2C774672";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[130]" -type "float3" 0.37430996 0 0.90366322 ;
	setAttr ".tk[131]" -type "float3" -4.6181651e-08 0 0.97811848 ;
	setAttr ".tk[132]" -type "float3" -0.37431005 0 0.90366322 ;
	setAttr ".tk[133]" -type "float3" -0.90366352 0 0.37430948 ;
	setAttr ".tk[134]" -type "float3" -0.97811884 0 1.8472659e-07 ;
	setAttr ".tk[135]" -type "float3" -0.90366352 0 -0.3743099 ;
	setAttr ".tk[136]" -type "float3" 0.97811884 0 1.8472659e-07 ;
	setAttr ".tk[137]" -type "float3" 0.90366358 0 -0.3743099 ;
	setAttr ".tk[138]" -type "float3" 0.90366358 0 0.37430948 ;
	setAttr ".tk[139]" -type "float3" 0.69163418 0 0.69163418 ;
	setAttr ".tk[140]" -type "float3" 0.69163418 0 -0.69163465 ;
	setAttr ".tk[141]" -type "float3" 0.37430996 0 -0.90366304 ;
	setAttr ".tk[142]" -type "float3" -4.6181651e-08 0 -0.97811836 ;
	setAttr ".tk[143]" -type "float3" -0.37431005 0 -0.90366304 ;
	setAttr ".tk[144]" -type "float3" -0.69163418 0 -0.69163465 ;
	setAttr ".tk[145]" -type "float3" -0.69163418 0 0.69163418 ;
	setAttr ".tk[244]" -type "float3" -0.68145078 -0.70062077 0.68118095 ;
	setAttr ".tk[245]" -type "float3" -0.36888894 -0.70062077 0.88983727 ;
	setAttr ".tk[246]" -type "float3" -0.00026961323 -0.70062077 0.96299917 ;
	setAttr ".tk[247]" -type "float3" 0.36834991 -0.70062077 0.88983727 ;
	setAttr ".tk[248]" -type "float3" 0.68091148 -0.70062077 0.68118095 ;
	setAttr ".tk[249]" -type "float3" 0.88845479 -0.70062077 0.368397 ;
	setAttr ".tk[250]" -type "float3" 0.96050251 -0.70062077 1.8472659e-07 ;
	setAttr ".tk[251]" -type "float3" 0.88845479 -0.70062077 -0.36839822 ;
	setAttr ".tk[252]" -type "float3" 0.68091148 -0.70062077 -0.68118179 ;
	setAttr ".tk[253]" -type "float3" 0.36834991 -0.70062077 -0.88983774 ;
	setAttr ".tk[254]" -type "float3" -0.00026961323 -0.70062077 -0.96299917 ;
	setAttr ".tk[255]" -type "float3" -0.36888894 -0.70062077 -0.88983774 ;
	setAttr ".tk[256]" -type "float3" -0.68145078 -0.70062077 -0.68118179 ;
	setAttr ".tk[257]" -type "float3" -0.89027554 -0.70062077 -0.36865303 ;
	setAttr ".tk[258]" -type "float3" -0.96360523 -0.70062077 1.8472659e-07 ;
	setAttr ".tk[259]" -type "float3" -0.89027554 -0.70062077 0.3686527 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "756B15D6-4E8A-DCF4-4A91-EA994E247E18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[280]" "e[282]" "e[284]" "e[286]" "e[288]" "e[290]" "e[292]" "e[294]" "e[297]" "e[299:300]" "e[303:304]" "e[306]" "e[308:309]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8819983 159.45805 -34.716831 ;
	setAttr ".rs" 40451;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6112089157104492 159.45606994628906 -38.497154235839844 ;
	setAttr ".cbx" -type "double3" -0.15278774499893188 159.46003723144531 -30.936504364013672 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "751975FB-45C5-A621-595F-E787CA98708B";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[162]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[163]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[164]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[165]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[167]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[168]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[169]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[170]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[173]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[175]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[176]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[177]" -type "float3" 0 0.83336544 0 ;
	setAttr ".tk[260]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[261]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[262]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[263]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[264]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[265]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[266]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[267]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[268]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[269]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[270]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[271]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[272]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[273]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[274]" -type "float3" 0 1.114624 0 ;
	setAttr ".tk[275]" -type "float3" 0 1.114624 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "BC7FD133-4876-2CA2-27DF-BBA1ED179E1E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[539]" "e[541]" "e[543]" "e[545]" "e[547]" "e[549]" "e[551]" "e[553]" "e[556]" "e[558:559]" "e[562:563]" "e[565]" "e[567:568]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8819983 158.78259 -34.716831 ;
	setAttr ".rs" 53183;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6112089157104492 158.78060913085938 -38.497154235839844 ;
	setAttr ".cbx" -type "double3" -0.15278774499893188 158.78457641601562 -30.936504364013672 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "422180B9-4884-7721-BF43-F98AB5D70D7C";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[276:291]" -type "float3"  0 -0.67546034 0 0 -0.67546034
		 0 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0
		 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0 0
		 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0 0 -0.67546034 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "11933DF6-48D2-C8C8-08F6-5197AF915013";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[571]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[588]" "e[590:591]" "e[594:595]" "e[597]" "e[599:600]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8819985 150.36679 -34.716831 ;
	setAttr ".rs" 60501;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -0.30000001192092896;
	setAttr ".cbn" -type "double3" -6.4103584289550781 150.36480712890625 -37.27984619140625 ;
	setAttr ".cbx" -type "double3" -1.3536384105682373 150.3687744140625 -32.153812408447266 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "90F50A40-45F1-72FC-2C54-889632257D3F";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[292:307]" -type "float3"  0.44519597 -8.415802 -1.12712467
		 -0.022303749 -8.415802 -1.21730983 0.84259689 -8.415802 -0.86490029 1.10774291 -8.415802
		 -0.46808136 1.20085073 -8.415802 -7.3828824e-07 1.10774291 -8.415802 0.46808019 0.84259689
		 -8.415802 0.86490029 0.44519597 -8.415802 1.12712383 -0.022303749 -8.415802 1.21730983
		 -1.13004684 -8.415802 0.4636445 -0.88720441 -8.415802 0.86490029 -0.48980361 -8.415802
		 1.12712383 -0.48980361 -8.415802 -1.12712467 -0.88720441 -8.415802 -0.86490029 -1.13004684
		 -8.415802 -0.4636445 -1.20085073 -8.415802 -7.3828824e-07;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "F2020252-4BB7-6312-12AB-26866078AF6B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[603]" "e[605]" "e[607]" "e[609]" "e[611]" "e[613]" "e[615]" "e[617]" "e[620]" "e[622:623]" "e[626:627]" "e[629]" "e[631:632]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8819985 150.40916 -34.716831 ;
	setAttr ".rs" 34027;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.1133666038513184 150.40718078613281 -36.982936859130859 ;
	setAttr ".cbx" -type "double3" -1.6506304740905762 150.41114807128906 -32.450721740722656 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "037DBD0C-4D72-0A94-2BA1-B4B729AB9A04";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[635]" "e[637]" "e[639]" "e[641]" "e[643]" "e[645]" "e[647]" "e[649]" "e[652]" "e[654:655]" "e[658:659]" "e[661]" "e[663:664]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8819985 149.34535 -34.716831 ;
	setAttr ".rs" 45155;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.5985183715820312 149.34336853027344 -37.475643157958984 ;
	setAttr ".cbx" -type "double3" -1.1654788255691528 149.34733581542969 -31.958017349243164 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "1FD3D9D1-4F97-5990-C278-848A0A05DD0E";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[324:339]" -type "float3"  -0.17943995 -1.063806295 0.456186
		 0.010211111 -1.063806295 0.49270487 -0.3402001 -1.063806295 0.35014781 -0.44744599
		 -1.063806295 0.18956736 -0.48515168 -1.063806295 3.7687113e-07 -0.44744599 -1.063806295
		 -0.18956816 -0.3402001 -1.063806295 -0.35014781 -0.17943995 -1.063806295 -0.45618543
		 0.010211111 -1.063806295 -0.49270487 0.45662186 -1.063806295 -0.19025575 0.3596262
		 -1.063806295 -0.35120845 0.19986892 -1.063806295 -0.4562017 0.19986895 -1.063806295
		 0.45620275 0.35962611 -1.063806295 0.35120845 0.45662186 -1.063806295 0.19025575
		 0.48515162 -1.063806295 3.7687113e-07;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "17E09B52-49BC-5AFE-1D93-E4BF2A6BFC2A";
	setAttr ".ics" -type "componentList" 1 "vtx[340:355]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "92480573-445A-6A29-EA32-D98B574B5096";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[340:355]" -type "float3"  1.046205997 -11.87451553 -2.55432892
		 -0.015711069 -11.87474442 -2.75881004 1.94635439 -11.87433243 -1.96058655 2.54685783
		 -11.87416458 -1.061447144 2.75798416 -11.87410355 0 2.54685783 -11.87416458 1.061454773
		 1.94635439 -11.87433243 1.96059036 1.046205997 -11.87451553 2.55432892 -0.015711069
		 -11.87474442 2.75881577 -2.51530743 -11.87677383 1.065303802 -1.97219861 -11.87543106
		 1.96652985 -1.077666044 -11.87509537 2.55442429 -1.077666283 -11.87509537 -2.55442429
		 -1.97219777 -11.87543106 -1.96652603 -2.51530743 -11.87677383 -1.065299988 -2.6750555
		 -11.87807083 0;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "97C85AF4-43E3-7BEA-8B6C-A696B4B2CF1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 40 "e[537:538]" "e[540]" "e[542]" "e[544]" "e[546]" "e[548]" "e[550]" "e[552]" "e[554:555]" "e[557]" "e[560:561]" "e[564]" "e[566]" "e[569:570]" "e[572]" "e[574]" "e[576]" "e[578]" "e[580]" "e[582]" "e[584]" "e[586:587]" "e[589]" "e[592:593]" "e[596]" "e[598]" "e[633:634]" "e[636]" "e[638]" "e[640]" "e[642]" "e[644]" "e[646]" "e[648]" "e[650:651]" "e[653]" "e[656:657]" "e[660]" "e[662]" "e[665:680]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak8";
	rename -uid "26C8E46B-4BFB-6A52-5DFC-488C3B582610";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[324]" -type "float3" -0.16700509 -1.0894341 0.42457321 ;
	setAttr ".tk[325]" -type "float3" 0.009503535 -1.0894341 0.45856154 ;
	setAttr ".tk[326]" -type "float3" -0.31662515 -1.0894341 0.3258833 ;
	setAttr ".tk[327]" -type "float3" -0.41643909 -1.0894341 0.17643103 ;
	setAttr ".tk[328]" -type "float3" -0.45153168 -1.0894341 3.9306758e-07 ;
	setAttr ".tk[329]" -type "float3" -0.41643909 -1.0894341 -0.17643149 ;
	setAttr ".tk[330]" -type "float3" -0.31662515 -1.0894341 -0.32588312 ;
	setAttr ".tk[331]" -type "float3" -0.16700509 -1.0894341 -0.42457244 ;
	setAttr ".tk[332]" -type "float3" 0.009503535 -1.0894341 -0.45856166 ;
	setAttr ".tk[333]" -type "float3" 0.42497879 -1.0894341 -0.17707121 ;
	setAttr ".tk[334]" -type "float3" 0.33470505 -1.0894341 -0.32687026 ;
	setAttr ".tk[335]" -type "float3" 0.18601848 -1.0894341 -0.42458838 ;
	setAttr ".tk[336]" -type "float3" 0.1860185 -1.0894341 0.42458913 ;
	setAttr ".tk[337]" -type "float3" 0.33470497 -1.0894341 0.32687053 ;
	setAttr ".tk[338]" -type "float3" 0.42497879 -1.0894341 0.17707142 ;
	setAttr ".tk[339]" -type "float3" 0.45153168 -1.0894341 3.9306758e-07 ;
	setAttr ".tk[340]" -type "float3" 0 -7.4576683 0 ;
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	rename -uid "ABBDBD39-48FC-B924-2812-9AA85762F49B";
	setAttr ".uopa" yes;
	setAttr -s 17 ".vn";
	setAttr -s 2 ".vn[324].vfnl";
	setAttr ".vn[324].vfnl[324].fnxy" -type "float3" -0.37106991 -0.17363697 0.91222656 ;
	setAttr ".vn[324].vfnl[325].fnxy" -type "float3" -0.37106991 -0.17363697 0.91222656 ;
	setAttr -s 2 ".vn[325].vfnl";
	setAttr ".vn[325].vfnl[324].fnxy" -type "float3" 0.0001884407 -0.1736819 0.98480177 ;
	setAttr ".vn[325].vfnl[336].fnxy" -type "float3" 0.0001884407 -0.1736819 0.98480177 ;
	setAttr -s 2 ".vn[326].vfnl";
	setAttr ".vn[326].vfnl[325].fnxy" -type "float3" -0.69448596 -0.17366473 0.69823337 ;
	setAttr ".vn[326].vfnl[326].fnxy" -type "float3" -0.69448596 -0.17366473 0.69823337 ;
	setAttr -s 2 ".vn[327].vfnl";
	setAttr ".vn[327].vfnl[326].fnxy" -type "float3" -0.90992886 -0.17337653 0.37678942 ;
	setAttr ".vn[327].vfnl[327].fnxy" -type "float3" -0.90992886 -0.17337653 0.37678942 ;
	setAttr -s 2 ".vn[328].vfnl";
	setAttr ".vn[328].vfnl[327].fnxy" -type "float3" -0.98487324 -0.17327636 -2.0295449e-08 ;
	setAttr ".vn[328].vfnl[328].fnxy" -type "float3" -0.98487324 -0.17327636 -2.0295449e-08 ;
	setAttr -s 2 ".vn[329].vfnl";
	setAttr ".vn[329].vfnl[328].fnxy" -type "float3" -0.90992874 -0.17337687 -0.37678933 ;
	setAttr ".vn[329].vfnl[329].fnxy" -type "float3" -0.90992874 -0.17337687 -0.37678933 ;
	setAttr -s 2 ".vn[330].vfnl";
	setAttr ".vn[330].vfnl[329].fnxy" -type "float3" -0.69448471 -0.17366472 -0.69823468 ;
	setAttr ".vn[330].vfnl[330].fnxy" -type "float3" -0.69448471 -0.17366472 -0.69823468 ;
	setAttr -s 2 ".vn[331].vfnl";
	setAttr ".vn[331].vfnl[330].fnxy" -type "float3" -0.37106988 -0.17363687 -0.91222668 ;
	setAttr ".vn[331].vfnl[331].fnxy" -type "float3" -0.37106988 -0.17363687 -0.91222668 ;
	setAttr -s 2 ".vn[332].vfnl";
	setAttr ".vn[332].vfnl[331].fnxy" -type "float3" 0.00018844084 -0.17368214 -0.98480183 ;
	setAttr ".vn[332].vfnl[334].fnxy" -type "float3" 0.00018844084 -0.17368214 -0.98480183 ;
	setAttr -s 2 ".vn[333].vfnl";
	setAttr ".vn[333].vfnl[332].fnxy" -type "float3" 0.92732936 -0.17207433 -0.33234116 ;
	setAttr ".vn[333].vfnl[339].fnxy" -type "float3" 0.92732936 -0.17207433 -0.33234116 ;
	setAttr -s 2 ".vn[334].vfnl";
	setAttr ".vn[334].vfnl[332].fnxy" -type "float3" 0.70813006 -0.17551716 -0.68391931 ;
	setAttr ".vn[334].vfnl[333].fnxy" -type "float3" 0.70813006 -0.17551716 -0.68391931 ;
	setAttr -s 2 ".vn[335].vfnl";
	setAttr ".vn[335].vfnl[333].fnxy" -type "float3" 0.36996353 -0.17462949 -0.91248643 ;
	setAttr ".vn[335].vfnl[334].fnxy" -type "float3" 0.36996353 -0.17462949 -0.91248643 ;
	setAttr -s 2 ".vn[336].vfnl";
	setAttr ".vn[336].vfnl[335].fnxy" -type "float3" 0.36996576 -0.1746293 0.91248554 ;
	setAttr ".vn[336].vfnl[336].fnxy" -type "float3" 0.36996576 -0.1746293 0.91248554 ;
	setAttr -s 2 ".vn[337].vfnl";
	setAttr ".vn[337].vfnl[335].fnxy" -type "float3" 0.70813012 -0.17551723 0.68391919 ;
	setAttr ".vn[337].vfnl[337].fnxy" -type "float3" 0.70813012 -0.17551723 0.68391919 ;
	setAttr -s 2 ".vn[338].vfnl";
	setAttr ".vn[338].vfnl[337].fnxy" -type "float3" 0.92732865 -0.17207493 0.33234286 ;
	setAttr ".vn[338].vfnl[338].fnxy" -type "float3" 0.92732865 -0.17207493 0.33234286 ;
	setAttr -s 2 ".vn[339].vfnl";
	setAttr ".vn[339].vfnl[338].fnxy" -type "float3" 0.98563433 -0.16889343 0 ;
	setAttr ".vn[339].vfnl[339].fnxy" -type "float3" 0.98563433 -0.16889343 0 ;
	setAttr -s 16 ".vn[340].vfnl";
	setAttr ".vn[340].vfnl[324].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[325].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[326].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[327].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[328].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[329].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[330].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[331].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[332].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[333].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[334].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[335].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[336].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[337].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[338].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
	setAttr ".vn[340].vfnl[339].fnxy" -type "float3" -0.022254013 -0.99975234 1.8076056e-05 ;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 24 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 20 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "openPBR_shader1";
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
select -ne :modelPanel4ViewSelectedSet;
	setAttr ".ihi" 0;
connectAttr "blockout.di" "pPlane1.do";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "blockout.di" "pCube1.do";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "blockout.di" "pCube2.do";
connectAttr "groupParts2.og" "pCubeShape3.i";
connectAttr "groupId3.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId1.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape2.i";
connectAttr "groupId2.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "blockout.di" "pCube4.do";
connectAttr "groupParts3.og" "pCubeShape4.i";
connectAttr "groupId4.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "blockout.di" "pCube5.do";
connectAttr "groupParts5.og" "pCubeShape6.i";
connectAttr "groupId7.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId5.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape5.i";
connectAttr "groupId6.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "blockout.di" "pCube7.do";
connectAttr "groupParts6.og" "pCubeShape7.i";
connectAttr "groupId8.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "blockout.di" "pCube8.do";
connectAttr "groupParts11.og" "pCubeShape12.i";
connectAttr "groupId15.id" "pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape12.iog.og[0].gco";
connectAttr "groupId13.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts10.og" "pCubeShape8.i";
connectAttr "groupId14.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "blockout.di" "pCube9.do";
connectAttr "polySplitRing2.out" "pCubeShape10.i";
connectAttr "groupId11.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId9.id" "pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupParts7.og" "pCubeShape9.i";
connectAttr "groupId10.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "blockout.di" "pCube11.do";
connectAttr "groupParts9.og" "pCubeShape11.i";
connectAttr "groupId12.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "blockout.di" "pCube13.do";
connectAttr "groupParts12.og" "pCubeShape13.i";
connectAttr "groupId16.id" "pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "blockout.di" "pCube14.do";
connectAttr "groupParts14.og" "pCubeShape15.i";
connectAttr "groupId19.id" "pCubeShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape15.iog.og[0].gco";
connectAttr "groupId17.id" "pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape14.iog.og[0].gco";
connectAttr "groupParts13.og" "pCubeShape14.i";
connectAttr "groupId18.id" "pCubeShape14.ciog.cog[0].cgid";
connectAttr "blockout.di" "pCube16.do";
connectAttr "groupParts15.og" "pCubeShape16.i";
connectAttr "groupId20.id" "pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape16.iog.og[0].gco";
connectAttr "groupId21.id" "|book1|bookCover|bookCoverShape.iog.og[0].gid";
connectAttr "bookCoverSG.mwc" "|book1|bookCover|bookCoverShape.iog.og[0].gco";
connectAttr "groupId22.id" "|book1|bookCover|bookCoverShape.iog.og[1].gid";
connectAttr "bookCoverSG1.mwc" "|book1|bookCover|bookCoverShape.iog.og[1].gco";
connectAttr "groupId23.id" "|book2|bookCover|bookCoverShape.iog.og[0].gid";
connectAttr "bookCoverSG.mwc" "|book2|bookCover|bookCoverShape.iog.og[0].gco";
connectAttr "groupId24.id" "|book2|bookCover|bookCoverShape.iog.og[1].gid";
connectAttr "bookCoverSG1.mwc" "|book2|bookCover|bookCoverShape.iog.og[1].gco";
connectAttr "groupId25.id" "|book3|bookCover|bookCoverShape.iog.og[0].gid";
connectAttr "bookCoverSG.mwc" "|book3|bookCover|bookCoverShape.iog.og[0].gco";
connectAttr "groupId26.id" "|book3|bookCover|bookCoverShape.iog.og[1].gid";
connectAttr "bookCoverSG1.mwc" "|book3|bookCover|bookCoverShape.iog.og[1].gco";
connectAttr "polySoftEdge1.out" "pCylinderShape1.i";
connectAttr "polyNormalPerVertex1.out" "Sink_PrepShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bookPagesSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bookCoverSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bookCoverSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Sink_PrepSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bookPagesSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bookCoverSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bookCoverSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Sink_PrepSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyMirror1.ip";
connectAttr "pCubeShape2.wm" "polyMirror1.mp";
connectAttr "pCubeShape2.o" "polySeparate1.ip";
connectAttr "polyMirror1.fnf" "polySeparate1.sf";
connectAttr "polyMirror1.lnf" "polySeparate1.ef";
connectAttr "polyMirror1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "polySurfaceShape2.o" "polyMirror2.ip";
connectAttr "pCubeShape5.wm" "polyMirror2.mp";
connectAttr "pCubeShape5.o" "polySeparate2.ip";
connectAttr "polyMirror2.fnf" "polySeparate2.sf";
connectAttr "polyMirror2.lnf" "polySeparate2.ef";
connectAttr "polyMirror2.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polySurfaceShape3.o" "polyMirror3.ip";
connectAttr "pCubeShape9.wm" "polyMirror3.mp";
connectAttr "polyCube2.out" "polyMirror4.ip";
connectAttr "pCubeShape8.wm" "polyMirror4.mp";
connectAttr "pCubeShape9.o" "polySeparate3.ip";
connectAttr "polyMirror3.fnf" "polySeparate3.sf";
connectAttr "polyMirror3.lnf" "polySeparate3.ef";
connectAttr "polyMirror3.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySeparate3.out[0]" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "polySeparate3.out[1]" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "pCubeShape8.o" "polySeparate4.ip";
connectAttr "polyMirror3.fnf" "polySeparate4.sf";
connectAttr "polyMirror3.lnf" "polySeparate4.ef";
connectAttr "polyMirror4.out" "groupParts10.ig";
connectAttr "groupId13.id" "groupParts10.gi";
connectAttr "polySeparate4.out[0]" "groupParts11.ig";
connectAttr "groupId15.id" "groupParts11.gi";
connectAttr "polySeparate4.out[1]" "groupParts12.ig";
connectAttr "groupId16.id" "groupParts12.gi";
connectAttr "polyCube3.out" "polyMirror5.ip";
connectAttr "pCubeShape14.wm" "polyMirror5.mp";
connectAttr "pCubeShape14.o" "polySeparate5.ip";
connectAttr "polyMirror5.fnf" "polySeparate5.sf";
connectAttr "polyMirror5.lnf" "polySeparate5.ef";
connectAttr "polyMirror5.out" "groupParts13.ig";
connectAttr "groupId17.id" "groupParts13.gi";
connectAttr "polySeparate5.out[0]" "groupParts14.ig";
connectAttr "groupId19.id" "groupParts14.gi";
connectAttr "polySeparate5.out[1]" "groupParts15.ig";
connectAttr "groupId20.id" "groupParts15.gi";
connectAttr "layerManager.dli[1]" "blockout.id";
connectAttr "groupParts8.og" "polySplitRing1.ip";
connectAttr "pCubeShape10.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape10.wm" "polySplitRing2.mp";
connectAttr "white.oc" "bookPagesSG.ss";
connectAttr "|book1|bookPages|bookPagesShape.iog" "bookPagesSG.dsm" -na;
connectAttr "|book2|bookPages|bookPagesShape.iog" "bookPagesSG.dsm" -na;
connectAttr "|book3|bookPages|bookPagesShape.iog" "bookPagesSG.dsm" -na;
connectAttr "bookPagesSG.msg" "materialInfo1.sg";
connectAttr "white.msg" "materialInfo1.m";
connectAttr "bookGreen.oc" "bookCoverSG.ss";
connectAttr "groupId21.msg" "bookCoverSG.gn" -na;
connectAttr "groupId23.msg" "bookCoverSG.gn" -na;
connectAttr "groupId25.msg" "bookCoverSG.gn" -na;
connectAttr "|book1|bookCover|bookCoverShape.iog.og[0]" "bookCoverSG.dsm" -na;
connectAttr "|book2|bookCover|bookCoverShape.iog.og[0]" "bookCoverSG.dsm" -na;
connectAttr "|book3|bookCover|bookCoverShape.iog.og[0]" "bookCoverSG.dsm" -na;
connectAttr "bookCoverSG.msg" "materialInfo2.sg";
connectAttr "bookGreen.msg" "materialInfo2.m";
connectAttr "file2.oa" "texturedMaterial.metalness";
connectAttr "file1.oc" "texturedMaterial.base_color";
connectAttr "file3.oa" "texturedMaterial.specular_roughness";
connectAttr "bump2d1.o" "texturedMaterial.n";
connectAttr "place2dTexture1.o" "file2.uv";
connectAttr "place2dTexture1.ofu" "file2.ofu";
connectAttr "place2dTexture1.ofv" "file2.ofv";
connectAttr "place2dTexture1.rf" "file2.rf";
connectAttr "place2dTexture1.reu" "file2.reu";
connectAttr "place2dTexture1.rev" "file2.rev";
connectAttr "place2dTexture1.vt1" "file2.vt1";
connectAttr "place2dTexture1.vt2" "file2.vt2";
connectAttr "place2dTexture1.vt3" "file2.vt3";
connectAttr "place2dTexture1.vc1" "file2.vc1";
connectAttr "place2dTexture1.ofs" "file2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.o" "file1.uv";
connectAttr "place2dTexture2.ofu" "file1.ofu";
connectAttr "place2dTexture2.ofv" "file1.ofv";
connectAttr "place2dTexture2.rf" "file1.rf";
connectAttr "place2dTexture2.reu" "file1.reu";
connectAttr "place2dTexture2.rev" "file1.rev";
connectAttr "place2dTexture2.vt1" "file1.vt1";
connectAttr "place2dTexture2.vt2" "file1.vt2";
connectAttr "place2dTexture2.vt3" "file1.vt3";
connectAttr "place2dTexture2.vc1" "file1.vc1";
connectAttr "place2dTexture2.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofu" "file3.ofu";
connectAttr "place2dTexture3.ofv" "file3.ofv";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.reu" "file3.reu";
connectAttr "place2dTexture3.rev" "file3.rev";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "file4.oa" "bump2d1.bv";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofu" "file4.ofu";
connectAttr "place2dTexture4.ofv" "file4.ofv";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.reu" "file4.reu";
connectAttr "place2dTexture4.rev" "file4.rev";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "texturedMaterial.out" "bookCoverSG1.ss";
connectAttr "groupId22.msg" "bookCoverSG1.gn" -na;
connectAttr "groupId24.msg" "bookCoverSG1.gn" -na;
connectAttr "groupId26.msg" "bookCoverSG1.gn" -na;
connectAttr "|book1|bookCover|bookCoverShape.iog.og[1]" "bookCoverSG1.dsm" -na;
connectAttr "|book2|bookCover|bookCoverShape.iog.og[1]" "bookCoverSG1.dsm" -na;
connectAttr "|book3|bookCover|bookCoverShape.iog.og[1]" "bookCoverSG1.dsm" -na;
connectAttr "bookCoverSG1.msg" "materialInfo3.sg";
connectAttr "texturedMaterial.msg" "materialInfo3.m";
connectAttr "texturedMaterial.msg" "materialInfo3.t" -na;
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "Sink_Prep_openPBRSurfaceNEW_Metallic_1.oa" "openPBRSurface1.m";
connectAttr "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.oc" "openPBRSurface1.bc";
connectAttr "Sink_Prep_openPBRSurfaceNEW_Roughness_1.oa" "openPBRSurface1.sr";
connectAttr "place2dTexture5.o" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.uv";
connectAttr "place2dTexture5.ofu" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.ofu";
connectAttr "place2dTexture5.ofv" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.ofv";
connectAttr "place2dTexture5.rf" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.rf";
connectAttr "place2dTexture5.reu" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.reu";
connectAttr "place2dTexture5.rev" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.rev";
connectAttr "place2dTexture5.vt1" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.vt1";
connectAttr "place2dTexture5.vt2" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.vt2";
connectAttr "place2dTexture5.vt3" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.vt3";
connectAttr "place2dTexture5.vc1" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.vc1";
connectAttr "place2dTexture5.ofs" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Sink_Prep_openPBRSurfaceNEW_Metallic_1.ws"
		;
connectAttr "place2dTexture6.o" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.uv";
connectAttr "place2dTexture6.ofu" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.ofu";
connectAttr "place2dTexture6.ofv" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.ofv";
connectAttr "place2dTexture6.rf" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.rf";
connectAttr "place2dTexture6.reu" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.reu";
connectAttr "place2dTexture6.rev" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.rev";
connectAttr "place2dTexture6.vt1" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.vt1";
connectAttr "place2dTexture6.vt2" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.vt2";
connectAttr "place2dTexture6.vt3" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.vt3";
connectAttr "place2dTexture6.vc1" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.vc1";
connectAttr "place2dTexture6.ofs" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.ws"
		;
connectAttr "place2dTexture7.o" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.uv";
connectAttr "place2dTexture7.ofu" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.ofu";
connectAttr "place2dTexture7.ofv" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.ofv";
connectAttr "place2dTexture7.rf" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.rf";
connectAttr "place2dTexture7.reu" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.reu";
connectAttr "place2dTexture7.rev" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.rev";
connectAttr "place2dTexture7.vt1" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.vt1";
connectAttr "place2dTexture7.vt2" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.vt2";
connectAttr "place2dTexture7.vt3" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.vt3";
connectAttr "place2dTexture7.vc1" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.vc1";
connectAttr "place2dTexture7.ofs" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Sink_Prep_openPBRSurfaceNEW_Roughness_1.ws"
		;
connectAttr "openPBRSurface1.oc" "Sink_PrepSG.ss";
connectAttr "Sink_PrepSG.msg" "materialInfo4.sg";
connectAttr "openPBRSurface1.msg" "materialInfo4.m";
connectAttr "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.msg" "materialInfo4.t" -na;
connectAttr ":standardSurface1.oc" "standardSurface1SG.ss";
connectAttr "Sink_PrepShape.iog" "standardSurface1SG.dsm" -na;
connectAttr "standardSurface1SG.msg" "materialInfo5.sg";
connectAttr ":standardSurface1.msg" "materialInfo5.m";
connectAttr "polySurfaceShape4.o" "polyExtrudeEdge1.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polySplitRing3.ip";
connectAttr "Sink_PrepShape.wm" "polySplitRing3.mp";
connectAttr "polyTweak2.out" "polySplitRing4.ip";
connectAttr "Sink_PrepShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeEdge2.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polySplitRing4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeEdge3.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeEdge4.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak5.ip";
connectAttr "polyExtrudeEdge4.out" "polyExtrudeEdge5.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeEdge5.mp";
connectAttr "polyTweak6.out" "polyExtrudeEdge6.ip";
connectAttr "Sink_PrepShape.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert1.ip";
connectAttr "Sink_PrepShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySoftEdge2.ip";
connectAttr "Sink_PrepShape.wm" "polySoftEdge2.mp";
connectAttr "polyMergeVert1.out" "polyTweak8.ip";
connectAttr "polySoftEdge2.out" "polyNormalPerVertex1.ip";
connectAttr "bookPagesSG.pa" ":renderPartition.st" -na;
connectAttr "bookCoverSG.pa" ":renderPartition.st" -na;
connectAttr "bookCoverSG1.pa" ":renderPartition.st" -na;
connectAttr "Sink_PrepSG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "white.msg" ":defaultShaderList1.s" -na;
connectAttr "bookGreen.msg" ":defaultShaderList1.s" -na;
connectAttr "texturedMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "openPBRSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Sink_Prep_openPBRSurfaceNEW_Metallic_1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Sink_Prep_openPBRSurfaceNEW_BaseColor_1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Sink_Prep_openPBRSurfaceNEW_Roughness_1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
// End of finalEnvironment.ma
