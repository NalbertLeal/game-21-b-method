#include <stdio.h>

    printf("index of game__top_deck_i is %d\n", game__top_deck_i);
    printf("game__top_deck_points_i is %d\n", game__top_deck_points_i);



            printf("1 have %d points\n", game__player_one_points_i);
            printf("1 discarted  %d points\n",game__top_deck_points_i );
            printf("2 have %d points\n", game__player_two_points_i);
            printf("2 discarted  %d points\n",game__top_deck_points_i );

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