Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Gates))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Gates))==(Machine(Gates));
  Level(Machine(Gates))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Gates)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Gates))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Gates))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Gates))==(?);
  List_Includes(Machine(Gates))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Gates))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Gates))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Gates))==(?);
  Context_List_Variables(Machine(Gates))==(?);
  Abstract_List_Variables(Machine(Gates))==(?);
  Local_List_Variables(Machine(Gates))==(position);
  List_Variables(Machine(Gates))==(position);
  External_List_Variables(Machine(Gates))==(position)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Gates))==(?);
  Abstract_List_VisibleVariables(Machine(Gates))==(?);
  External_List_VisibleVariables(Machine(Gates))==(?);
  Expanded_List_VisibleVariables(Machine(Gates))==(?);
  List_VisibleVariables(Machine(Gates))==(?);
  Internal_List_VisibleVariables(Machine(Gates))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Gates))==(btrue);
  Gluing_List_Invariant(Machine(Gates))==(btrue);
  Expanded_List_Invariant(Machine(Gates))==(btrue);
  Abstract_List_Invariant(Machine(Gates))==(btrue);
  Context_List_Invariant(Machine(Gates))==(btrue);
  List_Invariant(Machine(Gates))==(position: GATE --> POSITION)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Gates))==(btrue);
  Abstract_List_Assertions(Machine(Gates))==(btrue);
  Context_List_Assertions(Machine(Gates))==(btrue);
  List_Assertions(Machine(Gates))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Gates))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Gates))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Gates))==(position:=GATE*{closed});
  Context_List_Initialisation(Machine(Gates))==(skip);
  List_Initialisation(Machine(Gates))==(position:=GATE*{closed})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Gates))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Gates))==(btrue);
  List_Constraints(Machine(Gates))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Gates))==(open_gate,close_gate);
  List_Operations(Machine(Gates))==(open_gate,close_gate)
END
&
THEORY ListInputX IS
  List_Input(Machine(Gates),open_gate)==(gg);
  List_Input(Machine(Gates),close_gate)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Gates),open_gate)==(?);
  List_Output(Machine(Gates),close_gate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Gates),open_gate)==(open_gate(gg));
  List_Header(Machine(Gates),close_gate)==(close_gate(gg))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Gates),open_gate)==(gg: GATE);
  List_Precondition(Machine(Gates),close_gate)==(gg: GATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Gates),close_gate)==(gg: GATE | position:=position<+{gg|->closed});
  Expanded_List_Substitution(Machine(Gates),open_gate)==(gg: GATE | position:=position<+{gg|->open});
  List_Substitution(Machine(Gates),open_gate)==(position(gg):=open);
  List_Substitution(Machine(Gates),close_gate)==(position(gg):=closed)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Gates))==(?);
  Inherited_List_Constants(Machine(Gates))==(?);
  List_Constants(Machine(Gates))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Gates),GATE)==(?);
  Context_List_Enumerated(Machine(Gates))==(?);
  Context_List_Defered(Machine(Gates))==(?);
  Context_List_Sets(Machine(Gates))==(?);
  List_Valuable_Sets(Machine(Gates))==(GATE);
  Inherited_List_Enumerated(Machine(Gates))==(?);
  Inherited_List_Defered(Machine(Gates))==(?);
  Inherited_List_Sets(Machine(Gates))==(?);
  List_Enumerated(Machine(Gates))==(POSITION);
  List_Defered(Machine(Gates))==(GATE);
  List_Sets(Machine(Gates))==(GATE,POSITION);
  Set_Definition(Machine(Gates),POSITION)==({open,closed})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Gates))==(?);
  Expanded_List_HiddenConstants(Machine(Gates))==(?);
  List_HiddenConstants(Machine(Gates))==(?);
  External_List_HiddenConstants(Machine(Gates))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Gates))==(btrue);
  Context_List_Properties(Machine(Gates))==(btrue);
  Inherited_List_Properties(Machine(Gates))==(btrue);
  List_Properties(Machine(Gates))==(GATE: FIN(INTEGER) & not(GATE = {}) & POSITION: FIN(INTEGER) & not(POSITION = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Gates),open_gate)==(?);
  List_ANY_Var(Machine(Gates),close_gate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Gates)) == (GATE,POSITION,open,closed | ? | position | ? | open_gate,close_gate | ? | ? | ? | Gates);
  List_Of_HiddenCst_Ids(Machine(Gates)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Gates)) == (?);
  List_Of_VisibleVar_Ids(Machine(Gates)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Gates)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Gates)) == (Type(GATE) == Cst(SetOf(atype(GATE,"[GATE","]GATE")));Type(POSITION) == Cst(SetOf(etype(POSITION,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Gates)) == (Type(open) == Cst(etype(POSITION,0,1));Type(closed) == Cst(etype(POSITION,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Gates)) == (Type(position) == Mvl(SetOf(atype(GATE,"[GATE","]GATE")*etype(POSITION,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Gates)) == (Type(close_gate) == Cst(No_type,atype(GATE,?,?));Type(open_gate) == Cst(No_type,atype(GATE,?,?)))
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
