/* Game_cards
 * Author: Nalbert Gabriel Melo Leal
 * Creation date: 06/12/2020
 */
MACHINE
  Game_cards
SETS
	CARDS_TYPES = { CLUBS, DIAMONDS, HEARTS, SPADES, NOTYPE };
	CARDS_VALUE = { ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, KING, QUEEN, JACK, ACE, NOVALUE };
	PLAYERS = { P_ONE, P_TWO, NOPLAYER }
ABSTRACT_CONSTANTS
	CARDS,
	PLAYABLE,
	tuple_first,
	tuple_second,
	CARDS_POINTS
CONCRETE_CONSTANTS
//	CONCRETE_PLAYABLE_ARRAY,
	CARDS_TYPES_ARRAY,
	CARDS_VALUES_ARRAY
PROPERTIES
	CARDS <: CARDS_TYPES*CARDS_VALUE &
	CARDS = CARDS_TYPES*CARDS_VALUE &
	CARDS : FIN(CARDS) &
	
	PLAYABLE <: (CARDS_TYPES - {NOTYPE})*(CARDS_VALUE - {NOVALUE}) &
	PLAYABLE = (CARDS_TYPES - {NOTYPE})*(CARDS_VALUE - {NOVALUE})  &
	PLAYABLE : FIN(PLAYABLE) &
	PLAYABLE <: CARDS &
	card(PLAYABLE) = 52 &
	
  tuple_first = % (ct, cv) . (ct : CARDS_TYPES & cv : CARDS_VALUE | ct) &
  tuple_second = % (ct, cv) . (ct : CARDS_TYPES & cv : CARDS_VALUE | cv) &

	CARDS_POINTS = {
	  ACE |-> 1, ONE |-> 1, TWO |-> 2,
	  THREE |-> 3, FOUR |-> 4, FIVE |-> 5,
	  SIX |-> 6, SEVEN |-> 7, EIGHT |-> 8,
	  NINE |-> 9,  KING |-> 10, QUEEN |-> 10, JACK |-> 10
	} &
	
  CARDS_TYPES_ARRAY = {
      0 |-> CLUBS, 1 |-> CLUBS, 2 |-> CLUBS, 3 |-> CLUBS, 4 |-> CLUBS, 5 |-> CLUBS, 
      6 |-> CLUBS, 7 |-> CLUBS, 8 |-> CLUBS, 9 |-> CLUBS, 10 |-> CLUBS, 11 |-> CLUBS, 
      12 |-> CLUBS,
      13 |-> DIAMONDS, 14 |-> DIAMONDS, 15 |-> DIAMONDS, 16 |-> DIAMONDS, 17 |-> DIAMONDS, 18 |-> DIAMONDS, 
      19 |-> DIAMONDS, 20 |-> DIAMONDS, 21 |-> DIAMONDS, 22 |-> DIAMONDS, 23 |-> DIAMONDS, 24 |-> DIAMONDS, 
      25 |-> DIAMONDS,
      26 |-> HEARTS, 27 |-> HEARTS, 28 |-> HEARTS, 29 |-> HEARTS, 30 |-> HEARTS, 31 |-> HEARTS, 
      32 |-> HEARTS, 33 |-> HEARTS, 34 |-> HEARTS, 35 |-> HEARTS, 36 |-> HEARTS, 37 |-> HEARTS, 
      38 |-> HEARTS,
      39 |-> SPADES, 40 |-> SPADES, 41 |-> SPADES, 42 |-> SPADES, 43 |-> SPADES, 44 |-> SPADES, 
      45 |-> SPADES, 46 |-> SPADES, 47 |-> SPADES, 48 |-> SPADES, 49 |-> SPADES, 50 |-> SPADES, 
      51 |-> SPADES
  } &
  
  CARDS_VALUES_ARRAY = {
      0 |-> ONE, 1 |-> TWO, 2 |-> THREE, 3 |-> FOUR, 4 |-> FIVE, 5 |-> SIX, 
      6 |-> SEVEN, 7 |-> EIGHT, 8 |-> NINE, 9 |-> KING, 10 |-> QUEEN, 11 |-> JACK, 
      12 |-> ACE,
      13 |-> ONE, 14 |-> TWO, 15 |-> THREE, 16 |-> FOUR, 17 |-> FIVE, 18 |-> SIX, 
      19 |-> SEVEN, 20 |-> EIGHT, 21 |-> NINE, 22 |-> KING, 23 |-> QUEEN, 24 |-> JACK, 
      25 |-> ACE,
      26 |-> ONE, 27 |-> TWO, 28 |-> THREE, 29 |-> FOUR, 30 |-> FIVE, 31 |-> SIX, 
      32 |-> SEVEN, 33 |-> EIGHT, 34 |-> NINE, 35 |-> KING, 36 |-> QUEEN, 37 |-> JACK, 
      38 |-> ACE,
      39 |-> ONE, 40 |-> TWO, 41 |-> THREE, 42 |-> FOUR, 43 |-> FIVE, 44 |-> SIX, 
      45 |-> SEVEN, 46 |-> EIGHT, 47 |-> NINE, 48 |-> KING, 49 |-> QUEEN, 50 |-> JACK, 
      51 |-> ACE
  } //&
	
	
