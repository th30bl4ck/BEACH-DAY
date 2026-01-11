// press E to end turn
if (keyboard_check_pressed(ord("E"))) {
    scr_battle_end_turn(global.battle);
    scr_battle_check_end(global.battle);
}

// press S to save
if (keyboard_check_pressed(ord("S"))) {
    scr_run_save(global.run);
}
