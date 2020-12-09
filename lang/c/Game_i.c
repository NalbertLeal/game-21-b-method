#include <stdio.h>
/* WARNING if type checker is not performed, translation could contain errors ! */

#include "game.h"

/* Clause SEES */
#include "Game_cards.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Game_cards__CARDS_TYPES game__all_cards_t_i[52];
static Game_cards__CARDS_VALUE game__all_cards_v_i[52];
static bool game__deck_i[52];
static bool game__discart_i[52];
static bool game__player_one_hand_i[52];
static int32_t game__player_one_points_i;
static bool game__player_two_hand_i[52];
static int32_t game__player_two_points_i;
static int32_t game__top_deck_i;
static int32_t game__top_deck_points_i;
static Game_cards__PLAYERS game__current_player_i;
static bool game__game_over_i;
/* Clause INITIALISATION */
void game__INITIALISATION(void)
{
    
    unsigned int i = 0;
    memmove(game__all_cards_t_i,Game_cards__CARDS_TYPES_ARRAY,(52)* sizeof(Game_cards__CARDS_TYPES));
    memmove(game__all_cards_v_i,Game_cards__CARDS_VALUES_ARRAY,(52)* sizeof(Game_cards__CARDS_VALUE));
    for(i = 0; i <= 51;i++)
    {
        game__deck_i[i] = true;
    }
    for(i = 0; i <= 51;i++)
    {
        game__discart_i[i] = false;
    }
    for(i = 0; i <= 51;i++)
    {
        game__player_one_hand_i[i] = false;
    }
    game__player_one_points_i = 0;
    for(i = 0; i <= 51;i++)
    {
        game__player_two_hand_i[i] = false;
    }
    game__player_two_points_i = 0;
    game__top_deck_i = -1;
    game__top_deck_points_i = 0;
    game__current_player_i = Game_cards__P_ONE;
    game__game_over_i = false;
}

/* Clause OPERATIONS */

void game__get_game_over(bool *bb)
{
    (*bb) = game__game_over_i;
}

void game__init_deck(void)
{
    unsigned int i = 0;
    {
        for(i = 0; i <= 51;i++)
        {
            game__deck_i[i] = true;
        }
    }
}

void game__init_hands(void)
{
    game__deck_i[0] = false;
    game__deck_i[1] = false;
    game__deck_i[2] = false;
    game__deck_i[3] = false;
    game__deck_i[4] = false;
    game__deck_i[5] = false;
    game__player_one_hand_i[0] = true;
    game__player_one_hand_i[1] = true;
    game__player_one_hand_i[2] = true;
    game__player_two_hand_i[3] = true;
    game__player_two_hand_i[4] = true;
    game__player_two_hand_i[5] = true;
}

