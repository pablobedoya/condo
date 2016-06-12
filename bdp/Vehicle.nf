Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Vehicle))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Vehicle))==(Machine(Vehicle));
  Level(Machine(Vehicle))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Vehicle)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Vehicle))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Vehicle))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Vehicle))==(?);
  List_Includes(Machine(Vehicle))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Vehicle))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Vehicle))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Vehicle))==(?);
  Context_List_Variables(Machine(Vehicle))==(?);
  Abstract_List_Variables(Machine(Vehicle))==(?);
  Local_List_Variables(Machine(Vehicle))==(vehicles);
  List_Variables(Machine(Vehicle))==(vehicles);
  External_List_Variables(Machine(Vehicle))==(vehicles)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Vehicle))==(?);
  Abstract_List_VisibleVariables(Machine(Vehicle))==(?);
  External_List_VisibleVariables(Machine(Vehicle))==(?);
  Expanded_List_VisibleVariables(Machine(Vehicle))==(?);
  List_VisibleVariables(Machine(Vehicle))==(?);
  Internal_List_VisibleVariables(Machine(Vehicle))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Vehicle))==(btrue);
  Gluing_List_Invariant(Machine(Vehicle))==(btrue);
  Expanded_List_Invariant(Machine(Vehicle))==(btrue);
  Abstract_List_Invariant(Machine(Vehicle))==(btrue);
  Context_List_Invariant(Machine(Vehicle))==(btrue);
  List_Invariant(Machine(Vehicle))==(vehicles: VEHICLE_PLATE --> PERMITION)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Vehicle))==(btrue);
  Abstract_List_Assertions(Machine(Vehicle))==(btrue);
  Context_List_Assertions(Machine(Vehicle))==(btrue);
  List_Assertions(Machine(Vehicle))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Vehicle))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Vehicle))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Vehicle))==(vehicles:=VEHICLE_PLATE*{unpermitted});
  Context_List_Initialisation(Machine(Vehicle))==(skip);
  List_Initialisation(Machine(Vehicle))==(vehicles:=VEHICLE_PLATE*{unpermitted})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Vehicle))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Vehicle))==(btrue);
  List_Constraints(Machine(Vehicle))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Vehicle))==(add_vehicle,remove_vehicle);
  List_Operations(Machine(Vehicle))==(add_vehicle,remove_vehicle)
END
&
THEORY ListInputX IS
  List_Input(Machine(Vehicle),add_vehicle)==(plate);
  List_Input(Machine(Vehicle),remove_vehicle)==(plate)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Vehicle),add_vehicle)==(?);
  List_Output(Machine(Vehicle),remove_vehicle)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Vehicle),add_vehicle)==(add_vehicle(plate));
  List_Header(Machine(Vehicle),remove_vehicle)==(remove_vehicle(plate))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Vehicle),add_vehicle)==(plate: VEHICLE_PLATE);
  List_Precondition(Machine(Vehicle),remove_vehicle)==(plate: VEHICLE_PLATE & vehicles(plate): {permitted})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Vehicle),remove_vehicle)==(plate: VEHICLE_PLATE & vehicles(plate): {permitted} | vehicles:=vehicles<+{plate|->unpermitted});
  Expanded_List_Substitution(Machine(Vehicle),add_vehicle)==(plate: VEHICLE_PLATE | vehicles:=vehicles<+{plate|->permitted});
  List_Substitution(Machine(Vehicle),add_vehicle)==(vehicles:=vehicles<+{plate|->permitted});
  List_Substitution(Machine(Vehicle),remove_vehicle)==(vehicles:=vehicles<+{plate|->unpermitted})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Vehicle))==(?);
  Inherited_List_Constants(Machine(Vehicle))==(?);
  List_Constants(Machine(Vehicle))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Vehicle),VEHICLE_PLATE)==(?);
  Context_List_Enumerated(Machine(Vehicle))==(?);
  Context_List_Defered(Machine(Vehicle))==(?);
  Context_List_Sets(Machine(Vehicle))==(?);
  List_Valuable_Sets(Machine(Vehicle))==(VEHICLE_PLATE);
  Inherited_List_Enumerated(Machine(Vehicle))==(?);
  Inherited_List_Defered(Machine(Vehicle))==(?);
  Inherited_List_Sets(Machine(Vehicle))==(?);
  List_Enumerated(Machine(Vehicle))==(PERMITION);
  List_Defered(Machine(Vehicle))==(VEHICLE_PLATE);
  List_Sets(Machine(Vehicle))==(VEHICLE_PLATE,PERMITION);
  Set_Definition(Machine(Vehicle),PERMITION)==({permitted,unpermitted})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Vehicle))==(?);
  Expanded_List_HiddenConstants(Machine(Vehicle))==(?);
  List_HiddenConstants(Machine(Vehicle))==(?);
  External_List_HiddenConstants(Machine(Vehicle))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Vehicle))==(btrue);
  Context_List_Properties(Machine(Vehicle))==(btrue);
  Inherited_List_Properties(Machine(Vehicle))==(btrue);
  List_Properties(Machine(Vehicle))==(VEHICLE_PLATE: FIN(INTEGER) & not(VEHICLE_PLATE = {}) & PERMITION: FIN(INTEGER) & not(PERMITION = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Vehicle),add_vehicle)==(?);
  List_ANY_Var(Machine(Vehicle),remove_vehicle)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Vehicle)) == (VEHICLE_PLATE,PERMITION,permitted,unpermitted | ? | vehicles | ? | add_vehicle,remove_vehicle | ? | ? | ? | Vehicle);
  List_Of_HiddenCst_Ids(Machine(Vehicle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Vehicle)) == (?);
  List_Of_VisibleVar_Ids(Machine(Vehicle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Vehicle)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Vehicle)) == (Type(VEHICLE_PLATE) == Cst(SetOf(atype(VEHICLE_PLATE,"[VEHICLE_PLATE","]VEHICLE_PLATE")));Type(PERMITION) == Cst(SetOf(etype(PERMITION,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Vehicle)) == (Type(permitted) == Cst(etype(PERMITION,0,1));Type(unpermitted) == Cst(etype(PERMITION,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Vehicle)) == (Type(vehicles) == Mvl(SetOf(atype(VEHICLE_PLATE,"[VEHICLE_PLATE","]VEHICLE_PLATE")*etype(PERMITION,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Vehicle)) == (Type(remove_vehicle) == Cst(No_type,atype(VEHICLE_PLATE,?,?));Type(add_vehicle) == Cst(No_type,atype(VEHICLE_PLATE,?,?)))
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
