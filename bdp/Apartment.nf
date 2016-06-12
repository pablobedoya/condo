Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Apartment))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Apartment))==(Machine(Apartment));
  Level(Machine(Apartment))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Apartment)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Apartment))==(Owner_Context,Vehicle)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Apartment))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Apartment))==(?);
  List_Includes(Machine(Apartment))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Apartment))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Apartment))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Apartment))==(?);
  Context_List_Variables(Machine(Apartment))==(?);
  Abstract_List_Variables(Machine(Apartment))==(?);
  Local_List_Variables(Machine(Apartment))==(apartment_vehicles,apartments);
  List_Variables(Machine(Apartment))==(apartment_vehicles,apartments);
  External_List_Variables(Machine(Apartment))==(apartment_vehicles,apartments)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Apartment))==(?);
  Abstract_List_VisibleVariables(Machine(Apartment))==(?);
  External_List_VisibleVariables(Machine(Apartment))==(?);
  Expanded_List_VisibleVariables(Machine(Apartment))==(?);
  List_VisibleVariables(Machine(Apartment))==(?);
  Internal_List_VisibleVariables(Machine(Apartment))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Apartment))==(btrue);
  Gluing_List_Invariant(Machine(Apartment))==(btrue);
  Expanded_List_Invariant(Machine(Apartment))==(btrue);
  Abstract_List_Invariant(Machine(Apartment))==(btrue);
  Context_List_Invariant(Machine(Apartment))==(vehicles: VEHICLE_PLATE --> PERMITION);
  List_Invariant(Machine(Apartment))==(apartments: NUMBER +-> OWNER & apartment_vehicles: NUMBER +-> VEHICLE_PLATE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Apartment))==(btrue);
  Abstract_List_Assertions(Machine(Apartment))==(btrue);
  Context_List_Assertions(Machine(Apartment))==(btrue);
  List_Assertions(Machine(Apartment))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Apartment))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Apartment))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Apartment))==(apartments,apartment_vehicles:={},{});
  Context_List_Initialisation(Machine(Apartment))==(skip);
  List_Initialisation(Machine(Apartment))==(apartments:={} || apartment_vehicles:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Apartment))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Apartment),Machine(Owner_Context))==(?);
  List_Instanciated_Parameters(Machine(Apartment),Machine(Vehicle))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Apartment))==(btrue);
  List_Constraints(Machine(Apartment))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Apartment))==(add_apart_to_owner,remove_owner_from_apartment);
  List_Operations(Machine(Apartment))==(add_apart_to_owner,remove_owner_from_apartment)
