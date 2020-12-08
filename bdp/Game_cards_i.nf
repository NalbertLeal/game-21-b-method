Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Game_cards_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Game_cards_i))==(Machine(Game_cards));
  Level(Implementation(Game_cards_i))==(1);
  Upper_Level(Implementation(Game_cards_i))==(Machine(Game_cards))
END
&
THEORY LoadedStructureX IS
  Implementation(Game_cards_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Game_cards_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Game_cards_i))==(?);
  Inherited_List_Includes(Implementation(Game_cards_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Game_cards_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Game_cards_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Game_cards_i))==(?);
  Context_List_Variables(Implementation(Game_cards_i))==(?);
  Abstract_List_Variables(Implementation(Game_cards_i))==(?);
  Local_List_Variables(Implementation(Game_cards_i))==(?);
  List_Variables(Implementation(Game_cards_i))==(?);
  External_List_Variables(Implementation(Game_cards_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Game_cards_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Game_cards_i))==(?);
  External_List_VisibleVariables(Implementation(Game_cards_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Game_cards_i))==(?);
  List_VisibleVariables(Implementation(Game_cards_i))==(?);
  Internal_List_VisibleVariables(Implementation(Game_cards_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Game_cards_i))==(btrue);
  Expanded_List_Invariant(Implementation(Game_cards_i))==(btrue);
  Abstract_List_Invariant(Implementation(Game_cards_i))==(btrue);
  Context_List_Invariant(Implementation(Game_cards_i))==(btrue);
  List_Invariant(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Game_cards_i))==(btrue);
  Abstract_List_Assertions(Implementation(Game_cards_i))==(btrue);
  Context_List_Assertions(Implementation(Game_cards_i))==(btrue);
  List_Assertions(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Game_cards_i))==(skip);
  Context_List_Initialisation(Implementation(Game_cards_i))==(skip);
  List_Initialisation(Implementation(Game_cards_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Game_cards_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Game_cards_i))==(btrue);
  List_Context_Constraints(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Game_cards_i))==(?);
  List_Operations(Implementation(Game_cards_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Game_cards_i))==(CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY);
  Inherited_List_Constants(Implementation(Game_cards_i))==(CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY);
  List_Constants(Implementation(Game_cards_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Game_cards_i),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Context_List_Enumerated(Implementation(Game_cards_i))==(?);
  Context_List_Defered(Implementation(Game_cards_i))==(?);
  Context_List_Sets(Implementation(Game_cards_i))==(?);
  List_Own_Enumerated(Implementation(Game_cards_i))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Valuable_Sets(Implementation(Game_cards_i))==(?);
  Inherited_List_Enumerated(Implementation(Game_cards_i))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Inherited_List_Defered(Implementation(Game_cards_i))==(?);
  Inherited_List_Sets(Implementation(Game_cards_i))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Enumerated(Implementation(Game_cards_i))==(?);
  List_Defered(Implementation(Game_cards_i))==(?);
  List_Sets(Implementation(Game_cards_i))==(?);
  Set_Definition(Implementation(Game_cards_i),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Implementation(Game_cards_i),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Game_cards_i))==(CARDS_POINTS,tuple_second,tuple_first,PLAYABLE,CARDS);
  Expanded_List_HiddenConstants(Implementation(Game_cards_i))==(?);
  List_HiddenConstants(Implementation(Game_cards_i))==(?);
  External_List_HiddenConstants(Implementation(Game_cards_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Game_cards_i))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_first = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | ct) & tuple_second = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | cv) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CARDS_TYPES_ARRAY = {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES} & CARDS_VALUES_ARRAY = {0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE} & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Context_List_Properties(Implementation(Game_cards_i))==(btrue);
  Inherited_List_Properties(Implementation(Game_cards_i))==(btrue);
  List_Properties(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Game_cards_i))==(btrue);
  Values_Subs(Implementation(Game_cards_i))==(CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY: {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES},{0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE});
  List_Values(Implementation(Game_cards_i))==(CARDS_TYPES_ARRAY = {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES};CARDS_VALUES_ARRAY = {0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE})
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Game_cards_i))==(Type(CLUBS) == Cst(etype(CARDS_TYPES,0,4));Type(DIAMONDS) == Cst(etype(CARDS_TYPES,0,4));Type(HEARTS) == Cst(etype(CARDS_TYPES,0,4));Type(SPADES) == Cst(etype(CARDS_TYPES,0,4));Type(NOTYPE) == Cst(etype(CARDS_TYPES,0,4));Type(ONE) == Cst(etype(CARDS_VALUE,0,13));Type(TWO) == Cst(etype(CARDS_VALUE,0,13));Type(THREE) == Cst(etype(CARDS_VALUE,0,13));Type(FOUR) == Cst(etype(CARDS_VALUE,0,13));Type(FIVE) == Cst(etype(CARDS_VALUE,0,13));Type(SIX) == Cst(etype(CARDS_VALUE,0,13));Type(SEVEN) == Cst(etype(CARDS_VALUE,0,13));Type(EIGHT) == Cst(etype(CARDS_VALUE,0,13));Type(NINE) == Cst(etype(CARDS_VALUE,0,13));Type(KING) == Cst(etype(CARDS_VALUE,0,13));Type(QUEEN) == Cst(etype(CARDS_VALUE,0,13));Type(JACK) == Cst(etype(CARDS_VALUE,0,13));Type(ACE) == Cst(etype(CARDS_VALUE,0,13));Type(NOVALUE) == Cst(etype(CARDS_VALUE,0,13));Type(P_ONE) == Cst(etype(PLAYERS,0,2));Type(P_TWO) == Cst(etype(PLAYERS,0,2));Type(NOPLAYER) == Cst(etype(PLAYERS,0,2));Type(CARDS_TYPES_ARRAY) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4)));Type(CARDS_VALUES_ARRAY) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13))))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Game_cards_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Game_cards_i);
  List_Of_HiddenCst_Ids(Implementation(Game_cards_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Game_cards_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Game_cards_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Game_cards_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Game_cards_i)) == (Type(PLAYERS) == Cst(SetOf(etype(PLAYERS,0,2)));Type(CARDS_VALUE) == Cst(SetOf(etype(CARDS_VALUE,0,13)));Type(CARDS_TYPES) == Cst(SetOf(etype(CARDS_TYPES,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Game_cards_i)) == (Type(CARDS_VALUES_ARRAY) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13)));Type(CARDS_TYPES_ARRAY) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4)));Type(NOPLAYER) == Cst(etype(PLAYERS,0,2));Type(P_TWO) == Cst(etype(PLAYERS,0,2));Type(P_ONE) == Cst(etype(PLAYERS,0,2));Type(NOVALUE) == Cst(etype(CARDS_VALUE,0,13));Type(ACE) == Cst(etype(CARDS_VALUE,0,13));Type(JACK) == Cst(etype(CARDS_VALUE,0,13));Type(QUEEN) == Cst(etype(CARDS_VALUE,0,13));Type(KING) == Cst(etype(CARDS_VALUE,0,13));Type(NINE) == Cst(etype(CARDS_VALUE,0,13));Type(EIGHT) == Cst(etype(CARDS_VALUE,0,13));Type(SEVEN) == Cst(etype(CARDS_VALUE,0,13));Type(SIX) == Cst(etype(CARDS_VALUE,0,13));Type(FIVE) == Cst(etype(CARDS_VALUE,0,13));Type(FOUR) == Cst(etype(CARDS_VALUE,0,13));Type(THREE) == Cst(etype(CARDS_VALUE,0,13));Type(TWO) == Cst(etype(CARDS_VALUE,0,13));Type(ONE) == Cst(etype(CARDS_VALUE,0,13));Type(NOTYPE) == Cst(etype(CARDS_TYPES,0,4));Type(SPADES) == Cst(etype(CARDS_TYPES,0,4));Type(HEARTS) == Cst(etype(CARDS_TYPES,0,4));Type(DIAMONDS) == Cst(etype(CARDS_TYPES,0,4));Type(CLUBS) == Cst(etype(CARDS_TYPES,0,4)))
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
  List_Local_Operations(Implementation(Game_cards_i))==(?)
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
  TypingPredicate(Implementation(Game_cards_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
