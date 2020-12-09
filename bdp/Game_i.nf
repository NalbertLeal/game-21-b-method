Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Game_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Game_i))==(Machine(game));
  Level(Implementation(Game_i))==(2);
  Upper_Level(Implementation(Game_i))==(Refinement(Game_r))
END
&
THEORY LoadedStructureX IS
  Implementation(Game_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Game_i))==(Game_cards)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Game_i))==(?);
  Inherited_List_Includes(Implementation(Game_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Game_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Game_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Game_i))==(?);
  Context_List_Variables(Implementation(Game_i))==(?);
  Abstract_List_Variables(Implementation(Game_i))==(game_over_r,top_deck_points_r,top_deck_r,current_player_r,player_two_points_r,player_two_hand_r,player_one_points_r,player_one_hand_r,discart_r,deck_r,all_cards_v,all_cards_t,game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck);
  Local_List_Variables(Implementation(Game_i))==(?);
  List_Variables(Implementation(Game_i))==(?);
  External_List_Variables(Implementation(Game_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Game_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Game_i))==(?);
  External_List_VisibleVariables(Implementation(Game_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Game_i))==(?);
  List_VisibleVariables(Implementation(Game_i))==(game_over_i,current_player_i,top_deck_points_i,top_deck_i,player_two_points_i,player_two_hand_i,player_one_points_i,player_one_hand_i,discart_i,deck_i,all_cards_v_i,all_cards_t_i);
  Internal_List_VisibleVariables(Implementation(Game_i))==(game_over_i,current_player_i,top_deck_points_i,top_deck_i,player_two_points_i,player_two_hand_i,player_one_points_i,player_one_hand_i,discart_i,deck_i,all_cards_v_i,all_cards_t_i)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Game_i))==(btrue);
  Expanded_List_Invariant(Implementation(Game_i))==(btrue);
  Abstract_List_Invariant(Implementation(Game_i))==(all_cards_t: 0..51 --> CARDS_TYPES & all_cards_v: 0..51 --> CARDS_VALUE & deck_r: 0..51 --> BOOL & !ii.(ii: 0..51 => deck_r(ii) = TRUE <=> (all_cards_t(ii)|->all_cards_v(ii): ran(deck))) & discart_r: 0..51 --> BOOL & !ii.(ii: 0..51 & discart_r(ii) = TRUE => all_cards_t(ii)|->all_cards_v(ii): ran(discart)) & player_one_hand_r: 0..51 --> BOOL & !ii.(ii: 0..51 & player_one_hand_r(ii) = TRUE => all_cards_t(ii)|->all_cards_v(ii): ran(player_one_hand)) & player_one_points_r: NAT & player_one_points = player_one_points_r & player_two_hand_r: 0..51 --> BOOL & !ii.(ii: 0..51 & player_two_hand_r(ii) = TRUE => all_cards_t(ii)|->all_cards_v(ii): ran(player_one_hand)) & player_two_points_r: NAT & player_two_points = player_two_points_r & current_player_r: PLAYERS & current_player = current_player_r & top_deck_r: INT & top_deck_r>= -1 & top_deck_r<=52 & ((top_deck_r>=0 => top_deck = all_cards_t(top_deck_r)|->all_cards_v(top_deck_r)) or (top_deck = NOTYPE|->NOVALUE => top_deck_r = -1)) & top_deck_points_r: NAT & top_deck_points_r = top_deck_points & game_over_r: BOOL & game_over = game_over_r & deck: seq(PLAYABLE) & size(deck)<=52 & discart: seq(PLAYABLE) & size(discart)<=52 & top_deck: CARDS & top_deck_points: NAT & current_player: PLAYERS & player_one_hand: seq(PLAYABLE) & player_one_points: NAT & player_two_hand: seq(PLAYABLE) & player_two_points: NAT & game_over: BOOL & (game_over = TRUE => player_two_points = 21 or player_one_points = 21));
  Context_List_Invariant(Implementation(Game_i))==(btrue);
  List_Invariant(Implementation(Game_i))==(all_cards_t_i: 0..51 --> CARDS_TYPES & all_cards_v_i: 0..51 --> CARDS_VALUE & deck_i: 0..51 --> BOOL & !ii.(ii: 0..51 => deck_r(ii) = TRUE <=> (deck_i(ii) = TRUE)) & discart_i: 0..51 --> BOOL & !ii.(ii: 0..51 => discart_r(ii) = TRUE <=> (discart_i(ii) = TRUE)) & player_one_hand_i: 0..51 --> BOOL & !ii.(ii: 0..51 => player_one_hand_r(ii) = TRUE <=> (player_one_hand_i(ii) = TRUE)) & player_one_points_i: NAT & player_two_points_r = player_one_points_i & player_two_hand_i: 0..51 --> BOOL & !ii.(ii: 0..51 => player_two_hand_r(ii) = TRUE <=> (player_two_hand_i(ii) = TRUE)) & player_two_points_i: NAT & player_two_points_r = player_two_points_i & current_player_i: PLAYERS & current_player_r = current_player_i & top_deck_i: INT & top_deck_r = top_deck_i & top_deck_points_i: NAT & top_deck_points_r = top_deck_points_i & game_over_i: BOOL & game_over_r = game_over_i)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Game_i))==(btrue);
  Abstract_List_Assertions(Implementation(Game_i))==(btrue);
  Context_List_Assertions(Implementation(Game_i))==(btrue);
  List_Assertions(Implementation(Game_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Game_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Game_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Game_i))==(all_cards_t_i:=CARDS_TYPES_ARRAY;all_cards_v_i:=CARDS_VALUES_ARRAY;deck_i:=(0..51)*{TRUE};discart_i:=(0..51)*{FALSE};player_one_hand_i:=(0..51)*{FALSE};(0: INT | player_one_points_i:=0);player_two_hand_i:=(0..51)*{FALSE};(0: INT | player_two_points_i:=0);(-1: INT & 0: INT & 1: INT | top_deck_i:= -1);(0: INT | top_deck_points_i:=0);current_player_i:=P_ONE;game_over_i:=FALSE);
  Context_List_Initialisation(Implementation(Game_i))==(skip);
  List_Initialisation(Implementation(Game_i))==(all_cards_t_i:=CARDS_TYPES_ARRAY;all_cards_v_i:=CARDS_VALUES_ARRAY;deck_i:=(0..51)*{TRUE};discart_i:=(0..51)*{FALSE};player_one_hand_i:=(0..51)*{FALSE};player_one_points_i:=0;player_two_hand_i:=(0..51)*{FALSE};player_two_points_i:=0;top_deck_i:= -1;top_deck_points_i:=0;current_player_i:=P_ONE;game_over_i:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Game_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Game_i),Machine(Game_cards))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Game_i))==(btrue);
  List_Context_Constraints(Implementation(Game_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Game_i))==(get_game_over,get_current_player,get_player_one_points,get_player_two_points,init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play);
  List_Operations(Implementation(Game_i))==(get_game_over,get_current_player,get_player_one_points,get_player_two_points,init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Game_i),get_game_over)==(?);
  List_Input(Implementation(Game_i),get_current_player)==(?);
  List_Input(Implementation(Game_i),get_player_one_points)==(?);
  List_Input(Implementation(Game_i),get_player_two_points)==(?);
  List_Input(Implementation(Game_i),init_deck)==(?);
  List_Input(Implementation(Game_i),init_hands)==(?);
  List_Input(Implementation(Game_i),init_hands_points)==(?);
  List_Input(Implementation(Game_i),update_top_deck)==(?);
  List_Input(Implementation(Game_i),reset_deck)==(?);
  List_Input(Implementation(Game_i),player_one_play)==(?);
  List_Input(Implementation(Game_i),player_two_play)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Game_i),get_game_over)==(bb);
  List_Output(Implementation(Game_i),get_current_player)==(cp);
  List_Output(Implementation(Game_i),get_player_one_points)==(pp);
  List_Output(Implementation(Game_i),get_player_two_points)==(pp);
  List_Output(Implementation(Game_i),init_deck)==(?);
  List_Output(Implementation(Game_i),init_hands)==(?);
  List_Output(Implementation(Game_i),init_hands_points)==(?);
  List_Output(Implementation(Game_i),update_top_deck)==(?);
  List_Output(Implementation(Game_i),reset_deck)==(?);
  List_Output(Implementation(Game_i),player_one_play)==(?);
  List_Output(Implementation(Game_i),player_two_play)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Game_i),get_game_over)==(bb <-- get_game_over);
  List_Header(Implementation(Game_i),get_current_player)==(cp <-- get_current_player);
  List_Header(Implementation(Game_i),get_player_one_points)==(pp <-- get_player_one_points);
  List_Header(Implementation(Game_i),get_player_two_points)==(pp <-- get_player_two_points);
  List_Header(Implementation(Game_i),init_deck)==(init_deck);
  List_Header(Implementation(Game_i),init_hands)==(init_hands);
  List_Header(Implementation(Game_i),init_hands_points)==(init_hands_points);
  List_Header(Implementation(Game_i),update_top_deck)==(update_top_deck);
  List_Header(Implementation(Game_i),reset_deck)==(reset_deck);
  List_Header(Implementation(Game_i),player_one_play)==(player_one_play);
  List_Header(Implementation(Game_i),player_two_play)==(player_two_play)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Game_i),get_game_over)==(btrue);
  List_Precondition(Implementation(Game_i),get_game_over)==(btrue);
  Own_Precondition(Implementation(Game_i),get_current_player)==(btrue);
  List_Precondition(Implementation(Game_i),get_current_player)==(btrue);
  Own_Precondition(Implementation(Game_i),get_player_one_points)==(btrue);
  List_Precondition(Implementation(Game_i),get_player_one_points)==(btrue);
  Own_Precondition(Implementation(Game_i),get_player_two_points)==(btrue);
  List_Precondition(Implementation(Game_i),get_player_two_points)==(btrue);
  Own_Precondition(Implementation(Game_i),init_deck)==(btrue);
  List_Precondition(Implementation(Game_i),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {});
  Own_Precondition(Implementation(Game_i),init_hands)==(btrue);
  List_Precondition(Implementation(Game_i),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck));
  Own_Precondition(Implementation(Game_i),init_hands_points)==(btrue);
  List_Precondition(Implementation(Game_i),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0 & size(player_one_hand) = 3 & size(player_two_hand) = 3);
  Own_Precondition(Implementation(Game_i),update_top_deck)==(btrue);
  List_Precondition(Implementation(Game_i),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) & CARDS_POINTS(tuple_second(top_deck)): NAT & tuple_second: dom(tuple_second) +-> ran(tuple_second) & tuple_second(top_deck): dom(CARDS_POINTS) & CARDS_POINTS: dom(CARDS_POINTS) +-> ran(CARDS_POINTS));
  Own_Precondition(Implementation(Game_i),reset_deck)==(btrue);
  List_Precondition(Implementation(Game_i),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={});
  Own_Precondition(Implementation(Game_i),player_one_play)==(btrue);
  List_Precondition(Implementation(Game_i),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52));
  Own_Precondition(Implementation(Game_i),player_two_play)==(btrue);
  List_Precondition(Implementation(Game_i),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Game_i),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52) | @value.((top_deck_points_i+player_two_points_i: INT & top_deck_points_i: INT & player_two_points_i: INT | value:=top_deck_points_i+player_two_points_i);(value<22 ==> ((top_deck_i: dom(player_two_hand_i) | player_two_hand_i:=player_two_hand_i<+{top_deck_i|->TRUE});(value: INT | player_two_points_i:=value);(player_two_points_i = 21 ==> game_over_i:=TRUE [] not(player_two_points_i = 21) ==> game_over_i:=FALSE)) [] not(value<22) ==> ((top_deck_i: dom(discart_i) | discart_i:=discart_i<+{top_deck_i|->TRUE});(top_deck_i: dom(deck_i) | deck_i:=deck_i<+{top_deck_i|->FALSE}))));current_player_i:=P_ONE;(-1: INT & 0: INT & 1: INT | top_deck_i:= -1);(0: INT | top_deck_points_i:=0));
  Expanded_List_Substitution(Implementation(Game_i),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52) | @value.((top_deck_points_i+player_one_points_i: INT & top_deck_points_i: INT & player_one_points_i: INT | value:=top_deck_points_i+player_one_points_i);(value<22 ==> ((top_deck_i: dom(player_one_hand_i) | player_one_hand_i:=player_one_hand_i<+{top_deck_i|->TRUE});(value: INT | player_one_points_i:=value);(player_one_points_i = 21 ==> game_over_i:=TRUE [] not(player_one_points_i = 21) ==> game_over_i:=FALSE)) [] not(value<22) ==> ((top_deck_i: dom(discart_i) | discart_i:=discart_i<+{top_deck_i|->TRUE});(top_deck_i: dom(deck_i) | deck_i:=deck_i<+{top_deck_i|->FALSE}))));current_player_i:=P_TWO;(-1: INT & 0: INT & 1: INT | top_deck_i:= -1);(0: INT | top_deck_points_i:=0));
  Expanded_List_Substitution(Implementation(Game_i),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={} | deck_i:=discart_i;discart_i:=(0..51)*{FALSE});
  Expanded_List_Substitution(Implementation(Game_i),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) & CARDS_POINTS(tuple_second(top_deck)): NAT & tuple_second: dom(tuple_second) +-> ran(tuple_second) & tuple_second(top_deck): dom(CARDS_POINTS) & CARDS_POINTS: dom(CARDS_POINTS) +-> ran(CARDS_POINTS) | @(ii,value).(ii:=0;WHILE ii<=51 DO (ii: dom(deck_i) | value:=deck_i(ii));(top_deck_i = -1 & value = TRUE ==> ((ii: INT | top_deck_i:=ii);(ii: dom(deck_i) | deck_i:=deck_i<+{ii|->FALSE})) [] not(top_deck_i = -1 & value = TRUE) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: NAT VARIANT 51-ii END);@value.((top_deck_i: dom(all_cards_v_i) | value:=all_cards_v_i(top_deck_i));(value = ACE or value = ONE ==> (1: INT | top_deck_points_i:=1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (2: INT | top_deck_points_i:=2) [] not(value = TWO) ==> (value = THREE ==> (3: INT | top_deck_points_i:=3) [] not(value = THREE) ==> (value = FOUR ==> (4: INT | top_deck_points_i:=4) [] not(value = FOUR) ==> (value = FIVE ==> (5: INT | top_deck_points_i:=5) [] not(value = FIVE) ==> (value = SIX ==> (6: INT | top_deck_points_i:=6) [] not(value = SIX) ==> (value = SEVEN ==> (7: INT | top_deck_points_i:=7) [] not(value = SEVEN) ==> (value = EIGHT ==> (8: INT | top_deck_points_i:=8) [] not(value = EIGHT) ==> (value = NINE ==> (9: INT | top_deck_points_i:=9) [] not(value = NINE) ==> (10: INT | top_deck_points_i:=10))))))))))));
  Expanded_List_Substitution(Implementation(Game_i),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0 & size(player_one_hand) = 3 & size(player_two_hand) = 3 | @value.((0: dom(all_cards_v_i) | value:=all_cards_v_i(0));(value = ACE or value = ONE ==> (player_one_points_i+1: INT & player_one_points_i: INT & 1: INT | player_one_points_i:=player_one_points_i+1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (player_one_points_i+2: INT & player_one_points_i: INT & 2: INT | player_one_points_i:=player_one_points_i+2) [] not(value = TWO) ==> (value = THREE ==> (player_one_points_i+3: INT & player_one_points_i: INT & 3: INT | player_one_points_i:=player_one_points_i+3) [] not(value = THREE) ==> (value = FOUR ==> (player_one_points_i+4: INT & player_one_points_i: INT & 4: INT | player_one_points_i:=player_one_points_i+4) [] not(value = FOUR) ==> (value = FIVE ==> (player_one_points_i+5: INT & player_one_points_i: INT & 5: INT | player_one_points_i:=player_one_points_i+5) [] not(value = FIVE) ==> (value = SIX ==> (player_one_points_i+6: INT & player_one_points_i: INT & 6: INT | player_one_points_i:=player_one_points_i+6) [] not(value = SIX) ==> (value = SEVEN ==> (player_one_points_i+7: INT & player_one_points_i: INT & 7: INT | player_one_points_i:=player_one_points_i+7) [] not(value = SEVEN) ==> (value = EIGHT ==> (player_one_points_i+8: INT & player_one_points_i: INT & 8: INT | player_one_points_i:=player_one_points_i+8) [] not(value = EIGHT) ==> (value = NINE ==> (player_one_points_i+9: INT & player_one_points_i: INT & 9: INT | player_one_points_i:=player_one_points_i+9) [] not(value = NINE) ==> (player_one_points_i+10: INT & player_one_points_i: INT & 10: INT | player_one_points_i:=player_one_points_i+10))))))))));(1: dom(all_cards_v_i) | value:=all_cards_v_i(1));(value = ACE or value = ONE ==> (player_one_points_i+1: INT & player_one_points_i: INT & 1: INT | player_one_points_i:=player_one_points_i+1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (player_one_points_i+2: INT & player_one_points_i: INT & 2: INT | player_one_points_i:=player_one_points_i+2) [] not(value = TWO) ==> (value = THREE ==> (player_one_points_i+3: INT & player_one_points_i: INT & 3: INT | player_one_points_i:=player_one_points_i+3) [] not(value = THREE) ==> (value = FOUR ==> (player_one_points_i+4: INT & player_one_points_i: INT & 4: INT | player_one_points_i:=player_one_points_i+4) [] not(value = FOUR) ==> (value = FIVE ==> (player_one_points_i+5: INT & player_one_points_i: INT & 5: INT | player_one_points_i:=player_one_points_i+5) [] not(value = FIVE) ==> (value = SIX ==> (player_one_points_i+6: INT & player_one_points_i: INT & 6: INT | player_one_points_i:=player_one_points_i+6) [] not(value = SIX) ==> (value = SEVEN ==> (player_one_points_i+7: INT & player_one_points_i: INT & 7: INT | player_one_points_i:=player_one_points_i+7) [] not(value = SEVEN) ==> (value = EIGHT ==> (player_one_points_i+8: INT & player_one_points_i: INT & 8: INT | player_one_points_i:=player_one_points_i+8) [] not(value = EIGHT) ==> (value = NINE ==> (player_one_points_i+9: INT & player_one_points_i: INT & 9: INT | player_one_points_i:=player_one_points_i+9) [] not(value = NINE) ==> (player_one_points_i+10: INT & player_one_points_i: INT & 10: INT | player_one_points_i:=player_one_points_i+10))))))))));(2: dom(all_cards_v_i) | value:=all_cards_v_i(2));(value = ACE or value = ONE ==> (player_one_points_i+1: INT & player_one_points_i: INT & 1: INT | player_one_points_i:=player_one_points_i+1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (player_one_points_i+2: INT & player_one_points_i: INT & 2: INT | player_one_points_i:=player_one_points_i+2) [] not(value = TWO) ==> (value = THREE ==> (player_one_points_i+3: INT & player_one_points_i: INT & 3: INT | player_one_points_i:=player_one_points_i+3) [] not(value = THREE) ==> (value = FOUR ==> (player_one_points_i+4: INT & player_one_points_i: INT & 4: INT | player_one_points_i:=player_one_points_i+4) [] not(value = FOUR) ==> (value = FIVE ==> (player_one_points_i+5: INT & player_one_points_i: INT & 5: INT | player_one_points_i:=player_one_points_i+5) [] not(value = FIVE) ==> (value = SIX ==> (player_one_points_i+6: INT & player_one_points_i: INT & 6: INT | player_one_points_i:=player_one_points_i+6) [] not(value = SIX) ==> (value = SEVEN ==> (player_one_points_i+7: INT & player_one_points_i: INT & 7: INT | player_one_points_i:=player_one_points_i+7) [] not(value = SEVEN) ==> (value = EIGHT ==> (player_one_points_i+8: INT & player_one_points_i: INT & 8: INT | player_one_points_i:=player_one_points_i+8) [] not(value = EIGHT) ==> (value = NINE ==> (player_one_points_i+9: INT & player_one_points_i: INT & 9: INT | player_one_points_i:=player_one_points_i+9) [] not(value = NINE) ==> (player_one_points_i+10: INT & player_one_points_i: INT & 10: INT | player_one_points_i:=player_one_points_i+10))))))))));(3: dom(all_cards_v_i) | value:=all_cards_v_i(3));(value = ACE or value = ONE ==> (player_two_points_i+1: INT & player_two_points_i: INT & 1: INT | player_two_points_i:=player_two_points_i+1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (player_two_points_i+2: INT & player_two_points_i: INT & 2: INT | player_two_points_i:=player_two_points_i+2) [] not(value = TWO) ==> (value = THREE ==> (player_two_points_i+3: INT & player_two_points_i: INT & 3: INT | player_two_points_i:=player_two_points_i+3) [] not(value = THREE) ==> (value = FOUR ==> (player_two_points_i+4: INT & player_two_points_i: INT & 4: INT | player_two_points_i:=player_two_points_i+4) [] not(value = FOUR) ==> (value = FIVE ==> (player_two_points_i+5: INT & player_two_points_i: INT & 5: INT | player_two_points_i:=player_two_points_i+5) [] not(value = FIVE) ==> (value = SIX ==> (player_two_points_i+6: INT & player_two_points_i: INT & 6: INT | player_two_points_i:=player_two_points_i+6) [] not(value = SIX) ==> (value = SEVEN ==> (player_two_points_i+7: INT & player_two_points_i: INT & 7: INT | player_two_points_i:=player_two_points_i+7) [] not(value = SEVEN) ==> (value = EIGHT ==> (player_two_points_i+8: INT & player_two_points_i: INT & 8: INT | player_two_points_i:=player_two_points_i+8) [] not(value = EIGHT) ==> (value = NINE ==> (player_two_points_i+9: INT & player_two_points_i: INT & 9: INT | player_two_points_i:=player_two_points_i+9) [] not(value = NINE) ==> (player_two_points_i+10: INT & player_two_points_i: INT & 10: INT | player_two_points_i:=player_two_points_i+10))))))))));(4: dom(all_cards_v_i) | value:=all_cards_v_i(4));(value = ACE or value = ONE ==> (player_two_points_i+1: INT & player_two_points_i: INT & 1: INT | player_two_points_i:=player_two_points_i+1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (player_two_points_i+2: INT & player_two_points_i: INT & 2: INT | player_two_points_i:=player_two_points_i+2) [] not(value = TWO) ==> (value = THREE ==> (player_two_points_i+3: INT & player_two_points_i: INT & 3: INT | player_two_points_i:=player_two_points_i+3) [] not(value = THREE) ==> (value = FOUR ==> (player_two_points_i+4: INT & player_two_points_i: INT & 4: INT | player_two_points_i:=player_two_points_i+4) [] not(value = FOUR) ==> (value = FIVE ==> (player_two_points_i+5: INT & player_two_points_i: INT & 5: INT | player_two_points_i:=player_two_points_i+5) [] not(value = FIVE) ==> (value = SIX ==> (player_two_points_i+6: INT & player_two_points_i: INT & 6: INT | player_two_points_i:=player_two_points_i+6) [] not(value = SIX) ==> (value = SEVEN ==> (player_two_points_i+7: INT & player_two_points_i: INT & 7: INT | player_two_points_i:=player_two_points_i+7) [] not(value = SEVEN) ==> (value = EIGHT ==> (player_two_points_i+8: INT & player_two_points_i: INT & 8: INT | player_two_points_i:=player_two_points_i+8) [] not(value = EIGHT) ==> (value = NINE ==> (player_two_points_i+9: INT & player_two_points_i: INT & 9: INT | player_two_points_i:=player_two_points_i+9) [] not(value = NINE) ==> (player_two_points_i+10: INT & player_two_points_i: INT & 10: INT | player_two_points_i:=player_two_points_i+10))))))))));(5: dom(all_cards_v_i) | value:=all_cards_v_i(5));(value = ACE or value = ONE ==> (player_two_points_i+1: INT & player_two_points_i: INT & 1: INT | player_two_points_i:=player_two_points_i+1) [] not(value = ACE or value = ONE) ==> (value = TWO ==> (player_two_points_i+2: INT & player_two_points_i: INT & 2: INT | player_two_points_i:=player_two_points_i+2) [] not(value = TWO) ==> (value = THREE ==> (player_two_points_i+3: INT & player_two_points_i: INT & 3: INT | player_two_points_i:=player_two_points_i+3) [] not(value = THREE) ==> (value = FOUR ==> (player_two_points_i+4: INT & player_two_points_i: INT & 4: INT | player_two_points_i:=player_two_points_i+4) [] not(value = FOUR) ==> (value = FIVE ==> (player_two_points_i+5: INT & player_two_points_i: INT & 5: INT | player_two_points_i:=player_two_points_i+5) [] not(value = FIVE) ==> (value = SIX ==> (player_two_points_i+6: INT & player_two_points_i: INT & 6: INT | player_two_points_i:=player_two_points_i+6) [] not(value = SIX) ==> (value = SEVEN ==> (player_two_points_i+7: INT & player_two_points_i: INT & 7: INT | player_two_points_i:=player_two_points_i+7) [] not(value = SEVEN) ==> (value = EIGHT ==> (player_two_points_i+8: INT & player_two_points_i: INT & 8: INT | player_two_points_i:=player_two_points_i+8) [] not(value = EIGHT) ==> (value = NINE ==> (player_two_points_i+9: INT & player_two_points_i: INT & 9: INT | player_two_points_i:=player_two_points_i+9) [] not(value = NINE) ==> (player_two_points_i+10: INT & player_two_points_i: INT & 10: INT | player_two_points_i:=player_two_points_i+10))))))))))));
  Expanded_List_Substitution(Implementation(Game_i),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck) | (0: dom(deck_i) | deck_i:=deck_i<+{0|->FALSE});(1: dom(deck_i) | deck_i:=deck_i<+{1|->FALSE});(2: dom(deck_i) | deck_i:=deck_i<+{2|->FALSE});(3: dom(deck_i) | deck_i:=deck_i<+{3|->FALSE});(4: dom(deck_i) | deck_i:=deck_i<+{4|->FALSE});(5: dom(deck_i) | deck_i:=deck_i<+{5|->FALSE});(0: dom(player_one_hand_i) | player_one_hand_i:=player_one_hand_i<+{0|->TRUE});(1: dom(player_one_hand_i) | player_one_hand_i:=player_one_hand_i<+{1|->TRUE});(2: dom(player_one_hand_i) | player_one_hand_i:=player_one_hand_i<+{2|->TRUE});(3: dom(player_two_hand_i) | player_two_hand_i:=player_two_hand_i<+{3|->TRUE});(4: dom(player_two_hand_i) | player_two_hand_i:=player_two_hand_i<+{4|->TRUE});(5: dom(player_two_hand_i) | player_two_hand_i:=player_two_hand_i<+{5|->TRUE}));
  Expanded_List_Substitution(Implementation(Game_i),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {} | deck_i:=(0..51)*{TRUE});
  Expanded_List_Substitution(Implementation(Game_i),get_player_two_points)==(btrue & player_two_points_i: INT | pp:=player_two_points_i);
  Expanded_List_Substitution(Implementation(Game_i),get_player_one_points)==(btrue & player_one_points_i: INT | pp:=player_one_points_i);
  Expanded_List_Substitution(Implementation(Game_i),get_current_player)==(btrue | cp:=current_player_i);
  Expanded_List_Substitution(Implementation(Game_i),get_game_over)==(btrue | bb:=game_over_i);
  List_Substitution(Implementation(Game_i),get_game_over)==(bb:=game_over_i);
  List_Substitution(Implementation(Game_i),get_current_player)==(cp:=current_player_i);
  List_Substitution(Implementation(Game_i),get_player_one_points)==(pp:=player_one_points_i);
  List_Substitution(Implementation(Game_i),get_player_two_points)==(pp:=player_two_points_i);
  List_Substitution(Implementation(Game_i),init_deck)==(deck_i:=(0..51)*{TRUE});
  List_Substitution(Implementation(Game_i),init_hands)==(deck_i(0):=FALSE;deck_i(1):=FALSE;deck_i(2):=FALSE;deck_i(3):=FALSE;deck_i(4):=FALSE;deck_i(5):=FALSE;player_one_hand_i(0):=TRUE;player_one_hand_i(1):=TRUE;player_one_hand_i(2):=TRUE;player_two_hand_i(3):=TRUE;player_two_hand_i(4):=TRUE;player_two_hand_i(5):=TRUE);
  List_Substitution(Implementation(Game_i),init_hands_points)==(VAR value IN value:=all_cards_v_i(0);IF value = ACE or value = ONE THEN player_one_points_i:=player_one_points_i+1 ELSIF value = TWO THEN player_one_points_i:=player_one_points_i+2 ELSIF value = THREE THEN player_one_points_i:=player_one_points_i+3 ELSIF value = FOUR THEN player_one_points_i:=player_one_points_i+4 ELSIF value = FIVE THEN player_one_points_i:=player_one_points_i+5 ELSIF value = SIX THEN player_one_points_i:=player_one_points_i+6 ELSIF value = SEVEN THEN player_one_points_i:=player_one_points_i+7 ELSIF value = EIGHT THEN player_one_points_i:=player_one_points_i+8 ELSIF value = NINE THEN player_one_points_i:=player_one_points_i+9 ELSE player_one_points_i:=player_one_points_i+10 END;value:=all_cards_v_i(1);IF value = ACE or value = ONE THEN player_one_points_i:=player_one_points_i+1 ELSIF value = TWO THEN player_one_points_i:=player_one_points_i+2 ELSIF value = THREE THEN player_one_points_i:=player_one_points_i+3 ELSIF value = FOUR THEN player_one_points_i:=player_one_points_i+4 ELSIF value = FIVE THEN player_one_points_i:=player_one_points_i+5 ELSIF value = SIX THEN player_one_points_i:=player_one_points_i+6 ELSIF value = SEVEN THEN player_one_points_i:=player_one_points_i+7 ELSIF value = EIGHT THEN player_one_points_i:=player_one_points_i+8 ELSIF value = NINE THEN player_one_points_i:=player_one_points_i+9 ELSE player_one_points_i:=player_one_points_i+10 END;value:=all_cards_v_i(2);IF value = ACE or value = ONE THEN player_one_points_i:=player_one_points_i+1 ELSIF value = TWO THEN player_one_points_i:=player_one_points_i+2 ELSIF value = THREE THEN player_one_points_i:=player_one_points_i+3 ELSIF value = FOUR THEN player_one_points_i:=player_one_points_i+4 ELSIF value = FIVE THEN player_one_points_i:=player_one_points_i+5 ELSIF value = SIX THEN player_one_points_i:=player_one_points_i+6 ELSIF value = SEVEN THEN player_one_points_i:=player_one_points_i+7 ELSIF value = EIGHT THEN player_one_points_i:=player_one_points_i+8 ELSIF value = NINE THEN player_one_points_i:=player_one_points_i+9 ELSE player_one_points_i:=player_one_points_i+10 END;value:=all_cards_v_i(3);IF value = ACE or value = ONE THEN player_two_points_i:=player_two_points_i+1 ELSIF value = TWO THEN player_two_points_i:=player_two_points_i+2 ELSIF value = THREE THEN player_two_points_i:=player_two_points_i+3 ELSIF value = FOUR THEN player_two_points_i:=player_two_points_i+4 ELSIF value = FIVE THEN player_two_points_i:=player_two_points_i+5 ELSIF value = SIX THEN player_two_points_i:=player_two_points_i+6 ELSIF value = SEVEN THEN player_two_points_i:=player_two_points_i+7 ELSIF value = EIGHT THEN player_two_points_i:=player_two_points_i+8 ELSIF value = NINE THEN player_two_points_i:=player_two_points_i+9 ELSE player_two_points_i:=player_two_points_i+10 END;value:=all_cards_v_i(4);IF value = ACE or value = ONE THEN player_two_points_i:=player_two_points_i+1 ELSIF value = TWO THEN player_two_points_i:=player_two_points_i+2 ELSIF value = THREE THEN player_two_points_i:=player_two_points_i+3 ELSIF value = FOUR THEN player_two_points_i:=player_two_points_i+4 ELSIF value = FIVE THEN player_two_points_i:=player_two_points_i+5 ELSIF value = SIX THEN player_two_points_i:=player_two_points_i+6 ELSIF value = SEVEN THEN player_two_points_i:=player_two_points_i+7 ELSIF value = EIGHT THEN player_two_points_i:=player_two_points_i+8 ELSIF value = NINE THEN player_two_points_i:=player_two_points_i+9 ELSE player_two_points_i:=player_two_points_i+10 END;value:=all_cards_v_i(5);IF value = ACE or value = ONE THEN player_two_points_i:=player_two_points_i+1 ELSIF value = TWO THEN player_two_points_i:=player_two_points_i+2 ELSIF value = THREE THEN player_two_points_i:=player_two_points_i+3 ELSIF value = FOUR THEN player_two_points_i:=player_two_points_i+4 ELSIF value = FIVE THEN player_two_points_i:=player_two_points_i+5 ELSIF value = SIX THEN player_two_points_i:=player_two_points_i+6 ELSIF value = SEVEN THEN player_two_points_i:=player_two_points_i+7 ELSIF value = EIGHT THEN player_two_points_i:=player_two_points_i+8 ELSIF value = NINE THEN player_two_points_i:=player_two_points_i+9 ELSE player_two_points_i:=player_two_points_i+10 END END);
  List_Substitution(Implementation(Game_i),update_top_deck)==(VAR ii,value IN ii:=0;WHILE ii<=51 DO value:=deck_i(ii);IF top_deck_i = -1 & value = TRUE THEN top_deck_i:=ii;deck_i(ii):=FALSE END;ii:=ii+1 INVARIANT ii: NAT VARIANT 51-ii END END;VAR value IN value:=all_cards_v_i(top_deck_i);IF value = ACE or value = ONE THEN top_deck_points_i:=1 ELSIF value = TWO THEN top_deck_points_i:=2 ELSIF value = THREE THEN top_deck_points_i:=3 ELSIF value = FOUR THEN top_deck_points_i:=4 ELSIF value = FIVE THEN top_deck_points_i:=5 ELSIF value = SIX THEN top_deck_points_i:=6 ELSIF value = SEVEN THEN top_deck_points_i:=7 ELSIF value = EIGHT THEN top_deck_points_i:=8 ELSIF value = NINE THEN top_deck_points_i:=9 ELSE top_deck_points_i:=10 END END);
  List_Substitution(Implementation(Game_i),reset_deck)==(deck_i:=discart_i;discart_i:=(0..51)*{FALSE});
  List_Substitution(Implementation(Game_i),player_one_play)==(VAR value IN value:=top_deck_points_i+player_one_points_i;IF value<22 THEN player_one_hand_i(top_deck_i):=TRUE;player_one_points_i:=value;IF player_one_points_i = 21 THEN game_over_i:=TRUE ELSE game_over_i:=FALSE END ELSE discart_i(top_deck_i):=TRUE;deck_i(top_deck_i):=FALSE END END;current_player_i:=P_TWO;top_deck_i:= -1;top_deck_points_i:=0);
  List_Substitution(Implementation(Game_i),player_two_play)==(VAR value IN value:=top_deck_points_i+player_two_points_i;IF value<22 THEN player_two_hand_i(top_deck_i):=TRUE;player_two_points_i:=value;IF player_two_points_i = 21 THEN game_over_i:=TRUE ELSE game_over_i:=FALSE END ELSE discart_i(top_deck_i):=TRUE;deck_i(top_deck_i):=FALSE END END;current_player_i:=P_ONE;top_deck_i:= -1;top_deck_points_i:=0)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Game_i))==(?);
  Inherited_List_Constants(Implementation(Game_i))==(?);
  List_Constants(Implementation(Game_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Game_i),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Context_List_Enumerated(Implementation(Game_i))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Context_List_Defered(Implementation(Game_i))==(?);
  Context_List_Sets(Implementation(Game_i))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Own_Enumerated(Implementation(Game_i))==(?);
  List_Valuable_Sets(Implementation(Game_i))==(?);
  Inherited_List_Enumerated(Implementation(Game_i))==(?);
  Inherited_List_Defered(Implementation(Game_i))==(?);
  Inherited_List_Sets(Implementation(Game_i))==(?);
  List_Enumerated(Implementation(Game_i))==(?);
  List_Defered(Implementation(Game_i))==(?);
  List_Sets(Implementation(Game_i))==(?);
  Set_Definition(Implementation(Game_i),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Implementation(Game_i),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Game_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Game_i))==(?);
  List_HiddenConstants(Implementation(Game_i))==(?);
  External_List_HiddenConstants(Implementation(Game_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Game_i))==(btrue);
  Context_List_Properties(Implementation(Game_i))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_first = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | ct) & tuple_second = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | cv) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CARDS_TYPES_ARRAY = {0|->CLUBS,1|->CLUBS,2|->CLUBS,3|->CLUBS,4|->CLUBS,5|->CLUBS,6|->CLUBS,7|->CLUBS,8|->CLUBS,9|->CLUBS,10|->CLUBS,11|->CLUBS,12|->CLUBS,13|->DIAMONDS,14|->DIAMONDS,15|->DIAMONDS,16|->DIAMONDS,17|->DIAMONDS,18|->DIAMONDS,19|->DIAMONDS,20|->DIAMONDS,21|->DIAMONDS,22|->DIAMONDS,23|->DIAMONDS,24|->DIAMONDS,25|->DIAMONDS,26|->HEARTS,27|->HEARTS,28|->HEARTS,29|->HEARTS,30|->HEARTS,31|->HEARTS,32|->HEARTS,33|->HEARTS,34|->HEARTS,35|->HEARTS,36|->HEARTS,37|->HEARTS,38|->HEARTS,39|->SPADES,40|->SPADES,41|->SPADES,42|->SPADES,43|->SPADES,44|->SPADES,45|->SPADES,46|->SPADES,47|->SPADES,48|->SPADES,49|->SPADES,50|->SPADES,51|->SPADES} & CARDS_VALUES_ARRAY = {0|->ONE,1|->TWO,2|->THREE,3|->FOUR,4|->FIVE,5|->SIX,6|->SEVEN,7|->EIGHT,8|->NINE,9|->KING,10|->QUEEN,11|->JACK,12|->ACE,13|->ONE,14|->TWO,15|->THREE,16|->FOUR,17|->FIVE,18|->SIX,19|->SEVEN,20|->EIGHT,21|->NINE,22|->KING,23|->QUEEN,24|->JACK,25|->ACE,26|->ONE,27|->TWO,28|->THREE,29|->FOUR,30|->FIVE,31|->SIX,32|->SEVEN,33|->EIGHT,34|->NINE,35|->KING,36|->QUEEN,37|->JACK,38|->ACE,39|->ONE,40|->TWO,41|->THREE,42|->FOUR,43|->FIVE,44|->SIX,45|->SEVEN,46|->EIGHT,47|->NINE,48|->KING,49|->QUEEN,50|->JACK,51|->ACE} & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Implementation(Game_i))==(btrue);
  List_Properties(Implementation(Game_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Game_i))==(aa: aa);
  List_Values(Implementation(Game_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Game_i),Machine(Game_cards))==(?);
  Seen_Context_List_Enumerated(Implementation(Game_i))==(?);
  Seen_Context_List_Invariant(Implementation(Game_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Game_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Game_i))==(btrue);
  Seen_List_Constraints(Implementation(Game_i))==(btrue);
  Seen_List_Operations(Implementation(Game_i),Machine(Game_cards))==(?);
  Seen_Expanded_List_Invariant(Implementation(Game_i),Machine(Game_cards))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Game_i))==(Type(all_cards_t_i) == Mvv(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4)));Type(all_cards_v_i) == Mvv(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13)));Type(deck_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(discart_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(player_one_hand_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(player_one_points_i) == Mvv(btype(INTEGER,?,?));Type(player_two_hand_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(player_two_points_i) == Mvv(btype(INTEGER,?,?));Type(top_deck_i) == Mvv(btype(INTEGER,?,?));Type(top_deck_points_i) == Mvv(btype(INTEGER,?,?));Type(current_player_i) == Mvv(etype(PLAYERS,?,?));Type(game_over_i) == Mvv(btype(BOOL,?,?)));
  Operations(Implementation(Game_i))==(Type(player_two_play) == Cst(No_type,No_type);Type(player_one_play) == Cst(No_type,No_type);Type(reset_deck) == Cst(No_type,No_type);Type(update_top_deck) == Cst(No_type,No_type);Type(init_hands_points) == Cst(No_type,No_type);Type(init_hands) == Cst(No_type,No_type);Type(init_deck) == Cst(No_type,No_type);Type(get_player_two_points) == Cst(btype(INTEGER,?,?),No_type);Type(get_player_one_points) == Cst(btype(INTEGER,?,?),No_type);Type(get_current_player) == Cst(etype(PLAYERS,?,?),No_type);Type(get_game_over) == Cst(btype(BOOL,?,?),No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Game_i),Machine(Game_cards))==(CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY);
  List_Constants_Env(Implementation(Game_i),Machine(Game_cards))==(Type(CLUBS) == Cst(etype(CARDS_TYPES,0,4));Type(DIAMONDS) == Cst(etype(CARDS_TYPES,0,4));Type(HEARTS) == Cst(etype(CARDS_TYPES,0,4));Type(SPADES) == Cst(etype(CARDS_TYPES,0,4));Type(NOTYPE) == Cst(etype(CARDS_TYPES,0,4));Type(ONE) == Cst(etype(CARDS_VALUE,0,13));Type(TWO) == Cst(etype(CARDS_VALUE,0,13));Type(THREE) == Cst(etype(CARDS_VALUE,0,13));Type(FOUR) == Cst(etype(CARDS_VALUE,0,13));Type(FIVE) == Cst(etype(CARDS_VALUE,0,13));Type(SIX) == Cst(etype(CARDS_VALUE,0,13));Type(SEVEN) == Cst(etype(CARDS_VALUE,0,13));Type(EIGHT) == Cst(etype(CARDS_VALUE,0,13));Type(NINE) == Cst(etype(CARDS_VALUE,0,13));Type(KING) == Cst(etype(CARDS_VALUE,0,13));Type(QUEEN) == Cst(etype(CARDS_VALUE,0,13));Type(JACK) == Cst(etype(CARDS_VALUE,0,13));Type(ACE) == Cst(etype(CARDS_VALUE,0,13));Type(NOVALUE) == Cst(etype(CARDS_VALUE,0,13));Type(P_ONE) == Cst(etype(PLAYERS,0,2));Type(P_TWO) == Cst(etype(PLAYERS,0,2));Type(NOPLAYER) == Cst(etype(PLAYERS,0,2));Type(CARDS_TYPES_ARRAY) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4)));Type(CARDS_VALUES_ARRAY) == Cst(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13))));
  Enumerate_Definition(Implementation(Game_i),Machine(Game_cards),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Enumerate_Definition(Implementation(Game_i),Machine(Game_cards),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Enumerate_Definition(Implementation(Game_i),Machine(Game_cards),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Game_i)) == (? | ? | ? | ? | get_game_over,get_current_player,get_player_one_points,get_player_two_points,init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,player_one_play,player_two_play | ? | seen(Machine(Game_cards)) | ? | Game_i);
  List_Of_HiddenCst_Ids(Implementation(Game_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Game_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Game_i)) == (game_over_i,current_player_i,top_deck_points_i,top_deck_i,player_two_points_i,player_two_hand_i,player_one_points_i,player_one_hand_i,discart_i,deck_i,all_cards_v_i,all_cards_t_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Game_i)) == (?: ?);
  List_Of_Ids(Machine(Game_cards)) == (CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE,P_ONE,P_TWO,NOPLAYER | ? | ? | ? | ? | ? | ? | ? | Game_cards);
  List_Of_HiddenCst_Ids(Machine(Game_cards)) == (CARDS_POINTS,tuple_second,tuple_first,PLAYABLE,CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Game_cards)) == (CARDS_TYPES_ARRAY,CARDS_VALUES_ARRAY);
  List_Of_VisibleVar_Ids(Machine(Game_cards)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_cards)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Game_i)) == (Type(game_over_i) == Mvv(btype(BOOL,?,?));Type(current_player_i) == Mvv(etype(PLAYERS,?,?));Type(top_deck_points_i) == Mvv(btype(INTEGER,?,?));Type(top_deck_i) == Mvv(btype(INTEGER,?,?));Type(player_two_points_i) == Mvv(btype(INTEGER,?,?));Type(player_two_hand_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(player_one_points_i) == Mvv(btype(INTEGER,?,?));Type(player_one_hand_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(discart_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(deck_i) == Mvv(SetOf(btype(INTEGER,0,51)*btype(BOOL,0,1)));Type(all_cards_v_i) == Mvv(SetOf(btype(INTEGER,0,51)*etype(CARDS_VALUE,0,13)));Type(all_cards_t_i) == Mvv(SetOf(btype(INTEGER,0,51)*etype(CARDS_TYPES,0,4))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Game_i),init_hands_points, 1) == (Type(value) == Lvl(etype(CARDS_VALUE,?,?)));
  Variables_Loc(Implementation(Game_i),update_top_deck, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(value) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Game_i),update_top_deck, 2) == (Type(value) == Lvl(etype(CARDS_VALUE,?,?)));
  Variables_Loc(Implementation(Game_i),player_one_play, 1) == (Type(value) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Game_i),player_two_play, 1) == (Type(value) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Game_i))==(?)
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
  TypingPredicate(Implementation(Game_i))==(all_cards_t_i: POW(INTEGER*CARDS_TYPES) & all_cards_v_i: POW(INTEGER*CARDS_VALUE) & deck_i: POW(INTEGER*BOOL) & discart_i: POW(INTEGER*BOOL) & player_one_hand_i: POW(INTEGER*BOOL) & player_one_points_i: INTEGER & player_two_hand_i: POW(INTEGER*BOOL) & player_two_points_i: INTEGER & top_deck_i: INTEGER & top_deck_points_i: INTEGER & current_player_i: PLAYERS & game_over_i: BOOL)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
