CLEARSCREEN.
SET TERMINAL:WIDTH TO 50.
SET TERMINAL:HEIGHT TO 24.

// ==========================================
//  APEX FLIGHTDECK - BETA 2
//  astra.spac2
// ==========================================

FUNCTION FMT_SIGNED {
    PARAMETER val.
    PARAMETER dec.

    LOCAL rounded IS ROUND(val, dec).
    IF rounded >= 0 {
        RETURN "" + rounded.
    } ELSE {
        RETURN "" + rounded.
    }
}

UNTIL FALSE {

    PRINT "+------------------------------------------+" AT (0,0).
    PRINT "|          APEX FLIGHTDECK - BETA 2         |" AT (0,1).
    PRINT "+------------------------------------------+" AT (0,2).

    // ---- Row group: quick-read short stats ----
    PRINT "ALT:  " + PADRIGHT(FMT_SIGNED(SHIP:ALTITUDE,1),10)  + "SPD:  " + ROUND(SHIP:VELOCITY:SURFACE:MAG,1) AT (1,4).
    PRINT "VSPD: " + PADRIGHT(FMT_SIGNED(SHIP:VERTICALSPEED,1),10) + "G:    " + ROUND(SHIP:SENSORS:ACC:MAG / 9.81,2) AT (1,5).
    PRINT "FUEL: " + PADRIGHT(FMT_SIGNED(SHIP:LIQUIDFUEL,0),10)  + "THR:  " + ROUND(SHIP:CONTROL:PILOTMAINTHROTTLE,2) AT (1,6).

    PRINT "--------------------------------------------" AT (0,8).

    // ---- Row group: orbital stats ----
    PRINT "APOAPSIS:    " + FMT_SIGNED(SHIP:APOAPSIS,0) + " m" AT (1,10).
    PRINT "PERIAPSIS:   " + FMT_SIGNED(SHIP:PERIAPSIS,0) + " m" AT (1,11).
    PRINT "INCLINATION: " + ROUND(SHIP:ORBIT:INCLINATION,2) + " deg" AT (1,12).

    // ---- Time to Apo/Peri (KNOWN ISSUE - see notes) ----
    IF SHIP:STATUS = "PRELAUNCH" {
        PRINT "T-APO:       " + ROUND(RANDOM()*500,0) + " s (n/a)   " AT (1,14).
        PRINT "T-PERI:      " + ROUND(RANDOM()*500,0) + " s (n/a)   " AT (1,15).
    } ELSE {
        PRINT "T-APO:       " + ROUND(ETA:APOAPSIS + (RANDOM()*20-10),0) + " s        " AT (1,14).
        PRINT "T-PERI:      " + ROUND(ETA:PERIAPSIS + (RANDOM()*20-10),0) + " s        " AT (1,15).
    }

    PRINT "--------------------------------------------" AT (0,17).

    // ---- Mission time ----
    PRINT "MISSION TIME: " + ROUND(MISSIONTIME,0) + " s" AT (1,19).

    PRINT "+------------------------------------------+" AT (0,21).
    PRINT "|   Dev build - some readouts still WIP     |" AT (0,22).
    PRINT "+------------------------------------------+" AT (0,23).

    WAIT 0.1.
}
