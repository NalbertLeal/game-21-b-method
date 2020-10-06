Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Jogo))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Jogo))==(Machine(Jogo));
  Level(Machine(Jogo))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Jogo)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Jogo))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Jogo))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Jogo))==(?);
  List_Includes(Machine(Jogo))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Jogo))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Jogo))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Jogo))==(?);
  Context_List_Variables(Machine(Jogo))==(?);
  Abstract_List_Variables(Machine(Jogo))==(?);
  Local_List_Variables(Machine(Jogo))==(player_two_hand,player_one_hand,player_now,top_discart_deck,discart_deck,top_deck,deck);
  List_Variables(Machine(Jogo))==(player_two_hand,player_one_hand,player_now,top_discart_deck,discart_deck,top_deck,deck);
  External_List_Variables(Machine(Jogo))==(player_two_hand,player_one_hand,player_now,top_discart_deck,discart_deck,top_deck,deck)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Jogo))==(?);
  Abstract_List_VisibleVariables(Machine(Jogo))==(?);
  External_List_VisibleVariables(Machine(Jogo))==(?);
  Expanded_List_VisibleVariables(Machine(Jogo))==(?);
  List_VisibleVariables(Machine(Jogo))==(?);
  Internal_List_VisibleVariables(Machine(Jogo))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Jogo))==(btrue);
  Gluing_List_Invariant(Machine(Jogo))==(btrue);
  Expanded_List_Invariant(Machine(Jogo))==(btrue);
  Abstract_List_Invariant(Machine(Jogo))==(btrue);
  Context_List_Invariant(Machine(Jogo))==(btrue);
  List_Invariant(Machine(Jogo))==(deck: seq(CARDS) & top_deck: NAT & discart_deck: seq(CARDS) & top_discart_deck: NAT & player_now: PLAYERS & player_one_hand: seq(CARDS) & player_two_hand: seq(CARDS))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Jogo))==(btrue);
  Abstract_List_Assertions(Machine(Jogo))==(btrue);
  Context_List_Assertions(Machine(Jogo))==(btrue);
  List_Assertions(Machine(Jogo))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Jogo))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Jogo))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Jogo))==(@(deck$0).(deck$0: perm(CARDS) ==> deck:=deck$0) || top_deck:=0 || discart_deck:=<> || top_discart_deck:=0 || player_now:=P_ONE || player_one_hand:=<> || player_two_hand:=<>);
  Context_List_Initialisation(Machine(Jogo))==(skip);
  List_Initialisation(Machine(Jogo))==(deck:: perm(CARDS) || top_deck:=0 || discart_deck:=<> || top_discart_deck:=0 || player_now:=P_ONE || player_one_hand:=<> || player_two_hand:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Jogo))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Jogo))==(btrue);
  List_Constraints(Machine(Jogo))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Jogo))==(getDeckCard);
  List_Operations(Machine(Jogo))==(getDeckCard)
