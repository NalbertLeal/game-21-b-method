Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(game))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(game))==(Machine(game));
  Level(Machine(game))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(game)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(game))==(Game_cards)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(game))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(game))==(?);
  List_Includes(Machine(game))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(game))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(game))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(game))==(?);
  Context_List_Variables(Machine(game))==(?);
  Abstract_List_Variables(Machine(game))==(?);
  Local_List_Variables(Machine(game))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck);
  List_Variables(Machine(game))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck);
  External_List_Variables(Machine(game))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(game))==(?);
  Abstract_List_VisibleVariables(Machine(game))==(?);
  External_List_VisibleVariables(Machine(game))==(?);
  Expanded_List_VisibleVariables(Machine(game))==(?);
  List_VisibleVariables(Machine(game))==(?);
  Internal_List_VisibleVariables(Machine(game))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(game))==(btrue);
  Gluing_List_Invariant(Machine(game))==(btrue);
  Expanded_List_Invariant(Machine(game))==(btrue);
  Abstract_List_Invariant(Machine(game))==(btrue);
  Context_List_Invariant(Machine(game))==(btrue);
  List_Invariant(Machine(game))==(deck: seq(PLAYABLE) & deck: FIN(deck) & deck: seq(ran(deck)) & size(deck)<=52 & discart: seq(PLAYABLE) & discart: FIN(discart) & discart: seq(ran(discart)) & size(discart)<=52 & top_deck: CARDS & top_deck_points: NAT & current_player: PLAYERS & player_one_hand: seq(PLAYABLE) & player_one_points: NAT & player_two_hand: seq(PLAYABLE) & player_two_points: NAT & game_over: BOOL & (game_over = TRUE => player_two_points = 21 or player_one_points = 21))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(game))==(btrue);
  Abstract_List_Assertions(Machine(game))==(btrue);
  Context_List_Assertions(Machine(game))==(btrue);
  List_Assertions(Machine(game))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(game))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(game))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(game))==(deck,discart,top_deck,top_deck_points,current_player,player_one_hand,player_one_points,player_two_hand,player_two_points,game_over:=<>,<>,NOTYPE|->NOVALUE,0,P_ONE,<>,0,<>,0,FALSE);
  Context_List_Initialisation(Machine(game))==(skip);
  List_Initialisation(Machine(game))==(deck:=<> || discart:=<> || top_deck:=NOTYPE|->NOVALUE || top_deck_points:=0 || current_player:=P_ONE || player_one_hand:=<> || player_one_points:=0 || player_two_hand:=<> || player_two_points:=0 || game_over:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(game))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(game),Machine(Game_cards))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(game))==(btrue);
  List_Constraints(Machine(game))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(game))==(init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play);
  List_Operations(Machine(game))==(init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play)
