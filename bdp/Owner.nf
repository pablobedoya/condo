Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Owner))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Owner))==(Machine(Owner));
  Level(Machine(Owner))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Owner)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Owner))==(Suggestion)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Owner))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Owner))==(?);
  List_Includes(Machine(Owner))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Owner))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Owner))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Owner))==(?);
  Context_List_Variables(Machine(Owner))==(?);
  Abstract_List_Variables(Machine(Owner))==(?);
  Local_List_Variables(Machine(Owner))==(owner_suggestions,owner);
  List_Variables(Machine(Owner))==(owner_suggestions,owner);
  External_List_Variables(Machine(Owner))==(owner_suggestions,owner)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Owner))==(?);
  Abstract_List_VisibleVariables(Machine(Owner))==(?);
  External_List_VisibleVariables(Machine(Owner))==(?);
  Expanded_List_VisibleVariables(Machine(Owner))==(?);
  List_VisibleVariables(Machine(Owner))==(?);
  Internal_List_VisibleVariables(Machine(Owner))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Owner))==(btrue);
  Gluing_List_Invariant(Machine(Owner))==(btrue);
  Expanded_List_Invariant(Machine(Owner))==(btrue);
  Abstract_List_Invariant(Machine(Owner))==(btrue);
  Context_List_Invariant(Machine(Owner))==(suggestions <: SUGGESTION);
  List_Invariant(Machine(Owner))==(owner <: OWNER & owner_suggestions: OWNER +-> SUGGESTION)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Owner))==(btrue);
  Abstract_List_Assertions(Machine(Owner))==(btrue);
  Context_List_Assertions(Machine(Owner))==(btrue);
  List_Assertions(Machine(Owner))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Owner))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Owner))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Owner))==(owner,owner_suggestions:={},{});
  Context_List_Initialisation(Machine(Owner))==(skip);
  List_Initialisation(Machine(Owner))==(owner:={} || owner_suggestions:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Owner))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Owner),Machine(Suggestion))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Owner))==(btrue);
  List_Constraints(Machine(Owner))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Owner))==(add_owner,remove_owner,add_owner_suggestion);
  List_Operations(Machine(Owner))==(add_owner,remove_owner,add_owner_suggestion)
