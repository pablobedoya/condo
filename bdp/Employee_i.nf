Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Employee_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Employee_i))==(Machine(Employee));
  Level(Implementation(Employee_i))==(1);
  Upper_Level(Implementation(Employee_i))==(Machine(Employee))
END
&
THEORY LoadedStructureX IS
  Implementation(Employee_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Employee_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Employee_i))==(?);
  Inherited_List_Includes(Implementation(Employee_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Employee_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Employee_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Employee_i))==(?);
  Context_List_Variables(Implementation(Employee_i))==(?);
  Abstract_List_Variables(Implementation(Employee_i))==(employees);
  Local_List_Variables(Implementation(Employee_i))==(?);
  List_Variables(Implementation(Employee_i))==(?);
  External_List_Variables(Implementation(Employee_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Employee_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Employee_i))==(?);
  External_List_VisibleVariables(Implementation(Employee_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Employee_i))==(?);
  List_VisibleVariables(Implementation(Employee_i))==(employeesi);
  Internal_List_VisibleVariables(Implementation(Employee_i))==(employeesi)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Employee_i))==(btrue);
  Expanded_List_Invariant(Implementation(Employee_i))==(btrue);
  Abstract_List_Invariant(Implementation(Employee_i))==(employees: NAME --> ROLES);
  Context_List_Invariant(Implementation(Employee_i))==(btrue);
  List_Invariant(Implementation(Employee_i))==(employeesi: NAME --> ROLES & employees = employeesi)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Employee_i))==(btrue);
  Abstract_List_Assertions(Implementation(Employee_i))==(btrue);
  Context_List_Assertions(Implementation(Employee_i))==(btrue);
  List_Assertions(Implementation(Employee_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Employee_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Employee_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Employee_i))==(employeesi:=NAME*{no_permition});
  Context_List_Initialisation(Implementation(Employee_i))==(skip);
  List_Initialisation(Implementation(Employee_i))==(employeesi:=NAME*{no_permition})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Employee_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Employee_i))==(btrue);
  List_Context_Constraints(Implementation(Employee_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Employee_i))==(add_emp,remove_emp,change_role);
  List_Operations(Implementation(Employee_i))==(add_emp,remove_emp,change_role)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Employee_i),add_emp)==(name);
  List_Input(Implementation(Employee_i),remove_emp)==(name);
  List_Input(Implementation(Employee_i),change_role)==(name,new_role)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Employee_i),add_emp)==(?);
  List_Output(Implementation(Employee_i),remove_emp)==(?);
  List_Output(Implementation(Employee_i),change_role)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Employee_i),add_emp)==(add_emp(name));
  List_Header(Implementation(Employee_i),remove_emp)==(remove_emp(name));
  List_Header(Implementation(Employee_i),change_role)==(change_role(name,new_role))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Employee_i),add_emp)==(btrue);
  List_Precondition(Implementation(Employee_i),add_emp)==(name: NAME & employees(name): {no_permition});
  Own_Precondition(Implementation(Employee_i),remove_emp)==(btrue);
  List_Precondition(Implementation(Employee_i),remove_emp)==(name: NAME & employees(name): {permition});
  Own_Precondition(Implementation(Employee_i),change_role)==(btrue);
  List_Precondition(Implementation(Employee_i),change_role)==(name: NAME & new_role: ROLES & employees(name)/=new_role)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Employee_i),change_role)==(name: NAME & new_role: ROLES & employees(name)/=new_role & name: dom(employeesi) | employeesi:=employeesi<+{name|->new_role});
  Expanded_List_Substitution(Implementation(Employee_i),remove_emp)==(name: NAME & employees(name): {permition} & name: dom(employeesi) | employeesi:=employeesi<+{name|->no_permition});
  Expanded_List_Substitution(Implementation(Employee_i),add_emp)==(name: NAME & employees(name): {no_permition} & name: dom(employeesi) | employeesi:=employeesi<+{name|->permition});
  List_Substitution(Implementation(Employee_i),add_emp)==(employeesi(name):=permition);
  List_Substitution(Implementation(Employee_i),remove_emp)==(employeesi(name):=no_permition);
  List_Substitution(Implementation(Employee_i),change_role)==(employeesi(name):=new_role)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Employee_i))==(?);
  Inherited_List_Constants(Implementation(Employee_i))==(?);
  List_Constants(Implementation(Employee_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Employee_i),ROLES)==({permition,no_permition});
  Context_List_Enumerated(Implementation(Employee_i))==(?);
  Context_List_Defered(Implementation(Employee_i))==(?);
  Context_List_Sets(Implementation(Employee_i))==(?);
  List_Own_Enumerated(Implementation(Employee_i))==(ROLES);
  List_Valuable_Sets(Implementation(Employee_i))==(NAME);
  Inherited_List_Enumerated(Implementation(Employee_i))==(ROLES);
  Inherited_List_Defered(Implementation(Employee_i))==(NAME);
  Inherited_List_Sets(Implementation(Employee_i))==(NAME,ROLES);
  List_Enumerated(Implementation(Employee_i))==(?);
  List_Defered(Implementation(Employee_i))==(?);
  List_Sets(Implementation(Employee_i))==(?);
  Set_Definition(Implementation(Employee_i),NAME)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Employee_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Employee_i))==(?);
  List_HiddenConstants(Implementation(Employee_i))==(?);
  External_List_HiddenConstants(Implementation(Employee_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Employee_i))==(NAME: FIN(INTEGER) & not(NAME = {}) & ROLES: FIN(INTEGER) & not(ROLES = {}));
  Context_List_Properties(Implementation(Employee_i))==(btrue);
  Inherited_List_Properties(Implementation(Employee_i))==(btrue);
  List_Properties(Implementation(Employee_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Employee_i))==(btrue);
  Values_Subs(Implementation(Employee_i))==(NAME: 0..3);
  List_Values(Implementation(Employee_i))==(NAME = 0..3)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Employee_i))==(Type(employeesi) == Mvv(SetOf(btype(INTEGER,"[NAME","]NAME")*etype(ROLES,0,1))));
  Operations(Implementation(Employee_i))==(Type(change_role) == Cst(No_type,atype(NAME,?,?)*etype(ROLES,?,?));Type(remove_emp) == Cst(No_type,atype(NAME,?,?));Type(add_emp) == Cst(No_type,atype(NAME,?,?)));
  Constants(Implementation(Employee_i))==(Type(permition) == Cst(etype(ROLES,0,1));Type(no_permition) == Cst(etype(ROLES,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Employee_i)) == (? | ? | ? | ? | add_emp,remove_emp,change_role | ? | ? | ? | Employee_i);
  List_Of_HiddenCst_Ids(Implementation(Employee_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Employee_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Employee_i)) == (employeesi | ?);
  List_Of_Ids_SeenBNU(Implementation(Employee_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Employee_i)) == (Type(ROLES) == Cst(SetOf(etype(ROLES,0,1)));Type(NAME) == Cst(SetOf(btype(INTEGER,"[NAME","]NAME"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Employee_i)) == (Type(no_permition) == Cst(etype(ROLES,0,1));Type(permition) == Cst(etype(ROLES,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Employee_i)) == (Type(employeesi) == Mvv(SetOf(btype(INTEGER,"[NAME","]NAME")*etype(ROLES,0,1))))
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
  List_Local_Operations(Implementation(Employee_i))==(?)
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
  TypingPredicate(Implementation(Employee_i))==(employeesi: POW(INTEGER*ROLES))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
