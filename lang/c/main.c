#include <stdio.h>
#include "game.h"
#include "Game_cards.h"

int main() {
  bool game_over;
  Game_cards__PLAYERS current_player;
  int player_one_points;
  int player_two_points;

  game__INITIALISATION();
  game__init_deck();
  game__init_hands();
  game__init_hands_points();

  game__get_game_over(&game_over);
  game__get_current_player(&current_player);

  while (!game_over) {
    game__update_top_deck();
    game__reset_deck();

    game__get_current_player(&current_player);
    printf("current_player %d ", current_player+1);
    if (current_player == Game_cards__P_ONE) {
        game__player_one_play();
        game__get_player_one_points(&player_one_points);
        printf("--> have %d points\n", player_one_points);
    } else {
        game__player_two_play();
        game__get_player_two_points(&player_two_points);
        printf("--> have %d points\n\n", player_two_points);
    }
    game__get_game_over(&game_over);
  }
  return 0;
}