Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Area))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Area))==(Machine(Area));
  Level(Machine(Area))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Area)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Area))==(Area_Context)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Area))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Area))==(?);
  List_Includes(Machine(Area))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Area))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Area))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Area))==(?);
  Context_List_Variables(Machine(Area))==(?);
  Abstract_List_Variables(Machine(Area))==(?);
  Local_List_Variables(Machine(Area))==(area);
  List_Variables(Machine(Area))==(area);
  External_List_Variables(Machine(Area))==(area)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Area))==(?);
  Abstract_List_VisibleVariables(Machine(Area))==(?);
  External_List_VisibleVariables(Machine(Area))==(?);
  Expanded_List_VisibleVariables(Machine(Area))==(?);
  List_VisibleVariables(Machine(Area))==(?);
  Internal_List_VisibleVariables(Machine(Area))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Area))==(btrue);
  Gluing_List_Invariant(Machine(Area))==(btrue);
  Expanded_List_Invariant(Machine(Area))==(btrue);
  Abstract_List_Invariant(Machine(Area))==(btrue);
  Context_List_Invariant(Machine(Area))==(btrue);
  List_Invariant(Machine(Area))==(area <: AREA)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Area))==(btrue);
  Abstract_List_Assertions(Machine(Area))==(btrue);
  Context_List_Assertions(Machine(Area))==(btrue);
  List_Assertions(Machine(Area))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Area))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Area))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Area))==(area:={});
  Context_List_Initialisation(Machine(Area))==(skip);
  List_Initialisation(Machine(Area))==(area:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Area))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Area),Machine(Area_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Area))==(btrue);
  List_Constraints(Machine(Area))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Area))==(add_area,remove_area);
  List_Operations(Machine(Area))==(add_area,remove_area)
END
&
THEORY ListInputX IS
  List_Input(Machine(Area),add_area)==(aa);
  List_Input(Machine(Area),remove_area)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Area),add_area)==(?);
  List_Output(Machine(Area),remove_area)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Area),add_area)==(add_area(aa));
  List_Header(Machine(Area),remove_area)==(remove_area(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Area),add_area)==(aa: AREA & aa/:area);
  List_Precondition(Machine(Area),remove_area)==(aa: AREA & aa: area)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Area),remove_area)==(aa: AREA & aa: area | area:=area-{aa});
  Expanded_List_Substitution(Machine(Area),add_area)==(aa: AREA & aa/:area | area:=area\/{aa});
  List_Substitution(Machine(Area),add_area)==(area:=area\/{aa});
  List_Substitution(Machine(Area),remove_area)==(area:=area-{aa})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Area))==(?);
  Inherited_List_Constants(Machine(Area))==(?);
  List_Constants(Machine(Area))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Area))==(?);
  Context_List_Defered(Machine(Area))==(AREA);
  Context_List_Sets(Machine(Area))==(AREA);
  List_Valuable_Sets(Machine(Area))==(?);
  Inherited_List_Enumerated(Machine(Area))==(?);
  Inherited_List_Defered(Machine(Area))==(?);
  Inherited_List_Sets(Machine(Area))==(?);
  List_Enumerated(Machine(Area))==(?);
  List_Defered(Machine(Area))==(?);
  List_Sets(Machine(Area))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Area))==(?);
  Expanded_List_HiddenConstants(Machine(Area))==(?);
  List_HiddenConstants(Machine(Area))==(?);
  External_List_HiddenConstants(Machine(Area))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Area))==(btrue);
  Context_List_Properties(Machine(Area))==(DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}));
  Inherited_List_Properties(Machine(Area))==(btrue);
  List_Properties(Machine(Area))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Area),Machine(Area_Context))==(?);
  Seen_Context_List_Enumerated(Machine(Area))==(?);
  Seen_Context_List_Invariant(Machine(Area))==(btrue);
  Seen_Context_List_Assertions(Machine(Area))==(btrue);
  Seen_Context_List_Properties(Machine(Area))==(btrue);
  Seen_List_Constraints(Machine(Area))==(btrue);
  Seen_List_Operations(Machine(Area),Machine(Area_Context))==(?);
  Seen_Expanded_List_Invariant(Machine(Area),Machine(Area_Context))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Area),add_area)==(?);
  List_ANY_Var(Machine(Area),remove_area)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Area)) == (? | ? | area | ? | add_area,remove_area | ? | seen(Machine(Area_Context)) | ? | Area);
  List_Of_HiddenCst_Ids(Machine(Area)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area)) == (?);
  List_Of_VisibleVar_Ids(Machine(Area)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area)) == (?: ?);
  List_Of_Ids(Machine(Area_Context)) == (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | Area_Context);
  List_Of_HiddenCst_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area_Context)) == (DEFAULT_AREA);
  List_Of_VisibleVar_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area_Context)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Area)) == (Type(area) == Mvl(SetOf(atype(AREA,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Area)) == (Type(remove_area) == Cst(No_type,atype(AREA,?,?));Type(add_area) == Cst(No_type,atype(AREA,?,?)))
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
