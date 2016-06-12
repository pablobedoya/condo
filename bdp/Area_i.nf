Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Area_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Area_i))==(Machine(Area));
  Level(Implementation(Area_i))==(1);
  Upper_Level(Implementation(Area_i))==(Machine(Area))
END
&
THEORY LoadedStructureX IS
  Implementation(Area_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Area_i))==(Area_Context)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Area_i))==(?);
  Inherited_List_Includes(Implementation(Area_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Area_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Area_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Area_i))==(?);
  Context_List_Variables(Implementation(Area_i))==(?);
  Abstract_List_Variables(Implementation(Area_i))==(area);
  Local_List_Variables(Implementation(Area_i))==(?);
  List_Variables(Implementation(Area_i))==(?);
  External_List_Variables(Implementation(Area_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Area_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Area_i))==(?);
  External_List_VisibleVariables(Implementation(Area_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Area_i))==(?);
  List_VisibleVariables(Implementation(Area_i))==(areai);
  Internal_List_VisibleVariables(Implementation(Area_i))==(areai)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Area_i))==(btrue);
  Expanded_List_Invariant(Implementation(Area_i))==(btrue);
  Abstract_List_Invariant(Implementation(Area_i))==(area <: AREA);
  Context_List_Invariant(Implementation(Area_i))==(btrue);
  List_Invariant(Implementation(Area_i))==(areai: AREA --> BOOL & dom(areai|>{TRUE}) = area)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Area_i))==(btrue);
  Abstract_List_Assertions(Implementation(Area_i))==(btrue);
  Context_List_Assertions(Implementation(Area_i))==(btrue);
  List_Assertions(Implementation(Area_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Area_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Area_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Area_i))==(areai:=AREA*{FALSE});
  Context_List_Initialisation(Implementation(Area_i))==(skip);
  List_Initialisation(Implementation(Area_i))==(areai:=AREA*{FALSE})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Area_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Area_i),Machine(Area_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Area_i))==(btrue);
  List_Context_Constraints(Implementation(Area_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Area_i))==(add_area,remove_area);
  List_Operations(Implementation(Area_i))==(add_area,remove_area)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Area_i),add_area)==(aa);
  List_Input(Implementation(Area_i),remove_area)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Area_i),add_area)==(?);
  List_Output(Implementation(Area_i),remove_area)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Area_i),add_area)==(add_area(aa));
  List_Header(Implementation(Area_i),remove_area)==(remove_area(aa))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Area_i),add_area)==(btrue);
  List_Precondition(Implementation(Area_i),add_area)==(aa: AREA & aa/:area);
  Own_Precondition(Implementation(Area_i),remove_area)==(btrue);
  List_Precondition(Implementation(Area_i),remove_area)==(aa: AREA & aa: area)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Area_i),remove_area)==(aa: AREA & aa: area & aa: dom(areai) | areai:=areai<+{aa|->FALSE});
  Expanded_List_Substitution(Implementation(Area_i),add_area)==(aa: AREA & aa/:area & aa: dom(areai) | areai:=areai<+{aa|->TRUE});
  List_Substitution(Implementation(Area_i),add_area)==(areai(aa):=TRUE);
  List_Substitution(Implementation(Area_i),remove_area)==(areai(aa):=FALSE)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Area_i))==(?);
  Inherited_List_Constants(Implementation(Area_i))==(?);
  List_Constants(Implementation(Area_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Area_i))==(?);
  Context_List_Defered(Implementation(Area_i))==(AREA);
  Context_List_Sets(Implementation(Area_i))==(AREA);
  List_Own_Enumerated(Implementation(Area_i))==(?);
  List_Valuable_Sets(Implementation(Area_i))==(?);
  Inherited_List_Enumerated(Implementation(Area_i))==(?);
  Inherited_List_Defered(Implementation(Area_i))==(?);
  Inherited_List_Sets(Implementation(Area_i))==(?);
  List_Enumerated(Implementation(Area_i))==(?);
  List_Defered(Implementation(Area_i))==(?);
  List_Sets(Implementation(Area_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Area_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Area_i))==(?);
  List_HiddenConstants(Implementation(Area_i))==(?);
  External_List_HiddenConstants(Implementation(Area_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Area_i))==(btrue);
  Context_List_Properties(Implementation(Area_i))==(DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}));
  Inherited_List_Properties(Implementation(Area_i))==(btrue);
  List_Properties(Implementation(Area_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Area_i))==(aa: aa);
  List_Values(Implementation(Area_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Area_i),Machine(Area_Context))==(?);
  Seen_Context_List_Enumerated(Implementation(Area_i))==(?);
  Seen_Context_List_Invariant(Implementation(Area_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Area_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Area_i))==(btrue);
  Seen_List_Constraints(Implementation(Area_i))==(btrue);
  Seen_List_Operations(Implementation(Area_i),Machine(Area_Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Area_i),Machine(Area_Context))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Area_i))==(Type(areai) == Mvv(SetOf(atype(AREA,"[AREA","]AREA")*btype(BOOL,0,1))));
  Operations(Implementation(Area_i))==(Type(remove_area) == Cst(No_type,atype(AREA,?,?));Type(add_area) == Cst(No_type,atype(AREA,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Area_i),Machine(Area_Context))==(DEFAULT_AREA);
  List_Constants_Env(Implementation(Area_i),Machine(Area_Context))==(Type(DEFAULT_AREA) == Cst(atype(AREA,?,?)));
  List_Defered_Sets(Implementation(Area_i),Machine(Area_Context))==(AREA)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Area_i)) == (? | ? | ? | ? | add_area,remove_area | ? | seen(Machine(Area_Context)) | ? | Area_i);
  List_Of_HiddenCst_Ids(Implementation(Area_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Area_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Area_i)) == (areai | ?);
  List_Of_Ids_SeenBNU(Implementation(Area_i)) == (?: ?);
  List_Of_Ids(Machine(Area_Context)) == (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | Area_Context);
  List_Of_HiddenCst_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area_Context)) == (DEFAULT_AREA);
  List_Of_VisibleVar_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area_Context)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Area_i)) == (Type(areai) == Mvv(SetOf(atype(AREA,"[AREA","]AREA")*btype(BOOL,0,1))))
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
  List_Local_Operations(Implementation(Area_i))==(?)
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
  TypingPredicate(Implementation(Area_i))==(areai: POW(AREA*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
