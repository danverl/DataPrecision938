                                                            MET/CAL Procedure
=============================================================================
INSTRUMENT:            Data Precision 938
DATE:                  2023-08-31 08:14:37
AUTHOR:                Dan Erlandsen
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       12
NUMBER OF LINES:       108
CONFIGURATION:         Fluke 5550A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
#===========================Memory Definitions===============================
#Current Range = M1
#Testpoint = M2
#Unit = S1
#Res = 
#TOL = 
#Ranges M100-M104
#Range units S100-S104
#Testpoints M150 - M254
#======================Ranges================================================
1.001 MATH M[100] = 2000
1.001 MATH S[100] = uF

1.001 MATH M[101] = 200
1.001 MATH S[101] = uF

1.001 MATH M[102] = 20
1.001 MATH S[102] = uF

1.001 MATH M[103] = 2
1.001 MATH S[103] = uF

1.001 MATH M[104] = 200
1.001 MATH S[104] = nF

1.001 MATH M[104] = 20
1.001 MATH S[104] = nF

1.001 MATH M[104] = 2
1.001 MATH S[104] = nF

1.001 MATH M[104] = 200
1.001 MATH S[104] = pF

#=====================Initial Messages=======================================
1.001 PIC Connect.png Connect as shown.
1.002 DISP Set Data Precision 938(DUT) to 2000 uF range.
1.003 DISP Adjust Zero wheel so DUT displays 0 uF.

#=======================Testpoint calculation===============================
#Testpoint memories start at 150. this allows for 100 Test points.
#Normal requirement is number of ranges * 3. (10%, 50%, 90%) 
#For polarized measurements you might need more
#Range 1 

1.001 MATH M1 = M[100] #Set current range
1.001 MATH S[1] = S[100] #Set Current unit
1.001 TOL 0.1% #Set Tolerence

1.001 MATH M[2] = M[100] * 0.1 #Set current Testpoint
1.001 CALL Capacitance

1.001 MATH M[2] = M[100] * 0.9 #Set current Testpoint
1.001 CALL Capacitance

#=====================Range message ==========================================
1.001 DISPLAY Set DUT to [M101] [S101] Range
#=============================================================================
