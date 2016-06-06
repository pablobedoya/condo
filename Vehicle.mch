/* Vehicle
 * Author: 
 * Creation date: 30/05/2016
 */
MACHINE
    Vehicle
SEES Owner
SETS VEHICLE_PLATE; PERMITION = {permitted}
VARIABLES vehicles
INVARIANT vehicles : VEHICLE_PLATE --> PERMITION
INITIALISATION vehicles := {}
OPERATIONS
    add_vehicle(plate) =
    PRE plate : VEHICLE_PLATE
    THEN vehicles := vehicles <+ {plate |-> permitted}
    END;
    
    remove_vehicle(plate) =
    PRE plate : VEHICLE_PLATE & vehicles(plate) /: {}
    THEN vehicles := vehicles - {plate |-> permitted}
    END
    
END