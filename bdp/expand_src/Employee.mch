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
<<<<<<< HEAD
    THEN employees ( name ) := role
=======
    THEN employees := { name |-> role }
>>>>>>> cd5dc82c81be5499a5f169c6534fd38c5757a6b0
    END ;

    remove_emp ( name ) =
    PRE name : NAME & employees ( name ) : { permition }
<<<<<<< HEAD
    THEN employees ( name ) := no_permition
=======
    THEN employees := employees <+ { name |-> no_permition }
>>>>>>> cd5dc82c81be5499a5f169c6534fd38c5757a6b0
    END ;

    change_role ( name , new_role ) =
    PRE name : NAME & new_role : ROLES & employees ( name ) /= new_role
<<<<<<< HEAD
    THEN employees ( name ) := new_role
=======
    THEN employees := employees <+ { name |-> new_role }
>>>>>>> cd5dc82c81be5499a5f169c6534fd38c5757a6b0
    END

END
