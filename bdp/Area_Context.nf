Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Area_Context))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Area_Context))==(Machine(Area_Context));
  Level(Machine(Area_Context))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Area_Context)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Area_Context))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Area_Context))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Area_Context))==(?);
  List_Includes(Machine(Area_Context))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Area_Context))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Area_Context))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Area_Context))==(?);
  Context_List_Variables(Machine(Area_Context))==(?);
  Abstract_List_Variables(Machine(Area_Context))==(?);
  Local_List_Variables(Machine(Area_Context))==(?);
  List_Variables(Machine(Area_Context))==(?);
  External_List_Variables(Machine(Area_Context))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Area_Context))==(?);
  Abstract_List_VisibleVariables(Machine(Area_Context))==(?);
  External_List_VisibleVariables(Machine(Area_Context))==(?);
  Expanded_List_VisibleVariables(Machine(Area_Context))==(?);
  List_VisibleVariables(Machine(Area_Context))==(?);
  Internal_List_VisibleVariables(Machine(Area_Context))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Area_Context))==(btrue);
  Gluing_List_Invariant(Machine(Area_Context))==(btrue);
  Expanded_List_Invariant(Machine(Area_Context))==(btrue);
  Abstract_List_Invariant(Machine(Area_Context))==(btrue);
  Context_List_Invariant(Machine(Area_Context))==(btrue);
  List_Invariant(Machine(Area_Context))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Area_Context))==(btrue);
  Abstract_List_Assertions(Machine(Area_Context))==(btrue);
  Context_List_Assertions(Machine(Area_Context))==(btrue);
  List_Assertions(Machine(Area_Context))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Area_Context))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Area_Context))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Area_Context))==(skip);
  Context_List_Initialisation(Machine(Area_Context))==(skip);
  List_Initialisation(Machine(Area_Context))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Area_Context))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Area_Context))==(btrue);
  List_Constraints(Machine(Area_Context))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Area_Context))==(?);
  List_Operations(Machine(Area_Context))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Area_Context))==(DEFAULT_AREA);
  Inherited_List_Constants(Machine(Area_Context))==(?);
  List_Constants(Machine(Area_Context))==(DEFAULT_AREA)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Area_Context),AREA)==(?);
  Context_List_Enumerated(Machine(Area_Context))==(?);
  Context_List_Defered(Machine(Area_Context))==(?);
  Context_List_Sets(Machine(Area_Context))==(?);
  List_Valuable_Sets(Machine(Area_Context))==(AREA);
  Inherited_List_Enumerated(Machine(Area_Context))==(?);
  Inherited_List_Defered(Machine(Area_Context))==(?);
  Inherited_List_Sets(Machine(Area_Context))==(?);
  List_Enumerated(Machine(Area_Context))==(?);
  List_Defered(Machine(Area_Context))==(AREA);
  List_Sets(Machine(Area_Context))==(AREA)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Area_Context))==(?);
  Expanded_List_HiddenConstants(Machine(Area_Context))==(?);
  List_HiddenConstants(Machine(Area_Context))==(?);
  External_List_HiddenConstants(Machine(Area_Context))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Area_Context))==(btrue);
  Context_List_Properties(Machine(Area_Context))==(btrue);
  Inherited_List_Properties(Machine(Area_Context))==(btrue);
  List_Properties(Machine(Area_Context))==(DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Area_Context)) == (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | Area_Context);
  List_Of_HiddenCst_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area_Context)) == (DEFAULT_AREA);
  List_Of_VisibleVar_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Area_Context)) == (Type(AREA) == Cst(SetOf(atype(AREA,"[AREA","]AREA"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Area_Context)) == (Type(DEFAULT_AREA) == Cst(atype(AREA,?,?)))
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
