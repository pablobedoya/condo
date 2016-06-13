/* Vehicle
 * Author: 
 * Creation date: 30/05/2016
 */
MACHINE
    Vehicle
SEES Vehicle_Context
SETS PERMITION = {permitted, unpermitted}
VARIABLES vehicles
INVARIANT vehicles : VEHICLE_PLATE --> PERMITION
INITIALISATION vehicles := VEHICLE_PLATE * {unpermitted}
OPERATIONS
    add_vehicle(plate) =
    PRE plate : VEHICLE_PLATE
    THEN vehicles := vehicles <+ {plate |-> permitted}
    END;
    
    remove_vehicle(plate) =
    PRE plate : VEHICLE_PLATE & vehicles(plate) : {permitted}
    THEN vehicles := vehicles <+ {plate |-> unpermitted}
    END
    
END