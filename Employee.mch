/* Employee
 * Author: 
 * Creation date: 25/05/2016
 */
MACHINE Employee
SETS NAME; ROLES = {permition, no_permition}
VARIABLES employees
INVARIANT employees : NAME --> ROLES
INITIALISATION employees := {}
OPERATIONS
    add_emp(name, role) =
    PRE name : NAME & employees(name) : {} & role : ROLES
    THEN employees := {name |-> role}
    END;
    
    remove_emp(name) =
    PRE name : NAME & employees(name) /: {}
    THEN employees := employees - {name |-> employees(name)}
    END;
    
    change_role(name, new_role) =
    PRE name : NAME & employees(name) /: {} & new_role : ROLES
    THEN employees := employees <+ {name |-> new_role}
    END;

END
