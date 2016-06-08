Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Employee_i2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Employee_i2))==(Machine(Employee));
  Level(Implementation(Employee_i2))==(1);
  Upper_Level(Implementation(Employee_i2))==(Machine(Employee))
END
&
THEORY LoadedStructureX IS
  Implementation(Employee_i2)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Employee_i2))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Employee_i2))==(?);
  Inherited_List_Includes(Implementation(Employee_i2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Employee_i2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Employee_i2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Employee_i2))==(?);
  Context_List_Variables(Implementation(Employee_i2))==(?);
  Abstract_List_Variables(Implementation(Employee_i2))==(employees);
  Local_List_Variables(Implementation(Employee_i2))==(?);
  List_Variables(Implementation(Employee_i2))==(?);
  External_List_Variables(Implementation(Employee_i2))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Employee_i2))==(?);
  Abstract_List_VisibleVariables(Implementation(Employee_i2))==(?);
  External_List_VisibleVariables(Implementation(Employee_i2))==(?);
  Expanded_List_VisibleVariables(Implementation(Employee_i2))==(?);
  List_VisibleVariables(Implementation(Employee_i2))==(employeesi);
  Internal_List_VisibleVariables(Implementation(Employee_i2))==(employeesi)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Employee_i2))==(btrue);
  Expanded_List_Invariant(Implementation(Employee_i2))==(btrue);
  Abstract_List_Invariant(Implementation(Employee_i2))==(employees: NAME --> ROLES);
  Context_List_Invariant(Implementation(Employee_i2))==(btrue);
  List_Invariant(Implementation(Employee_i2))==(employeesi: NAME --> ROLES & employees = employeesi)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Employee_i2))==(btrue);
  Abstract_List_Assertions(Implementation(Employee_i2))==(btrue);
  Context_List_Assertions(Implementation(Employee_i2))==(btrue);
  List_Assertions(Implementation(Employee_i2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Employee_i2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Employee_i2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Employee_i2))==(employeesi:=NAME*{no_permition});
  Context_List_Initialisation(Implementation(Employee_i2))==(skip);
  List_Initialisation(Implementation(Employee_i2))==(employeesi:=NAME*{no_permition})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Employee_i2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Employee_i2))==(btrue);
  List_Context_Constraints(Implementation(Employee_i2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Employee_i2))==(add_emp,remove_emp,change_role);
  List_Operations(Implementation(Employee_i2))==(add_emp,remove_emp,change_role)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Employee_i2),add_emp)==(name,role);
  List_Input(Implementation(Employee_i2),remove_emp)==(name);
  List_Input(Implementation(Employee_i2),change_role)==(name,new_role)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Employee_i2),add_emp)==(?);
  List_Output(Implementation(Employee_i2),remove_emp)==(?);
  List_Output(Implementation(Employee_i2),change_role)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Employee_i2),add_emp)==(add_emp(name,role));
  List_Header(Implementation(Employee_i2),remove_emp)==(remove_emp(name));
  List_Header(Implementation(Employee_i2),change_role)==(change_role(name,new_role))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Employee_i2),add_emp)==(btrue);
  List_Precondition(Implementation(Employee_i2),add_emp)==(name: NAME & employees(name): {} & role: ROLES);
  Own_Precondition(Implementation(Employee_i2),remove_emp)==(btrue);
  List_Precondition(Implementation(Employee_i2),remove_emp)==(name: NAME & employees(name): {permition});
  Own_Precondition(Implementation(Employee_i2),change_role)==(btrue);
  List_Precondition(Implementation(Employee_i2),change_role)==(name: NAME & new_role: ROLES & employees(name)/=new_role)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Employee_i2),change_role)==(name: NAME & new_role: ROLES & employees(name)/=new_role & name: dom(employeesi) | employeesi:=employeesi<+{name|->new_role});
  Expanded_List_Substitution(Implementation(Employee_i2),remove_emp)==(name: NAME & employees(name): {permition} & name: dom(employeesi) | employeesi:=employeesi<+{name|->no_permition});
  Expanded_List_Substitution(Implementation(Employee_i2),add_emp)==(name: NAME & employees(name): {} & role: ROLES & name: dom(employeesi) | employeesi:=employeesi<+{name|->role});
  List_Substitution(Implementation(Employee_i2),add_emp)==(employeesi(name):=role);
  List_Substitution(Implementation(Employee_i2),remove_emp)==(employeesi(name):=no_permition);
  List_Substitution(Implementation(Employee_i2),change_role)==(employeesi(name):=new_role)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Employee_i2))==(?);
  Inherited_List_Constants(Implementation(Employee_i2))==(?);
  List_Constants(Implementation(Employee_i2))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Employee_i2),ROLES)==({permition,no_permition});
  Context_List_Enumerated(Implementation(Employee_i2))==(?);
  Context_List_Defered(Implementation(Employee_i2))==(?);
  Context_List_Sets(Implementation(Employee_i2))==(?);
  List_Own_Enumerated(Implementation(Employee_i2))==(ROLES);
  List_Valuable_Sets(Implementation(Employee_i2))==(NAME);
  Inherited_List_Enumerated(Implementation(Employee_i2))==(ROLES);
  Inherited_List_Defered(Implementation(Employee_i2))==(NAME);
  Inherited_List_Sets(Implementation(Employee_i2))==(NAME,ROLES);
  List_Enumerated(Implementation(Employee_i2))==(?);
  List_Defered(Implementation(Employee_i2))==(?);
  List_Sets(Implementation(Employee_i2))==(?);
  Set_Definition(Implementation(Employee_i2),NAME)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Employee_i2))==(?);
  Expanded_List_HiddenConstants(Implementation(Employee_i2))==(?);
  List_HiddenConstants(Implementation(Employee_i2))==(?);
  External_List_HiddenConstants(Implementation(Employee_i2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Employee_i2))==(NAME: FIN(INTEGER) & not(NAME = {}) & ROLES: FIN(INTEGER) & not(ROLES = {}));
  Context_List_Properties(Implementation(Employee_i2))==(btrue);
  Inherited_List_Properties(Implementation(Employee_i2))==(btrue);
  List_Properties(Implementation(Employee_i2))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Employee_i2))==(btrue);
  Values_Subs(Implementation(Employee_i2))==(NAME: 0..3);
  List_Values(Implementation(Employee_i2))==(NAME = 0..3)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Employee_i2))==(Type(employeesi) == Mvv(SetOf(btype(INTEGER,"[NAME","]NAME")*etype(ROLES,0,1))));
  Operations(Implementation(Employee_i2))==(Type(change_role) == Cst(No_type,atype(NAME,?,?)*etype(ROLES,?,?));Type(remove_emp) == Cst(No_type,atype(NAME,?,?));Type(add_emp) == Cst(No_type,atype(NAME,?,?)*etype(ROLES,?,?)));
  Constants(Implementation(Employee_i2))==(Type(permition) == Cst(etype(ROLES,0,1));Type(no_permition) == Cst(etype(ROLES,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Employee_i2)) == (? | ? | ? | ? | add_emp,remove_emp,change_role | ? | ? | ? | Employee_i2);
  List_Of_HiddenCst_Ids(Implementation(Employee_i2)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Employee_i2)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Employee_i2)) == (employeesi | ?);
  List_Of_Ids_SeenBNU(Implementation(Employee_i2)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Employee_i2)) == (Type(ROLES) == Cst(SetOf(etype(ROLES,0,1)));Type(NAME) == Cst(SetOf(btype(INTEGER,"[NAME","]NAME"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Employee_i2)) == (Type(no_permition) == Cst(etype(ROLES,0,1));Type(permition) == Cst(etype(ROLES,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Employee_i2)) == (Type(employeesi) == Mvv(SetOf(btype(INTEGER,"[NAME","]NAME")*etype(ROLES,0,1))))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Employee_i2))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Employee_i2))==(employeesi: POW(INTEGER*ROLES))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
