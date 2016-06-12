Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Condominium))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Condominium))==(Machine(Condominium));
  Level(Machine(Condominium))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Condominium)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Condominium))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Condominium))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Condominium))==(Owner_Context,Area_Context,Event_Context,Area,Owner);
  List_Includes(Machine(Condominium))==(Event_Context,Area_Context,Owner_Context,Owner,Area)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Condominium))==(add_owner,remove_owner,add_area,remove_area)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Condominium))==(Owner,Area)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Condominium))==(?);
  Context_List_Variables(Machine(Condominium))==(?);
  Abstract_List_Variables(Machine(Condominium))==(?);
  Local_List_Variables(Machine(Condominium))==(events,reserved);
  List_Variables(Machine(Condominium))==(events,reserved,owner,area);
  External_List_Variables(Machine(Condominium))==(events,reserved,owner,area)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Condominium))==(?);
  Abstract_List_VisibleVariables(Machine(Condominium))==(?);
  External_List_VisibleVariables(Machine(Condominium))==(?);
  Expanded_List_VisibleVariables(Machine(Condominium))==(?);
  List_VisibleVariables(Machine(Condominium))==(?);
  Internal_List_VisibleVariables(Machine(Condominium))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Condominium))==(btrue);
  Gluing_List_Invariant(Machine(Condominium))==(btrue);
  Abstract_List_Invariant(Machine(Condominium))==(btrue);
  Expanded_List_Invariant(Machine(Condominium))==(owner <: OWNER & area <: AREA);
  Context_List_Invariant(Machine(Condominium))==(btrue);
  List_Invariant(Machine(Condominium))==(reserved: owner +-> area & events: area +-> EVENT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Condominium))==(btrue);
  Expanded_List_Assertions(Machine(Condominium))==(btrue);
  Context_List_Assertions(Machine(Condominium))==(btrue);
  List_Assertions(Machine(Condominium))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Condominium))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Condominium))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Condominium))==(owner:={};area:={};reserved,events:={},{});
  Context_List_Initialisation(Machine(Condominium))==(skip);
  List_Initialisation(Machine(Condominium))==(reserved:={} || events:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Condominium))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Condominium),Machine(Owner))==(?);
  List_Instanciated_Parameters(Machine(Condominium),Machine(Area))==(?);
  List_Instanciated_Parameters(Machine(Condominium),Machine(Event_Context))==(?);
  List_Instanciated_Parameters(Machine(Condominium),Machine(Area_Context))==(?);
  List_Instanciated_Parameters(Machine(Condominium),Machine(Owner_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Condominium),Machine(Area))==(btrue);
  List_Context_Constraints(Machine(Condominium))==(btrue);
  List_Constraints(Machine(Condominium))==(btrue);
  List_Constraints(Machine(Condominium),Machine(Owner))==(btrue);
  List_Constraints(Machine(Condominium),Machine(Owner_Context))==(btrue);
  List_Constraints(Machine(Condominium),Machine(Area_Context))==(btrue);
  List_Constraints(Machine(Condominium),Machine(Event_Context))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Condominium))==(create_owner,create_area,book_area,cancel_booking,add_event,remove_event,add_owner,remove_owner,add_area,remove_area);
  List_Operations(Machine(Condominium))==(create_owner,create_area,book_area,cancel_booking,add_event,remove_event,add_owner,remove_owner,add_area,remove_area)
