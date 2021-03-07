(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: drill_1_16.xln_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 07 March 2021 at 00:12)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.5)
(Tool: 2 -> Dia: 0.9)
(Tool: 3 -> Dia: 1.016)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 360.0)
(Tool: 2 -> Feedrate: 360.0)
(Tool: 3 -> Feedrate: 360.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)
(Tool: 3 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -2.2)
(Tool: 2 -> Z_Cut: -2.2)
(Tool: 3 -> Z_Cut: -2.2)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)
(Tool: 2 -> Offset Z: 0.0)
(Tool: 3 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2.0)
(Tool: 2 -> Z_Move: 2.0)
(Tool: 3 -> Z_Move: 2.0)

(Z Toolchange: 40.0 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 40.0 mm)
(X,Y End: 0.0000, 0.0000 mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:   17.2130 ...   87.5030  mm)
(Y range:    5.8420 ...   66.5480  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F360.00

M5
G00 Z40.0000
T1
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.5000 ||| Total drills for tool T1 = 32)
M0
G00 Z40.0000

G01 F360.00
M03
G00 X17.4630 Y45.4020
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y44.4500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X36.8300 Y40.9580
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X38.7350 Y40.9580
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X37.4650 Y46.3550
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X32.3850 Y48.5770
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X37.4650 Y53.3400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X37.4650 Y54.9270
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X63.1820 Y45.4020
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X76.2000 Y44.4500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X78.1050 Y48.5770
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X83.1850 Y54.9270
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X83.1850 Y53.3400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X83.1850 Y46.3550
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X82.5500 Y40.9580
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X84.4550 Y40.9580
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X83.1850 Y20.6380
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X83.1850 Y19.0500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X83.1850 Y12.0650
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X84.4550 Y6.6670
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X82.5500 Y6.6670
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X78.1050 Y14.2870
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X76.2000 Y10.1600
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X63.1820 Y11.1120
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X38.7350 Y6.6670
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X36.8300 Y6.6670
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X37.4650 Y12.0650
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X37.4650 Y19.0500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X37.4650 Y20.6380
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X32.3850 Y14.2870
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X30.4800 Y10.1600
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X17.4630 Y11.1120
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G01 F360.00

M5
G00 Z40.0000
T2
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.9000 ||| Total drills for tool T2 = 8)
M0
G00 Z40.0000

G01 F360.00
M03
G00 X32.2900 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X34.2900 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X78.0100 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X80.0100 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X80.0100 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X78.0100 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X34.2900 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X32.2900 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G01 F360.00

M5
G00 Z40.0000
T3
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 1.0160 ||| Total drills for tool T3 = 72)
M0
G00 Z40.0000

G01 F360.00
M03
G00 X68.5800 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X66.0400 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X66.0400 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X20.3200 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X20.3200 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y11.4300
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y13.9700
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y16.5100
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y19.0500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y21.5900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y24.1300
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y26.6700
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y29.2100
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y31.7500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X20.3200 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X20.3200 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X22.8600 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X25.4000 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X27.9400 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y45.7200
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y48.2600
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y50.8000
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y53.3400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y55.8800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y58.4200
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y60.9600
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y63.5000
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X41.2750 Y66.0400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X66.0400 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X66.0400 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X68.5800 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X68.5800 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X71.1200 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X71.1200 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X73.6600 Y40.6400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X73.6600 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y66.0400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y63.5000
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y60.9600
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y58.4200
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y55.8800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y53.3400
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y50.8000
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y48.2600
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y45.7200
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y43.1800
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y31.7500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y29.2100
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y26.6700
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y24.1300
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y21.5900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y19.0500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y16.5100
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y13.9700
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y11.4300
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X86.9950 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X73.6600 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X73.6600 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X71.1200 Y6.3500
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X71.1200 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
G00 X68.5800 Y8.8900
G01 Z-2.2000
G01 Z0
G00 Z2.0000
M05
G00 Z40.00
G00 X0.0 Y0.0

