Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Event_Context))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Event_Context))==(Machine(Event_Context));
  Level(Machine(Event_Context))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Event_Context)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Event_Context))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Event_Context))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Event_Context))==(?);
  List_Includes(Machine(Event_Context))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Event_Context))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Event_Context))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Event_Context))==(?);
  Context_List_Variables(Machine(Event_Context))==(?);
  Abstract_List_Variables(Machine(Event_Context))==(?);
  Local_List_Variables(Machine(Event_Context))==(?);
  List_Variables(Machine(Event_Context))==(?);
  External_List_Variables(Machine(Event_Context))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Event_Context))==(?);
  Abstract_List_VisibleVariables(Machine(Event_Context))==(?);
  External_List_VisibleVariables(Machine(Event_Context))==(?);
  Expanded_List_VisibleVariables(Machine(Event_Context))==(?);
  List_VisibleVariables(Machine(Event_Context))==(?);
  Internal_List_VisibleVariables(Machine(Event_Context))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Event_Context))==(btrue);
  Gluing_List_Invariant(Machine(Event_Context))==(btrue);
  Expanded_List_Invariant(Machine(Event_Context))==(btrue);
  Abstract_List_Invariant(Machine(Event_Context))==(btrue);
  Context_List_Invariant(Machine(Event_Context))==(btrue);
  List_Invariant(Machine(Event_Context))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Event_Context))==(btrue);
  Abstract_List_Assertions(Machine(Event_Context))==(btrue);
  Context_List_Assertions(Machine(Event_Context))==(btrue);
  List_Assertions(Machine(Event_Context))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Event_Context))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Event_Context))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Event_Context))==(skip);
  Context_List_Initialisation(Machine(Event_Context))==(skip);
  List_Initialisation(Machine(Event_Context))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Event_Context))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Event_Context))==(btrue);
  List_Constraints(Machine(Event_Context))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Event_Context))==(?);
  List_Operations(Machine(Event_Context))==(?)
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
  List_Valuable_Constants(Machine(Event_Context))==(DEFAULT_EVENT);
  Inherited_List_Constants(Machine(Event_Context))==(?);
  List_Constants(Machine(Event_Context))==(DEFAULT_EVENT)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Event_Context),EVENT)==(?);
  Context_List_Enumerated(Machine(Event_Context))==(?);
  Context_List_Defered(Machine(Event_Context))==(?);
  Context_List_Sets(Machine(Event_Context))==(?);
  List_Valuable_Sets(Machine(Event_Context))==(EVENT);
  Inherited_List_Enumerated(Machine(Event_Context))==(?);
  Inherited_List_Defered(Machine(Event_Context))==(?);
  Inherited_List_Sets(Machine(Event_Context))==(?);
  List_Enumerated(Machine(Event_Context))==(?);
  List_Defered(Machine(Event_Context))==(EVENT);
  List_Sets(Machine(Event_Context))==(EVENT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Event_Context))==(?);
  Expanded_List_HiddenConstants(Machine(Event_Context))==(?);
  List_HiddenConstants(Machine(Event_Context))==(?);
  External_List_HiddenConstants(Machine(Event_Context))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Event_Context))==(btrue);
  Context_List_Properties(Machine(Event_Context))==(btrue);
  Inherited_List_Properties(Machine(Event_Context))==(btrue);
  List_Properties(Machine(Event_Context))==(DEFAULT_EVENT: EVENT & EVENT: FIN(INTEGER) & not(EVENT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Event_Context)) == (DEFAULT_EVENT,EVENT | ? | ? | ? | ? | ? | ? | ? | Event_Context);
  List_Of_HiddenCst_Ids(Machine(Event_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Event_Context)) == (DEFAULT_EVENT);
  List_Of_VisibleVar_Ids(Machine(Event_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Event_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Event_Context)) == (Type(EVENT) == Cst(SetOf(atype(EVENT,"[EVENT","]EVENT"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Event_Context)) == (Type(DEFAULT_EVENT) == Cst(atype(EVENT,?,?)))
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