void game__init_hands_points(void)
{
    {
        Game_cards__CARDS_VALUE value;
        
        value = game__all_cards_v_i[0];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__player_one_points_i = game__player_one_points_i+1;
        }
        else if(value == Game_cards__TWO)
        {
            game__player_one_points_i = game__player_one_points_i+2;
        }
        else if(value == Game_cards__THREE)
        {
            game__player_one_points_i = game__player_one_points_i+3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__player_one_points_i = game__player_one_points_i+4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__player_one_points_i = game__player_one_points_i+5;
        }
        else if(value == Game_cards__SIX)
        {
            game__player_one_points_i = game__player_one_points_i+6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__player_one_points_i = game__player_one_points_i+7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__player_one_points_i = game__player_one_points_i+8;
        }
        else if(value == Game_cards__NINE)
        {
            game__player_one_points_i = game__player_one_points_i+9;
        }
        else
        {
            game__player_one_points_i = game__player_one_points_i+10;
        }
        value = game__all_cards_v_i[1];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__player_one_points_i = game__player_one_points_i+1;
        }
        else if(value == Game_cards__TWO)
        {
            game__player_one_points_i = game__player_one_points_i+2;
        }
        else if(value == Game_cards__THREE)
        {
            game__player_one_points_i = game__player_one_points_i+3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__player_one_points_i = game__player_one_points_i+4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__player_one_points_i = game__player_one_points_i+5;
        }
        else if(value == Game_cards__SIX)
        {
            game__player_one_points_i = game__player_one_points_i+6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__player_one_points_i = game__player_one_points_i+7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__player_one_points_i = game__player_one_points_i+8;
        }
        else if(value == Game_cards__NINE)
        {
            game__player_one_points_i = game__player_one_points_i+9;
        }
        else
        {
            game__player_one_points_i = game__player_one_points_i+10;
        }
        value = game__all_cards_v_i[2];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__player_one_points_i = game__player_one_points_i+1;
        }
        else if(value == Game_cards__TWO)
        {
            game__player_one_points_i = game__player_one_points_i+2;
        }
        else if(value == Game_cards__THREE)
        {
            game__player_one_points_i = game__player_one_points_i+3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__player_one_points_i = game__player_one_points_i+4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__player_one_points_i = game__player_one_points_i+5;
        }
        else if(value == Game_cards__SIX)
        {
            game__player_one_points_i = game__player_one_points_i+6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__player_one_points_i = game__player_one_points_i+7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__player_one_points_i = game__player_one_points_i+8;
        }
        else if(value == Game_cards__NINE)
        {
            game__player_one_points_i = game__player_one_points_i+9;
        }
        else
        {
            game__player_one_points_i = game__player_one_points_i+10;
        }
        value = game__all_cards_v_i[3];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__player_two_points_i = game__player_two_points_i+1;
        }
        else if(value == Game_cards__TWO)
        {
            game__player_two_points_i = game__player_two_points_i+2;
        }
        else if(value == Game_cards__THREE)
        {
            game__player_two_points_i = game__player_two_points_i+3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__player_two_points_i = game__player_two_points_i+4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__player_two_points_i = game__player_two_points_i+5;
        }
        else if(value == Game_cards__SIX)
        {
            game__player_two_points_i = game__player_two_points_i+6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__player_two_points_i = game__player_two_points_i+7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__player_two_points_i = game__player_two_points_i+8;
        }
        else if(value == Game_cards__NINE)
        {
            game__player_two_points_i = game__player_two_points_i+9;
        }
        else
        {
            game__player_two_points_i = game__player_two_points_i+10;
        }
        value = game__all_cards_v_i[4];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__player_two_points_i = game__player_two_points_i+1;
        }
        else if(value == Game_cards__TWO)
        {
            game__player_two_points_i = game__player_two_points_i+2;
        }
        else if(value == Game_cards__THREE)
        {
            game__player_two_points_i = game__player_two_points_i+3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__player_two_points_i = game__player_two_points_i+4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__player_two_points_i = game__player_two_points_i+5;
        }
        else if(value == Game_cards__SIX)
        {
            game__player_two_points_i = game__player_two_points_i+6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__player_two_points_i = game__player_two_points_i+7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__player_two_points_i = game__player_two_points_i+8;
        }
        else if(value == Game_cards__NINE)
        {
            game__player_two_points_i = game__player_two_points_i+9;
        }
        else
        {
            game__player_two_points_i = game__player_two_points_i+10;
        }
        value = game__all_cards_v_i[5];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__player_two_points_i = game__player_two_points_i+1;
        }
        else if(value == Game_cards__TWO)
        {
            game__player_two_points_i = game__player_two_points_i+2;
        }
        else if(value == Game_cards__THREE)
        {
            game__player_two_points_i = game__player_two_points_i+3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__player_two_points_i = game__player_two_points_i+4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__player_two_points_i = game__player_two_points_i+5;
        }
        else if(value == Game_cards__SIX)
        {
            game__player_two_points_i = game__player_two_points_i+6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__player_two_points_i = game__player_two_points_i+7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__player_two_points_i = game__player_two_points_i+8;
        }
        else if(value == Game_cards__NINE)
        {
            game__player_two_points_i = game__player_two_points_i+9;
        }
        else
        {
            game__player_two_points_i = game__player_two_points_i+10;
        }
    }
}

