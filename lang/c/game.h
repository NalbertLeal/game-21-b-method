#ifndef _game_h
#define _game_h

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
/* Clause SEES */
#include "Game_cards.h"
#include "Game_ctx.h"

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
