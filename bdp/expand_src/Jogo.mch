/* Jogo Vinte Um
 * Author: Nalbert Gabriel Melo Leal
 * Creation date: 05/10/20
 */
MACHINE
  Jogo
SETS
  CARDS_TYPES = { CLUBS , DIAMONDS , HEARTS , SPADES } ;
  CARDS_VALUE = { ONE , TWO , THREE , FOUR , FIVE , SIX , SAVEN , EIGHT , NINE , KING , QUEEN , JACK , ACE } ;
  PLAYERS = { P_ONE , P_TWO }
ABSTRACT_CONSTANTS
  CARDS
CONCRETE_CONSTANTS
  PLAYERS_NUMBER , NUMBER_INITIAL_HAND
PROPERTIES
  CARDS <: CARDS_TYPES * CARDS_VALUE &
  CARDS : FIN ( CARDS ) &
  card ( CARDS ) = 52 &
  PLAYERS_NUMBER = 2 &
  NUMBER_INITIAL_HAND = 3
ABSTRACT_VARIABLES
  deck , top_deck , discart_deck , top_discart_deck , player_now , player_one_hand , player_two_hand
INVARIANT
  deck : seq ( CARDS ) &
  top_deck : NAT &
  discart_deck : seq ( CARDS ) &
  top_discart_deck : NAT &
//  !(cc).(cc : discart_deck => cc /: deck) & 
  player_now : PLAYERS &
  player_one_hand : seq ( CARDS ) &
  player_two_hand : seq ( CARDS )
INITIALISATION
  deck :: perm ( CARDS ) ||
  top_deck := 0 ||
  discart_deck := [] ||
  top_discart_deck := 0 ||
  player_now := P_ONE ||
  player_one_hand := [] ||
  player_two_hand := []
OPERATIONS
  cc <-- getDeckCard =
    PRE top_deck < size ( deck ) &
      top_deck + 1 : NAT
    THEN cc := deck /|\ top_deck || top_deck := top_deck + 1
    END
END
