#ifndef _Game_cards_h
#define _Game_cards_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    Game_cards__CLUBS,
    Game_cards__DIAMONDS,
    Game_cards__HEARTS,
    Game_cards__SPADES,
    Game_cards__NOTYPE
    
} Game_cards__CARDS_TYPES;
#define Game_cards__CARDS_TYPES__max 5
typedef enum
{
    Game_cards__ONE,
    Game_cards__TWO,
    Game_cards__THREE,
    Game_cards__FOUR,
    Game_cards__FIVE,
    Game_cards__SIX,
    Game_cards__SEVEN,
    Game_cards__EIGHT,
    Game_cards__NINE,
    Game_cards__KING,
    Game_cards__QUEEN,
    Game_cards__JACK,
    Game_cards__ACE,
    Game_cards__NOVALUE
    
} Game_cards__CARDS_VALUE;
#define Game_cards__CARDS_VALUE__max 14
typedef enum
{
    Game_cards__P_ONE,
    Game_cards__P_TWO,
    Game_cards__NOPLAYER
    
} Game_cards__PLAYERS;
#define Game_cards__PLAYERS__max 3

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */


/* Array and record constants */
extern const Game_cards__CARDS_TYPES Game_cards__CARDS_TYPES_ARRAY[52];
extern const Game_cards__CARDS_VALUE Game_cards__CARDS_VALUES_ARRAY[52];
extern void Game_cards__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Game_cards_h */