//	CONCRETE_PLAYABLE_ARRAY = {
//    0 |-> (CLUBS |-> ONE), 1 |-> (CLUBS |-> TWO), 2 |-> (CLUBS |-> THREE), 3 |-> (CLUBS |-> FOUR), 4 |-> (CLUBS |-> FIVE), 5 |-> (CLUBS |-> SIX), 6 |-> (CLUBS |-> SEVEN), 
//    7 |-> (CLUBS |-> EIGHT), 8 |-> (CLUBS |-> NINE), 9 |-> (CLUBS |-> KING), 10 |-> (CLUBS |-> QUEEN), 11 |-> (CLUBS |-> JACK), 12 |-> (CLUBS |-> ACE),
//    
//    13 |-> (DIAMONDS |-> ONE), 14 |-> (DIAMONDS |-> TWO), 15 |-> (DIAMONDS |-> THREE), 16 |-> (DIAMONDS |-> FOUR), 17 |-> (DIAMONDS |-> FIVE), 
//    18 |-> (DIAMONDS |-> SIX), 19 |-> (DIAMONDS |-> SEVEN), 20 |-> (DIAMONDS |-> EIGHT), 21 |-> (DIAMONDS |-> NINE), 22 |-> (DIAMONDS |-> KING), 
//    23 |-> (DIAMONDS |-> QUEEN), 24 |-> (DIAMONDS |-> JACK), 25 |-> (DIAMONDS |-> ACE),
//    
//    26 |-> (HEARTS |-> ONE), 27 |-> (HEARTS |-> TWO), 28 |-> (HEARTS |-> THREE), 29 |-> (HEARTS |-> FOUR), 30 |-> (HEARTS |-> FIVE), 31 |-> (HEARTS |-> SIX), 32 |-> (HEARTS |-> SEVEN), 
//    33 |-> (HEARTS |-> EIGHT), 34 |-> (HEARTS |-> NINE), 35 |-> (HEARTS |-> KING), 36 |-> (HEARTS |-> QUEEN), 37 |-> (HEARTS |-> JACK), 38 |-> (HEARTS |-> ACE),
//    
//    39 |-> (SPADES |-> ONE), 40 |-> (SPADES |-> TWO), 41 |-> (SPADES |-> THREE), 42 |-> (SPADES |-> FOUR), 43 |-> (SPADES |-> FIVE), 44 |-> (SPADES |-> SIX), 45 |-> (SPADES |-> SEVEN), 
//    46 |-> (SPADES |-> EIGHT), 47 |-> (SPADES |-> NINE), 48 |-> (SPADES |-> KING), 49 |-> (SPADES |-> QUEEN), 50 |-> (SPADES |-> JACK), 51 |-> (SPADES |-> ACE)
//  } & 
//  CONCRETE_PLAYABLE_ARRAY : 0 .. 51 --> PLAYABLE
END
