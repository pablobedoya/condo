Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Owner_Context_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Owner_Context_i))==(Machine(Owner_Context));
  Level(Implementation(Owner_Context_i))==(1);
  Upper_Level(Implementation(Owner_Context_i))==(Machine(Owner_Context))
END
&
THEORY LoadedStructureX IS
  Implementation(Owner_Context_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Owner_Context_i))==(?);
  Inherited_List_Includes(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Owner_Context_i))==(?);
  Context_List_Variables(Implementation(Owner_Context_i))==(?);
  Abstract_List_Variables(Implementation(Owner_Context_i))==(?);
  Local_List_Variables(Implementation(Owner_Context_i))==(?);
  List_Variables(Implementation(Owner_Context_i))==(?);
  External_List_Variables(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Owner_Context_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Owner_Context_i))==(?);
  External_List_VisibleVariables(Implementation(Owner_Context_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Owner_Context_i))==(?);
  List_VisibleVariables(Implementation(Owner_Context_i))==(?);
  Internal_List_VisibleVariables(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Owner_Context_i))==(btrue);
  Expanded_List_Invariant(Implementation(Owner_Context_i))==(btrue);
  Abstract_List_Invariant(Implementation(Owner_Context_i))==(btrue);
  Context_List_Invariant(Implementation(Owner_Context_i))==(btrue);
  List_Invariant(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Owner_Context_i))==(btrue);
  Abstract_List_Assertions(Implementation(Owner_Context_i))==(btrue);
  Context_List_Assertions(Implementation(Owner_Context_i))==(btrue);
  List_Assertions(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Owner_Context_i))==(skip);
  Context_List_Initialisation(Implementation(Owner_Context_i))==(skip);
  List_Initialisation(Implementation(Owner_Context_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Owner_Context_i))==(btrue);
  List_Context_Constraints(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Owner_Context_i))==(?);
  List_Operations(Implementation(Owner_Context_i))==(?)
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
  List_Valuable_Constants(Implementation(Owner_Context_i))==(DEFAULT_OWNER);
  Inherited_List_Constants(Implementation(Owner_Context_i))==(DEFAULT_OWNER);
  List_Constants(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Owner_Context_i),OWNER)==(?);
  Context_List_Enumerated(Implementation(Owner_Context_i))==(?);
  Context_List_Defered(Implementation(Owner_Context_i))==(?);
  Context_List_Sets(Implementation(Owner_Context_i))==(?);
  List_Own_Enumerated(Implementation(Owner_Context_i))==(?);
  List_Valuable_Sets(Implementation(Owner_Context_i))==(OWNER);
  Inherited_List_Enumerated(Implementation(Owner_Context_i))==(?);
  Inherited_List_Defered(Implementation(Owner_Context_i))==(OWNER);
  Inherited_List_Sets(Implementation(Owner_Context_i))==(OWNER);
  List_Enumerated(Implementation(Owner_Context_i))==(?);
  List_Defered(Implementation(Owner_Context_i))==(?);
  List_Sets(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Owner_Context_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Owner_Context_i))==(?);
  List_HiddenConstants(Implementation(Owner_Context_i))==(?);
  External_List_HiddenConstants(Implementation(Owner_Context_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Owner_Context_i))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Context_List_Properties(Implementation(Owner_Context_i))==(btrue);
  Inherited_List_Properties(Implementation(Owner_Context_i))==(btrue);
  List_Properties(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Owner_Context_i))==(btrue);
  Values_Subs(Implementation(Owner_Context_i))==(OWNER,DEFAULT_OWNER: 0..4,0);
  List_Values(Implementation(Owner_Context_i))==(OWNER = 0..4;DEFAULT_OWNER = 0)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Owner_Context_i))==(Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Owner_Context_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Owner_Context_i);
  List_Of_HiddenCst_Ids(Implementation(Owner_Context_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Owner_Context_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Owner_Context_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Owner_Context_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Owner_Context_i)) == (Type(OWNER) == Cst(SetOf(btype(INTEGER,"[OWNER","]OWNER"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Owner_Context_i)) == (Type(DEFAULT_OWNER) == Cst(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Owner_Context_i))==(?)
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
  TypingPredicate(Implementation(Owner_Context_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