END
&
THEORY ListInputX IS
  List_Input(Machine(Apartment),add_apart_to_owner)==(nn,oo);
  List_Input(Machine(Apartment),remove_owner_from_apartment)==(nn)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Apartment),add_apart_to_owner)==(?);
  List_Output(Machine(Apartment),remove_owner_from_apartment)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Apartment),add_apart_to_owner)==(add_apart_to_owner(nn,oo));
  List_Header(Machine(Apartment),remove_owner_from_apartment)==(remove_owner_from_apartment(nn))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Apartment),add_apart_to_owner)==(nn: NUMBER & oo: OWNER);
  List_Precondition(Machine(Apartment),remove_owner_from_apartment)==(nn: NUMBER)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Apartment),remove_owner_from_apartment)==(nn: NUMBER | apartments,apartment_vehicles:=apartments-{nn|->apartments(nn)},apartment_vehicles-{nn|->apartment_vehicles(nn)});
  Expanded_List_Substitution(Machine(Apartment),add_apart_to_owner)==(nn: NUMBER & oo: OWNER | apartments:=apartments<+{nn|->oo});
  List_Substitution(Machine(Apartment),add_apart_to_owner)==(apartments:=apartments<+{nn|->oo});
  List_Substitution(Machine(Apartment),remove_owner_from_apartment)==(apartments:=apartments-{nn|->apartments(nn)} || apartment_vehicles:=apartment_vehicles-{nn|->apartment_vehicles(nn)})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Apartment))==(?);
  Inherited_List_Constants(Machine(Apartment))==(?);
  List_Constants(Machine(Apartment))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Apartment),PERMITION)==({permitted,unpermitted});
  Context_List_Enumerated(Machine(Apartment))==(PERMITION);
  Context_List_Defered(Machine(Apartment))==(OWNER,VEHICLE_PLATE);
  Context_List_Sets(Machine(Apartment))==(OWNER,VEHICLE_PLATE,PERMITION);
  List_Valuable_Sets(Machine(Apartment))==(NUMBER);
  Inherited_List_Enumerated(Machine(Apartment))==(?);
  Inherited_List_Defered(Machine(Apartment))==(?);
  Inherited_List_Sets(Machine(Apartment))==(?);
  List_Enumerated(Machine(Apartment))==(?);
  List_Defered(Machine(Apartment))==(NUMBER);
  List_Sets(Machine(Apartment))==(NUMBER);
  Set_Definition(Machine(Apartment),NUMBER)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Apartment))==(?);
  Expanded_List_HiddenConstants(Machine(Apartment))==(?);
  List_HiddenConstants(Machine(Apartment))==(?);
  External_List_HiddenConstants(Machine(Apartment))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Apartment))==(btrue);
  Context_List_Properties(Machine(Apartment))==(DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}) & VEHICLE_PLATE: FIN(INTEGER) & not(VEHICLE_PLATE = {}) & PERMITION: FIN(INTEGER) & not(PERMITION = {}));
  Inherited_List_Properties(Machine(Apartment))==(btrue);
  List_Properties(Machine(Apartment))==(NUMBER: FIN(INTEGER) & not(NUMBER = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Apartment),Machine(Vehicle))==(add_vehicle,remove_vehicle);
  Seen_Context_List_Enumerated(Machine(Apartment))==(?);
  Seen_Context_List_Invariant(Machine(Apartment))==(btrue);
  Seen_Context_List_Assertions(Machine(Apartment))==(btrue);
  Seen_Context_List_Properties(Machine(Apartment))==(btrue);
  Seen_List_Constraints(Machine(Apartment))==(btrue);
  Seen_List_Precondition(Machine(Apartment),remove_vehicle)==(plate: VEHICLE_PLATE & vehicles(plate): {permitted});
  Seen_Expanded_List_Substitution(Machine(Apartment),remove_vehicle)==(vehicles:=vehicles<+{plate|->unpermitted});
  Seen_List_Precondition(Machine(Apartment),add_vehicle)==(plate: VEHICLE_PLATE);
  Seen_Expanded_List_Substitution(Machine(Apartment),add_vehicle)==(vehicles:=vehicles<+{plate|->permitted});
  Seen_List_Operations(Machine(Apartment),Machine(Vehicle))==(add_vehicle,remove_vehicle);
  Seen_Expanded_List_Invariant(Machine(Apartment),Machine(Vehicle))==(btrue);
  Seen_Internal_List_Operations(Machine(Apartment),Machine(Owner_Context))==(?);
  Seen_List_Operations(Machine(Apartment),Machine(Owner_Context))==(?);
  Seen_Expanded_List_Invariant(Machine(Apartment),Machine(Owner_Context))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Apartment),add_apart_to_owner)==(?);
  List_ANY_Var(Machine(Apartment),remove_owner_from_apartment)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Apartment)) == (NUMBER | ? | apartment_vehicles,apartments | ? | add_apart_to_owner,remove_owner_from_apartment | ? | seen(Machine(Owner_Context)),seen(Machine(Vehicle)) | ? | Apartment);
  List_Of_HiddenCst_Ids(Machine(Apartment)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Apartment)) == (?);
  List_Of_VisibleVar_Ids(Machine(Apartment)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Apartment)) == (?: ?);
  List_Of_Ids(Machine(Vehicle)) == (VEHICLE_PLATE,PERMITION,permitted,unpermitted | ? | vehicles | ? | add_vehicle,remove_vehicle | ? | ? | ? | Vehicle);
  List_Of_HiddenCst_Ids(Machine(Vehicle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Vehicle)) == (?);
  List_Of_VisibleVar_Ids(Machine(Vehicle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Vehicle)) == (?: ?);
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Apartment)) == (Type(NUMBER) == Cst(SetOf(atype(NUMBER,"[NUMBER","]NUMBER"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Apartment)) == (Type(apartment_vehicles) == Mvl(SetOf(atype(NUMBER,?,?)*atype(VEHICLE_PLATE,?,?)));Type(apartments) == Mvl(SetOf(atype(NUMBER,?,?)*atype(OWNER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Apartment)) == (Type(remove_owner_from_apartment) == Cst(No_type,atype(NUMBER,?,?));Type(add_apart_to_owner) == Cst(No_type,atype(NUMBER,?,?)*atype(OWNER,?,?)))
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
