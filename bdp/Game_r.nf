Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Game_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Game_r))==(Machine(game));
  Level(Refinement(Game_r))==(1);
  Upper_Level(Refinement(Game_r))==(Machine(game))
END
&
THEORY LoadedStructureX IS
  Refinement(Game_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Game_r))==(Game_cards,Game_ctx)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Game_r))==(?);
  List_Includes(Refinement(Game_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Game_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Game_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Game_r))==(?);
  Context_List_Variables(Refinement(Game_r))==(?);
  Abstract_List_Variables(Refinement(Game_r))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck);
  Local_List_Variables(Refinement(Game_r))==(game_over_r,top_deck_points_r,top_deck_r,current_player_r,player_two_points_r,player_two_hand_r,player_one_points_r,player_one_hand_r,discart_r,deck_r,all_cards_v,all_cards_t);
  List_Variables(Refinement(Game_r))==(game_over_r,top_deck_points_r,top_deck_r,current_player_r,player_two_points_r,player_two_hand_r,player_one_points_r,player_one_hand_r,discart_r,deck_r,all_cards_v,all_cards_t);
  External_List_Variables(Refinement(Game_r))==(game_over_r,top_deck_points_r,top_deck_r,current_player_r,player_two_points_r,player_two_hand_r,player_one_points_r,player_one_hand_r,discart_r,deck_r,all_cards_v,all_cards_t)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Game_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Game_r))==(?);
  External_List_VisibleVariables(Refinement(Game_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Game_r))==(?);
  List_VisibleVariables(Refinement(Game_r))==(?);
  Internal_List_VisibleVariables(Refinement(Game_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Game_r))==(game_over_r,top_deck_points_r,top_deck_r,current_player_r,player_two_points_r,player_two_hand_r,player_one_points_r,player_one_hand_r,discart_r,deck_r,all_cards_v,all_cards_t)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Game_r))==(btrue);
  Expanded_List_Invariant(Refinement(Game_r))==(btrue);
  Abstract_List_Invariant(Refinement(Game_r))==(deck: seq(PLAYABLE) & size(deck)<=52 & discart: seq(PLAYABLE) & size(discart)<=52 & top_deck: CARDS & top_deck_points: NAT & current_player: PLAYERS & player_one_hand: seq(PLAYABLE) & player_one_points: NAT & player_two_hand: seq(PLAYABLE) & player_two_points: NAT & game_over: BOOL & (game_over = TRUE => player_two_points = 21 or player_one_points = 21));
  Context_List_Invariant(Refinement(Game_r))==(btrue);
  List_Invariant(Refinement(Game_r))==(all_cards_t: 0..51 --> CARDS_TYPES & all_cards_v: 0..51 --> CARDS_VALUE & deck_r: 0..51 --> BOOL & !ii.(ii: 0..51 => deck_r(ii) = TRUE <=> (all_cards_t(ii)|->all_cards_v(ii): ran(deck))) & discart_r: 0..51 --> BOOL & !ii.(ii: 0..51 & discart_r(ii) = TRUE => all_cards_t(ii)|->all_cards_v(ii): ran(discart)) & player_one_hand_r: 0..51 --> BOOL & !ii.(ii: 0..51 & player_one_hand_r(ii) = TRUE => all_cards_t(ii)|->all_cards_v(ii): ran(player_one_hand)) & player_one_points_r: NAT & player_one_points = player_one_points_r & player_two_hand_r: 0..51 --> BOOL & !ii.(ii: 0..51 & player_two_hand_r(ii) = TRUE => all_cards_t(ii)|->all_cards_v(ii): ran(player_one_hand)) & player_two_points_r: NAT & player_two_points = player_two_points_r & current_player_r: PLAYERS & current_player = current_player_r & top_deck_r: INT & (top_deck_r>= -1 & top_deck_r<=52) & ((top_deck_r>=0 => top_deck = all_cards_t(top_deck_r)|->all_cards_v(top_deck_r)) or (top_deck = NOTYPE|->NOVALUE => top_deck_r = -1)) & top_deck_points_r: NAT & top_deck_points_r = top_deck_points & game_over_r: BOOL & game_over = game_over_r)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Game_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Game_r))==(btrue);
  Abstract_List_Assertions(Refinement(Game_r))==(btrue);
  Context_List_Assertions(Refinement(Game_r))==(btrue);
  List_Assertions(Refinement(Game_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Game_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Game_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Game_r))==(all_cards_t,all_cards_v,deck_r,discart_r,player_one_hand_r,player_one_points_r,player_two_hand_r,player_two_points_r,current_player_r,top_deck_r,top_deck_points_r,game_over_r:=CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY,(0..51)*{FALSE},(0..51)*{FALSE},(0..51)*{FALSE},0,(0..51)*{FALSE},0,P_ONE, -1,0,FALSE);
  Context_List_Initialisation(Refinement(Game_r))==(skip);
  List_Initialisation(Refinement(Game_r))==(all_cards_t:=CARDS_TYPES_ARRAY || all_cards_v:=CARDS_VALUES_ARRAY || deck_r:=(0..51)*{FALSE} || discart_r:=(0..51)*{FALSE} || player_one_hand_r:=(0..51)*{FALSE} || player_one_points_r:=0 || player_two_hand_r:=(0..51)*{FALSE} || player_two_points_r:=0 || current_player_r:=P_ONE || top_deck_r:= -1 || top_deck_points_r:=0 || game_over_r:=FALSE)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Game_r))==(init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play);
  List_Operations(Refinement(Game_r))==(init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Game_r),init_deck)==(?);
  List_Input(Refinement(Game_r),init_hands)==(?);
  List_Input(Refinement(Game_r),init_hands_points)==(?);
  List_Input(Refinement(Game_r),update_top_deck)==(?);
  List_Input(Refinement(Game_r),reset_deck)==(?);
  List_Input(Refinement(Game_r),player_one_play)==(?);
  List_Input(Refinement(Game_r),player_two_play)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Game_r),init_deck)==(?);
  List_Output(Refinement(Game_r),init_hands)==(?);
  List_Output(Refinement(Game_r),init_hands_points)==(?);
  List_Output(Refinement(Game_r),update_top_deck)==(?);
  List_Output(Refinement(Game_r),reset_deck)==(?);
  List_Output(Refinement(Game_r),player_one_play)==(?);
  List_Output(Refinement(Game_r),player_two_play)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Game_r),init_deck)==(init_deck);
  List_Header(Refinement(Game_r),init_hands)==(init_hands);
  List_Header(Refinement(Game_r),init_hands_points)==(init_hands_points);
  List_Header(Refinement(Game_r),update_top_deck)==(update_top_deck);
  List_Header(Refinement(Game_r),reset_deck)==(reset_deck);
  List_Header(Refinement(Game_r),player_one_play)==(player_one_play);
  List_Header(Refinement(Game_r),player_two_play)==(player_two_play)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Game_r),init_deck)==(btrue);
  List_Precondition(Refinement(Game_r),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {});
  Own_Precondition(Refinement(Game_r),init_hands)==(btrue);
  List_Precondition(Refinement(Game_r),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck));
  Own_Precondition(Refinement(Game_r),init_hands_points)==(btrue);
  List_Precondition(Refinement(Game_r),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0 & size(player_one_hand) = 3 & size(player_two_hand) = 3);
  Own_Precondition(Refinement(Game_r),update_top_deck)==(btrue);
  List_Precondition(Refinement(Game_r),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) & CARDS_POINTS(tuple_second(top_deck)): NAT & tuple_second: dom(tuple_second) +-> ran(tuple_second) & tuple_second(top_deck): dom(CARDS_POINTS) & CARDS_POINTS: dom(CARDS_POINTS) +-> ran(CARDS_POINTS));
  Own_Precondition(Refinement(Game_r),reset_deck)==(btrue);
  List_Precondition(Refinement(Game_r),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={});
  Own_Precondition(Refinement(Game_r),player_one_play)==(btrue);
  List_Precondition(Refinement(Game_r),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52));
  Own_Precondition(Refinement(Game_r),player_two_play)==(btrue);
  List_Precondition(Refinement(Game_r),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Game_r),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52) | top_deck_points_r+player_two_points_r<22 ==> (player_two_points_r:=top_deck_points_r+player_two_points_r;(player_two_points_r = 21 ==> game_over_r:=TRUE [] not(player_two_points_r = 21) ==> game_over_r:=FALSE)) [] not(top_deck_points_r+player_two_points_r<22) ==> (discart_r:=discart_r<+{top_deck_r|->TRUE};deck_r:=deck_r<+{top_deck_r|->FALSE});current_player_r:=P_ONE;top_deck_r:= -1;top_deck_points_r:=0);
  Expanded_List_Substitution(Refinement(Game_r),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52) | top_deck_points_r+player_one_points_r<22 ==> (player_one_points_r:=top_deck_points_r+player_one_points_r;(player_one_points_r = 21 ==> game_over_r:=TRUE [] not(player_one_points_r = 21) ==> game_over_r:=FALSE)) [] not(top_deck_points_r+player_one_points_r<22) ==> (discart_r:=discart_r<+{top_deck_r|->TRUE};deck_r:=deck_r<+{top_deck_r|->FALSE});current_player_r:=P_TWO;top_deck_r:= -1;top_deck_points_r:=0);
  Expanded_List_Substitution(Refinement(Game_r),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={} | deck_r:=discart_r;discart_r:=(0..51)*{FALSE});
  Expanded_List_Substitution(Refinement(Game_r),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) & CARDS_POINTS(tuple_second(top_deck)): NAT & tuple_second: dom(tuple_second) +-> ran(tuple_second) & tuple_second(top_deck): dom(CARDS_POINTS) & CARDS_POINTS: dom(CARDS_POINTS) +-> ran(CARDS_POINTS) | top_deck_r:=min(dom(deck_r|>{TRUE}));top_deck_points_r:=CARDS_POINTS(all_cards_v(min(dom(deck_r|>{TRUE})))));
  Expanded_List_Substitution(Refinement(Game_r),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0 & size(player_one_hand) = 3 & size(player_two_hand) = 3 | player_one_points_r:=CARDS_POINTS(all_cards_v(0))+CARDS_POINTS(all_cards_v(1))+CARDS_POINTS(all_cards_v(2));player_two_points_r:=CARDS_POINTS(all_cards_v(3))+CARDS_POINTS(all_cards_v(4))+CARDS_POINTS(all_cards_v(5)));
  Expanded_List_Substitution(Refinement(Game_r),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck) | deck_r:={0|->FALSE,1|->FALSE,2|->FALSE,3|->FALSE,4|->FALSE,5|->FALSE};player_one_hand_r:={0|->TRUE,1|->TRUE,2|->TRUE};player_two_hand_r:={3|->TRUE,4|->TRUE,5|->TRUE});
  Expanded_List_Substitution(Refinement(Game_r),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {} | deck_r:=(0..51)*{TRUE});
  List_Substitution(Refinement(Game_r),init_deck)==(deck_r:=(0..51)*{TRUE});
  List_Substitution(Refinement(Game_r),init_hands)==(deck_r:={0|->FALSE,1|->FALSE,2|->FALSE,3|->FALSE,4|->FALSE,5|->FALSE};player_one_hand_r:={0|->TRUE,1|->TRUE,2|->TRUE};player_two_hand_r:={3|->TRUE,4|->TRUE,5|->TRUE});
  List_Substitution(Refinement(Game_r),init_hands_points)==(player_one_points_r:=CARDS_POINTS(all_cards_v(0))+CARDS_POINTS(all_cards_v(1))+CARDS_POINTS(all_cards_v(2));player_two_points_r:=CARDS_POINTS(all_cards_v(3))+CARDS_POINTS(all_cards_v(4))+CARDS_POINTS(all_cards_v(5)));
  List_Substitution(Refinement(Game_r),update_top_deck)==(top_deck_r:=min(dom(deck_r|>{TRUE}));top_deck_points_r:=CARDS_POINTS(all_cards_v(min(dom(deck_r|>{TRUE})))));
  List_Substitution(Refinement(Game_r),reset_deck)==(deck_r:=discart_r;discart_r:=(0..51)*{FALSE});
  List_Substitution(Refinement(Game_r),player_one_play)==(IF top_deck_points_r+player_one_points_r<22 THEN player_one_points_r:=top_deck_points_r+player_one_points_r;IF player_one_points_r = 21 THEN game_over_r:=TRUE ELSE game_over_r:=FALSE END ELSE discart_r(top_deck_r):=TRUE;deck_r(top_deck_r):=FALSE END;current_player_r:=P_TWO;top_deck_r:= -1;top_deck_points_r:=0);
  List_Substitution(Refinement(Game_r),player_two_play)==(IF top_deck_points_r+player_two_points_r<22 THEN player_two_points_r:=top_deck_points_r+player_two_points_r;IF player_two_points_r = 21 THEN game_over_r:=TRUE ELSE game_over_r:=FALSE END ELSE discart_r(top_deck_r):=TRUE;deck_r(top_deck_r):=FALSE END;current_player_r:=P_ONE;top_deck_r:= -1;top_deck_points_r:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Game_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Game_r),Machine(Game_cards))==(?);
  List_Instanciated_Parameters(Refinement(Game_r),Machine(Game_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Game_r))==(btrue);
  List_Context_Constraints(Refinement(Game_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Game_r))==(?);
  Inherited_List_Constants(Refinement(Game_r))==(?);
  List_Constants(Refinement(Game_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Game_r),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Context_List_Enumerated(Refinement(Game_r))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Context_List_Defered(Refinement(Game_r))==(?);
  Context_List_Sets(Refinement(Game_r))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Valuable_Sets(Refinement(Game_r))==(?);
  Inherited_List_Enumerated(Refinement(Game_r))==(?);
  Inherited_List_Defered(Refinement(Game_r))==(?);
  Inherited_List_Sets(Refinement(Game_r))==(?);
  List_Enumerated(Refinement(Game_r))==(?);
  List_Defered(Refinement(Game_r))==(?);
  List_Sets(Refinement(Game_r))==(?);
  Set_Definition(Refinement(Game_r),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Refinement(Game_r),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Game_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Game_r))==(?);
  List_HiddenConstants(Refinement(Game_r))==(?);
  External_List_HiddenConstants(Refinement(Game_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Game_r))==(btrue);
  Context_List_Properties(Refinement(Game_r))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_first = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | ct) & tuple_second = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | cv) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CARDS_TYPES_ARRAY = {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES} & CARDS_VALUES_ARRAY = {0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE} & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Refinement(Game_r))==(btrue);
  List_Properties(Refinement(Game_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(Game_r),Machine(Game_ctx))==(?);
  Seen_Context_List_Enumerated(Refinement(Game_r))==(?);
  Seen_Context_List_Invariant(Refinement(Game_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(Game_r))==(btrue);
  Seen_Context_List_Properties(Refinement(Game_r))==(btrue);
  Seen_List_Constraints(Refinement(Game_r))==(btrue);
  Seen_List_Operations(Refinement(Game_r),Machine(Game_ctx))==(?);
  Seen_Expanded_List_Invariant(Refinement(Game_r),Machine(Game_ctx))==(btrue);
  Seen_Internal_List_Operations(Refinement(Game_r),Machine(Game_cards))==(?);
  Seen_List_Operations(Refinement(Game_r),Machine(Game_cards))==(?);
  Seen_Expanded_List_Invariant(Refinement(Game_r),Machine(Game_cards))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Game_r),init_deck)==(?);
  List_ANY_Var(Refinement(Game_r),init_hands)==(?);
  List_ANY_Var(Refinement(Game_r),init_hands_points)==(?);
  List_ANY_Var(Refinement(Game_r),update_top_deck)==(?);
  List_ANY_Var(Refinement(Game_r),reset_deck)==(?);
  List_ANY_Var(Refinement(Game_r),player_one_play)==(?);
  List_ANY_Var(Refinement(Game_r),player_two_play)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Game_r)) == (? | ? | game_over_r,top_deck_points_r,top_deck_r,current_player_r,player_two_points_r,player_two_hand_r,player_one_points_r,player_one_hand_r,discart_r,deck_r,all_cards_v,all_cards_t | ? | init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play | ? | seen(Machine(Game_cards)),seen(Machine(Game_ctx)) | ? | Game_r);
  List_Of_HiddenCst_Ids(Refinement(Game_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Game_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Game_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Game_r)) == (?: ?);
  List_Of_Ids(Machine(Game_ctx)) == (? | ? | ? | ? | ? | ? | ? | ? | Game_ctx);
  List_Of_HiddenCst_Ids(Machine(Game_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game_ctx)) == (?);
  List_Of_VisibleVar_Ids(Machine(Game_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_ctx)) == (?: ?);
  List_Of_Ids(Machine(Game_cards)) == (CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE,P_ONE,P_TWO,NOPLAYER | ? | ? | ? | ? | ? | ? | ? | Game_cards);
  List_Of_HiddenCst_Ids(Machine(Game_cards)) == (CARDS_POINTS,tuple_second,tuple_first,PLAYABLE,CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Game_cards)) == (CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY);
  List_Of_VisibleVar_Ids(Machine(Game_cards)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_cards)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Game_r)) == (Type(game_over_r) == Mvl(btype(BOOL,?,?));Type(top_deck_points_r) == Mvl(btype(INTEGER,?,?));Type(top_deck_r) == Mvl(btype(INTEGER,?,?));Type(current_player_r) == Mvl(etype(PLAYERS,?,?));Type(player_two_points_r) == Mvl(btype(INTEGER,?,?));Type(player_two_hand_r) == Mvl(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(player_one_points_r) == Mvl(btype(INTEGER,?,?));Type(player_one_hand_r) == Mvl(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(discart_r) == Mvl(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(deck_r) == Mvl(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(all_cards_v) == Mvl(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13)));Type(all_cards_t) == Mvl(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Game_r)) == (Type(player_two_play) == Cst(No_type,No_type);Type(player_one_play) == Cst(No_type,No_type);Type(reset_deck) == Cst(No_type,No_type);Type(update_top_deck) == Cst(No_type,No_type);Type(init_hands_points) == Cst(No_type,No_type);Type(init_hands) == Cst(No_type,No_type);Type(init_deck) == Cst(No_type,No_type))
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