void game__update_top_deck(void)
{
    {
        int32_t ii;
        bool value;
        
        ii = 0;
        while((ii) <= (51))
        {
            value = game__deck_i[ii];
            if((game__top_deck_i == -1) &&
            (value == true))
            {
                game__top_deck_i = ii;
                game__deck_i[ii] = false;
            }
            ii = ii+1;
        }
    }
    printf("index of game__top_deck_i is %d\n", game__top_deck_i);
    {
        Game_cards__CARDS_VALUE value;
        
        value = game__all_cards_v_i[game__top_deck_i];
        if((value == Game_cards__ACE) ||
        (value == Game_cards__ONE))
        {
            game__top_deck_points_i = 1;
        }
        else if(value == Game_cards__TWO)
        {
            game__top_deck_points_i = 2;
        }
        else if(value == Game_cards__THREE)
        {
            game__top_deck_points_i = 3;
        }
        else if(value == Game_cards__FOUR)
        {
            game__top_deck_points_i = 4;
        }
        else if(value == Game_cards__FIVE)
        {
            game__top_deck_points_i = 5;
        }
        else if(value == Game_cards__SIX)
        {
            game__top_deck_points_i = 6;
        }
        else if(value == Game_cards__SEVEN)
        {
            game__top_deck_points_i = 7;
        }
        else if(value == Game_cards__EIGHT)
        {
            game__top_deck_points_i = 8;
        }
        else if(value == Game_cards__NINE)
        {
            game__top_deck_points_i = 9;
        }
        else
        {
            game__top_deck_points_i = 10;
        }
    }
    printf("game__top_deck_points_i is %d\n", game__top_deck_points_i);
}

void game__reset_deck(void)
{
    unsigned int i = 0;
    {
        memmove(game__deck_i,game__discart_i,(52)* sizeof(bool));
        for(i = 0; i <= 51;i++)
        {
            game__discart_i[i] = false;
        }
    }
}

void game__player_one_play(void)
{
    {
        int32_t value;
        
        value = game__top_deck_points_i+game__player_one_points_i;
        if((value) < (22))
        {
            game__player_one_hand_i[game__top_deck_i] = true;
            game__player_one_points_i = value;
            printf("1 have %d points\n", game__player_one_points_i);
            if(game__player_one_points_i == 21)
            {
                game__game_over_i = true;
            }
            else
            {
                game__game_over_i = false;
            }
        }
        else
        {
            printf("1 discarted  %d points\n",game__top_deck_points_i );
            game__discart_i[game__top_deck_i] = true;
            game__deck_i[game__top_deck_i] = false;
        }
    }
    game__current_player_i = Game_cards__P_TWO;
    game__top_deck_i = -1;
    game__top_deck_points_i = 0;
}

void game__player_two_play(void)
{
    {
        int32_t value;
        
        value = game__top_deck_points_i+game__player_two_points_i;
        if((value) < (22))
        {
            game__player_two_hand_i[game__top_deck_i] = true;
            game__player_two_points_i = value;
            printf("2 have %d points\n", game__player_two_points_i);
            if(game__player_two_points_i == 21)
            {
                game__game_over_i = true;
            }
            else
            {
                game__game_over_i = false;
            }
        }
        else
        {
            printf("2 discarted  %d points\n",game__top_deck_points_i );
            game__discart_i[game__top_deck_i] = true;
            game__deck_i[game__top_deck_i] = false;
        }
    }
    game__current_player_i = Game_cards__P_ONE;
    game__top_deck_i = -1;
    game__top_deck_points_i = 0;
}

void start() {
    game__INITIALISATION();
    game__init_deck();
    game__init_hands();
    game__init_hands_points();

    while (!game__game_over_i) {
        game__update_top_deck();
        game__reset_deck();

        if (game__current_player_i == Game_cards__P_ONE) {
            game__player_one_play();
        } else {
            game__player_two_play();
        }
    }
}