END
&
THEORY ListInputX IS
  List_Input(Machine(game),init_deck)==(?);
  List_Input(Machine(game),init_hands)==(?);
  List_Input(Machine(game),init_hands_points)==(?);
  List_Input(Machine(game),update_top_deck)==(?);
  List_Input(Machine(game),reset_deck)==(?);
  List_Input(Machine(game),player_one_play)==(?);
  List_Input(Machine(game),player_two_play)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(game),init_deck)==(?);
  List_Output(Machine(game),init_hands)==(?);
  List_Output(Machine(game),init_hands_points)==(?);
  List_Output(Machine(game),update_top_deck)==(?);
  List_Output(Machine(game),reset_deck)==(?);
  List_Output(Machine(game),player_one_play)==(?);
  List_Output(Machine(game),player_two_play)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(game),init_deck)==(init_deck);
  List_Header(Machine(game),init_hands)==(init_hands);
  List_Header(Machine(game),init_hands_points)==(init_hands_points);
  List_Header(Machine(game),update_top_deck)==(update_top_deck);
  List_Header(Machine(game),reset_deck)==(reset_deck);
  List_Header(Machine(game),player_one_play)==(player_one_play);
  List_Header(Machine(game),player_two_play)==(player_two_play)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(game),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {});
  List_Precondition(Machine(game),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck));
  List_Precondition(Machine(game),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0);
  List_Precondition(Machine(game),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) & CARDS_POINTS(tuple_second(top_deck)): NAT & tuple_second: dom(tuple_second) +-> ran(tuple_second) & tuple_second(top_deck): dom(CARDS_POINTS) & CARDS_POINTS: dom(CARDS_POINTS) +-> ran(CARDS_POINTS));
  List_Precondition(Machine(game),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={});
  List_Precondition(Machine(game),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52));
  List_Precondition(Machine(game),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(game),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52) | current_player,top_deck,top_deck_points:=P_ONE,NOTYPE|->NOVALUE,0 || (top_deck_points+player_two_points<22 ==> (player_two_points:=top_deck_points+player_two_points || (top_deck_points+player_two_points = 21 ==> game_over:=TRUE [] not(top_deck_points+player_two_points = 21) ==> game_over:=FALSE)) [] not(top_deck_points+player_two_points<22) ==> discart:=discart<-top_deck));
  Expanded_List_Substitution(Machine(game),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52) | current_player,top_deck,top_deck_points:=P_TWO,NOTYPE|->NOVALUE,0 || (top_deck_points+player_one_points<22 ==> (player_one_points:=top_deck_points+player_one_points || (top_deck_points+player_one_points = 21 ==> game_over:=TRUE [] not(top_deck_points+player_one_points = 21) ==> game_over:=FALSE)) [] not(top_deck_points+player_one_points<22) ==> discart:=discart<-top_deck));
  Expanded_List_Substitution(Machine(game),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={} | deck,discart:=discart,{});
  Expanded_List_Substitution(Machine(game),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) & CARDS_POINTS(tuple_second(top_deck)): NAT & tuple_second: dom(tuple_second) +-> ran(tuple_second) & tuple_second(top_deck): dom(CARDS_POINTS) & CARDS_POINTS: dom(CARDS_POINTS) +-> ran(CARDS_POINTS) | top_deck,deck,top_deck_points:=first(deck),tail(deck),CARDS_POINTS(tuple_second(top_deck)));
  Expanded_List_Substitution(Machine(game),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0 | player_one_points,player_two_points:=CARDS_POINTS(tuple_second(player_one_hand(1)))+CARDS_POINTS(tuple_second(player_one_hand(2)))+CARDS_POINTS(tuple_second(player_one_hand(3))),CARDS_POINTS(tuple_second(player_two_hand(1)))+CARDS_POINTS(tuple_second(player_two_hand(2)))+CARDS_POINTS(tuple_second(player_two_hand(3))));
  Expanded_List_Substitution(Machine(game),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck) | player_one_hand,player_two_hand,deck:=deck/|\3,deck\|/3/|\3,deck\|/6);
  Expanded_List_Substitution(Machine(game),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {} | @new_deck.(new_deck: perm(PLAYABLE) & size(new_deck)<=52 & new_deck: FIN(new_deck) ==> deck:=new_deck));
  List_Substitution(Machine(game),init_deck)==(ANY new_deck WHERE new_deck: perm(PLAYABLE) & size(new_deck)<=52 & new_deck: FIN(new_deck) THEN deck:=new_deck END);
  List_Substitution(Machine(game),init_hands)==(player_one_hand:=deck/|\3 || player_two_hand:=deck\|/3/|\3 || deck:=deck\|/6);
  List_Substitution(Machine(game),init_hands_points)==(player_one_points:=CARDS_POINTS(tuple_second(player_one_hand(1)))+CARDS_POINTS(tuple_second(player_one_hand(2)))+CARDS_POINTS(tuple_second(player_one_hand(3))) || player_two_points:=CARDS_POINTS(tuple_second(player_two_hand(1)))+CARDS_POINTS(tuple_second(player_two_hand(2)))+CARDS_POINTS(tuple_second(player_two_hand(3))));
  List_Substitution(Machine(game),update_top_deck)==(top_deck,deck:=first(deck),tail(deck) || top_deck_points:=CARDS_POINTS(tuple_second(top_deck)));
  List_Substitution(Machine(game),reset_deck)==(deck:=discart || discart:={});
  List_Substitution(Machine(game),player_one_play)==(current_player:=P_TWO || top_deck:=NOTYPE|->NOVALUE || top_deck_points:=0 || IF top_deck_points+player_one_points<22 THEN player_one_points:=top_deck_points+player_one_points || IF top_deck_points+player_one_points = 21 THEN game_over:=TRUE ELSE game_over:=FALSE END ELSE discart:=discart<-top_deck END);
  List_Substitution(Machine(game),player_two_play)==(current_player:=P_ONE || top_deck:=NOTYPE|->NOVALUE || top_deck_points:=0 || IF top_deck_points+player_two_points<22 THEN player_two_points:=top_deck_points+player_two_points || IF top_deck_points+player_two_points = 21 THEN game_over:=TRUE ELSE game_over:=FALSE END ELSE discart:=discart<-top_deck END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(game))==(?);
  Inherited_List_Constants(Machine(game))==(?);
  List_Constants(Machine(game))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(game),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Context_List_Enumerated(Machine(game))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Context_List_Defered(Machine(game))==(?);
  Context_List_Sets(Machine(game))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Valuable_Sets(Machine(game))==(?);
  Inherited_List_Enumerated(Machine(game))==(?);
  Inherited_List_Defered(Machine(game))==(?);
  Inherited_List_Sets(Machine(game))==(?);
  List_Enumerated(Machine(game))==(?);
  List_Defered(Machine(game))==(?);
  List_Sets(Machine(game))==(?);
  Set_Definition(Machine(game),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Machine(game),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(game))==(?);
  Expanded_List_HiddenConstants(Machine(game))==(?);
  List_HiddenConstants(Machine(game))==(?);
  External_List_HiddenConstants(Machine(game))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(game))==(btrue);
  Context_List_Properties(Machine(game))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_first = %(ct,vt).(ct: CARDS_TYPES & vt: CARDS_VALUE | ct) & tuple_second = %(ct,vt).(ct: CARDS_TYPES & vt: CARDS_VALUE | vt) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Machine(game))==(btrue);
  List_Properties(Machine(game))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(game),Machine(Game_cards))==(?);
  Seen_Context_List_Enumerated(Machine(game))==(?);
  Seen_Context_List_Invariant(Machine(game))==(btrue);
  Seen_Context_List_Assertions(Machine(game))==(btrue);
  Seen_Context_List_Properties(Machine(game))==(btrue);
  Seen_List_Constraints(Machine(game))==(btrue);
  Seen_List_Operations(Machine(game),Machine(Game_cards))==(?);
  Seen_Expanded_List_Invariant(Machine(game),Machine(Game_cards))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(game),init_deck)==(Var(new_deck) == SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));
  List_ANY_Var(Machine(game),init_hands)==(?);
  List_ANY_Var(Machine(game),init_hands_points)==(?);
  List_ANY_Var(Machine(game),update_top_deck)==(?);
  List_ANY_Var(Machine(game),reset_deck)==(?);
  List_ANY_Var(Machine(game),player_one_play)==(?);
  List_ANY_Var(Machine(game),player_two_play)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(game)) == (? | ? | game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck | ? | init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play | ? | seen(Machine(Game_cards)) | ? | game);
  List_Of_HiddenCst_Ids(Machine(game)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(game)) == (?);
  List_Of_VisibleVar_Ids(Machine(game)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(game)) == (?: ?);
  List_Of_Ids(Machine(Game_cards)) == (CARDS_POINTS,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE,P_ONE,P_TWO,NOPLAYER | ? | ? | ? | ? | ? | ? | ? | Game_cards);
  List_Of_HiddenCst_Ids(Machine(Game_cards)) == (tuple_second,tuple_first,PLAYABLE,CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Game_cards)) == (CARDS_POINTS);
  List_Of_VisibleVar_Ids(Machine(Game_cards)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_cards)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(game)) == (Type(game_over) == Mvl(btype(BOOL,?,?));Type(player_two_points) == Mvl(btype(INTEGER,?,?));Type(player_two_hand) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(player_one_points) == Mvl(btype(INTEGER,?,?));Type(player_one_hand) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(current_player) == Mvl(etype(PLAYERS,?,?));Type(top_deck_points) == Mvl(btype(INTEGER,?,?));Type(top_deck) == Mvl(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?));Type(discart) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(deck) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(game)) == (Type(player_two_play) == Cst(No_type,No_type);Type(player_one_play) == Cst(No_type,No_type);Type(reset_deck) == Cst(No_type,No_type);Type(update_top_deck) == Cst(No_type,No_type);Type(init_hands_points) == Cst(No_type,No_type);Type(init_hands) == Cst(No_type,No_type);Type(init_deck) == Cst(No_type,No_type))
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
