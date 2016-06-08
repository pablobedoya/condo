/* Employee
 * Author: 
 * Creation date: 25/05/2016
 */
MACHINE Employee
SETS NAME ; ROLES = { permition , no_permition }
ABSTRACT_VARIABLES employees
INVARIANT employees : NAME --> ROLES
INITIALISATION employees := NAME * { no_permition }
OPERATIONS
    add_emp ( name , role ) =
    PRE name : NAME & employees ( name ) : {} & role : ROLES
    THEN employees ( name ) := role
    END ;

    remove_emp ( name ) =
    PRE name : NAME & employees ( name ) : { permition }
    THEN employees ( name ) := no_permition
    END ;

    change_role ( name , new_role ) =
    PRE name : NAME & new_role : ROLES & employees ( name ) /= new_role
    THEN employees ( name ) := new_role
    END

END