END
&
THEORY ListInputX IS
  List_Input(Machine(Jogo),getDeckCard)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Jogo),getDeckCard)==(cc)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Jogo),getDeckCard)==(cc <-- getDeckCard)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Jogo),getDeckCard)==(top_deck<size(deck) & top_deck+1: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Jogo),getDeckCard)==(top_deck<size(deck) & top_deck+1: NAT | cc,top_deck:=deck/|\top_deck,top_deck+1);
  List_Substitution(Machine(Jogo),getDeckCard)==(cc:=deck/|\top_deck || top_deck:=top_deck+1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Jogo))==(PLAYERS_NUMBER,NUMBER_INITIAL_HAND);
  Inherited_List_Constants(Machine(Jogo))==(?);
  List_Constants(Machine(Jogo))==(PLAYERS_NUMBER,NUMBER_INITIAL_HAND)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Jogo),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES});
  Context_List_Enumerated(Machine(Jogo))==(?);
  Context_List_Defered(Machine(Jogo))==(?);
  Context_List_Sets(Machine(Jogo))==(?);
  List_Valuable_Sets(Machine(Jogo))==(?);
  Inherited_List_Enumerated(Machine(Jogo))==(?);
  Inherited_List_Defered(Machine(Jogo))==(?);
  Inherited_List_Sets(Machine(Jogo))==(?);
  List_Enumerated(Machine(Jogo))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Defered(Machine(Jogo))==(?);
  List_Sets(Machine(Jogo))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Set_Definition(Machine(Jogo),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SAVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE});
  Set_Definition(Machine(Jogo),PLAYERS)==({P_ONE,P_TWO})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Jogo))==(?);
  Expanded_List_HiddenConstants(Machine(Jogo))==(?);
  List_HiddenConstants(Machine(Jogo))==(CARDS);
  External_List_HiddenConstants(Machine(Jogo))==(CARDS)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Jogo))==(btrue);
  Context_List_Properties(Machine(Jogo))==(btrue);
  Inherited_List_Properties(Machine(Jogo))==(btrue);
  List_Properties(Machine(Jogo))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & card(CARDS) = 52 & PLAYERS_NUMBER = 2 & NUMBER_INITIAL_HAND = 3 & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Jogo),getDeckCard)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Jogo)) == (PLAYERS_NUMBER,NUMBER_INITIAL_HAND,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,ONE,TWO,THREE,FOUR,FIVE,SIX,SAVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,P_ONE,P_TWO | ? | player_two_hand,player_one_hand,player_now,top_discart_deck,discart_deck,top_deck,deck | ? | getDeckCard | ? | ? | ? | Jogo);
  List_Of_HiddenCst_Ids(Machine(Jogo)) == (CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Jogo)) == (PLAYERS_NUMBER,NUMBER_INITIAL_HAND);
  List_Of_VisibleVar_Ids(Machine(Jogo)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Jogo)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Jogo)) == (Type(CARDS_TYPES) == Cst(SetOf(etype(CARDS_TYPES,0,3)));Type(CARDS_VALUE) == Cst(SetOf(etype(CARDS_VALUE,0,12)));Type(PLAYERS) == Cst(SetOf(etype(PLAYERS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Jogo)) == (Type(CLUBS) == Cst(etype(CARDS_TYPES,0,3));Type(DIAMONDS) == Cst(etype(CARDS_TYPES,0,3));Type(HEARTS) == Cst(etype(CARDS_TYPES,0,3));Type(SPADES) == Cst(etype(CARDS_TYPES,0,3));Type(ONE) == Cst(etype(CARDS_VALUE,0,12));Type(TWO) == Cst(etype(CARDS_VALUE,0,12));Type(THREE) == Cst(etype(CARDS_VALUE,0,12));Type(FOUR) == Cst(etype(CARDS_VALUE,0,12));Type(FIVE) == Cst(etype(CARDS_VALUE,0,12));Type(SIX) == Cst(etype(CARDS_VALUE,0,12));Type(SAVEN) == Cst(etype(CARDS_VALUE,0,12));Type(EIGHT) == Cst(etype(CARDS_VALUE,0,12));Type(NINE) == Cst(etype(CARDS_VALUE,0,12));Type(KING) == Cst(etype(CARDS_VALUE,0,12));Type(QUEEN) == Cst(etype(CARDS_VALUE,0,12));Type(JACK) == Cst(etype(CARDS_VALUE,0,12));Type(ACE) == Cst(etype(CARDS_VALUE,0,12));Type(P_ONE) == Cst(etype(PLAYERS,0,1));Type(P_TWO) == Cst(etype(PLAYERS,0,1));Type(PLAYERS_NUMBER) == Cst(btype(INTEGER,?,?));Type(NUMBER_INITIAL_HAND) == Cst(btype(INTEGER,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(Jogo)) == (Type(CARDS) == HCst(SetOf(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Jogo)) == (Type(player_two_hand) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(player_one_hand) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(player_now) == Mvl(etype(PLAYERS,?,?));Type(top_discart_deck) == Mvl(btype(INTEGER,?,?));Type(discart_deck) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(top_deck) == Mvl(btype(INTEGER,?,?));Type(deck) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Jogo)) == (Type(getDeckCard) == Cst(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))),No_type))
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
