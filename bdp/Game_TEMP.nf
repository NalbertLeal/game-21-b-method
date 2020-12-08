Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Game_TEMP))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Game_TEMP))==(Machine(Game_TEMP));
  Level(Machine(Game_TEMP))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Game_TEMP)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Game_TEMP))==(Game_cards)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Game_TEMP))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Game_TEMP))==(?);
  List_Includes(Machine(Game_TEMP))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Game_TEMP))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Game_TEMP))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Game_TEMP))==(?);
  Context_List_Variables(Machine(Game_TEMP))==(?);
  Abstract_List_Variables(Machine(Game_TEMP))==(?);
  Local_List_Variables(Machine(Game_TEMP))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck);
  List_Variables(Machine(Game_TEMP))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck);
  External_List_Variables(Machine(Game_TEMP))==(game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Game_TEMP))==(?);
  Abstract_List_VisibleVariables(Machine(Game_TEMP))==(?);
  External_List_VisibleVariables(Machine(Game_TEMP))==(?);
  Expanded_List_VisibleVariables(Machine(Game_TEMP))==(?);
  List_VisibleVariables(Machine(Game_TEMP))==(?);
  Internal_List_VisibleVariables(Machine(Game_TEMP))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Game_TEMP))==(btrue);
  Gluing_List_Invariant(Machine(Game_TEMP))==(btrue);
  Expanded_List_Invariant(Machine(Game_TEMP))==(btrue);
  Abstract_List_Invariant(Machine(Game_TEMP))==(btrue);
  Context_List_Invariant(Machine(Game_TEMP))==(btrue);
  List_Invariant(Machine(Game_TEMP))==(deck: seq(PLAYABLE) & deck: FIN(deck) & size(deck)<=52 & discart: seq(PLAYABLE) & discart: FIN(discart) & size(discart)<=52 & top_deck: CARDS & top_deck_points: NAT & current_player: PLAYERS & player_one_hand: seq(PLAYABLE) & player_one_points: NAT & player_two_hand: seq(PLAYABLE) & player_two_points: NAT & game_over: BOOL & (game_over = TRUE => player_two_points = 21 or player_one_points = 21))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Game_TEMP))==(btrue);
  Abstract_List_Assertions(Machine(Game_TEMP))==(btrue);
  Context_List_Assertions(Machine(Game_TEMP))==(btrue);
  List_Assertions(Machine(Game_TEMP))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Game_TEMP))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Game_TEMP))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Game_TEMP))==(deck,discart,top_deck,top_deck_points,current_player,player_one_hand,player_one_points,player_two_hand,player_two_points,game_over:=<>,<>,NOTYPE|->NOVALUE,0,P_ONE,<>,0,<>,0,FALSE);
  Context_List_Initialisation(Machine(Game_TEMP))==(skip);
  List_Initialisation(Machine(Game_TEMP))==(deck:=<> || discart:=<> || top_deck:=NOTYPE|->NOVALUE || top_deck_points:=0 || current_player:=P_ONE || player_one_hand:=<> || player_one_points:=0 || player_two_hand:=<> || player_two_points:=0 || game_over:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Game_TEMP))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Game_TEMP),Machine(Game_cards))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Game_TEMP))==(btrue);
  List_Constraints(Machine(Game_TEMP))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Game_TEMP))==(init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,updete_top_deck_points,player_one_play,player_two_play);
  List_Operations(Machine(Game_TEMP))==(init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,updete_top_deck_points,player_one_play,player_two_play)