END
&
THEORY ListInputX IS
  List_Input(Machine(Condominium),remove_area)==(aa);
  List_Input(Machine(Condominium),add_area)==(aa);
  List_Input(Machine(Condominium),remove_owner)==(oo);
  List_Input(Machine(Condominium),add_owner)==(oo);
  List_Input(Machine(Condominium),create_owner)==(oo);
  List_Input(Machine(Condominium),create_area)==(aa);
  List_Input(Machine(Condominium),book_area)==(oo,aa);
  List_Input(Machine(Condominium),cancel_booking)==(oo,aa);
  List_Input(Machine(Condominium),add_event)==(aa,ee);
  List_Input(Machine(Condominium),remove_event)==(aa,ee)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Condominium),remove_area)==(?);
  List_Output(Machine(Condominium),add_area)==(?);
  List_Output(Machine(Condominium),remove_owner)==(?);
  List_Output(Machine(Condominium),add_owner)==(?);
  List_Output(Machine(Condominium),create_owner)==(?);
  List_Output(Machine(Condominium),create_area)==(?);
  List_Output(Machine(Condominium),book_area)==(?);
  List_Output(Machine(Condominium),cancel_booking)==(?);
  List_Output(Machine(Condominium),add_event)==(?);
  List_Output(Machine(Condominium),remove_event)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Condominium),remove_area)==(remove_area(aa));
  List_Header(Machine(Condominium),add_area)==(add_area(aa));
  List_Header(Machine(Condominium),remove_owner)==(remove_owner(oo));
  List_Header(Machine(Condominium),add_owner)==(add_owner(oo));
  List_Header(Machine(Condominium),create_owner)==(create_owner(oo));
  List_Header(Machine(Condominium),create_area)==(create_area(aa));
  List_Header(Machine(Condominium),book_area)==(book_area(oo,aa));
  List_Header(Machine(Condominium),cancel_booking)==(cancel_booking(oo,aa));
  List_Header(Machine(Condominium),add_event)==(add_event(aa,ee));
  List_Header(Machine(Condominium),remove_event)==(remove_event(aa,ee))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Condominium),remove_area)==(aa: AREA & aa: area);
  List_Precondition(Machine(Condominium),remove_area)==(aa: AREA & aa: area);
  Own_Precondition(Machine(Condominium),add_area)==(aa: AREA & aa/:area);
  List_Precondition(Machine(Condominium),add_area)==(aa: AREA & aa/:area);
  Own_Precondition(Machine(Condominium),remove_owner)==(oo: OWNER & oo: owner);
  List_Precondition(Machine(Condominium),remove_owner)==(oo: OWNER & oo: owner);
  Own_Precondition(Machine(Condominium),add_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Machine(Condominium),add_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Machine(Condominium),create_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Machine(Condominium),create_area)==(aa: AREA & aa/:area);
  List_Precondition(Machine(Condominium),book_area)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo/:dom(reserved) & aa/:ran(reserved));
  List_Precondition(Machine(Condominium),cancel_booking)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo: dom(reserved) & aa: ran(reserved) & aa/:dom(events));
  List_Precondition(Machine(Condominium),add_event)==(aa: AREA & ee: EVENT & aa: area & aa/:dom(events) & aa: ran(reserved) & ee/:ran(events));
  List_Precondition(Machine(Condominium),remove_event)==(aa: AREA & ee: EVENT & aa: area & aa: dom(events) & events(aa) = ee)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Condominium),remove_event)==(aa: AREA & ee: EVENT & aa: area & aa: dom(events) & events(aa) = ee | events:=events-{aa|->ee});
  Expanded_List_Substitution(Machine(Condominium),add_event)==(aa: AREA & ee: EVENT & aa: area & aa/:dom(events) & aa: ran(reserved) & ee/:ran(events) | events:=events\/{aa|->ee});
  Expanded_List_Substitution(Machine(Condominium),cancel_booking)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo: dom(reserved) & aa: ran(reserved) & aa/:dom(events) | reserved:=reserved-{oo|->aa});
  Expanded_List_Substitution(Machine(Condominium),book_area)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo/:dom(reserved) & aa/:ran(reserved) | reserved:=reserved\/{oo|->aa});
  Expanded_List_Substitution(Machine(Condominium),create_area)==(aa: AREA & aa/:area | area:=area\/{aa});
  Expanded_List_Substitution(Machine(Condominium),create_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Machine(Condominium),remove_area)==(area:=area-{aa});
  Expanded_List_Substitution(Machine(Condominium),remove_area)==(aa: AREA & aa: area | area:=area-{aa});
  List_Substitution(Machine(Condominium),add_area)==(area:=area\/{aa});
  Expanded_List_Substitution(Machine(Condominium),add_area)==(aa: AREA & aa/:area | area:=area\/{aa});
  List_Substitution(Machine(Condominium),remove_owner)==(owner:=owner-{oo});
  Expanded_List_Substitution(Machine(Condominium),remove_owner)==(oo: OWNER & oo: owner | owner:=owner-{oo});
  List_Substitution(Machine(Condominium),add_owner)==(owner:=owner\/{oo});
  Expanded_List_Substitution(Machine(Condominium),add_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Machine(Condominium),create_owner)==(add_owner(oo));
  List_Substitution(Machine(Condominium),create_area)==(add_area(aa));
  List_Substitution(Machine(Condominium),book_area)==(reserved:=reserved\/{oo|->aa});
  List_Substitution(Machine(Condominium),cancel_booking)==(reserved:=reserved-{oo|->aa});
  List_Substitution(Machine(Condominium),add_event)==(events:=events\/{aa|->ee});
  List_Substitution(Machine(Condominium),remove_event)==(events:=events-{aa|->ee})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Condominium))==(DEFAULT_EVENT,DEFAULT_AREA,DEFAULT_OWNER);
  Inherited_List_Constants(Machine(Condominium))==(DEFAULT_EVENT,DEFAULT_AREA,DEFAULT_OWNER);
  List_Constants(Machine(Condominium))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Condominium),OWNER)==(?);
  Context_List_Enumerated(Machine(Condominium))==(?);
  Context_List_Defered(Machine(Condominium))==(?);
  Context_List_Sets(Machine(Condominium))==(?);
  List_Valuable_Sets(Machine(Condominium))==(EVENT,AREA,OWNER);
  Inherited_List_Enumerated(Machine(Condominium))==(?);
  Inherited_List_Defered(Machine(Condominium))==(EVENT,AREA,OWNER);
  Inherited_List_Sets(Machine(Condominium))==(EVENT,AREA,OWNER);
  List_Enumerated(Machine(Condominium))==(?);
  List_Defered(Machine(Condominium))==(?);
  List_Sets(Machine(Condominium))==(?);
  Set_Definition(Machine(Condominium),AREA)==(?);
  Set_Definition(Machine(Condominium),EVENT)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Condominium))==(?);
  Expanded_List_HiddenConstants(Machine(Condominium))==(?);
  List_HiddenConstants(Machine(Condominium))==(?);
  External_List_HiddenConstants(Machine(Condominium))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Condominium))==(btrue);
  Context_List_Properties(Machine(Condominium))==(btrue);
  Inherited_List_Properties(Machine(Condominium))==(DEFAULT_EVENT: EVENT & EVENT: FIN(INTEGER) & not(EVENT = {}) & DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}) & DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  List_Properties(Machine(Condominium))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Condominium),remove_area)==(?);
  List_ANY_Var(Machine(Condominium),add_area)==(?);
  List_ANY_Var(Machine(Condominium),remove_owner)==(?);
  List_ANY_Var(Machine(Condominium),add_owner)==(?);
  List_ANY_Var(Machine(Condominium),create_owner)==(?);
  List_ANY_Var(Machine(Condominium),create_area)==(?);
  List_ANY_Var(Machine(Condominium),book_area)==(?);
  List_ANY_Var(Machine(Condominium),cancel_booking)==(?);
  List_ANY_Var(Machine(Condominium),add_event)==(?);
  List_ANY_Var(Machine(Condominium),remove_event)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Condominium)) == (? | DEFAULT_OWNER,OWNER,DEFAULT_AREA,AREA,DEFAULT_EVENT,EVENT | events,reserved | V,area,owner | create_owner,create_area,book_area,cancel_booking,add_event,remove_event | add_owner,remove_owner,add_area,remove_area | included(Machine(Owner)),included(Machine(Area)),included(Machine(Event_Context)),included(Machine(Area_Context)),included(Machine(Owner_Context)) | ? | Condominium);
  List_Of_HiddenCst_Ids(Machine(Condominium)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Condominium)) == (DEFAULT_OWNER,DEFAULT_AREA,DEFAULT_EVENT);
  List_Of_VisibleVar_Ids(Machine(Condominium)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Condominium)) == (seen(Machine(Area_Context)): (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(Owner_Context)): (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?);
  List_Of_Ids(Machine(Area_Context)) == (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | Area_Context);
  List_Of_HiddenCst_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area_Context)) == (DEFAULT_AREA);
  List_Of_VisibleVar_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area_Context)) == (?: ?);
  List_Of_Ids(Machine(Event_Context)) == (DEFAULT_EVENT,EVENT | ? | ? | ? | ? | ? | ? | ? | Event_Context);
  List_Of_HiddenCst_Ids(Machine(Event_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Event_Context)) == (DEFAULT_EVENT);
  List_Of_VisibleVar_Ids(Machine(Event_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Event_Context)) == (?: ?);
  List_Of_Ids(Machine(Area)) == (? | ? | area | ? | add_area,remove_area | ? | seen(Machine(Area_Context)) | ? | Area);
  List_Of_HiddenCst_Ids(Machine(Area)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area)) == (?);
  List_Of_VisibleVar_Ids(Machine(Area)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area)) == (?: ?);
  List_Of_Ids(Machine(Owner)) == (? | ? | owner | ? | add_owner,remove_owner | ? | seen(Machine(Owner_Context)) | ? | Owner);
  List_Of_HiddenCst_Ids(Machine(Owner)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner)) == (?);
  List_Of_VisibleVar_Ids(Machine(Owner)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Condominium)) == (Type(EVENT) == Cst(SetOf(atype(EVENT,"[EVENT","]EVENT")));Type(AREA) == Cst(SetOf(atype(AREA,"[AREA","]AREA")));Type(OWNER) == Cst(SetOf(atype(OWNER,"[OWNER","]OWNER"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Condominium)) == (Type(DEFAULT_EVENT) == Cst(atype(EVENT,?,?));Type(DEFAULT_AREA) == Cst(atype(AREA,?,?));Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Condominium)) == (Type(owner) == Mvl(SetOf(atype(OWNER,?,?)));Type(area) == Mvl(SetOf(atype(AREA,?,?)));Type(events) == Mvl(SetOf(atype(AREA,?,?)*atype(EVENT,?,?)));Type(reserved) == Mvl(SetOf(atype(OWNER,?,?)*atype(AREA,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Condominium)) == (Type(add_owner) == Cst(No_type,atype(OWNER,?,?));Type(remove_owner) == Cst(No_type,atype(OWNER,?,?));Type(add_area) == Cst(No_type,atype(AREA,?,?));Type(remove_area) == Cst(No_type,atype(AREA,?,?));Type(remove_event) == Cst(No_type,atype(AREA,?,?)*atype(EVENT,?,?));Type(add_event) == Cst(No_type,atype(AREA,?,?)*atype(EVENT,?,?));Type(cancel_booking) == Cst(No_type,atype(OWNER,?,?)*atype(AREA,?,?));Type(book_area) == Cst(No_type,atype(OWNER,?,?)*atype(AREA,?,?));Type(create_area) == Cst(No_type,atype(AREA,?,?));Type(create_owner) == Cst(No_type,atype(OWNER,?,?)))
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
