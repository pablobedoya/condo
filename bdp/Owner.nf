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
  List_Sees(Machine(Owner))==(Owner_Context)
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
  Local_List_Variables(Machine(Owner))==(owner);
  List_Variables(Machine(Owner))==(owner);
  External_List_Variables(Machine(Owner))==(owner)
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
  Context_List_Invariant(Machine(Owner))==(btrue);
  List_Invariant(Machine(Owner))==(owner <: OWNER)
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
  Expanded_List_Initialisation(Machine(Owner))==(owner:={});
  Context_List_Initialisation(Machine(Owner))==(skip);
  List_Initialisation(Machine(Owner))==(owner:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Owner))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Owner),Machine(Owner_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Owner))==(btrue);
  List_Constraints(Machine(Owner))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Owner))==(add_owner,remove_owner);
  List_Operations(Machine(Owner))==(add_owner,remove_owner)
END
&
THEORY ListInputX IS
  List_Input(Machine(Owner),add_owner)==(oo);
  List_Input(Machine(Owner),remove_owner)==(oo)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Owner),add_owner)==(?);
  List_Output(Machine(Owner),remove_owner)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Owner),add_owner)==(add_owner(oo));
  List_Header(Machine(Owner),remove_owner)==(remove_owner(oo))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Owner),add_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Machine(Owner),remove_owner)==(oo: OWNER & oo: owner)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Owner),remove_owner)==(oo: OWNER & oo: owner | owner:=owner-{oo});
  Expanded_List_Substitution(Machine(Owner),add_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Machine(Owner),add_owner)==(owner:=owner\/{oo});
  List_Substitution(Machine(Owner),remove_owner)==(owner:=owner-{oo})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Owner))==(?);
  Inherited_List_Constants(Machine(Owner))==(?);
  List_Constants(Machine(Owner))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Owner))==(?);
  Context_List_Defered(Machine(Owner))==(OWNER);
  Context_List_Sets(Machine(Owner))==(OWNER);
  List_Valuable_Sets(Machine(Owner))==(?);
  Inherited_List_Enumerated(Machine(Owner))==(?);
  Inherited_List_Defered(Machine(Owner))==(?);
  Inherited_List_Sets(Machine(Owner))==(?);
  List_Enumerated(Machine(Owner))==(?);
  List_Defered(Machine(Owner))==(?);
  List_Sets(Machine(Owner))==(?)
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
  Context_List_Properties(Machine(Owner))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Inherited_List_Properties(Machine(Owner))==(btrue);
  List_Properties(Machine(Owner))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Owner),Machine(Owner_Context))==(?);
  Seen_Context_List_Enumerated(Machine(Owner))==(?);
  Seen_Context_List_Invariant(Machine(Owner))==(btrue);
  Seen_Context_List_Assertions(Machine(Owner))==(btrue);
  Seen_Context_List_Properties(Machine(Owner))==(btrue);
  Seen_List_Constraints(Machine(Owner))==(btrue);
  Seen_List_Operations(Machine(Owner),Machine(Owner_Context))==(?);
  Seen_Expanded_List_Invariant(Machine(Owner),Machine(Owner_Context))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Owner),add_owner)==(?);
  List_ANY_Var(Machine(Owner),remove_owner)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Owner)) == (? | ? | owner | ? | add_owner,remove_owner | ? | seen(Machine(Owner_Context)) | ? | Owner);
  List_Of_HiddenCst_Ids(Machine(Owner)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner)) == (?);
  List_Of_VisibleVar_Ids(Machine(Owner)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner)) == (?: ?);
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Owner)) == (Type(owner) == Mvl(SetOf(atype(OWNER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Owner)) == (Type(remove_owner) == Cst(No_type,atype(OWNER,?,?));Type(add_owner) == Cst(No_type,atype(OWNER,?,?)))
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
