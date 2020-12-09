/* Jogo
 * Author: Nalbert Gabriel Melo Leal
 * Creation date: 06/10/2020
 */
MACHINE
        game
SEES Game_cards
ABSTRACT_VARIABLES
  deck , discart ,
  top_deck ,
  top_deck_points ,
  current_player ,
        player_one_hand ,
        player_one_points ,
        player_two_hand ,
        player_two_points ,
        game_over
INVARIANT
  deck : seq ( PLAYABLE ) &
//  deck : FIN(deck) &
        size ( deck ) <= 52 &

  discart : seq ( PLAYABLE ) &
//  discart : FIN(discart) &
        size ( discart ) <= 52 &

  top_deck : CARDS &
  top_deck_points : NAT &

  current_player : PLAYERS &

  player_one_hand : seq ( PLAYABLE ) &
  player_one_points : NAT &

  player_two_hand : seq ( PLAYABLE ) &
  player_two_points : NAT &

  game_over : BOOL &
  ( game_over = TRUE => player_two_points = 21 or player_one_points = 21 )
INITIALISATION
  deck := [] ||
  discart := [] ||

  top_deck := NOTYPE |-> NOVALUE ||
  top_deck_points := 0 ||

  current_player := P_ONE ||

  player_one_hand := [] ||
  player_one_points := 0 ||

  player_two_hand := [] ||
  player_two_points := 0 ||

  game_over := FALSE
OPERATIONS
  bb <-- get_game_over = bb := game_over ;

  cp <-- get_current_player = cp := current_player ;

  pp <-- get_player_one_points = pp := player_one_points ;

  pp <-- get_player_two_points = pp := player_two_points ;

        init_deck =
                PRE
                        game_over = FALSE & deck = {} &
                        discart = {} &  player_one_hand = {} &
                        player_two_hand = {}
                THEN
                        ANY new_deck
                        WHERE
                                new_deck : perm ( PLAYABLE ) & size ( new_deck ) <= 52 &
                                new_deck : FIN ( new_deck )
                        THEN
                                deck := new_deck
                        END
                END ;

        init_hands =
                PRE
                        game_over = FALSE & deck /= {} &
                        discart = {} & player_one_hand = {} &
                        player_two_hand = {} &
                        deck : seq ( ran ( deck ) ) & 3 : 0 .. size ( deck ) &
                        3 : 0 .. size ( deck \|/ 3 ) & ( deck \|/ 3 ) /|\ 3 : seq ( PLAYABLE ) &
                        deck \|/ 6 : FIN ( deck \|/ 6 ) & 6 : 0 .. size ( deck )
                THEN
                        player_one_hand := deck /|\ 3 ||
                        player_two_hand := ( deck \|/ 3 ) /|\ 3 ||
                        deck := ( deck \|/ 6 )
                END ;

        init_hands_points =
                PRE
                        game_over = FALSE & deck /= {} &
                        discart = {} & player_one_hand /= {} &
                        player_two_hand /= {} & player_one_points = 0 &
                        player_two_points = 0 & size ( player_one_hand ) = 3 &
                        size ( player_two_hand ) = 3
                THEN
                        player_one_points := CARDS_POINTS ( tuple_second ( player_one_hand ( 1 ) ) ) +
                                CARDS_POINTS ( tuple_second ( player_one_hand ( 2 ) ) ) +
                                CARDS_POINTS ( tuple_second ( player_one_hand ( 3 ) ) ) ||
                        player_two_points := CARDS_POINTS ( tuple_second ( player_two_hand ( 1 ) ) ) +
                                CARDS_POINTS ( tuple_second ( player_two_hand ( 2 ) ) ) +
                                CARDS_POINTS ( tuple_second ( player_two_hand ( 3 ) ) )
                END ;

          update_top_deck =
                    PRE
                            game_over = FALSE & deck /= {} &
                            player_one_hand /= {} &
                            player_two_hand /= {} & player_one_points > 0 &
                            player_two_points > 0 & top_deck = NOTYPE |-> NOVALUE &

                            deck : seq ( ran ( deck ) ) & tail ( deck ) : FIN ( tail ( deck ) ) &
                            CARDS_POINTS ( tuple_second ( top_deck ) ) : NAT &
                            tuple_second : dom ( tuple_second ) +-> ran ( tuple_second ) &
                            tuple_second ( top_deck ) : dom ( CARDS_POINTS ) &
                            CARDS_POINTS : dom ( CARDS_POINTS ) +-> ran ( CARDS_POINTS )
                    THEN
                              top_deck , deck := first ( deck ) , tail ( deck ) ||
                              top_deck_points := CARDS_POINTS ( tuple_second ( top_deck ) )
                    END ;

          reset_deck =
                    PRE
                      game_over = FALSE & top_deck /= ( NOTYPE |-> NOVALUE ) &
                      top_deck_points = 0 & deck = {} &
                      discart /= {}
                    THEN
                              deck := discart ||
                              discart := {}
                    END ;

