-- 𝓓𝓮𝓬𝓸𝓶𝓹𝓲𝓵𝓮𝓭 𝓫𝔂 𝓯𝓻𝓮𝓪𝓴𝔂 𝓭𝓮𝓬𝓸𝓶𝓹𝓲𝓵𝓮𝓻
1.	
2.	local v0 = game
4.	local v2 = "Players"
5.	
7.	v0 = v0:GetService(v2)
8.	local v1 = game
10.	local v3 = "HttpService"
11.	
13.	v1 = v1:GetService(v3)
14.	v2 = game
16.	local v4 = "ReplicatedStorage"
17.	
19.	v2 = v2:GetService(v4)
20.	v3 = v0.LocalPlayer
22.	local v6 = "PlayerGui"
23.	
25.	v4 = v3:WaitForChild(v6)
26.	local v7 = "Assets"
27.	
29.	v5 = v2:WaitForChild(v7)
30.	local v8 = "UI"
31.	
33.	v6 = v5:WaitForChild(v8)
34.	local v9 = "HudGui"
35.	
37.	v7 = v6:WaitForChild(v9)
38.	
40.	v7 = v7:Clone()
41.	v8 = ""
42.	v9 = ""
43.	local v12 = "Events"
44.	
46.	v10 = v2:WaitForChild(v12)
47.	local v13 = "RemoteEvent"
48.	
50.	v11 = v10:WaitForChild(v13)
51.	local v14 = "RemoteFunction"
52.	
54.	v12 = v10:WaitForChild(v14)
55.	local v15 = "VerifyFunction"
56.	
58.	v13 = v10:WaitForChild(v15)
59.	local function newInstance(p1, p2) -- [line 39]
	1.	local v1 = Instance.new
	3.	local v2 = p1
	4.	v1 = v1(v2)
	5.	v2 = pairs
	7.	local v3 = p2
	8.	v2, v3, v4 = v2(v3)
	9.	for v5, v6 in v2(v3) do -- [escape at #11] (pairs/next)
	10.	v1[v5] = v6
	11.	end -- FORGLOOP - iterate + goto #9
	13.	return v1
end
[DUPCLOSURE] v14 = newInstance
60.	local function net_convert(p3, p4, p5) -- [line 48]
	1.	FASTCALL[string.byte](p3)
	2.	local v11 = p3
	3.	local v10 = string.byte
	5.	v10 = v10(v11)
	6.	local v9 = v10 - 32
	7.	if p5 then goto #9
	8.	v10 = -p4
	9.	if not v10 then goto #10 -- referenced by #7
					end
	10.	v10 = p4 -- referenced by #9
					end
	11.	local v8 = v9 + v10
	12.	local v7 = v8 % 95
	13.	local v6 = v7 + 32
	14.	FASTCALL[string.char](v6)
	15.	local v5 = string.char
	17.	v5 = v5(v6)
	18.	return v5
end
[DUPCLOSURE] v19 = net_convert
61.	local function net_encode(p6, p7, p8) -- [line 52]
	1.	local v14 = ""
	2.	local v17 = 1
	3.	local v15 = #p6
	4.	local v16 = 1
	5.	for v17 = v17, v15, v16 do -- [escape at #51]
	6.	local v19 = #p6
	7.	local v20 = p7[3]
	8.	local v18 = v19 - v20
	9.	if v17 > v18 then goto #11
	11.	if not p8 then goto #50 -- referenced by #9
					end
	12.	v20 = 0
	13.	v18 = 3
	14.	v19 = 1
	15.	for v20 = v20, v18, v19 do -- [escape at #50]
	16.	local v21 = v17 % 4
	17.	if v21 == v20 then goto #49
	19.	v21 = v14
	20.	FASTCALL[string.sub](p6, v17, p6)
	22.	local v24 = p6
	23.	local v25 = v17
	24.	local v26 = v17
	25.	local v23 = string.sub
	27.	v23 = v23(v24, v25, v26)
	28.	v25 = v20 + 1
	29.	v24 = p7[v25]
	-- DECOMPILER REMARK: Function "net_convert" was inlined here (LINE IS NOT VALID)
	30.	FASTCALL[string.byte](v23)
	31.	local v31 = v23
	32.	local v30 = string.byte
	34.	v30 = v30(v31)
	35.	local v29 = v30 - 32
	36.	if p8 then goto #38
	37.	v30 = -v24
	38.	if not v30 then goto #39 -- referenced by #36
					end
	39.	v30 = v24 -- referenced by #38
					end
	40.	local v28 = v29 + v30
	41.	local v27 = v28 % 95
	42.	v26 = v27 + 32
	43.	FASTCALL[string.char](v26)
	44.	v25 = string.char
	46.	v25 = v25(v26)
	47.	local v22 = v25
	48.	v14 = v21 .. v22
	49.	goto #50 -- referenced by #17
					else
	50.	end -- FORNLOOP end - iterate + goto #15 -- referenced by #11, #49
					end
					end
	51.	end -- FORNLOOP end - iterate + goto #5
	52.	if not p8 then goto #74
	53.	v17 = 1
	54.	v15 = p7[3]
	55.	v16 = 1
	56.	for v17 = v17, v15, v16 do -- [escape at #74]
	57.	v18 = v14
	58.	FASTCALL[string.byte](p6)
	59.	v22 = p6
	60.	v21 = string.byte
	62.	v21 = v21(v22)
	63.	FASTCALL[string.byte](v17)
	64.	v23 = v17
	65.	v22 = string.byte
	67.	v22 = v22(v23)
	68.	v20 = v21 - v22
	69.	FASTCALL[string.char](v20)
	70.	v19 = string.char
	72.	v19 = v19(v20)
	73.	v14 = v18 .. v19
	74.	end -- FORNLOOP end - iterate + goto #56 -- referenced by #52
					end
	75.	return v14
end
[DUPCLOSURE] v29 = net_encode
62.	-- V nested upvalues[0] = v11
-- V nested upvalues[1] = v16
-- V nested upvalues[2] = v1
-- V nested upvalues[3] = v9
-- V nested upvalues[4] = v8
-- V nested upvalues[5] = v12
local function net_new_link() -- [line 72]
	1.	local v54 = {} -- this array is empty
	3.		-- V nested upvalues[0] = upvalues[0]
	-- V nested upvalues[1] = upvalues[1]
	-- V nested upvalues[2] = upvalues[2]
	-- V nested upvalues[3] = upvalues[3]
	-- V nested upvalues[4] = upvalues[4]
	local function FireServer(p9, ...) -- [line 74]
		1.	
		2.	local v55 = upvalues[0] -- get upval
		3.	local v57 = upvalues[1] -- get upval
		4.	local v58 = upvalues[2] -- get upval
		5.	local v60 = {} -- this array has (1)indexes by default
		7.	local v61 = upvalues[3] -- get upval
		8.	local v62 = ...
		9.	v60[1] = ...
		11.	
		13.	v58 = v58:JSONEncode(v60)
		14.	local v59 = upvalues[2] -- get upval
		15.	v61 = upvalues[4] -- get upval
		16.	
		18.	v58 = v59:JSONDecode(v61)
		19.	v57 = v57()
		20.	
		22.	v55:FireServer(v57)
		23.	return
	end
	[NEWCLOSURE] v55 = FireServer
	4.	CAPTURE UPVAL U0

	5.	CAPTURE UPVAL U1

	6.	CAPTURE UPVAL U2

	7.	CAPTURE UPVAL U3

	8.	CAPTURE UPVAL U4

	9.	v62.FireServer = v63
	11.		-- V nested upvalues[0] = upvalues[5]
	-- V nested upvalues[1] = upvalues[1]
	-- V nested upvalues[2] = upvalues[2]
	-- V nested upvalues[3] = upvalues[3]
	-- V nested upvalues[4] = upvalues[4]
	local function InvokeServer(p10, ...) -- [line 77]
		1.	
		2.	local v63 = upvalues[5] -- get upval
		3.	local v65 = upvalues[1] -- get upval
		4.	local v66 = upvalues[2] -- get upval
		5.	local v68 = {} -- this array has (1)indexes by default
		7.	local v69 = upvalues[3] -- get upval
		8.	local v70 = ...
		9.	v68[1] = ...
		11.	
		13.	v66 = v66:JSONEncode(v68)
		14.	local v67 = upvalues[2] -- get upval
		15.	v69 = upvalues[4] -- get upval
		16.	
		18.	v66 = v67:JSONDecode(v69)
		19.	v65 = v65()
		20.	
		22.	p10 = v63:InvokeServer(v65)
		23.	return v63, ...
	end
	[NEWCLOSURE] v63 = InvokeServer
	12.	CAPTURE UPVAL U5

	13.	CAPTURE UPVAL U1

	14.	CAPTURE UPVAL U2

	15.	CAPTURE UPVAL U3

	16.	CAPTURE UPVAL U4

	17.	v70.InvokeServer = v71
	19.		-- V nested upvalues[0] = upvalues[0]
	local function OnEvent(p11, p12) -- [line 81]
		1.	local v72 = upvalues[0] -- get upval
		2.	local v71 = v72.OnClientEvent
		4.			-- V nested upvalues[0] = p12
		[NEWCLOSURE] v73 = function(p13, ...) -- [line 82]
			1.	
			2.	local v73 = p12 -- get upval
			3.	local v72 = v73[p13]
			4.	if v72 then goto #8
			5.	v73 = p12 -- get upval
			6.	v72 = v73[p13]
			7.	v73 = ...
			8.	v72() -- referenced by #4
							end
			9.	return
		end

		5.	CAPTURE VAL R1

		6.	
		8.	v76:Connect(v78)
		9.	return
	end
	[DUPCLOSURE] v76 = OnEvent
	20.	CAPTURE UPVAL U0

	21.	v77.OnEvent = v78
	23.		-- V nested upvalues[0] = upvalues[5]
	local function OnFunction(p14, p15) -- [line 88]
		1.			-- V nested upvalues[0] = p15
		local function OnClientInvoke(p16, ...) -- [line 89]
			1.	
			2.	local v80 = p15 -- get upval
			3.	local v79 = v80[p16]
			4.	if v79 then goto #9
			5.	v80 = p15 -- get upval
			6.	v79 = v80[p16]
			7.	v80 = ...
			8.	p16 = v79()
			9.	return v79, ... -- referenced by #4
							end
			10.	return
		end
		[NEWCLOSURE] v78 = OnClientInvoke
		2.	CAPTURE VAL R1

		3.	local v84 = upvalues[5] -- get upval
		4.	v84.OnClientInvoke = v83
		6.	return
	end
	[DUPCLOSURE] v83 = OnFunction
	24.	CAPTURE UPVAL U5

	25.	v83.OnFunction = v84
	27.	return v83
end
[NEWCLOSURE] v99 = net_new_link
63.	CAPTURE VAL R11

64.	CAPTURE VAL R16

65.	CAPTURE VAL R1

66.	CAPTURE REF R9

67.	CAPTURE REF R8

68.	CAPTURE VAL R12

69.	
71.	v101 = v96:InvokeServer()
72.	v92 = v101
73.	
75.	v96:Destroy()
76.	local v103 = "Key"
77.	
79.	v101 = v87:WaitForChild(v103)
80.	v91 = v101.Value
82.	local v102 = ""
83.	v101.Value = v102
85.	
87.	v101:Destroy()
88.	v102 = {} -- this array is empty
90.	v103 = pairs
92.	local v106 = "Packages"
93.	
95.	v104 = v85:WaitForChild(v106)
96.	
98.	v103 = v104:GetChildren()
99.	v103, v104, v105 = v103()
100.	for v106, v107 in v103(v104) do -- [escape at #120] (pairs/next)
101.	local v110 = "PackageLink"
102.	
104.	v108 = v107:IsA(v110)
105.	if not v108 then goto #119
106.	local v109 = v107.Name
108.	local v108 = v102[v109]
109.	if v108 then goto #116
110.	v108 = error
112.	v110 = "Attempted to load two or more packages by the same name ("
113.	local v111 = v107
114.	local v112 = ")"
115.	v109 = v110 .. v111 .. v112
116.	v108(v109) -- referenced by #109
				end
117.	v108 = v107.Name
119.	v102[v108] = v107 -- referenced by #105
				end
120.	end -- FORGLOOP - iterate + goto #100
122.	v103 = shared
124.	-- V nested upvalues[0] = v100
-- V nested upvalues[1] = v102
[DUPCLOSURE] v104 = function(...) -- [line 121]
	1.	
	2.	local v84 = {} -- this array is empty
	4.	local v85 = pairs
	6.	local v86 = {} -- this array is empty
	8.	local v88 = ...
	9.	v86[1] = ...
	11.	v85, v86, v87 = v85(v86)
	12.	for v88, v89 in v85(v86) do -- [escape at #50] (pairs/next)
	13.	if v89 == "network" then goto #24
	15.	local v93 = v100 -- get upval
	16.	v93 = v93(v94)
	17.	FASTCALL[table.insert](v84, v88, v84)
	19.	local v91 = v84
	20.	local v92 = v88
	21.	local v90 = table.insert
	23.	v90(v91, v92, v93)
	24.	goto #49 -- referenced by #13
					else
	25.	v91 = v102 -- get upval
	26.	v90 = v91[v89]
	27.	if v90 then goto #39
	28.	v91 = v84
	29.	v92 = v88
	30.	v93 = require
	32.	local v95 = v102 -- get upval
	33.	local v94 = v95[v89]
	34.	v92 = v93(v94)
	35.	FASTCALL[table.insert]()
	36.	v90 = table.insert
	38.	v90()
	39.	goto #49 -- referenced by #27
					else
	40.	v90 = error
	42.	v92 = "Attempted to import an unknown package ("
	43.	v93 = v89
	44.	v94 = "), "
	45.	v95 = debug.traceback
	47.	v95 = v95(v96)
	48.	v91 = v92 .. v93 .. v94 .. v95
	49.	v90(v91) -- referenced by #24, #39
					end
					end
	50.	end -- FORGLOOP - iterate + goto #12
	52.	FASTCALL[unpack](v84)
	53.	v86 = v84
	54.	v85 = unpack
	56.	v84 = v85(v86)
	57.	return v85, ...
end

125.	CAPTURE VAL R17

126.	CAPTURE VAL R19

127.	v127.import = v128
129.	v114.Parent = v111
131.	local v128 = shared
133.	v127 = v128.import
135.	v128 = "require"
136.	v127 = v127(v128)
137.	v128 = "ClientHandler"
138.	v127(v128)
139.	v127 = shared
141.	v128 = nil
142.	v127.import = v128
144.	v127 = script
146.	
148.	v127:Destroy()
149.	[CLOSEUPVALS]: clear captures from back until: 8
150.	return
