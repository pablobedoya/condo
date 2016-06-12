Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Owner_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Owner_i))==(Machine(Owner));
  Level(Implementation(Owner_i))==(1);
  Upper_Level(Implementation(Owner_i))==(Machine(Owner))
END
&
THEORY LoadedStructureX IS
  Implementation(Owner_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Owner_i))==(Owner_Context)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Owner_i))==(?);
  Inherited_List_Includes(Implementation(Owner_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Owner_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Owner_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Owner_i))==(?);
  Context_List_Variables(Implementation(Owner_i))==(?);
  Abstract_List_Variables(Implementation(Owner_i))==(owner);
  Local_List_Variables(Implementation(Owner_i))==(?);
  List_Variables(Implementation(Owner_i))==(?);
  External_List_Variables(Implementation(Owner_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Owner_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Owner_i))==(?);
  External_List_VisibleVariables(Implementation(Owner_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Owner_i))==(?);
  List_VisibleVariables(Implementation(Owner_i))==(owneri);
  Internal_List_VisibleVariables(Implementation(Owner_i))==(owneri)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Owner_i))==(btrue);
  Expanded_List_Invariant(Implementation(Owner_i))==(btrue);
  Abstract_List_Invariant(Implementation(Owner_i))==(owner <: OWNER);
  Context_List_Invariant(Implementation(Owner_i))==(btrue);
  List_Invariant(Implementation(Owner_i))==(owneri: OWNER --> BOOL & dom(owneri|>{TRUE}) = owner)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Owner_i))==(btrue);
  Abstract_List_Assertions(Implementation(Owner_i))==(btrue);
  Context_List_Assertions(Implementation(Owner_i))==(btrue);
  List_Assertions(Implementation(Owner_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Owner_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Owner_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Owner_i))==(owneri:=OWNER*{FALSE});
  Context_List_Initialisation(Implementation(Owner_i))==(skip);
  List_Initialisation(Implementation(Owner_i))==(owneri:=OWNER*{FALSE})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Owner_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Owner_i),Machine(Owner_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Owner_i))==(btrue);
  List_Context_Constraints(Implementation(Owner_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Owner_i))==(add_owner,remove_owner);
  List_Operations(Implementation(Owner_i))==(add_owner,remove_owner)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Owner_i),add_owner)==(oo);
  List_Input(Implementation(Owner_i),remove_owner)==(oo)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Owner_i),add_owner)==(?);
  List_Output(Implementation(Owner_i),remove_owner)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Owner_i),add_owner)==(add_owner(oo));
  List_Header(Implementation(Owner_i),remove_owner)==(remove_owner(oo))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Owner_i),add_owner)==(btrue);
  List_Precondition(Implementation(Owner_i),add_owner)==(oo: OWNER & oo/:owner);
  Own_Precondition(Implementation(Owner_i),remove_owner)==(btrue);
  List_Precondition(Implementation(Owner_i),remove_owner)==(oo: OWNER & oo: owner)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Owner_i),remove_owner)==(oo: OWNER & oo: owner & oo: dom(owneri) | owneri:=owneri<+{oo|->FALSE});
  Expanded_List_Substitution(Implementation(Owner_i),add_owner)==(oo: OWNER & oo/:owner & oo: dom(owneri) | owneri:=owneri<+{oo|->TRUE});
  List_Substitution(Implementation(Owner_i),add_owner)==(owneri(oo):=TRUE);
  List_Substitution(Implementation(Owner_i),remove_owner)==(owneri(oo):=FALSE)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Owner_i))==(?);
  Inherited_List_Constants(Implementation(Owner_i))==(?);
  List_Constants(Implementation(Owner_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Owner_i))==(?);
  Context_List_Defered(Implementation(Owner_i))==(OWNER);
  Context_List_Sets(Implementation(Owner_i))==(OWNER);
  List_Own_Enumerated(Implementation(Owner_i))==(?);
  List_Valuable_Sets(Implementation(Owner_i))==(?);
  Inherited_List_Enumerated(Implementation(Owner_i))==(?);
  Inherited_List_Defered(Implementation(Owner_i))==(?);
  Inherited_List_Sets(Implementation(Owner_i))==(?);
  List_Enumerated(Implementation(Owner_i))==(?);
  List_Defered(Implementation(Owner_i))==(?);
  List_Sets(Implementation(Owner_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Owner_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Owner_i))==(?);
  List_HiddenConstants(Implementation(Owner_i))==(?);
  External_List_HiddenConstants(Implementation(Owner_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Owner_i))==(btrue);
  Context_List_Properties(Implementation(Owner_i))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Inherited_List_Properties(Implementation(Owner_i))==(btrue);
  List_Properties(Implementation(Owner_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Owner_i))==(aa: aa);
  List_Values(Implementation(Owner_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Owner_i),Machine(Owner_Context))==(?);
  Seen_Context_List_Enumerated(Implementation(Owner_i))==(?);
  Seen_Context_List_Invariant(Implementation(Owner_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Owner_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Owner_i))==(btrue);
  Seen_List_Constraints(Implementation(Owner_i))==(btrue);
  Seen_List_Operations(Implementation(Owner_i),Machine(Owner_Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Owner_i),Machine(Owner_Context))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Owner_i))==(Type(owneri) == Mvv(SetOf(atype(OWNER,"[OWNER","]OWNER")*btype(BOOL,0,1))));
  Operations(Implementation(Owner_i))==(Type(remove_owner) == Cst(No_type,atype(OWNER,?,?));Type(add_owner) == Cst(No_type,atype(OWNER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Owner_i),Machine(Owner_Context))==(DEFAULT_OWNER);
  List_Constants_Env(Implementation(Owner_i),Machine(Owner_Context))==(Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)));
  List_Defered_Sets(Implementation(Owner_i),Machine(Owner_Context))==(OWNER)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Owner_i)) == (? | ? | ? | ? | add_owner,remove_owner | ? | seen(Machine(Owner_Context)) | ? | Owner_i);
  List_Of_HiddenCst_Ids(Implementation(Owner_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Owner_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Owner_i)) == (owneri | ?);
  List_Of_Ids_SeenBNU(Implementation(Owner_i)) == (?: ?);
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Owner_i)) == (Type(owneri) == Mvv(SetOf(atype(OWNER,"[OWNER","]OWNER")*btype(BOOL,0,1))))
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
  List_Local_Operations(Implementation(Owner_i))==(?)
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
  TypingPredicate(Implementation(Owner_i))==(owneri: POW(OWNER*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