////  	updete_top_deck_points =
////		PRE 
////			game_over = FALSE & deck /= {} &
////			player_one_hand /= {} &
////			player_two_hand /= {} & player_one_points > 0 &
////			player_two_points > 0 & top_deck /= (NOTYPE |-> NOVALUE) &
////			top_deck_points = 0 & 
////			top_deck : dom(tuple_second) & tuple_second : dom(tuple_second) +-> ran(tuple_second)
////		THEN  
////			IF tuple_second(top_deck) = ACE or tuple_second(top_deck) = ONE THEN
////            				top_deck_points := 1
////          			ELSIF tuple_second(top_deck) = TWO THEN
////            				top_deck_points := 2
////          			ELSIF tuple_second(top_deck) = THREE THEN
////            				top_deck_points := 3
////          			ELSIF tuple_second(top_deck) = FOUR THEN
////            				top_deck_points := 4
////          			ELSIF tuple_second(top_deck) = FIVE THEN
////            				top_deck_points := 5
////          			ELSIF tuple_second(top_deck) = SIX THEN
////            				top_deck_points := 6
////          			ELSIF tuple_second(top_deck) = SEVEN THEN
////            				top_deck_points := 7
////          			ELSIF tuple_second(top_deck) = EIGHT THEN
////            				top_deck_points := 8
////          			ELSIF tuple_second(top_deck) = NINE THEN
////            				top_deck_points := 9
////          			ELSIF (tuple_second(top_deck) = KING or tuple_second(top_deck) = JACK) or tuple_second(top_deck) = QUEEN THEN
////            				top_deck_points := 10
////			ELSE
////				top_deck_points := 1
////      			END
////	  	END;

        player_one_play =
                PRE
                        game_over = FALSE & deck /= {} &
                        player_one_hand /= {} &
                        player_two_hand /= {} & player_one_points > 0 &
                        player_two_points > 0 & top_deck /= ( NOTYPE |-> NOVALUE ) &
                        top_deck_points > 0 & current_player = P_ONE &
                        discart : seq ( ran ( discart ) ) & discart <- top_deck : seq ( PLAYABLE ) &
                        discart <- top_deck : FIN ( discart <- top_deck ) &
                        ( not ( top_deck_points + player_one_points < 22 ) => size ( discart <- top_deck ) <= 52 )
                THEN
                        current_player := P_TWO ||
                        top_deck := ( NOTYPE |-> NOVALUE ) ||
                        top_deck_points := 0 ||
                        IF top_deck_points + player_one_points < 22 THEN
                                player_one_points := top_deck_points + player_one_points ||
                                IF top_deck_points + player_one_points = 21 THEN
                                        game_over := TRUE
                                ELSE
                                        game_over := FALSE
                                END
                        ELSE
                                discart := discart <- top_deck
                        END
                END ;

        player_two_play =
                PRE
                        game_over = FALSE & deck /= {} &
                        player_one_hand /= {} &
                        player_two_hand /= {} & player_one_points > 0 &
                        player_two_points > 0 & top_deck /= ( NOTYPE |-> NOVALUE ) &
                        top_deck_points > 0 & current_player = P_TWO &
                        discart : seq ( ran ( discart ) ) & discart <- top_deck : seq ( PLAYABLE ) &
                        discart <- top_deck : FIN ( discart <- top_deck ) &
                        ( not ( top_deck_points + player_two_points < 22 ) => size ( discart <- top_deck ) <= 52 )
                THEN
                        current_player := P_ONE ||
                        top_deck := ( NOTYPE |-> NOVALUE ) ||
                        top_deck_points := 0 ||
                        IF top_deck_points + player_two_points < 22 THEN
                                player_two_points := top_deck_points + player_two_points ||
                                IF top_deck_points + player_two_points = 21 THEN
                                        game_over := TRUE
                                ELSE
                                        game_over := FALSE
                                END
                        ELSE
                                 discart := discart <- top_deck
                        END
                END
END
