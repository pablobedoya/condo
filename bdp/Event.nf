Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Event))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Event))==(Machine(Event));
  Level(Machine(Event))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Event)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Event))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Event))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Event))==(?);
  List_Includes(Machine(Event))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Event))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Event))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Event))==(?);
  Context_List_Variables(Machine(Event))==(?);
  Abstract_List_Variables(Machine(Event))==(?);
  Local_List_Variables(Machine(Event))==(?);
  List_Variables(Machine(Event))==(?);
  External_List_Variables(Machine(Event))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Event))==(?);
  Abstract_List_VisibleVariables(Machine(Event))==(?);
  External_List_VisibleVariables(Machine(Event))==(?);
  Expanded_List_VisibleVariables(Machine(Event))==(?);
  List_VisibleVariables(Machine(Event))==(?);
  Internal_List_VisibleVariables(Machine(Event))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Event))==(btrue);
  Gluing_List_Invariant(Machine(Event))==(btrue);
  Expanded_List_Invariant(Machine(Event))==(btrue);
  Abstract_List_Invariant(Machine(Event))==(btrue);
  Context_List_Invariant(Machine(Event))==(btrue);
  List_Invariant(Machine(Event))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Event))==(btrue);
  Abstract_List_Assertions(Machine(Event))==(btrue);
  Context_List_Assertions(Machine(Event))==(btrue);
  List_Assertions(Machine(Event))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Event))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Event))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Event))==(skip);
  Context_List_Initialisation(Machine(Event))==(skip);
  List_Initialisation(Machine(Event))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Event))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Event))==(btrue);
  List_Constraints(Machine(Event))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Event))==(?);
  List_Operations(Machine(Event))==(?)
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
  List_Valuable_Constants(Machine(Event))==(?);
  Inherited_List_Constants(Machine(Event))==(?);
  List_Constants(Machine(Event))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Event),EVENT)==(?);
  Context_List_Enumerated(Machine(Event))==(?);
  Context_List_Defered(Machine(Event))==(?);
  Context_List_Sets(Machine(Event))==(?);
  List_Valuable_Sets(Machine(Event))==(EVENT);
  Inherited_List_Enumerated(Machine(Event))==(?);
  Inherited_List_Defered(Machine(Event))==(?);
  Inherited_List_Sets(Machine(Event))==(?);
  List_Enumerated(Machine(Event))==(?);
  List_Defered(Machine(Event))==(EVENT);
  List_Sets(Machine(Event))==(EVENT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Event))==(?);
  Expanded_List_HiddenConstants(Machine(Event))==(?);
  List_HiddenConstants(Machine(Event))==(?);
  External_List_HiddenConstants(Machine(Event))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Event))==(btrue);
  Context_List_Properties(Machine(Event))==(btrue);
  Inherited_List_Properties(Machine(Event))==(btrue);
  List_Properties(Machine(Event))==(EVENT: FIN(INTEGER) & not(EVENT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Event)) == (EVENT | ? | ? | ? | ? | ? | ? | ? | Event);
  List_Of_HiddenCst_Ids(Machine(Event)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Event)) == (?);
  List_Of_VisibleVar_Ids(Machine(Event)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Event)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Event)) == (Type(EVENT) == Cst(SetOf(atype(EVENT,"[EVENT","]EVENT"))))
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
