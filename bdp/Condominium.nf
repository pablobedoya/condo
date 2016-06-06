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
  Inherited_List_Includes(Machine(Condominium))==(Event,Area,Owner);
  List_Includes(Machine(Condominium))==(Owner,Area,Event)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Condominium))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Condominium))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Condominium))==(?);
  Context_List_Variables(Machine(Condominium))==(?);
  Abstract_List_Variables(Machine(Condominium))==(?);
  Local_List_Variables(Machine(Condominium))==(events,reserved);
  List_Variables(Machine(Condominium))==(events,reserved,owner_suggestions,owner,area);
  External_List_Variables(Machine(Condominium))==(events,reserved,owner_suggestions,owner,area)
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
  Expanded_List_Invariant(Machine(Condominium))==(owner <: OWNER & owner_suggestions: OWNER +-> SUGGESTION & area <: AREA);
  Context_List_Invariant(Machine(Condominium))==(btrue);
  List_Invariant(Machine(Condominium))==(reserved: owner <-> area & events: area <-> EVENT)
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
  Expanded_List_Initialisation(Machine(Condominium))==(owner,owner_suggestions:={},{};area:={};reserved,events:={},{});
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
  List_Instanciated_Parameters(Machine(Condominium),Machine(Event))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Condominium),Machine(Event))==(btrue);
  List_Context_Constraints(Machine(Condominium))==(btrue);
  List_Constraints(Machine(Condominium))==(btrue);
  List_Constraints(Machine(Condominium),Machine(Area))==(btrue);
  List_Constraints(Machine(Condominium),Machine(Owner))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Condominium))==(create_owner,create_area,book_area,cancel_booking,add_event,remove_event);
  List_Operations(Machine(Condominium))==(create_owner,create_area,book_area,cancel_booking,add_event,remove_event)
END
&
THEORY ListInputX IS
  List_Input(Machine(Condominium),create_owner)==(oo);
  List_Input(Machine(Condominium),create_area)==(aa);
  List_Input(Machine(Condominium),book_area)==(oo,aa);
  List_Input(Machine(Condominium),cancel_booking)==(oo,aa);
  List_Input(Machine(Condominium),add_event)==(aa,ee);
  List_Input(Machine(Condominium),remove_event)==(aa,ee)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Condominium),create_owner)==(?);
  List_Output(Machine(Condominium),create_area)==(?);
  List_Output(Machine(Condominium),book_area)==(?);
  List_Output(Machine(Condominium),cancel_booking)==(?);
  List_Output(Machine(Condominium),add_event)==(?);
  List_Output(Machine(Condominium),remove_event)==(?)
