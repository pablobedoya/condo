Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Condominium_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Condominium_i))==(Machine(Condominium));
  Level(Implementation(Condominium_i))==(1);
  Upper_Level(Implementation(Condominium_i))==(Machine(Condominium))
END
&
THEORY LoadedStructureX IS
  Implementation(Condominium_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Condominium_i))==(Area_Context,Event_Context,Owner_Context)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Condominium_i))==(Owner,Area);
  Inherited_List_Includes(Implementation(Condominium_i))==(Area,Owner,Event_Context,Area_Context,Owner_Context)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Condominium_i))==(add_owner,remove_owner,add_area,remove_area)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Condominium_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Condominium_i))==(?);
  Context_List_Variables(Implementation(Condominium_i))==(?);
  Abstract_List_Variables(Implementation(Condominium_i))==(events,reserved,owner,area);
  Local_List_Variables(Implementation(Condominium_i))==(?);
  List_Variables(Implementation(Condominium_i))==(owner,area);
  External_List_Variables(Implementation(Condominium_i))==(owner,area)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Condominium_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Condominium_i))==(?);
  External_List_VisibleVariables(Implementation(Condominium_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Condominium_i))==(?);
  List_VisibleVariables(Implementation(Condominium_i))==(eventsi,reservedi);
  Internal_List_VisibleVariables(Implementation(Condominium_i))==(eventsi,reservedi)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Condominium_i))==(btrue);
  Abstract_List_Invariant(Implementation(Condominium_i))==(reserved: owner +-> area & events: area +-> EVENT & owner <: OWNER & area <: AREA);
  Expanded_List_Invariant(Implementation(Condominium_i))==(owner <: OWNER & area <: AREA);
  Context_List_Invariant(Implementation(Condominium_i))==(btrue);
  List_Invariant(Implementation(Condominium_i))==(reservedi: OWNER --> AREA & eventsi: AREA --> EVENT & !rr.(rr: dom(reserved) => reserved(rr) = reservedi(rr)) & !ee.(ee: dom(events) => events(ee) = eventsi(ee)))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Condominium_i))==(btrue);
  Expanded_List_Assertions(Implementation(Condominium_i))==(btrue);
  Context_List_Assertions(Implementation(Condominium_i))==(btrue);
  List_Assertions(Implementation(Condominium_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Condominium_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Condominium_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Condominium_i))==(owner:={};area:={};reservedi:=OWNER*{DEFAULT_AREA};eventsi:=AREA*{DEFAULT_EVENT});
  Context_List_Initialisation(Implementation(Condominium_i))==(skip);
  List_Initialisation(Implementation(Condominium_i))==(reservedi:=OWNER*{DEFAULT_AREA};eventsi:=AREA*{DEFAULT_EVENT})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Condominium_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Condominium_i),Machine(Owner))==(?);
  List_Instanciated_Parameters(Implementation(Condominium_i),Machine(Area))==(?);
  List_Instanciated_Parameters(Implementation(Condominium_i),Machine(Area_Context))==(?);
  List_Instanciated_Parameters(Implementation(Condominium_i),Machine(Event_Context))==(?);
  List_Instanciated_Parameters(Implementation(Condominium_i),Machine(Owner_Context))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Condominium_i),Machine(Area))==(btrue);
  List_Constraints(Implementation(Condominium_i))==(btrue);
  List_Context_Constraints(Implementation(Condominium_i))==(btrue);
  List_Constraints(Implementation(Condominium_i),Machine(Owner))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Condominium_i))==(create_owner,create_area,book_area,cancel_booking,add_event,remove_event,add_owner,remove_owner,add_area,remove_area);
  List_Operations(Implementation(Condominium_i))==(create_owner,create_area,book_area,cancel_booking,add_event,remove_event,add_owner,remove_owner,add_area,remove_area)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Condominium_i),remove_area)==(aa);
  List_Input(Implementation(Condominium_i),add_area)==(aa);
  List_Input(Implementation(Condominium_i),remove_owner)==(oo);
  List_Input(Implementation(Condominium_i),add_owner)==(oo);
  List_Input(Implementation(Condominium_i),create_owner)==(oo);
  List_Input(Implementation(Condominium_i),create_area)==(aa);
  List_Input(Implementation(Condominium_i),book_area)==(oo,aa);
  List_Input(Implementation(Condominium_i),cancel_booking)==(oo,aa);
  List_Input(Implementation(Condominium_i),add_event)==(aa,ee);
  List_Input(Implementation(Condominium_i),remove_event)==(aa,ee)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Condominium_i),remove_area)==(?);
  List_Output(Implementation(Condominium_i),add_area)==(?);
  List_Output(Implementation(Condominium_i),remove_owner)==(?);
  List_Output(Implementation(Condominium_i),add_owner)==(?);
  List_Output(Implementation(Condominium_i),create_owner)==(?);
  List_Output(Implementation(Condominium_i),create_area)==(?);
  List_Output(Implementation(Condominium_i),book_area)==(?);
  List_Output(Implementation(Condominium_i),cancel_booking)==(?);
  List_Output(Implementation(Condominium_i),add_event)==(?);
  List_Output(Implementation(Condominium_i),remove_event)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Condominium_i),remove_area)==(remove_area(aa));
  List_Header(Implementation(Condominium_i),add_area)==(add_area(aa));
  List_Header(Implementation(Condominium_i),remove_owner)==(remove_owner(oo));
  List_Header(Implementation(Condominium_i),add_owner)==(add_owner(oo));
  List_Header(Implementation(Condominium_i),create_owner)==(create_owner(oo));
  List_Header(Implementation(Condominium_i),create_area)==(create_area(aa));
  List_Header(Implementation(Condominium_i),book_area)==(book_area(oo,aa));
  List_Header(Implementation(Condominium_i),cancel_booking)==(cancel_booking(oo,aa));
  List_Header(Implementation(Condominium_i),add_event)==(add_event(aa,ee));
  List_Header(Implementation(Condominium_i),remove_event)==(remove_event(aa,ee))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Condominium_i),remove_area)==(aa: AREA & aa: area);
  List_Precondition(Implementation(Condominium_i),remove_area)==(aa: AREA & aa: area);
  Own_Precondition(Implementation(Condominium_i),add_area)==(aa: AREA & aa/:area);
  List_Precondition(Implementation(Condominium_i),add_area)==(aa: AREA & aa/:area);
  Own_Precondition(Implementation(Condominium_i),remove_owner)==(oo: OWNER & oo: owner);
  List_Precondition(Implementation(Condominium_i),remove_owner)==(oo: OWNER & oo: owner);
  Own_Precondition(Implementation(Condominium_i),add_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Implementation(Condominium_i),add_owner)==(oo: OWNER & oo/:owner);
  Own_Precondition(Implementation(Condominium_i),create_owner)==(btrue);
  List_Precondition(Implementation(Condominium_i),create_owner)==(oo: OWNER & oo/:owner);
  Own_Precondition(Implementation(Condominium_i),create_area)==(btrue);
  List_Precondition(Implementation(Condominium_i),create_area)==(aa: AREA & aa/:area);
  Own_Precondition(Implementation(Condominium_i),book_area)==(btrue);
  List_Precondition(Implementation(Condominium_i),book_area)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo/:dom(reserved) & aa/:ran(reserved));
  Own_Precondition(Implementation(Condominium_i),cancel_booking)==(btrue);
  List_Precondition(Implementation(Condominium_i),cancel_booking)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo: dom(reserved) & aa: ran(reserved) & aa/:dom(events));
  Own_Precondition(Implementation(Condominium_i),add_event)==(btrue);
  List_Precondition(Implementation(Condominium_i),add_event)==(aa: AREA & ee: EVENT & aa: area & aa/:dom(events) & aa: ran(reserved) & ee/:ran(events));
  Own_Precondition(Implementation(Condominium_i),remove_event)==(btrue);
  List_Precondition(Implementation(Condominium_i),remove_event)==(aa: AREA & ee: EVENT & aa: area & aa: dom(events) & events(aa) = ee)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Condominium_i),remove_event)==(aa: AREA & ee: EVENT & aa: area & aa: dom(events) & events(aa) = ee & aa: dom(eventsi) | eventsi:=eventsi<+{aa|->DEFAULT_EVENT});
  Expanded_List_Substitution(Implementation(Condominium_i),add_event)==(aa: AREA & ee: EVENT & aa: area & aa/:dom(events) & aa: ran(reserved) & ee/:ran(events) & aa: dom(eventsi) | eventsi:=eventsi<+{aa|->ee});
  Expanded_List_Substitution(Implementation(Condominium_i),cancel_booking)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo: dom(reserved) & aa: ran(reserved) & aa/:dom(events) & oo: dom(reservedi) | reservedi:=reservedi<+{oo|->DEFAULT_AREA});
  Expanded_List_Substitution(Implementation(Condominium_i),book_area)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo/:dom(reserved) & aa/:ran(reserved) & oo: dom(reservedi) | reservedi:=reservedi<+{oo|->aa});
  Expanded_List_Substitution(Implementation(Condominium_i),create_area)==(aa: AREA & aa/:area | area:=area\/{aa});
  Expanded_List_Substitution(Implementation(Condominium_i),create_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Implementation(Condominium_i),remove_area)==(area:=area-{aa});
  Expanded_List_Substitution(Implementation(Condominium_i),remove_area)==(aa: AREA & aa: area | area:=area-{aa});
  List_Substitution(Implementation(Condominium_i),add_area)==(area:=area\/{aa});
  Expanded_List_Substitution(Implementation(Condominium_i),add_area)==(aa: AREA & aa/:area | area:=area\/{aa});
  List_Substitution(Implementation(Condominium_i),remove_owner)==(owner:=owner-{oo});
  Expanded_List_Substitution(Implementation(Condominium_i),remove_owner)==(oo: OWNER & oo: owner | owner:=owner-{oo});
  List_Substitution(Implementation(Condominium_i),add_owner)==(owner:=owner\/{oo});
  Expanded_List_Substitution(Implementation(Condominium_i),add_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Implementation(Condominium_i),create_owner)==(add_owner(oo));
  List_Substitution(Implementation(Condominium_i),create_area)==(add_area(aa));
  List_Substitution(Implementation(Condominium_i),book_area)==(reservedi(oo):=aa);
  List_Substitution(Implementation(Condominium_i),cancel_booking)==(reservedi(oo):=DEFAULT_AREA);
  List_Substitution(Implementation(Condominium_i),add_event)==(eventsi(aa):=ee);
  List_Substitution(Implementation(Condominium_i),remove_event)==(eventsi(aa):=DEFAULT_EVENT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Condominium_i))==(DEFAULT_EVENT,DEFAULT_AREA,DEFAULT_OWNER);
  Inherited_List_Constants(Implementation(Condominium_i))==(DEFAULT_EVENT,DEFAULT_AREA,DEFAULT_OWNER);
  List_Constants(Implementation(Condominium_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Condominium_i),OWNER)==(?);
  Context_List_Enumerated(Implementation(Condominium_i))==(?);
  Context_List_Defered(Implementation(Condominium_i))==(AREA,EVENT,OWNER);
  Context_List_Sets(Implementation(Condominium_i))==(AREA,EVENT,OWNER);
  List_Own_Enumerated(Implementation(Condominium_i))==(?);
  List_Valuable_Sets(Implementation(Condominium_i))==(EVENT,AREA,OWNER);
  Inherited_List_Enumerated(Implementation(Condominium_i))==(?);
  Inherited_List_Defered(Implementation(Condominium_i))==(EVENT,AREA,OWNER);
  Inherited_List_Sets(Implementation(Condominium_i))==(EVENT,AREA,OWNER);
  List_Enumerated(Implementation(Condominium_i))==(?);
  List_Defered(Implementation(Condominium_i))==(?);
  List_Sets(Implementation(Condominium_i))==(?);
  Set_Definition(Implementation(Condominium_i),AREA)==(?);
  Set_Definition(Implementation(Condominium_i),EVENT)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Condominium_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Condominium_i))==(?);
  List_HiddenConstants(Implementation(Condominium_i))==(?);
  External_List_HiddenConstants(Implementation(Condominium_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Condominium_i))==(DEFAULT_EVENT: EVENT & EVENT: FIN(INTEGER) & not(EVENT = {}) & DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}) & DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Context_List_Properties(Implementation(Condominium_i))==(DEFAULT_AREA: AREA & AREA: FIN(INTEGER) & not(AREA = {}) & DEFAULT_EVENT: EVENT & EVENT: FIN(INTEGER) & not(EVENT = {}) & DEFAULT_OWNER: OWNER & OWNER: FIN(INTEGER) & not(OWNER = {}));
  Inherited_List_Properties(Implementation(Condominium_i))==(btrue);
  List_Properties(Implementation(Condominium_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Condominium_i))==(aa: aa);
  List_Values(Implementation(Condominium_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Condominium_i),Machine(Owner_Context))==(?);
  Seen_Context_List_Enumerated(Implementation(Condominium_i))==(?);
  Seen_Context_List_Invariant(Implementation(Condominium_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Condominium_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Condominium_i))==(btrue);
  Seen_List_Constraints(Implementation(Condominium_i))==(btrue);
  Seen_List_Operations(Implementation(Condominium_i),Machine(Owner_Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Condominium_i),Machine(Owner_Context))==(btrue);
  Seen_Internal_List_Operations(Implementation(Condominium_i),Machine(Event_Context))==(?);
  Seen_List_Operations(Implementation(Condominium_i),Machine(Event_Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Condominium_i),Machine(Event_Context))==(btrue);
  Seen_Internal_List_Operations(Implementation(Condominium_i),Machine(Area_Context))==(?);
  Seen_List_Operations(Implementation(Condominium_i),Machine(Area_Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Condominium_i),Machine(Area_Context))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Condominium_i),Machine(Area))==(add_area,remove_area);
  List_Included_Operations(Implementation(Condominium_i),Machine(Owner))==(add_owner,remove_owner)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Condominium_i))==(Type(reservedi) == Mvv(SetOf(atype(OWNER,"[OWNER","]OWNER")*atype(AREA,"[AREA","]AREA")));Type(eventsi) == Mvv(SetOf(atype(AREA,"[AREA","]AREA")*atype(EVENT,"[EVENT","]EVENT"))));
  Operations(Implementation(Condominium_i))==(Type(add_owner) == Cst(No_type,atype(OWNER,?,?));Type(remove_owner) == Cst(No_type,atype(OWNER,?,?));Type(add_area) == Cst(No_type,atype(AREA,?,?));Type(remove_area) == Cst(No_type,atype(AREA,?,?));Type(remove_event) == Cst(No_type,atype(AREA,?,?)*atype(EVENT,?,?));Type(add_event) == Cst(No_type,atype(AREA,?,?)*atype(EVENT,?,?));Type(cancel_booking) == Cst(No_type,atype(OWNER,?,?)*atype(AREA,?,?));Type(book_area) == Cst(No_type,atype(OWNER,?,?)*atype(AREA,?,?));Type(create_area) == Cst(No_type,atype(AREA,?,?));Type(create_owner) == Cst(No_type,atype(OWNER,?,?)));
  Constants(Implementation(Condominium_i))==(Type(DEFAULT_EVENT) == Cst(atype(EVENT,?,?));Type(DEFAULT_AREA) == Cst(atype(AREA,?,?));Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Condominium_i),Machine(Owner_Context))==(DEFAULT_OWNER);
  List_Constants_Env(Implementation(Condominium_i),Machine(Owner_Context))==(Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?)));
  List_Defered_Sets(Implementation(Condominium_i),Machine(Owner_Context))==(OWNER);
  List_Constants(Implementation(Condominium_i),Machine(Event_Context))==(DEFAULT_EVENT);
  List_Constants_Env(Implementation(Condominium_i),Machine(Event_Context))==(Type(DEFAULT_EVENT) == Cst(atype(EVENT,?,?)));
  List_Defered_Sets(Implementation(Condominium_i),Machine(Event_Context))==(EVENT);
  List_Constants(Implementation(Condominium_i),Machine(Area_Context))==(DEFAULT_AREA);
  List_Constants_Env(Implementation(Condominium_i),Machine(Area_Context))==(Type(DEFAULT_AREA) == Cst(atype(AREA,?,?)));
  List_Defered_Sets(Implementation(Condominium_i),Machine(Area_Context))==(AREA)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Condominium_i)) == (? | ? | ? | area,owner | create_owner,create_area,book_area,cancel_booking,add_event,remove_event | ? | seen(Machine(Area_Context)),seen(Machine(Event_Context)),seen(Machine(Owner_Context)),imported(Machine(Owner)),imported(Machine(Area)) | ? | Condominium_i);
  List_Of_HiddenCst_Ids(Implementation(Condominium_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Condominium_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Condominium_i)) == (eventsi,reservedi | ?);
  List_Of_Ids_SeenBNU(Implementation(Condominium_i)) == (seen(Machine(Area_Context)): (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(Owner_Context)): (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Area)) == (? | ? | area | ? | add_area,remove_area | ? | seen(Machine(Area_Context)) | ? | Area);
  List_Of_HiddenCst_Ids(Machine(Area)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area)) == (?);
  List_Of_VisibleVar_Ids(Machine(Area)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area)) == (?: ?);
  List_Of_Ids(Machine(Area_Context)) == (DEFAULT_AREA,AREA | ? | ? | ? | ? | ? | ? | ? | Area_Context);
  List_Of_HiddenCst_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area_Context)) == (DEFAULT_AREA);
  List_Of_VisibleVar_Ids(Machine(Area_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area_Context)) == (?: ?);
  List_Of_Ids(Machine(Owner)) == (? | ? | owner | ? | add_owner,remove_owner | ? | seen(Machine(Owner_Context)) | ? | Owner);
  List_Of_HiddenCst_Ids(Machine(Owner)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner)) == (?);
  List_Of_VisibleVar_Ids(Machine(Owner)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner)) == (?: ?);
  List_Of_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER,OWNER | ? | ? | ? | ? | ? | ? | ? | Owner_Context);
  List_Of_HiddenCst_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner_Context)) == (DEFAULT_OWNER);
  List_Of_VisibleVar_Ids(Machine(Owner_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner_Context)) == (?: ?);
  List_Of_Ids(Machine(Event_Context)) == (DEFAULT_EVENT,EVENT | ? | ? | ? | ? | ? | ? | ? | Event_Context);
  List_Of_HiddenCst_Ids(Machine(Event_Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Event_Context)) == (DEFAULT_EVENT);
  List_Of_VisibleVar_Ids(Machine(Event_Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Event_Context)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Condominium_i)) == (Type(OWNER) == Cst(SetOf(atype(OWNER,"[OWNER","]OWNER")));Type(AREA) == Cst(SetOf(atype(AREA,"[AREA","]AREA")));Type(EVENT) == Cst(SetOf(atype(EVENT,"[EVENT","]EVENT"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Condominium_i)) == (Type(DEFAULT_OWNER) == Cst(atype(OWNER,?,?));Type(DEFAULT_AREA) == Cst(atype(AREA,?,?));Type(DEFAULT_EVENT) == Cst(atype(EVENT,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Condominium_i)) == (Type(eventsi) == Mvv(SetOf(atype(AREA,"[AREA","]AREA")*atype(EVENT,"[EVENT","]EVENT")));Type(reservedi) == Mvv(SetOf(atype(OWNER,"[OWNER","]OWNER")*atype(AREA,"[AREA","]AREA"))))
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
  List_Local_Operations(Implementation(Condominium_i))==(?)
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
  TypingPredicate(Implementation(Condominium_i))==(reservedi: POW(OWNER*AREA) & eventsi: POW(AREA*EVENT))
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Condominium_i),Machine(Owner))==(owner);
  ImportedVisVariablesList(Implementation(Condominium_i),Machine(Owner))==(?);
  ImportedVariablesList(Implementation(Condominium_i),Machine(Area))==(area);
  ImportedVisVariablesList(Implementation(Condominium_i),Machine(Area))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
