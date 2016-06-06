/* Apartment
 * Author: 
 * Creation date: 01/06/2016
 */
MACHINE
    Apartment
SEES Owner, Vehicle
SETS NUMBER
VARIABLES apartments, apartment_vehicles
INVARIANT apartments : NUMBER +-> OWNER & apartment_vehicles : NUMBER +-> VEHICLE_PLATE
INITIALISATION apartments := {} || apartment_vehicles := {}
OPERATIONS
    add_apart_to_owner(number, owner) =
    PRE number : NUMBER & owner : OWNER
    THEN apartments := apartments <+ {number |-> owner}
    END;
    
    remove_owner_from_apartment(number) =
    PRE number : NUMBER
    THEN apartments := apartments - {number |-> apartments(number)} || apartment_vehicles := apartment_vehicles - {number |-> apartment_vehicles(number)}
    END
    
END