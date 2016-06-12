Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Event_Context_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Event_Context_i))==(Machine(Event_Context));
  Level(Implementation(Event_Context_i))==(1);
  Upper_Level(Implementation(Event_Context_i))==(Machine(Event_Context))
END
&
THEORY LoadedStructureX IS
  Implementation(Event_Context_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Event_Context_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Event_Context_i))==(?);
  Inherited_List_Includes(Implementation(Event_Context_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Event_Context_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Event_Context_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Event_Context_i))==(?);
  Context_List_Variables(Implementation(Event_Context_i))==(?);
  Abstract_List_Variables(Implementation(Event_Context_i))==(?);
  Local_List_Variables(Implementation(Event_Context_i))==(?);
  List_Variables(Implementation(Event_Context_i))==(?);
  External_List_Variables(Implementation(Event_Context_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Event_Context_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Event_Context_i))==(?);
  External_List_VisibleVariables(Implementation(Event_Context_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Event_Context_i))==(?);
  List_VisibleVariables(Implementation(Event_Context_i))==(?);
  Internal_List_VisibleVariables(Implementation(Event_Context_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Event_Context_i))==(btrue);
  Expanded_List_Invariant(Implementation(Event_Context_i))==(btrue);
  Abstract_List_Invariant(Implementation(Event_Context_i))==(btrue);
  Context_List_Invariant(Implementation(Event_Context_i))==(btrue);
  List_Invariant(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Event_Context_i))==(btrue);
  Abstract_List_Assertions(Implementation(Event_Context_i))==(btrue);
  Context_List_Assertions(Implementation(Event_Context_i))==(btrue);
  List_Assertions(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Event_Context_i))==(skip);
  Context_List_Initialisation(Implementation(Event_Context_i))==(skip);
  List_Initialisation(Implementation(Event_Context_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Event_Context_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Event_Context_i))==(btrue);
  List_Context_Constraints(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Event_Context_i))==(?);
  List_Operations(Implementation(Event_Context_i))==(?)
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
  List_Valuable_Constants(Implementation(Event_Context_i))==(DEFAULT_EVENT);
  Inherited_List_Constants(Implementation(Event_Context_i))==(DEFAULT_EVENT);
  List_Constants(Implementation(Event_Context_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Event_Context_i),EVENT)==(?);
  Context_List_Enumerated(Implementation(Event_Context_i))==(?);
  Context_List_Defered(Implementation(Event_Context_i))==(?);
  Context_List_Sets(Implementation(Event_Context_i))==(?);
  List_Own_Enumerated(Implementation(Event_Context_i))==(?);
  List_Valuable_Sets(Implementation(Event_Context_i))==(EVENT);
  Inherited_List_Enumerated(Implementation(Event_Context_i))==(?);
  Inherited_List_Defered(Implementation(Event_Context_i))==(EVENT);
  Inherited_List_Sets(Implementation(Event_Context_i))==(EVENT);
  List_Enumerated(Implementation(Event_Context_i))==(?);
  List_Defered(Implementation(Event_Context_i))==(?);
  List_Sets(Implementation(Event_Context_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Event_Context_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Event_Context_i))==(?);
  List_HiddenConstants(Implementation(Event_Context_i))==(?);
  External_List_HiddenConstants(Implementation(Event_Context_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Event_Context_i))==(DEFAULT_EVENT: EVENT & EVENT: FIN(INTEGER) & not(EVENT = {}));
  Context_List_Properties(Implementation(Event_Context_i))==(btrue);
  Inherited_List_Properties(Implementation(Event_Context_i))==(btrue);
  List_Properties(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Event_Context_i))==(btrue);
  Values_Subs(Implementation(Event_Context_i))==(EVENT,DEFAULT_EVENT: 0..4,0);
  List_Values(Implementation(Event_Context_i))==(EVENT = 0..4;DEFAULT_EVENT = 0)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Event_Context_i))==(Type(DEFAULT_EVENT) == Cst(atype(EVENT,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Event_Context_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Event_Context_i);
  List_Of_HiddenCst_Ids(Implementation(Event_Context_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Event_Context_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Event_Context_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Event_Context_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Event_Context_i)) == (Type(EVENT) == Cst(SetOf(btype(INTEGER,"[EVENT","]EVENT"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Event_Context_i)) == (Type(DEFAULT_EVENT) == Cst(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Event_Context_i))==(?)
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
  TypingPredicate(Implementation(Event_Context_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
