
CLEARSCREEN.
SET TERMINAL:WIDTH TO 45.
SET TERMINAL:HEIGHT TO 19.


UNTIL FALSE {

PRINT "flight stats - beta 1" AT (0,0).
PRINT "----------------------" AT (0,1).

PRINT "alt: " + ROUND(SHIP:ALTITUDE,1) AT (0,3).
PRINT "speed: " + ROUND(SHIP:VELOCITY:SURFACE:MAG,1) AT (0,4).
PRINT "vspeed: " + ROUND(SHIP:VERTICALSPEED,1) AT (0,5).

PRINT "apo: " + ROUND(SHIP:APOAPSIS,0) AT (0,7).
PRINT "peri: " + ROUND(SHIP:PERIAPSIS,0) AT (0,7).

PRINT "fuel: " + ROUND(SHIP:LIQUIDFUEL,0) AT (0,10).
PRINT "throttle: " + SHIP:CONTROL:PILOTMAINTHROTTLE AT (0,11).

PRINT "mission time: " + ROUND(MISSIONTIME) AT (0,14).

PRINT "----------------------" AT (0,17).
PRINT "beta build, Has many issues" AT (0,19).
PRINT "astra.spac2" AT (0,19).

WAIT 0.1.

}
