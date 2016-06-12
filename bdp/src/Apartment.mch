/* Apartment
 * Author: 
 * Creation date: 01/06/2016
 */
MACHINE
    Apartment
SEES Owner_Context , Vehicle
SETS NUMBER
ABSTRACT_VARIABLES apartments , apartment_vehicles
INVARIANT apartments : NUMBER +-> OWNER & apartment_vehicles : NUMBER +-> VEHICLE_PLATE
INITIALISATION apartments := {} || apartment_vehicles := {}
OPERATIONS
    add_apart_to_owner ( nn , oo ) =
    PRE nn : NUMBER & oo : OWNER
    THEN apartments := apartments <+ { nn |-> oo }
    END ;

    remove_owner_from_apartment ( nn ) =
    PRE nn : NUMBER
    THEN apartments := apartments - { nn |-> apartments ( nn ) } ||
         apartment_vehicles := apartment_vehicles - { nn |-> apartment_vehicles ( nn ) }
    END

END
