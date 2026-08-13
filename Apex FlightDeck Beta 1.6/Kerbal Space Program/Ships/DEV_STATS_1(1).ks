CLEARSCREEN.
SET TERMINAL:WIDTH TO 45.
SET TERMINAL:HEIGHT TO 20.


UNTIL FALSE {


        PRINT "Apex FlightDeck" AT (0,0).
        PRINT "BETA 1.6" AT (0,1).

        PRINT "alt: " + ROUND(SHIP:ALTITUDE,1) AT (0,3).
        PRINT "speed: " + ROUND(SHIP:VELOCITY:SURFACE:MAG,1) AT (0,4).
        PRINT "vspeed: " + SHIP:VERTICALSPEED AT (0,5).

        PRINT "apo: " + ROUND(SHIP:APOAPSIS,0) AT (0,7).
        PRINT "peri: " + ROUND(SHIP:PERIAPSIS,0) AT (0,8).

        PRINT "dv (vac): " + ROUND(SHIP:DELTAV:VACUUM,1) + " m/s" AT (0,9).
        PRINT "dv (asl): " + ROUND(SHIP:DELTAV:ASL,1) + " m/s" AT (0,10).

        PRINT "throttle: " + SHIP:CONTROL:PILOTMAINTHROTTLE AT (0,12).
        PRINT "mission time: " + ROUND(MISSIONTIME) AT (0,13).

        PRINT "----------------------" AT (0,17).
        PRINT "BETA Build has many issues" AT (0,18).
        PRINT "astra.spac2" AT (0,19).


    WAIT 0.1.

}
