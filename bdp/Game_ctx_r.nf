Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Game_ctx_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Game_ctx_r))==(Machine(Game_ctx));
  Level(Refinement(Game_ctx_r))==(1);
  Upper_Level(Refinement(Game_ctx_r))==(Machine(Game_ctx))
END
&
THEORY LoadedStructureX IS
  Refinement(Game_ctx_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Game_ctx_r))==(Game_cards)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Game_ctx_r))==(?);
  List_Includes(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Game_ctx_r))==(?);
  Context_List_Variables(Refinement(Game_ctx_r))==(?);
  Abstract_List_Variables(Refinement(Game_ctx_r))==(?);
  Local_List_Variables(Refinement(Game_ctx_r))==(?);
  List_Variables(Refinement(Game_ctx_r))==(?);
  External_List_Variables(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Game_ctx_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Game_ctx_r))==(?);
  External_List_VisibleVariables(Refinement(Game_ctx_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Game_ctx_r))==(?);
  List_VisibleVariables(Refinement(Game_ctx_r))==(?);
  Internal_List_VisibleVariables(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Game_ctx_r))==(btrue);
  Expanded_List_Invariant(Refinement(Game_ctx_r))==(btrue);
  Abstract_List_Invariant(Refinement(Game_ctx_r))==(btrue);
  Context_List_Invariant(Refinement(Game_ctx_r))==(btrue);
  List_Invariant(Refinement(Game_ctx_r))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Game_ctx_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Game_ctx_r))==(btrue);
  Abstract_List_Assertions(Refinement(Game_ctx_r))==(btrue);
  Context_List_Assertions(Refinement(Game_ctx_r))==(btrue);
  List_Assertions(Refinement(Game_ctx_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Game_ctx_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Game_ctx_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Game_ctx_r))==(skip);
  Context_List_Initialisation(Refinement(Game_ctx_r))==(skip);
  List_Initialisation(Refinement(Game_ctx_r))==(skip)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Game_ctx_r))==(?);
  List_Operations(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Game_ctx_r),Machine(Game_cards))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Game_ctx_r))==(btrue);
  List_Context_Constraints(Refinement(Game_ctx_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Game_ctx_r))==(DECK_TYPES,DECK_VALUES);
  Inherited_List_Constants(Refinement(Game_ctx_r))==(DECK_TYPES,DECK_VALUES);
  List_Constants(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Game_ctx_r),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Context_List_Enumerated(Refinement(Game_ctx_r))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Context_List_Defered(Refinement(Game_ctx_r))==(?);
  Context_List_Sets(Refinement(Game_ctx_r))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Valuable_Sets(Refinement(Game_ctx_r))==(?);
  Inherited_List_Enumerated(Refinement(Game_ctx_r))==(?);
  Inherited_List_Defered(Refinement(Game_ctx_r))==(?);
  Inherited_List_Sets(Refinement(Game_ctx_r))==(?);
  List_Enumerated(Refinement(Game_ctx_r))==(?);
  List_Defered(Refinement(Game_ctx_r))==(?);
  List_Sets(Refinement(Game_ctx_r))==(?);
  Set_Definition(Refinement(Game_ctx_r),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Refinement(Game_ctx_r),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Game_ctx_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Game_ctx_r))==(?);
  List_HiddenConstants(Refinement(Game_ctx_r))==(?);
  External_List_HiddenConstants(Refinement(Game_ctx_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Game_ctx_r))==(DECK_TYPES = {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES} & DECK_VALUES = {0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE});
  Context_List_Properties(Refinement(Game_ctx_r))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_second = %(ct,vt).(ct: CARDS_TYPES & vt: CARDS_VALUE | vt) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Refinement(Game_ctx_r))==(btrue);
  List_Properties(Refinement(Game_ctx_r))==(DECK_TYPES = {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES} & DECK_VALUES = {0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE})
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Game_ctx_r),Machine(Game_cards))==(?);
  Seen_Context_List_Enumerated(Refinement(Game_ctx_r))==(?);
  Seen_Context_List_Invariant(Refinement(Game_ctx_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(Game_ctx_r))==(btrue);
  Seen_Context_List_Properties(Refinement(Game_ctx_r))==(btrue);
  Seen_List_Constraints(Refinement(Game_ctx_r))==(btrue);
  Seen_List_Operations(Refinement(Game_ctx_r),Machine(Game_cards))==(?);
  Seen_Expanded_List_Invariant(Refinement(Game_ctx_r),Machine(Game_cards))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Game_ctx_r)) == (? | ? | ? | ? | ? | ? | seen(Machine(Game_cards)) | ? | Game_ctx_r);
  List_Of_HiddenCst_Ids(Refinement(Game_ctx_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Game_ctx_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Game_ctx_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Game_ctx_r)) == (?: ?);
  List_Of_Ids(Machine(Game_cards)) == (CARDS_POINTS,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE,P_ONE,P_TWO,NOPLAYER | ? | ? | ? | ? | ? | ? | ? | Game_cards);
  List_Of_HiddenCst_Ids(Machine(Game_cards)) == (tuple_second,PLAYABLE,CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Game_cards)) == (CARDS_POINTS);
  List_Of_VisibleVar_Ids(Machine(Game_cards)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_cards)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Game_ctx_r)) == (Type(DECK_VALUES) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13)));Type(DECK_TYPES) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4))))
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
