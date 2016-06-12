Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Suggestion_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Suggestion_i))==(Machine(Suggestion));
  Level(Implementation(Suggestion_i))==(1);
  Upper_Level(Implementation(Suggestion_i))==(Machine(Suggestion))
END
&
THEORY LoadedStructureX IS
  Implementation(Suggestion_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Suggestion_i))==(Owner_Context)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Suggestion_i))==(?);
  Inherited_List_Includes(Implementation(Suggestion_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Suggestion_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Suggestion_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Suggestion_i))==(?);
  Context_List_Variables(Implementation(Suggestion_i))==(?);
  Abstract_List_Variables(Implementation(Suggestion_i))==(suggestions);
  Local_List_Variables(Implementation(Suggestion_i))==(?);
  List_Variables(Implementation(Suggestion_i))==(?);
  External_List_Variables(Implementation(Suggestion_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Suggestion_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Suggestion_i))==(?);
  External_List_VisibleVariables(Implementation(Suggestion_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Suggestion_i))==(?);
  List_VisibleVariables(Implementation(Suggestion_i))==(suggestionsi);
  Internal_List_VisibleVariables(Implementation(Suggestion_i))==(suggestionsi)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Suggestion_i))==(btrue);
  Expanded_List_Invariant(Implementation(Suggestion_i))==(btrue);
  Abstract_List_Invariant(Implementation(Suggestion_i))==(suggestions: SUGGESTION +-> OWNER);
  Context_List_Invariant(Implementation(Suggestion_i))==(btrue);
  List_Invariant(Implementation(Suggestion_i))==(suggestionsi: SUGGESTION --> OWNER & !pp.(pp: dom(suggestions) => suggestions(pp) = suggestionsi(pp)))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Suggestion_i))==(btrue);
  Abstract_List_Assertions(Implementation(Suggestion_i))==(btrue);
  Context_List_Assertions(Implementation(Suggestion_i))==(btrue);
  List_Assertions(Implementation(Suggestion_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Suggestion_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Suggestion_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Suggestion_i))==(suggestionsi:=SUGGESTION*{DEFAULT_OWNER});
  Context_List_Initialisation(Implementation(Suggestion_i))==(skip);
  List_Initialisation(Implementation(Suggestion_i))==(suggestionsi:=SUGGESTION*{DEFAULT_OWNER})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Suggestion_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Suggestion_i),Machine(Owner_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Suggestion_i))==(btrue);
  List_Context_Constraints(Implementation(Suggestion_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Suggestion_i))==(add_suggestion,remove_suggestion);
  List_Operations(Implementation(Suggestion_i))==(add_suggestion,remove_suggestion)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Suggestion_i),add_suggestion)==(suggestion,oo);
  List_Input(Implementation(Suggestion_i),remove_suggestion)==(suggestion)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Suggestion_i),add_suggestion)==(?);
  List_Output(Implementation(Suggestion_i),remove_suggestion)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Suggestion_i),add_suggestion)==(add_suggestion(suggestion,oo));
  List_Header(Implementation(Suggestion_i),remove_suggestion)==(remove_suggestion(suggestion))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Suggestion_i),add_suggestion)==(btrue);
  List_Precondition(Implementation(Suggestion_i),add_suggestion)==(suggestion: SUGGESTION & oo: OWNER);
  Own_Precondition(Implementation(Suggestion_i),remove_suggestion)==(btrue);
  List_Precondition(Implementation(Suggestion_i),remove_suggestion)==(suggestion: SUGGESTION)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Suggestion_i),remove_suggestion)==(suggestion: SUGGESTION & suggestion: dom(suggestionsi) | suggestionsi:=suggestionsi<+{suggestion|->DEFAULT_OWNER});
  Expanded_List_Substitution(Implementation(Suggestion_i),add_suggestion)==(suggestion: SUGGESTION & oo: OWNER & suggestion: dom(suggestionsi) | suggestionsi:=suggestionsi<+{suggestion|->oo});
  List_Substitution(Implementation(Suggestion_i),add_suggestion)==(suggestionsi(suggestion):=oo);
  List_Substitution(Implementation(Suggestion_i),remove_suggestion)==(suggestionsi(suggestion):=DEFAULT_OWNER)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Suggestion_i))==(?);
  Inherited_List_Constants(Implementation(Suggestion_i))==(?);
  List_Constants(Implementation(Suggestion_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Suggestion_i),SUGGESTION)==(?);
  Context_List_Enumerated(Implementation(Suggestion_i))==(?);
  Context_List_Defered(Implementation(Suggestion_i))==(OWNER);
  Context_List_Sets(Implementation(Suggestion_i))==(OWNER);
  List_Own_Enumerated(Implementation(Suggestion_i))==(?);
  List_Valuable_Sets(Implementation(Suggestion_i))==(SUGGESTION);
  Inherited_List_Enumerated(Implementation(Suggestion_i))==(?);
  Inherited_List_Defered(Implementation(Suggestion_i))==(SUGGESTION);
  Inherited_List_Sets(Implementation(Suggestion_i))==(SUGGESTION);
  List_Enumerated(Implementation(Suggestion_i))==(?);
  List_Defered(Implementation(Suggestion_i))==(?);
  List_Sets(Implementation(Suggestion_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Suggestion_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Suggestion_i))==(?);
  List_HiddenConstants(Implementation(Suggestion_i))==(?);
  External_List_HiddenConstants(Implementation(Suggestion_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Suggestion_i))==(SUGGESTION: FIN(INTEGER) & not(SUGGESTION = {}));
  Context_List_Properties(Implementation(Suggestion_i))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Inherited_List_Properties(Implementation(Suggestion_i))==(btrue);
  List_Properties(Implementation(Suggestion_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Suggestion_i))==(btrue);
  Values_Subs(Implementation(Suggestion_i))==(SUGGESTION: 0..4);
  List_Values(Implementation(Suggestion_i))==(SUGGESTION = 0..4)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Suggestion_i),Machine(Owner_Context))==(?);
  Seen_Context_List_Enumerated(Implementation(Suggestion_i))==(?);
  Seen_Context_List_Invariant(Implementation(Suggestion_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Suggestion_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Suggestion_i))==(btrue);
  Seen_List_Constraints(Implementation(Suggestion_i))==(btrue);
  Seen_List_Operations(Implementation(Suggestion_i),Machine(Owner_Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Suggestion_i),Machine(Owner_Context))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Suggestion_i))==(Type(suggestionsi) == Mvv(SetOf(btype(INTEGER,"[SUGGESTION","]SUGGESTION")*atype(OWNER,"[OWNER","]OWNER"))));
  Operations(Implementation(Suggestion_i))==(Type(remove_suggestion) == Cst(No_type,atype(SUGGESTION,?,?));Type(add_suggestion) == Cst(No_type,atype(SUGGESTION,?,?)*atype(OWNER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Suggestion_i),Machine(Owner_Context))==(DEFAULT_OWNER);
  List_Constants_Env(Implementation(Suggestion_i),Machine(Owner_Context))==(Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)));
  List_Defered_Sets(Implementation(Suggestion_i),Machine(Owner_Context))==(OWNER)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Suggestion_i)) == (? | ? | ? | ? | add_suggestion,remove_suggestion | ? | seen(Machine(Owner_Context)) | ? | Suggestion_i);
  List_Of_HiddenCst_Ids(Implementation(Suggestion_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Suggestion_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Suggestion_i)) == (suggestionsi | ?);
  List_Of_Ids_SeenBNU(Implementation(Suggestion_i)) == (?: ?);
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Suggestion_i)) == (Type(SUGGESTION) == Cst(SetOf(btype(INTEGER,"[SUGGESTION","]SUGGESTION"))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Suggestion_i)) == (Type(suggestionsi) == Mvv(SetOf(btype(INTEGER,"[SUGGESTION","]SUGGESTION")*atype(OWNER,"[OWNER","]OWNER"))))
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
  List_Local_Operations(Implementation(Suggestion_i))==(?)
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
  TypingPredicate(Implementation(Suggestion_i))==(suggestionsi: POW(INTEGER*OWNER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