END
&
THEORY ListInputX IS
  List_Input(Machine(Game_TEMP),init_deck)==(?);
  List_Input(Machine(Game_TEMP),init_hands)==(?);
  List_Input(Machine(Game_TEMP),init_hands_points)==(?);
  List_Input(Machine(Game_TEMP),update_top_deck)==(?);
  List_Input(Machine(Game_TEMP),reset_deck)==(?);
  List_Input(Machine(Game_TEMP),updete_top_deck_points)==(?);
  List_Input(Machine(Game_TEMP),player_one_play)==(?);
  List_Input(Machine(Game_TEMP),player_two_play)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Game_TEMP),init_deck)==(?);
  List_Output(Machine(Game_TEMP),init_hands)==(?);
  List_Output(Machine(Game_TEMP),init_hands_points)==(?);
  List_Output(Machine(Game_TEMP),update_top_deck)==(?);
  List_Output(Machine(Game_TEMP),reset_deck)==(?);
  List_Output(Machine(Game_TEMP),updete_top_deck_points)==(?);
  List_Output(Machine(Game_TEMP),player_one_play)==(?);
  List_Output(Machine(Game_TEMP),player_two_play)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Game_TEMP),init_deck)==(init_deck);
  List_Header(Machine(Game_TEMP),init_hands)==(init_hands);
  List_Header(Machine(Game_TEMP),init_hands_points)==(init_hands_points);
  List_Header(Machine(Game_TEMP),update_top_deck)==(update_top_deck);
  List_Header(Machine(Game_TEMP),reset_deck)==(reset_deck);
  List_Header(Machine(Game_TEMP),updete_top_deck_points)==(updete_top_deck_points);
  List_Header(Machine(Game_TEMP),player_one_play)==(player_one_play);
  List_Header(Machine(Game_TEMP),player_two_play)==(player_two_play)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Game_TEMP),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {});
  List_Precondition(Machine(Game_TEMP),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck));
  List_Precondition(Machine(Game_TEMP),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0);
  List_Precondition(Machine(Game_TEMP),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)));
  List_Precondition(Machine(Game_TEMP),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={});
  List_Precondition(Machine(Game_TEMP),updete_top_deck_points)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & top_deck: dom(tuple_second) & tuple_second: dom(tuple_second) +-> ran(tuple_second));
  List_Precondition(Machine(Game_TEMP),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52));
  List_Precondition(Machine(Game_TEMP),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Game_TEMP),player_two_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_TWO & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_two_points<22) => size(discart<-top_deck)<=52) | current_player,top_deck,top_deck_points:=P_ONE,NOTYPE|->NOVALUE,0 || (top_deck_points+player_two_points<22 ==> (player_two_points:=top_deck_points+player_two_points || (top_deck_points+player_two_points = 21 ==> game_over:=TRUE [] not(top_deck_points+player_two_points = 21) ==> game_over:=FALSE)) [] not(top_deck_points+player_two_points<22) ==> discart:=discart<-top_deck));
  Expanded_List_Substitution(Machine(Game_TEMP),player_one_play)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points>0 & current_player = P_ONE & discart: seq(ran(discart)) & discart<-top_deck: seq(PLAYABLE) & discart<-top_deck: FIN(discart<-top_deck) & (not(top_deck_points+player_one_points<22) => size(discart<-top_deck)<=52) | current_player,top_deck,top_deck_points:=P_TWO,NOTYPE|->NOVALUE,0 || (top_deck_points+player_one_points<22 ==> (player_one_points:=top_deck_points+player_one_points || (top_deck_points+player_one_points = 21 ==> game_over:=TRUE [] not(top_deck_points+player_one_points = 21) ==> game_over:=FALSE)) [] not(top_deck_points+player_one_points<22) ==> discart:=discart<-top_deck));
  Expanded_List_Substitution(Machine(Game_TEMP),updete_top_deck_points)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & top_deck: dom(tuple_second) & tuple_second: dom(tuple_second) +-> ran(tuple_second) | tuple_second(top_deck) = ACE or tuple_second(top_deck) = ONE ==> top_deck_points:=1 [] not(tuple_second(top_deck) = ACE or tuple_second(top_deck) = ONE) ==> (tuple_second(top_deck) = TWO ==> top_deck_points:=2 [] not(tuple_second(top_deck) = TWO) ==> (tuple_second(top_deck) = THREE ==> top_deck_points:=3 [] not(tuple_second(top_deck) = THREE) ==> (tuple_second(top_deck) = FOUR ==> top_deck_points:=4 [] not(tuple_second(top_deck) = FOUR) ==> (tuple_second(top_deck) = FIVE ==> top_deck_points:=5 [] not(tuple_second(top_deck) = FIVE) ==> (tuple_second(top_deck) = SIX ==> top_deck_points:=6 [] not(tuple_second(top_deck) = SIX) ==> (tuple_second(top_deck) = SEVEN ==> top_deck_points:=7 [] not(tuple_second(top_deck) = SEVEN) ==> (tuple_second(top_deck) = EIGHT ==> top_deck_points:=8 [] not(tuple_second(top_deck) = EIGHT) ==> (tuple_second(top_deck) = NINE ==> top_deck_points:=9 [] not(tuple_second(top_deck) = NINE) ==> (tuple_second(top_deck) = KING or tuple_second(top_deck) = JACK or tuple_second(top_deck) = QUEEN ==> top_deck_points:=10 [] not(tuple_second(top_deck) = KING or tuple_second(top_deck) = JACK or tuple_second(top_deck) = QUEEN) ==> top_deck_points:=1))))))))));
  Expanded_List_Substitution(Machine(Game_TEMP),reset_deck)==(game_over = FALSE & top_deck/=(NOTYPE|->NOVALUE) & top_deck_points = 0 & deck = {} & discart/={} | deck:=discart);
  Expanded_List_Substitution(Machine(Game_TEMP),update_top_deck)==(game_over = FALSE & deck/={} & player_one_hand/={} & player_two_hand/={} & player_one_points>0 & player_two_points>0 & top_deck = NOTYPE|->NOVALUE & deck: seq(ran(deck)) & tail(deck): FIN(tail(deck)) | top_deck,deck:=first(deck),tail(deck));
  Expanded_List_Substitution(Machine(Game_TEMP),init_hands_points)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand/={} & player_two_hand/={} & player_one_points = 0 & player_two_points = 0 | player_one_points,player_two_points:=CARDS_POINTS(tuple_second(player_one_hand(1)))+CARDS_POINTS(tuple_second(player_one_hand(2)))+CARDS_POINTS(tuple_second(player_one_hand(3))),CARDS_POINTS(tuple_second(player_two_hand(1)))+CARDS_POINTS(tuple_second(player_two_hand(2)))+CARDS_POINTS(tuple_second(player_two_hand(3))));
  Expanded_List_Substitution(Machine(Game_TEMP),init_hands)==(game_over = FALSE & deck/={} & discart = {} & player_one_hand = {} & player_two_hand = {} & deck: seq(ran(deck)) & 3: 0..size(deck) & 3: 0..size(deck\|/3) & deck\|/3/|\3: seq(PLAYABLE) & deck\|/6: FIN(deck\|/6) & 6: 0..size(deck) | player_one_hand,player_two_hand,deck:=deck/|\3,deck\|/3/|\3,deck\|/6);
  Expanded_List_Substitution(Machine(Game_TEMP),init_deck)==(game_over = FALSE & deck = {} & discart = {} & player_one_hand = {} & player_two_hand = {} | @new_deck.(new_deck: perm(PLAYABLE) & size(new_deck)<=52 & new_deck: FIN(new_deck) ==> deck:=new_deck));
  List_Substitution(Machine(Game_TEMP),init_deck)==(ANY new_deck WHERE new_deck: perm(PLAYABLE) & size(new_deck)<=52 & new_deck: FIN(new_deck) THEN deck:=new_deck END);
  List_Substitution(Machine(Game_TEMP),init_hands)==(player_one_hand:=deck/|\3 || player_two_hand:=deck\|/3/|\3 || deck:=deck\|/6);
  List_Substitution(Machine(Game_TEMP),init_hands_points)==(player_one_points:=CARDS_POINTS(tuple_second(player_one_hand(1)))+CARDS_POINTS(tuple_second(player_one_hand(2)))+CARDS_POINTS(tuple_second(player_one_hand(3))) || player_two_points:=CARDS_POINTS(tuple_second(player_two_hand(1)))+CARDS_POINTS(tuple_second(player_two_hand(2)))+CARDS_POINTS(tuple_second(player_two_hand(3))));
  List_Substitution(Machine(Game_TEMP),update_top_deck)==(top_deck,deck:=first(deck),tail(deck));
  List_Substitution(Machine(Game_TEMP),reset_deck)==(deck:=discart);
  List_Substitution(Machine(Game_TEMP),updete_top_deck_points)==(IF tuple_second(top_deck) = ACE or tuple_second(top_deck) = ONE THEN top_deck_points:=1 ELSIF tuple_second(top_deck) = TWO THEN top_deck_points:=2 ELSIF tuple_second(top_deck) = THREE THEN top_deck_points:=3 ELSIF tuple_second(top_deck) = FOUR THEN top_deck_points:=4 ELSIF tuple_second(top_deck) = FIVE THEN top_deck_points:=5 ELSIF tuple_second(top_deck) = SIX THEN top_deck_points:=6 ELSIF tuple_second(top_deck) = SEVEN THEN top_deck_points:=7 ELSIF tuple_second(top_deck) = EIGHT THEN top_deck_points:=8 ELSIF tuple_second(top_deck) = NINE THEN top_deck_points:=9 ELSIF tuple_second(top_deck) = KING or tuple_second(top_deck) = JACK or tuple_second(top_deck) = QUEEN THEN top_deck_points:=10 ELSE top_deck_points:=1 END);
  List_Substitution(Machine(Game_TEMP),player_one_play)==(current_player:=P_TWO || top_deck:=NOTYPE|->NOVALUE || top_deck_points:=0 || IF top_deck_points+player_one_points<22 THEN player_one_points:=top_deck_points+player_one_points || IF top_deck_points+player_one_points = 21 THEN game_over:=TRUE ELSE game_over:=FALSE END ELSE discart:=discart<-top_deck END);
  List_Substitution(Machine(Game_TEMP),player_two_play)==(current_player:=P_ONE || top_deck:=NOTYPE|->NOVALUE || top_deck_points:=0 || IF top_deck_points+player_two_points<22 THEN player_two_points:=top_deck_points+player_two_points || IF top_deck_points+player_two_points = 21 THEN game_over:=TRUE ELSE game_over:=FALSE END ELSE discart:=discart<-top_deck END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Game_TEMP))==(?);
  Inherited_List_Constants(Machine(Game_TEMP))==(?);
  List_Constants(Machine(Game_TEMP))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Game_TEMP),PLAYERS)==({P_ONE,P_TWO,NOPLAYER});
  Context_List_Enumerated(Machine(Game_TEMP))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  Context_List_Defered(Machine(Game_TEMP))==(?);
  Context_List_Sets(Machine(Game_TEMP))==(CARDS_TYPES,CARDS_VALUE,PLAYERS);
  List_Valuable_Sets(Machine(Game_TEMP))==(?);
  Inherited_List_Enumerated(Machine(Game_TEMP))==(?);
  Inherited_List_Defered(Machine(Game_TEMP))==(?);
  Inherited_List_Sets(Machine(Game_TEMP))==(?);
  List_Enumerated(Machine(Game_TEMP))==(?);
  List_Defered(Machine(Game_TEMP))==(?);
  List_Sets(Machine(Game_TEMP))==(?);
  Set_Definition(Machine(Game_TEMP),CARDS_VALUE)==({ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE});
  Set_Definition(Machine(Game_TEMP),CARDS_TYPES)==({CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Game_TEMP))==(?);
  Expanded_List_HiddenConstants(Machine(Game_TEMP))==(?);
  List_HiddenConstants(Machine(Game_TEMP))==(?);
  External_List_HiddenConstants(Machine(Game_TEMP))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Game_TEMP))==(btrue);
  Context_List_Properties(Machine(Game_TEMP))==(CARDS <: CARDS_TYPES*CARDS_VALUE & CARDS = CARDS_TYPES*CARDS_VALUE & CARDS: FIN(CARDS) & PLAYABLE <: (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE = (CARDS_TYPES-{NOTYPE})*(CARDS_VALUE-{NOVALUE}) & PLAYABLE: FIN(PLAYABLE) & PLAYABLE <: CARDS & card(PLAYABLE) = 52 & tuple_first = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | ct) & tuple_second = %(ct,cv).(ct: CARDS_TYPES & cv: CARDS_VALUE | cv) & CARDS_POINTS = {ACE|->1,ONE|->1,TWO|->2,THREE|->3,FOUR|->4,FIVE|->5,SIX|->6,SEVEN|->7,EIGHT|->8,NINE|->9,KING|->10,QUEEN|->10,JACK|->10} & CONCRETE_PLAYABLE_ARRAY = {0|->(CLUBS|->ONE),1|->(CLUBS|->TWO),2|->(CLUBS|->THREE),3|->(CLUBS|->FOUR),4|->(CLUBS|->FIVE),5|->(CLUBS|->SIX),6|->(CLUBS|->SEVEN),7|->(CLUBS|->EIGHT),8|->(CLUBS|->NINE),9|->(CLUBS|->KING),10|->(CLUBS|->QUEEN),11|->(CLUBS|->JACK),12|->(CLUBS|->ACE),13|->(DIAMONDS|->ONE),14|->(DIAMONDS|->TWO),15|->(DIAMONDS|->THREE),16|->(DIAMONDS|->FOUR),17|->(DIAMONDS|->FIVE),18|->(DIAMONDS|->SIX),19|->(DIAMONDS|->SEVEN),20|->(DIAMONDS|->EIGHT),21|->(DIAMONDS|->NINE),22|->(DIAMONDS|->KING),23|->(DIAMONDS|->QUEEN),24|->(DIAMONDS|->JACK),25|->(DIAMONDS|->ACE),26|->(HEARTS|->ONE),27|->(HEARTS|->TWO),28|->(HEARTS|->THREE),29|->(HEARTS|->FOUR),30|->(HEARTS|->FIVE),31|->(HEARTS|->SIX),32|->(HEARTS|->SEVEN),33|->(HEARTS|->EIGHT),34|->(HEARTS|->NINE),35|->(HEARTS|->KING),36|->(HEARTS|->QUEEN),37|->(HEARTS|->JACK),38|->(HEARTS|->ACE),39|->(SPADES|->ONE),40|->(SPADES|->TWO),41|->(SPADES|->THREE),42|->(SPADES|->FOUR),43|->(SPADES|->FIVE),44|->(SPADES|->SIX),45|->(SPADES|->SEVEN),46|->(SPADES|->EIGHT),47|->(SPADES|->NINE),48|->(SPADES|->KING),49|->(SPADES|->QUEEN),50|->(SPADES|->JACK),51|->(SPADES|->ACE)} & CONCRETE_PLAYABLE_ARRAY: 0..51 --> PLAYABLE & CARDS_TYPES: FIN(INTEGER) & not(CARDS_TYPES = {}) & CARDS_VALUE: FIN(INTEGER) & not(CARDS_VALUE = {}) & PLAYERS: FIN(INTEGER) & not(PLAYERS = {}));
  Inherited_List_Properties(Machine(Game_TEMP))==(btrue);
  List_Properties(Machine(Game_TEMP))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Game_TEMP),Machine(Game_cards))==(?);
  Seen_Context_List_Enumerated(Machine(Game_TEMP))==(?);
  Seen_Context_List_Invariant(Machine(Game_TEMP))==(btrue);
  Seen_Context_List_Assertions(Machine(Game_TEMP))==(btrue);
  Seen_Context_List_Properties(Machine(Game_TEMP))==(btrue);
  Seen_List_Constraints(Machine(Game_TEMP))==(btrue);
  Seen_List_Operations(Machine(Game_TEMP),Machine(Game_cards))==(?);
  Seen_Expanded_List_Invariant(Machine(Game_TEMP),Machine(Game_cards))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Game_TEMP),init_deck)==(Var(new_deck) == SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));
  List_ANY_Var(Machine(Game_TEMP),init_hands)==(?);
  List_ANY_Var(Machine(Game_TEMP),init_hands_points)==(?);
  List_ANY_Var(Machine(Game_TEMP),update_top_deck)==(?);
  List_ANY_Var(Machine(Game_TEMP),reset_deck)==(?);
  List_ANY_Var(Machine(Game_TEMP),updete_top_deck_points)==(?);
  List_ANY_Var(Machine(Game_TEMP),player_one_play)==(?);
  List_ANY_Var(Machine(Game_TEMP),player_two_play)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Game_TEMP)) == (? | ? | game_over,player_two_points,player_two_hand,player_one_points,player_one_hand,current_player,top_deck_points,top_deck,discart,deck | ? | init_deck,init_hands,init_hands_points,update_top_deck,reset_deck,updete_top_deck_points,player_one_play,player_two_play | ? | seen(Machine(Game_cards)) | ? | Game_TEMP);
  List_Of_HiddenCst_Ids(Machine(Game_TEMP)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game_TEMP)) == (?);
  List_Of_VisibleVar_Ids(Machine(Game_TEMP)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_TEMP)) == (?: ?);
  List_Of_Ids(Machine(Game_cards)) == (CARDS_POINTS,CONCRETE_PLAYABLE_ARRAY,CARDS_TYPES,CARDS_VALUE,PLAYERS,CLUBS,DIAMONDS,HEARTS,SPADES,NOTYPE,ONE,TWO,THREE,FOUR,FIVE,SIX,SEVEN,EIGHT,NINE,KING,QUEEN,JACK,ACE,NOVALUE,P_ONE,P_TWO,NOPLAYER | ? | ? | ? | ? | ? | ? | ? | Game_cards);
  List_Of_HiddenCst_Ids(Machine(Game_cards)) == (tuple_second,tuple_first,PLAYABLE,CARDS | ?);
  List_Of_VisibleCst_Ids(Machine(Game_cards)) == (CARDS_POINTS,CONCRETE_PLAYABLE_ARRAY);
  List_Of_VisibleVar_Ids(Machine(Game_cards)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game_cards)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Game_TEMP)) == (Type(game_over) == Mvl(btype(BOOL,?,?));Type(player_two_points) == Mvl(btype(INTEGER,?,?));Type(player_two_hand) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(player_one_points) == Mvl(btype(INTEGER,?,?));Type(player_one_hand) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(current_player) == Mvl(etype(PLAYERS,?,?));Type(top_deck_points) == Mvl(btype(INTEGER,?,?));Type(top_deck) == Mvl(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?));Type(discart) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?))));Type(deck) == Mvl(SetOf(btype(INTEGER,?,?)*(etype(CARDS_TYPES,?,?)*etype(CARDS_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Game_TEMP)) == (Type(player_two_play) == Cst(No_type,No_type);Type(player_one_play) == Cst(No_type,No_type);Type(updete_top_deck_points) == Cst(No_type,No_type);Type(reset_deck) == Cst(No_type,No_type);Type(update_top_deck) == Cst(No_type,No_type);Type(init_hands_points) == Cst(No_type,No_type);Type(init_hands) == Cst(No_type,No_type);Type(init_deck) == Cst(No_type,No_type))
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
