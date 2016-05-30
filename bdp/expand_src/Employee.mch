/* Employee
 * Author: 
 * Creation date: 25/05/2016
 */
MACHINE Employee
SETS NAME ; ROLES = { permition , no_permition }
ABSTRACT_VARIABLES employees
INVARIANT employees : NAME --> ROLES
INITIALISATION employees := {}
OPERATIONS
    add_emp ( name ) =
    PRE name : NAME
    THEN employees ( name ) := no_permition
    END

END
