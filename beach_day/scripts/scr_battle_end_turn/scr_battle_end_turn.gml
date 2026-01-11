function scr_battle_end_turn(b) {
    // discard hand
    while (array_length(b.hand) > 0) {
        array_push(b.discard, scr_array_pop_front(b.hand));
    }
    // enemy acts
    scr_battle_enemy_act(b);
    // next player turn
    scr_battle_start_turn(b);
}

