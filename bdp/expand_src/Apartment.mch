/* Apartment
 * Author: 
 * Creation date: 01/06/2016
 */
MACHINE
    Apartment
SEES Owner , Vehicle
SETS NUMBER
ABSTRACT_VARIABLES apartments , apartment_vehicles
INVARIANT apartments : NUMBER +-> OWNER & apartment_vehicles : NUMBER +-> VEHICLE_PLATE
INITIALISATION apartments := {} || apartment_vehicles := {}
OPERATIONS
    add_apart_to_owner ( number , owner1 ) =
    PRE number : NUMBER & owner1 : OWNER
    THEN apartments := apartments <+ { number |-> owner1 }
    END ;

    remove_owner_from_apartment ( number ) =
    PRE number : NUMBER
    THEN apartments := apartments - { number |-> apartments ( number ) } ||
         apartment_vehicles := apartment_vehicles - { number |-> apartment_vehicles ( number ) }
    END

END
