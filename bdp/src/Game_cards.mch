﻿/* Game_cards
 * Author: Nalbert Gabriel Melo Leal
 * Creation date: 06/12/2020
 */
MACHINE
  Game_cards
SETS
        CARDS_TYPES = { CLUBS , DIAMONDS , HEARTS , SPADES , NOTYPE } ;
        CARDS_VALUE = { ONE , TWO , THREE , FOUR , FIVE , SIX , SEVEN , EIGHT , NINE , KING , QUEEN , JACK , ACE , NOVALUE } ;
        PLAYERS = { P_ONE , P_TWO , NOPLAYER }
ABSTRACT_CONSTANTS
        CARDS ,
        PLAYABLE ,
        tuple_first ,
        tuple_second
CONCRETE_CONSTANTS
        CARDS_POINTS
PROPERTIES
        CARDS <: CARDS_TYPES * CARDS_VALUE &
        CARDS = CARDS_TYPES * CARDS_VALUE &
        CARDS : FIN ( CARDS ) &

        PLAYABLE <: ( CARDS_TYPES - { NOTYPE } ) * ( CARDS_VALUE - { NOVALUE } ) &
        PLAYABLE = ( CARDS_TYPES - { NOTYPE } ) * ( CARDS_VALUE - { NOVALUE } ) &
        PLAYABLE : FIN ( PLAYABLE ) &
        PLAYABLE <: CARDS &
        card ( PLAYABLE ) = 52 &

  tuple_first = % ( ct , vt ) . ( ct : CARDS_TYPES & vt : CARDS_VALUE | ct ) &
  tuple_second = % ( ct , vt ) . ( ct : CARDS_TYPES & vt : CARDS_VALUE | vt ) &

        CARDS_POINTS = {
          ACE |-> 1 , ONE |-> 1 , TWO |-> 2 ,
          THREE |-> 3 , FOUR |-> 4 , FIVE |-> 5 ,
          SIX |-> 6 , SEVEN |-> 7 , EIGHT |-> 8 ,
          NINE |-> 9 , KING |-> 10 , QUEEN |-> 10 , JACK |-> 10
        }
END