Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Vehicle_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Vehicle_i))==(Machine(Vehicle));
  Level(Implementation(Vehicle_i))==(1);
  Upper_Level(Implementation(Vehicle_i))==(Machine(Vehicle))
END
&
THEORY LoadedStructureX IS
  Implementation(Vehicle_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Vehicle_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Vehicle_i))==(?);
  Inherited_List_Includes(Implementation(Vehicle_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Vehicle_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Vehicle_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Vehicle_i))==(?);
  Context_List_Variables(Implementation(Vehicle_i))==(?);
  Abstract_List_Variables(Implementation(Vehicle_i))==(vehicles);
  Local_List_Variables(Implementation(Vehicle_i))==(?);
  List_Variables(Implementation(Vehicle_i))==(?);
  External_List_Variables(Implementation(Vehicle_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Vehicle_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Vehicle_i))==(?);
  External_List_VisibleVariables(Implementation(Vehicle_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Vehicle_i))==(?);
  List_VisibleVariables(Implementation(Vehicle_i))==(vehiclesi);
  Internal_List_VisibleVariables(Implementation(Vehicle_i))==(vehiclesi)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Vehicle_i))==(btrue);
  Expanded_List_Invariant(Implementation(Vehicle_i))==(btrue);
  Abstract_List_Invariant(Implementation(Vehicle_i))==(vehicles: VEHICLE_PLATE --> PERMITION);
  Context_List_Invariant(Implementation(Vehicle_i))==(btrue);
  List_Invariant(Implementation(Vehicle_i))==(vehiclesi: VEHICLE_PLATE --> PERMITION & vehicles = vehiclesi)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Vehicle_i))==(btrue);
  Abstract_List_Assertions(Implementation(Vehicle_i))==(btrue);
  Context_List_Assertions(Implementation(Vehicle_i))==(btrue);
  List_Assertions(Implementation(Vehicle_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Vehicle_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Vehicle_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Vehicle_i))==(vehiclesi:=VEHICLE_PLATE*{unpermitted});
  Context_List_Initialisation(Implementation(Vehicle_i))==(skip);
  List_Initialisation(Implementation(Vehicle_i))==(vehiclesi:=VEHICLE_PLATE*{unpermitted})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Vehicle_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Vehicle_i))==(btrue);
  List_Context_Constraints(Implementation(Vehicle_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Vehicle_i))==(add_vehicle,remove_vehicle);
  List_Operations(Implementation(Vehicle_i))==(add_vehicle,remove_vehicle)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Vehicle_i),add_vehicle)==(plate);
  List_Input(Implementation(Vehicle_i),remove_vehicle)==(plate)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Vehicle_i),add_vehicle)==(?);
  List_Output(Implementation(Vehicle_i),remove_vehicle)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Vehicle_i),add_vehicle)==(add_vehicle(plate));
  List_Header(Implementation(Vehicle_i),remove_vehicle)==(remove_vehicle(plate))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Vehicle_i),add_vehicle)==(btrue);
  List_Precondition(Implementation(Vehicle_i),add_vehicle)==(plate: VEHICLE_PLATE);
  Own_Precondition(Implementation(Vehicle_i),remove_vehicle)==(btrue);
  List_Precondition(Implementation(Vehicle_i),remove_vehicle)==(plate: VEHICLE_PLATE & vehicles(plate): {permitted})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Vehicle_i),remove_vehicle)==(plate: VEHICLE_PLATE & vehicles(plate): {permitted} & plate: dom(vehiclesi) | vehiclesi:=vehiclesi<+{plate|->unpermitted});
  Expanded_List_Substitution(Implementation(Vehicle_i),add_vehicle)==(plate: VEHICLE_PLATE & plate: dom(vehiclesi) | vehiclesi:=vehiclesi<+{plate|->permitted});
  List_Substitution(Implementation(Vehicle_i),add_vehicle)==(vehiclesi(plate):=permitted);
  List_Substitution(Implementation(Vehicle_i),remove_vehicle)==(vehiclesi(plate):=unpermitted)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Vehicle_i))==(?);
  Inherited_List_Constants(Implementation(Vehicle_i))==(?);
  List_Constants(Implementation(Vehicle_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Vehicle_i),PERMITION)==({permitted,unpermitted});
  Context_List_Enumerated(Implementation(Vehicle_i))==(?);
  Context_List_Defered(Implementation(Vehicle_i))==(?);
  Context_List_Sets(Implementation(Vehicle_i))==(?);
  List_Own_Enumerated(Implementation(Vehicle_i))==(PERMITION);
  List_Valuable_Sets(Implementation(Vehicle_i))==(VEHICLE_PLATE);
  Inherited_List_Enumerated(Implementation(Vehicle_i))==(PERMITION);
  Inherited_List_Defered(Implementation(Vehicle_i))==(VEHICLE_PLATE);
  Inherited_List_Sets(Implementation(Vehicle_i))==(VEHICLE_PLATE,PERMITION);
  List_Enumerated(Implementation(Vehicle_i))==(?);
  List_Defered(Implementation(Vehicle_i))==(?);
  List_Sets(Implementation(Vehicle_i))==(?);
  Set_Definition(Implementation(Vehicle_i),VEHICLE_PLATE)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Vehicle_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Vehicle_i))==(?);
  List_HiddenConstants(Implementation(Vehicle_i))==(?);
  External_List_HiddenConstants(Implementation(Vehicle_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Vehicle_i))==(VEHICLE_PLATE: FIN(INTEGER) & not(VEHICLE_PLATE = {}) & PERMITION: FIN(INTEGER) & not(PERMITION = {}));
  Context_List_Properties(Implementation(Vehicle_i))==(btrue);
  Inherited_List_Properties(Implementation(Vehicle_i))==(btrue);
  List_Properties(Implementation(Vehicle_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Vehicle_i))==(btrue);
  Values_Subs(Implementation(Vehicle_i))==(VEHICLE_PLATE: 0..3);
  List_Values(Implementation(Vehicle_i))==(VEHICLE_PLATE = 0..3)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Vehicle_i))==(Type(vehiclesi) == Mvv(SetOf(btype(INTEGER,"[VEHICLE_PLATE","]VEHICLE_PLATE")*etype(PERMITION,0,1))));
  Operations(Implementation(Vehicle_i))==(Type(remove_vehicle) == Cst(No_type,atype(VEHICLE_PLATE,?,?));Type(add_vehicle) == Cst(No_type,atype(VEHICLE_PLATE,?,?)));
  Constants(Implementation(Vehicle_i))==(Type(permitted) == Cst(etype(PERMITION,0,1));Type(unpermitted) == Cst(etype(PERMITION,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Vehicle_i)) == (? | ? | ? | ? | add_vehicle,remove_vehicle | ? | ? | ? | Vehicle_i);
  List_Of_HiddenCst_Ids(Implementation(Vehicle_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Vehicle_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Vehicle_i)) == (vehiclesi | ?);
  List_Of_Ids_SeenBNU(Implementation(Vehicle_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Vehicle_i)) == (Type(PERMITION) == Cst(SetOf(etype(PERMITION,0,1)));Type(VEHICLE_PLATE) == Cst(SetOf(btype(INTEGER,"[VEHICLE_PLATE","]VEHICLE_PLATE"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Vehicle_i)) == (Type(unpermitted) == Cst(etype(PERMITION,0,1));Type(permitted) == Cst(etype(PERMITION,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Vehicle_i)) == (Type(vehiclesi) == Mvv(SetOf(btype(INTEGER,"[VEHICLE_PLATE","]VEHICLE_PLATE")*etype(PERMITION,0,1))))
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
  List_Local_Operations(Implementation(Vehicle_i))==(?)
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
  TypingPredicate(Implementation(Vehicle_i))==(vehiclesi: POW(INTEGER*PERMITION))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