END
&
THEORY ListHeaderX IS
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
  List_Precondition(Machine(Condominium),create_owner)==(oo: OWNER & oo/:owner);
  List_Precondition(Machine(Condominium),create_area)==(aa: AREA & aa/:area);
  List_Precondition(Machine(Condominium),book_area)==(oo: OWNER & aa: AREA & oo: owner & aa: area & (oo: dom(reserved) or oo/:dom(reserved)) & aa/:ran(reserved));
  List_Precondition(Machine(Condominium),cancel_booking)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo: dom(reserved) & aa: ran(reserved) & aa/:dom(events));
  List_Precondition(Machine(Condominium),add_event)==(aa: AREA & ee: EVENT & aa: area & aa/:dom(events) & aa: ran(reserved) & ee/:ran(events));
  List_Precondition(Machine(Condominium),remove_event)==(aa: AREA & ee: EVENT & aa: area & aa: dom(events) & ee: ran(events))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Condominium),remove_event)==(aa: AREA & ee: EVENT & aa: area & aa: dom(events) & ee: ran(events) | events:=events-{aa|->ee});
  Expanded_List_Substitution(Machine(Condominium),add_event)==(aa: AREA & ee: EVENT & aa: area & aa/:dom(events) & aa: ran(reserved) & ee/:ran(events) | events:=events\/{aa|->ee});
  Expanded_List_Substitution(Machine(Condominium),cancel_booking)==(oo: OWNER & aa: AREA & oo: owner & aa: area & oo: dom(reserved) & aa: ran(reserved) & aa/:dom(events) | reserved:=reserved-{oo|->aa});
  Expanded_List_Substitution(Machine(Condominium),book_area)==(oo: OWNER & aa: AREA & oo: owner & aa: area & (oo: dom(reserved) or oo/:dom(reserved)) & aa/:ran(reserved) | reserved:=reserved\/{oo|->aa});
  Expanded_List_Substitution(Machine(Condominium),create_area)==(aa: AREA & aa/:area | area:=area\/{aa});
  Expanded_List_Substitution(Machine(Condominium),create_owner)==(oo: OWNER & oo/:owner | owner:=owner\/{oo});
  List_Substitution(Machine(Condominium),create_owner)==(add_owner(oo));
  List_Substitution(Machine(Condominium),create_area)==(add_area(aa));
  List_Substitution(Machine(Condominium),book_area)==(reserved:=reserved\/{oo|->aa});
  List_Substitution(Machine(Condominium),cancel_booking)==(reserved:=reserved-{oo|->aa});
  List_Substitution(Machine(Condominium),add_event)==(events:=events\/{aa|->ee});
  List_Substitution(Machine(Condominium),remove_event)==(events:=events-{aa|->ee})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Condominium))==(?);
  Inherited_List_Constants(Machine(Condominium))==(?);
  List_Constants(Machine(Condominium))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Condominium),EVENT)==(?);
  Context_List_Enumerated(Machine(Condominium))==(?);
  Context_List_Defered(Machine(Condominium))==(?);
  Context_List_Sets(Machine(Condominium))==(?);
  List_Valuable_Sets(Machine(Condominium))==(OWNER,AREA,EVENT);
  Inherited_List_Enumerated(Machine(Condominium))==(?);
  Inherited_List_Defered(Machine(Condominium))==(OWNER,AREA,EVENT);
  Inherited_List_Sets(Machine(Condominium))==(OWNER,AREA,EVENT);
  List_Enumerated(Machine(Condominium))==(?);
  List_Defered(Machine(Condominium))==(?);
  List_Sets(Machine(Condominium))==(?);
  Set_Definition(Machine(Condominium),AREA)==(?);
  Set_Definition(Machine(Condominium),OWNER)==(?)
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
  Inherited_List_Properties(Machine(Condominium))==(OWNER: FIN(INTEGER) & not(OWNER = {}) & AREA: FIN(INTEGER) & not(AREA = {}) & EVENT: FIN(INTEGER) & not(EVENT = {}));
  List_Properties(Machine(Condominium))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Condominium),create_owner)==(?);
  List_ANY_Var(Machine(Condominium),create_area)==(?);
  List_ANY_Var(Machine(Condominium),book_area)==(?);
  List_ANY_Var(Machine(Condominium),cancel_booking)==(?);
  List_ANY_Var(Machine(Condominium),add_event)==(?);
  List_ANY_Var(Machine(Condominium),remove_event)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Condominium)) == (? | EVENT,AREA,OWNER | events,reserved | area,owner_suggestions,owner | create_owner,create_area,book_area,cancel_booking,add_event,remove_event | ? | included(Machine(Owner)),included(Machine(Area)),included(Machine(Event)) | ? | Condominium);
  List_Of_HiddenCst_Ids(Machine(Condominium)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Condominium)) == (?);
  List_Of_VisibleVar_Ids(Machine(Condominium)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Condominium)) == (seen(Machine(Suggestion)): (SUGGESTION | ? | suggestions | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Event)) == (EVENT | ? | ? | ? | ? | ? | ? | ? | Event);
  List_Of_HiddenCst_Ids(Machine(Event)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Event)) == (?);
  List_Of_VisibleVar_Ids(Machine(Event)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Event)) == (?: ?);
  List_Of_Ids(Machine(Area)) == (AREA | ? | area | ? | add_area,remove_area | ? | ? | ? | Area);
  List_Of_HiddenCst_Ids(Machine(Area)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Area)) == (?);
  List_Of_VisibleVar_Ids(Machine(Area)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Area)) == (?: ?);
  List_Of_Ids(Machine(Owner)) == (OWNER | ? | owner_suggestions,owner | ? | add_owner,remove_owner,add_owner_suggestion | ? | seen(Machine(Suggestion)) | ? | Owner);
  List_Of_HiddenCst_Ids(Machine(Owner)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Owner)) == (?);
  List_Of_VisibleVar_Ids(Machine(Owner)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Owner)) == (?: ?);
  List_Of_Ids(Machine(Suggestion)) == (SUGGESTION | ? | suggestions | ? | add_suggestion,remove_suggestion | ? | ? | ? | Suggestion);
  List_Of_HiddenCst_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Suggestion)) == (?);
  List_Of_VisibleVar_Ids(Machine(Suggestion)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Suggestion)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Condominium)) == (Type(OWNER) == Cst(SetOf(atype(OWNER,"[OWNER","]OWNER")));Type(AREA) == Cst(SetOf(atype(AREA,"[AREA","]AREA")));Type(EVENT) == Cst(SetOf(atype(EVENT,"[EVENT","]EVENT"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Condominium)) == (Type(owner) == Mvl(SetOf(atype(OWNER,?,?)));Type(owner_suggestions) == Mvl(SetOf(atype(OWNER,?,?)*atype(SUGGESTION,?,?)));Type(area) == Mvl(SetOf(atype(AREA,?,?)));Type(events) == Mvl(SetOf(atype(AREA,?,?)*atype(EVENT,?,?)));Type(reserved) == Mvl(SetOf(atype(OWNER,?,?)*atype(AREA,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Condominium)) == (Type(remove_event) == Cst(No_type,atype(AREA,?,?)*atype(EVENT,?,?));Type(add_event) == Cst(No_type,atype(AREA,?,?)*atype(EVENT,?,?));Type(cancel_booking) == Cst(No_type,atype(OWNER,?,?)*atype(AREA,?,?));Type(book_area) == Cst(No_type,atype(OWNER,?,?)*atype(AREA,?,?));Type(create_area) == Cst(No_type,atype(AREA,?,?));Type(create_owner) == Cst(No_type,atype(OWNER,?,?)))
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
