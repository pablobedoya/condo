Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Area_Context_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Area_Context_i))==(Machine(Area_Context));
  Level(Implementation(Area_Context_i))==(1);
  Upper_Level(Implementation(Area_Context_i))==(Machine(Area_Context))
END
&
THEORY LoadedStructureX IS
  Implementation(Area_Context_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Area_Context_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Area_Context_i))==(?);
  Inherited_List_Includes(Implementation(Area_Context_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Area_Context_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Area_Context_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Area_Context_i))==(?);
  Context_List_Variables(Implementation(Area_Context_i))==(?);
  Abstract_List_Variables(Implementation(Area_Context_i))==(?);
  Local_List_Variables(Implementation(Area_Context_i))==(?);
  List_Variables(Implementation(Area_Context_i))==(?);
  External_List_Variables(Implementation(Area_Context_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Area_Context_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Area_Context_i))==(?);
  External_List_VisibleVariables(Implementation(Area_Context_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Area_Context_i))==(?);
  List_VisibleVariables(Implementation(Area_Context_i))==(?);
  Internal_List_VisibleVariables(Implementation(Area_Context_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Area_Context_i))==(btrue);
  Expanded_List_Invariant(Implementation(Area_Context_i))==(btrue);
  Abstract_List_Invariant(Implementation(Area_Context_i))==(btrue);
  Context_List_Invariant(Implementation(Area_Context_i))==(btrue);
  List_Invariant(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Area_Context_i))==(btrue);
  Abstract_List_Assertions(Implementation(Area_Context_i))==(btrue);
  Context_List_Assertions(Implementation(Area_Context_i))==(btrue);
  List_Assertions(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Area_Context_i))==(skip);
  Context_List_Initialisation(Implementation(Area_Context_i))==(skip);
  List_Initialisation(Implementation(Area_Context_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Area_Context_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Area_Context_i))==(btrue);
  List_Context_Constraints(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Area_Context_i))==(?);
  List_Operations(Implementation(Area_Context_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Area_Context_i))==(DEFAULT_AREA);
  Inherited_List_Constants(Implementation(Area_Context_i))==(DEFAULT_AREA);
  List_Constants(Implementation(Area_Context_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Area_Context_i),AREA)==(?);
  Context_List_Enumerated(Implementation(Area_Context_i))==(?);
  Context_List_Defered(Implementation(Area_Context_i))==(?);
  Context_List_Sets(Implementation(Area_Context_i))==(?);
  List_Own_Enumerated(Implementation(Area_Context_i))==(?);
  List_Valuable_Sets(Implementation(Area_Context_i))==(AREA);
  Inherited_List_Enumerated(Implementation(Area_Context_i))==(?);
  Inherited_List_Defered(Implementation(Area_Context_i))==(AREA);
  Inherited_List_Sets(Implementation(Area_Context_i))==(AREA);
  List_Enumerated(Implementation(Area_Context_i))==(?);
  List_Defered(Implementation(Area_Context_i))==(?);
  List_Sets(Implementation(Area_Context_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Area_Context_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Area_Context_i))==(?);
  List_HiddenConstants(Implementation(Area_Context_i))==(?);
  External_List_HiddenConstants(Implementation(Area_Context_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Area_Context_i))==(DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}));
  Context_List_Properties(Implementation(Area_Context_i))==(btrue);
  Inherited_List_Properties(Implementation(Area_Context_i))==(btrue);
  List_Properties(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Area_Context_i))==(btrue);
  Values_Subs(Implementation(Area_Context_i))==(AREA,DEFAULT_AREA: 0..4,0);
  List_Values(Implementation(Area_Context_i))==(AREA = 0..4;DEFAULT_AREA = 0)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Area_Context_i))==(Type(DEFAULT_AREA) == Cst(atype(AREA,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Area_Context_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Area_Context_i);
  List_Of_HiddenCst_Ids(Implementation(Area_Context_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Area_Context_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Area_Context_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Area_Context_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Area_Context_i)) == (Type(AREA) == Cst(SetOf(btype(INTEGER,"[AREA","]AREA"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Area_Context_i)) == (Type(DEFAULT_AREA) == Cst(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Area_Context_i))==(?)
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
  TypingPredicate(Implementation(Area_Context_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
