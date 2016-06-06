Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Suggestion))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Suggestion))==(Machine(Suggestion));
  Level(Machine(Suggestion))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Suggestion)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Suggestion))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Suggestion))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Suggestion))==(?);
  List_Includes(Machine(Suggestion))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Suggestion))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Suggestion))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Suggestion))==(?);
  Context_List_Variables(Machine(Suggestion))==(?);
  Abstract_List_Variables(Machine(Suggestion))==(?);
  Local_List_Variables(Machine(Suggestion))==(suggestions);
  List_Variables(Machine(Suggestion))==(suggestions);
  External_List_Variables(Machine(Suggestion))==(suggestions)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Suggestion))==(?);
  Abstract_List_VisibleVariables(Machine(Suggestion))==(?);
  External_List_VisibleVariables(Machine(Suggestion))==(?);
  Expanded_List_VisibleVariables(Machine(Suggestion))==(?);
  List_VisibleVariables(Machine(Suggestion))==(?);
  Internal_List_VisibleVariables(Machine(Suggestion))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Suggestion))==(btrue);
  Gluing_List_Invariant(Machine(Suggestion))==(btrue);
  Expanded_List_Invariant(Machine(Suggestion))==(btrue);
  Abstract_List_Invariant(Machine(Suggestion))==(btrue);
  Context_List_Invariant(Machine(Suggestion))==(btrue);
  List_Invariant(Machine(Suggestion))==(suggestions <: SUGGESTION)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Suggestion))==(btrue);
  Abstract_List_Assertions(Machine(Suggestion))==(btrue);
  Context_List_Assertions(Machine(Suggestion))==(btrue);
  List_Assertions(Machine(Suggestion))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Suggestion))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Suggestion))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Suggestion))==(suggestions:={});
  Context_List_Initialisation(Machine(Suggestion))==(skip);
  List_Initialisation(Machine(Suggestion))==(suggestions:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Suggestion))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Suggestion))==(btrue);
  List_Constraints(Machine(Suggestion))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Suggestion))==(add_suggestion,remove_suggestion);
  List_Operations(Machine(Suggestion))==(add_suggestion,remove_suggestion)
END
&
THEORY ListInputX IS
  List_Input(Machine(Suggestion),add_suggestion)==(suggestion);
  List_Input(Machine(Suggestion),remove_suggestion)==(suggestion)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Suggestion),add_suggestion)==(?);
  List_Output(Machine(Suggestion),remove_suggestion)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Suggestion),add_suggestion)==(add_suggestion(suggestion));
  List_Header(Machine(Suggestion),remove_suggestion)==(remove_suggestion(suggestion))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Suggestion),add_suggestion)==(suggestion: SUGGESTION);
  List_Precondition(Machine(Suggestion),remove_suggestion)==(suggestion: SUGGESTION & suggestion: suggestions)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Suggestion),remove_suggestion)==(suggestion: SUGGESTION & suggestion: suggestions | suggestions:=suggestions-{suggestion});
  Expanded_List_Substitution(Machine(Suggestion),add_suggestion)==(suggestion: SUGGESTION | suggestions:=suggestions\/{suggestion});
  List_Substitution(Machine(Suggestion),add_suggestion)==(suggestions:=suggestions\/{suggestion});
  List_Substitution(Machine(Suggestion),remove_suggestion)==(suggestions:=suggestions-{suggestion})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Suggestion))==(?);
  Inherited_List_Constants(Machine(Suggestion))==(?);
  List_Constants(Machine(Suggestion))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Suggestion),SUGGESTION)==(?);
  Context_List_Enumerated(Machine(Suggestion))==(?);
  Context_List_Defered(Machine(Suggestion))==(?);
  Context_List_Sets(Machine(Suggestion))==(?);
  List_Valuable_Sets(Machine(Suggestion))==(SUGGESTION);
  Inherited_List_Enumerated(Machine(Suggestion))==(?);
  Inherited_List_Defered(Machine(Suggestion))==(?);
  Inherited_List_Sets(Machine(Suggestion))==(?);
  List_Enumerated(Machine(Suggestion))==(?);
  List_Defered(Machine(Suggestion))==(SUGGESTION);
  List_Sets(Machine(Suggestion))==(SUGGESTION)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Suggestion))==(?);
  Expanded_List_HiddenConstants(Machine(Suggestion))==(?);
  List_HiddenConstants(Machine(Suggestion))==(?);
  External_List_HiddenConstants(Machine(Suggestion))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Suggestion))==(btrue);
  Context_List_Properties(Machine(Suggestion))==(btrue);
  Inherited_List_Properties(Machine(Suggestion))==(btrue);
  List_Properties(Machine(Suggestion))==(SUGGESTION: FIN(INTEGER) & not(SUGGESTION = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Suggestion),add_suggestion)==(?);
  List_ANY_Var(Machine(Suggestion),remove_suggestion)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Suggestion)) == (SUGGESTION | ? | suggestions | ? | add_suggestion,remove_suggestion | ? | ? | ? | Suggestion);
  List_Of_HiddenCst_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Suggestion)) == (?);
  List_Of_VisibleVar_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Suggestion)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Suggestion)) == (Type(SUGGESTION) == Cst(SetOf(atype(SUGGESTION,"[SUGGESTION","]SUGGESTION"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Suggestion)) == (Type(suggestions) == Mvl(SetOf(atype(SUGGESTION,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Suggestion)) == (Type(remove_suggestion) == Cst(No_type,atype(SUGGESTION,?,?));Type(add_suggestion) == Cst(No_type,atype(SUGGESTION,?,?)))
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
