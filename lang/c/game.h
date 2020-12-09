#ifndef _game_h
#define _game_h

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
/* Clause SEES */
#include "Game_cards.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void game__INITIALISATION(void);

/* Clause OPERATIONS */

extern void game__get_game_over(bool *bb);
extern void game__get_current_player(Game_cards__PLAYERS *cp);
extern void game__get_player_one_points(int32_t *pp);
extern void game__get_player_two_points(int32_t *pp);
extern void game__init_deck(void);
extern void game__init_hands(void);
extern void game__init_hands_points(void);
extern void game__update_top_deck(void);
extern void game__reset_deck(void);
extern void game__player_one_play(void);
extern void game__player_two_play(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _game_h */
