Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Owner_Context))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Owner_Context))==(Machine(Owner_Context));
  Level(Machine(Owner_Context))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Owner_Context)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Owner_Context))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Owner_Context))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Owner_Context))==(?);
  List_Includes(Machine(Owner_Context))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Owner_Context))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Owner_Context))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Owner_Context))==(?);
  Context_List_Variables(Machine(Owner_Context))==(?);
  Abstract_List_Variables(Machine(Owner_Context))==(?);
  Local_List_Variables(Machine(Owner_Context))==(?);
  List_Variables(Machine(Owner_Context))==(?);
  External_List_Variables(Machine(Owner_Context))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Owner_Context))==(?);
  Abstract_List_VisibleVariables(Machine(Owner_Context))==(?);
  External_List_VisibleVariables(Machine(Owner_Context))==(?);
  Expanded_List_VisibleVariables(Machine(Owner_Context))==(?);
  List_VisibleVariables(Machine(Owner_Context))==(?);
  Internal_List_VisibleVariables(Machine(Owner_Context))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Owner_Context))==(btrue);
  Gluing_List_Invariant(Machine(Owner_Context))==(btrue);
  Expanded_List_Invariant(Machine(Owner_Context))==(btrue);
  Abstract_List_Invariant(Machine(Owner_Context))==(btrue);
  Context_List_Invariant(Machine(Owner_Context))==(btrue);
  List_Invariant(Machine(Owner_Context))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Owner_Context))==(btrue);
  Abstract_List_Assertions(Machine(Owner_Context))==(btrue);
  Context_List_Assertions(Machine(Owner_Context))==(btrue);
  List_Assertions(Machine(Owner_Context))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Owner_Context))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Owner_Context))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Owner_Context))==(skip);
  Context_List_Initialisation(Machine(Owner_Context))==(skip);
  List_Initialisation(Machine(Owner_Context))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Owner_Context))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Owner_Context))==(btrue);
  List_Constraints(Machine(Owner_Context))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Owner_Context))==(?);
  List_Operations(Machine(Owner_Context))==(?)
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
  List_Valuable_Constants(Machine(Owner_Context))==(DEFAULT_OWNER);
  Inherited_List_Constants(Machine(Owner_Context))==(?);
  List_Constants(Machine(Owner_Context))==(DEFAULT_OWNER)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Owner_Context),OWNER)==(?);
  Context_List_Enumerated(Machine(Owner_Context))==(?);
  Context_List_Defered(Machine(Owner_Context))==(?);
  Context_List_Sets(Machine(Owner_Context))==(?);
  List_Valuable_Sets(Machine(Owner_Context))==(OWNER);
  Inherited_List_Enumerated(Machine(Owner_Context))==(?);
  Inherited_List_Defered(Machine(Owner_Context))==(?);
  Inherited_List_Sets(Machine(Owner_Context))==(?);
  List_Enumerated(Machine(Owner_Context))==(?);
  List_Defered(Machine(Owner_Context))==(OWNER);
  List_Sets(Machine(Owner_Context))==(OWNER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Owner_Context))==(?);
  Expanded_List_HiddenConstants(Machine(Owner_Context))==(?);
  List_HiddenConstants(Machine(Owner_Context))==(?);
  External_List_HiddenConstants(Machine(Owner_Context))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Owner_Context))==(btrue);
  Context_List_Properties(Machine(Owner_Context))==(btrue);
  Inherited_List_Properties(Machine(Owner_Context))==(btrue);
  List_Properties(Machine(Owner_Context))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Owner_Context)) == (Type(OWNER) == Cst(SetOf(atype(OWNER,"[OWNER","]OWNER"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Owner_Context)) == (Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)))
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
