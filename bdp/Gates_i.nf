Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Gates_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Gates_i))==(Machine(Gates));
  Level(Implementation(Gates_i))==(1);
  Upper_Level(Implementation(Gates_i))==(Machine(Gates))
END
&
THEORY LoadedStructureX IS
  Implementation(Gates_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Gates_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Gates_i))==(?);
  Inherited_List_Includes(Implementation(Gates_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Gates_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Gates_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Gates_i))==(?);
  Context_List_Variables(Implementation(Gates_i))==(?);
  Abstract_List_Variables(Implementation(Gates_i))==(position);
  Local_List_Variables(Implementation(Gates_i))==(?);
  List_Variables(Implementation(Gates_i))==(?);
  External_List_Variables(Implementation(Gates_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Gates_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Gates_i))==(?);
  External_List_VisibleVariables(Implementation(Gates_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Gates_i))==(?);
  List_VisibleVariables(Implementation(Gates_i))==(positioni);
  Internal_List_VisibleVariables(Implementation(Gates_i))==(positioni)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Gates_i))==(btrue);
  Expanded_List_Invariant(Implementation(Gates_i))==(btrue);
  Abstract_List_Invariant(Implementation(Gates_i))==(position: GATE --> POSITION);
  Context_List_Invariant(Implementation(Gates_i))==(btrue);
  List_Invariant(Implementation(Gates_i))==(positioni: GATE --> POSITION & position = positioni)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Gates_i))==(btrue);
  Abstract_List_Assertions(Implementation(Gates_i))==(btrue);
  Context_List_Assertions(Implementation(Gates_i))==(btrue);
  List_Assertions(Implementation(Gates_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Gates_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Gates_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Gates_i))==(positioni:=GATE*{closed});
  Context_List_Initialisation(Implementation(Gates_i))==(skip);
  List_Initialisation(Implementation(Gates_i))==(positioni:=GATE*{closed})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Gates_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Gates_i))==(btrue);
  List_Context_Constraints(Implementation(Gates_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Gates_i))==(open_gate,close_gate);
  List_Operations(Implementation(Gates_i))==(open_gate,close_gate)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Gates_i),open_gate)==(gg);
  List_Input(Implementation(Gates_i),close_gate)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Gates_i),open_gate)==(?);
  List_Output(Implementation(Gates_i),close_gate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Gates_i),open_gate)==(open_gate(gg));
  List_Header(Implementation(Gates_i),close_gate)==(close_gate(gg))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Gates_i),open_gate)==(btrue);
  List_Precondition(Implementation(Gates_i),open_gate)==(gg: GATE);
  Own_Precondition(Implementation(Gates_i),close_gate)==(btrue);
  List_Precondition(Implementation(Gates_i),close_gate)==(gg: GATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Gates_i),close_gate)==(gg: GATE & gg: dom(positioni) | positioni:=positioni<+{gg|->closed});
  Expanded_List_Substitution(Implementation(Gates_i),open_gate)==(gg: GATE & gg: dom(positioni) | positioni:=positioni<+{gg|->open});
  List_Substitution(Implementation(Gates_i),open_gate)==(positioni(gg):=open);
  List_Substitution(Implementation(Gates_i),close_gate)==(positioni(gg):=closed)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Gates_i))==(?);
  Inherited_List_Constants(Implementation(Gates_i))==(?);
  List_Constants(Implementation(Gates_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Gates_i),POSITION)==({open,closed});
  Context_List_Enumerated(Implementation(Gates_i))==(?);
  Context_List_Defered(Implementation(Gates_i))==(?);
  Context_List_Sets(Implementation(Gates_i))==(?);
  List_Own_Enumerated(Implementation(Gates_i))==(POSITION);
  List_Valuable_Sets(Implementation(Gates_i))==(GATE);
  Inherited_List_Enumerated(Implementation(Gates_i))==(POSITION);
  Inherited_List_Defered(Implementation(Gates_i))==(GATE);
  Inherited_List_Sets(Implementation(Gates_i))==(GATE,POSITION);
  List_Enumerated(Implementation(Gates_i))==(?);
  List_Defered(Implementation(Gates_i))==(?);
  List_Sets(Implementation(Gates_i))==(?);
  Set_Definition(Implementation(Gates_i),GATE)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Gates_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Gates_i))==(?);
  List_HiddenConstants(Implementation(Gates_i))==(?);
  External_List_HiddenConstants(Implementation(Gates_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Gates_i))==(GATE: FIN(INTEGER) & not(GATE = {}) & POSITION: FIN(INTEGER) & not(POSITION = {}));
  Context_List_Properties(Implementation(Gates_i))==(btrue);
  Inherited_List_Properties(Implementation(Gates_i))==(btrue);
  List_Properties(Implementation(Gates_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Gates_i))==(btrue);
  Values_Subs(Implementation(Gates_i))==(GATE: 0..2);
  List_Values(Implementation(Gates_i))==(GATE = 0..2)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Gates_i))==(Type(positioni) == Mvv(SetOf(btype(INTEGER,"[GATE","]GATE")*etype(POSITION,0,1))));
  Operations(Implementation(Gates_i))==(Type(close_gate) == Cst(No_type,atype(GATE,?,?));Type(open_gate) == Cst(No_type,atype(GATE,?,?)));
  Constants(Implementation(Gates_i))==(Type(open) == Cst(etype(POSITION,0,1));Type(closed) == Cst(etype(POSITION,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Gates_i)) == (? | ? | ? | ? | open_gate,close_gate | ? | ? | ? | Gates_i);
  List_Of_HiddenCst_Ids(Implementation(Gates_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Gates_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Gates_i)) == (positioni | ?);
  List_Of_Ids_SeenBNU(Implementation(Gates_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Gates_i)) == (Type(POSITION) == Cst(SetOf(etype(POSITION,0,1)));Type(GATE) == Cst(SetOf(btype(INTEGER,"[GATE","]GATE"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Gates_i)) == (Type(closed) == Cst(etype(POSITION,0,1));Type(open) == Cst(etype(POSITION,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Gates_i)) == (Type(positioni) == Mvv(SetOf(btype(INTEGER,"[GATE","]GATE")*etype(POSITION,0,1))))
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
  List_Local_Operations(Implementation(Gates_i))==(?)
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
  TypingPredicate(Implementation(Gates_i))==(positioni: POW(INTEGER*POSITION))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
