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
  List_Sees(Machine(Suggestion))==(Owner_Context)
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
  List_Invariant(Machine(Suggestion))==(suggestions: SUGGESTION +-> OWNER)
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
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Suggestion),Machine(Owner_Context))==(?)
END
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
  List_Input(Machine(Suggestion),add_suggestion)==(suggestion,oo);
  List_Input(Machine(Suggestion),remove_suggestion)==(suggestion)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Suggestion),add_suggestion)==(?);
  List_Output(Machine(Suggestion),remove_suggestion)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Suggestion),add_suggestion)==(add_suggestion(suggestion,oo));
  List_Header(Machine(Suggestion),remove_suggestion)==(remove_suggestion(suggestion))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Suggestion),add_suggestion)==(suggestion: SUGGESTION & oo: OWNER);
  List_Precondition(Machine(Suggestion),remove_suggestion)==(suggestion: SUGGESTION)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Suggestion),remove_suggestion)==(suggestion: SUGGESTION | suggestions:=suggestions-{suggestion|->suggestions(suggestion)});
  Expanded_List_Substitution(Machine(Suggestion),add_suggestion)==(suggestion: SUGGESTION & oo: OWNER | suggestions:=suggestions<+{suggestion|->oo});
  List_Substitution(Machine(Suggestion),add_suggestion)==(suggestions:=suggestions<+{suggestion|->oo});
  List_Substitution(Machine(Suggestion),remove_suggestion)==(suggestions:=suggestions-{suggestion|->suggestions(suggestion)})
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
  Context_List_Defered(Machine(Suggestion))==(OWNER);
  Context_List_Sets(Machine(Suggestion))==(OWNER);
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
  Context_List_Properties(Machine(Suggestion))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Inherited_List_Properties(Machine(Suggestion))==(btrue);
  List_Properties(Machine(Suggestion))==(SUGGESTION: FIN(INTEGER) & not(SUGGESTION = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Suggestion),Machine(Owner_Context))==(?);
  Seen_Context_List_Enumerated(Machine(Suggestion))==(?);
  Seen_Context_List_Invariant(Machine(Suggestion))==(btrue);
  Seen_Context_List_Assertions(Machine(Suggestion))==(btrue);
  Seen_Context_List_Properties(Machine(Suggestion))==(btrue);
  Seen_List_Constraints(Machine(Suggestion))==(btrue);
  Seen_List_Operations(Machine(Suggestion),Machine(Owner_Context))==(?);
  Seen_Expanded_List_Invariant(Machine(Suggestion),Machine(Owner_Context))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Suggestion),add_suggestion)==(?);
  List_ANY_Var(Machine(Suggestion),remove_suggestion)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Suggestion)) == (SUGGESTION | ? | suggestions | ? | add_suggestion,remove_suggestion | ? | seen(Machine(Owner_Context)) | ? | Suggestion);
  List_Of_HiddenCst_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Suggestion)) == (?);
  List_Of_VisibleVar_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Suggestion)) == (?: ?);
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Suggestion)) == (Type(SUGGESTION) == Cst(SetOf(atype(SUGGESTION,"[SUGGESTION","]SUGGESTION"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Suggestion)) == (Type(suggestions) == Mvl(SetOf(atype(SUGGESTION,?,?)*atype(OWNER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Suggestion)) == (Type(remove_suggestion) == Cst(No_type,atype(SUGGESTION,?,?));Type(add_suggestion) == Cst(No_type,atype(SUGGESTION,?,?)*atype(OWNER,?,?)))
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