END
&
THEORY ListInputX IS
  List_Input(Machine(Owner),add_owner)==(oo);
  List_Input(Machine(Owner),remove_owner)==(oo);
  List_Input(Machine(Owner),add_owner_suggestion)==(oo,suggestion)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Owner),add_owner)==(?);
  List_Output(Machine(Owner),remove_owner)==(?);
  List_Output(Machine(Owner),add_owner_suggestion)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Owner),add_owner)==(add_owner(oo));
  List_Header(Machine(Owner),remove_owner)==(remove_owner(oo));
  List_Header(Machine(Owner),add_owner_suggestion)==(add_owner_suggestion(oo,suggestion))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Owner),add_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Machine(Owner),remove_owner)==(oo: OWNER & oo: owner);
  List_Precondition(Machine(Owner),add_owner_suggestion)==(oo: OWNER & suggestion: SUGGESTION)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Owner),add_owner_suggestion)==(oo: OWNER & suggestion: SUGGESTION | owner_suggestions:=owner_suggestions<+{oo|->suggestion});
  Expanded_List_Substitution(Machine(Owner),remove_owner)==(oo: OWNER & oo: owner | owner:=owner-{oo});
  Expanded_List_Substitution(Machine(Owner),add_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Machine(Owner),add_owner)==(owner:=owner\/{oo});
  List_Substitution(Machine(Owner),remove_owner)==(owner:=owner-{oo});
  List_Substitution(Machine(Owner),add_owner_suggestion)==(owner_suggestions:=owner_suggestions<+{oo|->suggestion})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Owner))==(?);
  Inherited_List_Constants(Machine(Owner))==(?);
  List_Constants(Machine(Owner))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Owner),OWNER)==(?);
  Context_List_Enumerated(Machine(Owner))==(?);
  Context_List_Defered(Machine(Owner))==(SUGGESTION);
  Context_List_Sets(Machine(Owner))==(SUGGESTION);
  List_Valuable_Sets(Machine(Owner))==(OWNER);
  Inherited_List_Enumerated(Machine(Owner))==(?);
  Inherited_List_Defered(Machine(Owner))==(?);
  Inherited_List_Sets(Machine(Owner))==(?);
  List_Enumerated(Machine(Owner))==(?);
  List_Defered(Machine(Owner))==(OWNER);
  List_Sets(Machine(Owner))==(OWNER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Owner))==(?);
  Expanded_List_HiddenConstants(Machine(Owner))==(?);
  List_HiddenConstants(Machine(Owner))==(?);
  External_List_HiddenConstants(Machine(Owner))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Owner))==(btrue);
  Context_List_Properties(Machine(Owner))==(SUGGESTION: FIN(INTEGER) & not(SUGGESTION = {}));
  Inherited_List_Properties(Machine(Owner))==(btrue);
  List_Properties(Machine(Owner))==(OWNER: FIN(INTEGER) & not(OWNER = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Owner),Machine(Suggestion))==(add_suggestion,remove_suggestion);
  Seen_Context_List_Enumerated(Machine(Owner))==(?);
  Seen_Context_List_Invariant(Machine(Owner))==(btrue);
  Seen_Context_List_Assertions(Machine(Owner))==(btrue);
  Seen_Context_List_Properties(Machine(Owner))==(btrue);
  Seen_List_Constraints(Machine(Owner))==(btrue);
  Seen_List_Precondition(Machine(Owner),remove_suggestion)==(suggestion: SUGGESTION & suggestion: suggestions);
  Seen_Expanded_List_Substitution(Machine(Owner),remove_suggestion)==(suggestions:=suggestions-{suggestion});
  Seen_List_Precondition(Machine(Owner),add_suggestion)==(suggestion: SUGGESTION);
  Seen_Expanded_List_Substitution(Machine(Owner),add_suggestion)==(suggestions:=suggestions\/{suggestion});
  Seen_List_Operations(Machine(Owner),Machine(Suggestion))==(add_suggestion,remove_suggestion);
  Seen_Expanded_List_Invariant(Machine(Owner),Machine(Suggestion))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Owner),add_owner)==(?);
  List_ANY_Var(Machine(Owner),remove_owner)==(?);
  List_ANY_Var(Machine(Owner),add_owner_suggestion)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Owner)) == (OWNER | ? | owner_suggestions,owner | ? | add_owner,remove_owner,add_owner_suggestion | ? | seen(Machine(Suggestion)) | ? | Owner);
  List_Of_HiddenCst_Ids(Machine(Owner)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner)) == (?);
  List_Of_VisibleVar_Ids(Machine(Owner)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner)) == (?: ?);
  List_Of_Ids(Machine(Suggestion)) == (SUGGESTION | ? | suggestions | ? | add_suggestion,remove_suggestion | ? | ? | ? | Suggestion);
  List_Of_HiddenCst_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Suggestion)) == (?);
  List_Of_VisibleVar_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Suggestion)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Owner)) == (Type(OWNER) == Cst(SetOf(atype(OWNER,"[OWNER","]OWNER"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Owner)) == (Type(owner_suggestions) == Mvl(SetOf(atype(OWNER,?,?)*atype(SUGGESTION,?,?)));Type(owner) == Mvl(SetOf(atype(OWNER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Owner)) == (Type(add_owner_suggestion) == Cst(No_type,atype(OWNER,?,?)*atype(SUGGESTION,?,?));Type(remove_owner) == Cst(No_type,atype(OWNER,?,?));Type(add_owner) == Cst(No_type,atype(OWNER,?,?)))
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
