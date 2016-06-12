Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Employee))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Employee))==(Machine(Employee));
  Level(Machine(Employee))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Employee)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Employee))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Employee))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Employee))==(?);
  List_Includes(Machine(Employee))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Employee))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Employee))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Employee))==(?);
  Context_List_Variables(Machine(Employee))==(?);
  Abstract_List_Variables(Machine(Employee))==(?);
  Local_List_Variables(Machine(Employee))==(employees);
  List_Variables(Machine(Employee))==(employees);
  External_List_Variables(Machine(Employee))==(employees)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Employee))==(?);
  Abstract_List_VisibleVariables(Machine(Employee))==(?);
  External_List_VisibleVariables(Machine(Employee))==(?);
  Expanded_List_VisibleVariables(Machine(Employee))==(?);
  List_VisibleVariables(Machine(Employee))==(?);
  Internal_List_VisibleVariables(Machine(Employee))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Employee))==(btrue);
  Gluing_List_Invariant(Machine(Employee))==(btrue);
  Expanded_List_Invariant(Machine(Employee))==(btrue);
  Abstract_List_Invariant(Machine(Employee))==(btrue);
  Context_List_Invariant(Machine(Employee))==(btrue);
  List_Invariant(Machine(Employee))==(employees: NAME --> ROLES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Employee))==(btrue);
  Abstract_List_Assertions(Machine(Employee))==(btrue);
  Context_List_Assertions(Machine(Employee))==(btrue);
  List_Assertions(Machine(Employee))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Employee))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Employee))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Employee))==(employees:=NAME*{no_permition});
  Context_List_Initialisation(Machine(Employee))==(skip);
  List_Initialisation(Machine(Employee))==(employees:=NAME*{no_permition})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Employee))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Employee))==(btrue);
  List_Constraints(Machine(Employee))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Employee))==(add_emp,remove_emp,change_role);
  List_Operations(Machine(Employee))==(add_emp,remove_emp,change_role)
END
&
THEORY ListInputX IS
  List_Input(Machine(Employee),add_emp)==(name);
  List_Input(Machine(Employee),remove_emp)==(name);
  List_Input(Machine(Employee),change_role)==(name,new_role)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Employee),add_emp)==(?);
  List_Output(Machine(Employee),remove_emp)==(?);
  List_Output(Machine(Employee),change_role)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Employee),add_emp)==(add_emp(name));
  List_Header(Machine(Employee),remove_emp)==(remove_emp(name));
  List_Header(Machine(Employee),change_role)==(change_role(name,new_role))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Employee),add_emp)==(name: NAME & employees(name): {no_permition});
  List_Precondition(Machine(Employee),remove_emp)==(name: NAME & employees(name): {permition});
  List_Precondition(Machine(Employee),change_role)==(name: NAME & new_role: ROLES & employees(name)/=new_role)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Employee),change_role)==(name: NAME & new_role: ROLES & employees(name)/=new_role | employees:=employees<+{name|->new_role});
  Expanded_List_Substitution(Machine(Employee),remove_emp)==(name: NAME & employees(name): {permition} | employees:=employees<+{name|->no_permition});
  Expanded_List_Substitution(Machine(Employee),add_emp)==(name: NAME & employees(name): {no_permition} | employees:=employees<+{name|->permition});
  List_Substitution(Machine(Employee),add_emp)==(employees:=employees<+{name|->permition});
  List_Substitution(Machine(Employee),remove_emp)==(employees:=employees<+{name|->no_permition});
  List_Substitution(Machine(Employee),change_role)==(employees:=employees<+{name|->new_role})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Employee))==(?);
  Inherited_List_Constants(Machine(Employee))==(?);
  List_Constants(Machine(Employee))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Employee),NAME)==(?);
  Context_List_Enumerated(Machine(Employee))==(?);
  Context_List_Defered(Machine(Employee))==(?);
  Context_List_Sets(Machine(Employee))==(?);
  List_Valuable_Sets(Machine(Employee))==(NAME);
  Inherited_List_Enumerated(Machine(Employee))==(?);
  Inherited_List_Defered(Machine(Employee))==(?);
  Inherited_List_Sets(Machine(Employee))==(?);
  List_Enumerated(Machine(Employee))==(ROLES);
  List_Defered(Machine(Employee))==(NAME);
  List_Sets(Machine(Employee))==(NAME,ROLES);
  Set_Definition(Machine(Employee),ROLES)==({permition,no_permition})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Employee))==(?);
  Expanded_List_HiddenConstants(Machine(Employee))==(?);
  List_HiddenConstants(Machine(Employee))==(?);
  External_List_HiddenConstants(Machine(Employee))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Employee))==(btrue);
  Context_List_Properties(Machine(Employee))==(btrue);
  Inherited_List_Properties(Machine(Employee))==(btrue);
  List_Properties(Machine(Employee))==(NAME: FIN(INTEGER) & not(NAME = {}) & ROLES: FIN(INTEGER) & not(ROLES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Employee),add_emp)==(?);
  List_ANY_Var(Machine(Employee),remove_emp)==(?);
  List_ANY_Var(Machine(Employee),change_role)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Employee)) == (NAME,ROLES,permition,no_permition | ? | employees | ? | add_emp,remove_emp,change_role | ? | ? | ? | Employee);
  List_Of_HiddenCst_Ids(Machine(Employee)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Employee)) == (?);
  List_Of_VisibleVar_Ids(Machine(Employee)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Employee)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Employee)) == (Type(NAME) == Cst(SetOf(atype(NAME,"[NAME","]NAME")));Type(ROLES) == Cst(SetOf(etype(ROLES,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Employee)) == (Type(permition) == Cst(etype(ROLES,0,1));Type(no_permition) == Cst(etype(ROLES,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Employee)) == (Type(employees) == Mvl(SetOf(atype(NAME,"[NAME","]NAME")*etype(ROLES,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Employee)) == (Type(change_role) == Cst(No_type,atype(NAME,?,?)*etype(ROLES,?,?));Type(remove_emp) == Cst(No_type,atype(NAME,?,?));Type(add_emp) == Cst(No_type,atype(NAME,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
